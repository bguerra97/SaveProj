#include "Customer.h"
#include <unordered_map>
#include <math.h>

// Reads csv file and returns map of Customers
unordered_map<string, Customer> getCustomers() {
	string line;
	ifstream myfile("account_info.csv");
	unordered_map<string, Customer> customers;
	getline(myfile, line);
	stringstream ss(line);
	while (getline(myfile, line)) {
		stringstream ss(line);
		Customer person;
		person.populate(ss);
		customers.insert(pair<string, Customer>(person.account, person));
	}
	myfile.close();
	return customers;
}

// Reads csv file and returns vector of Customers
vector<Transaction> getTransactions() {
	string line;
	ifstream myfile("transactions.csv");
	vector<Transaction> transactions;
	getline(myfile, line);
	stringstream ss(line);
	while (getline(myfile, line)) {
		stringstream ss(line);
		Transaction purchase;
		purchase.populate(ss);
		transactions.push_back(purchase);
	}
	myfile.close();
	return transactions;
}

// Reads merchant description to parse out the State where it happened
string parseState(string desc) {
	string state = desc.substr(desc.size() - 2);
	if (state == "US") {
		state = desc.substr(desc.size() - 4, 2);
	}
	return state;
}

// Checks for irregularities in amount of purchase
void RuleOne(unordered_map<string, Customer> customers) {
	ofstream output("Rule1Transactions.csv");
	output << "Name,Account Number,Transaction Number,Merchant,Transaction Amount" << endl;
	cout << "Printing transactions flagged fraudulent for high value: " << endl;
	for (auto const& x : customers) {
		Customer client = x.second;
		double sum = 0;
		int n = 0;
		for (Transaction sale : client.purchases) {
			sum += stod(sale.amount);
			++n;
		}
		double mean = sum / (double)n;
		double sigma = 0;
		for (Transaction sale : client.purchases) {
			sigma += pow(stod(sale.amount) - mean, 2);
		}
		double stddev = pow(sigma / ((double)(n - 1)), 0.5);
		for (Transaction sale : client.purchases) {
			if (stod(sale.amount) > (mean + 3.5 * stddev)) {  // Might need to change multiplier of standard deviation
				cout << "Name: " << client.first_name + ' ' + client.last_name << endl;
				cout << "Account Number: " << client.account << endl;
				cout << "Transaction Number: " << sale.trans_num << endl;
				cout << "Merchant: " << sale.merch_desc << endl;
				cout << "Transaction Amount: $" << sale.amount << endl;
				cout << "---------------------------------------------------------" << endl << endl;

				output << client.first_name + ' ' + client.last_name + ',';
				output << client.account << ',';
				output << sale.trans_num << ',';
				output << sale.merch_desc << ',';
				output << sale.amount << endl;
			}
		}
	}

	output.close();
}

// Checks for irregularities in location of purchase and makes list of transactions for each customer
void RuleTwo(unordered_map<string, Customer> &customers, vector<Transaction> transactions) {
	ofstream output("Rule2Transactions.csv");
	output << "Name,Account Number,Transaction Number,Expected Transaction Location,Actual Transaction Location" << endl;
	cout << "Printing files flagged for wrong address: " << endl;
	for (Transaction sale : transactions) {
		customers[sale.account].addPurchase(sale);
		if(customers[sale.account].state != parseState(sale.merch_desc)){
			cout << "Name: " << (customers[sale.account].first_name + ' ' + customers[sale.account].last_name) << endl;
			cout << "Account Number: " << sale.account << endl;
			cout << "Transaction Number: " << sale.trans_num << endl;
			cout << "Expected Transcation Location: " << customers[sale.account].state << endl;
			cout << "Actual Transaction Location: " << parseState(sale.merch_desc) << endl;
			cout << "---------------------------------------------------------" << endl << endl;

			output << (customers[sale.account].first_name + ' ' + customers[sale.account].last_name + ',');
			output << sale.account << ',';
			output << sale.trans_num << ',';
			output << customers[sale.account].state << ',';
			output << parseState(sale.merch_desc) << endl;
		}
	}

	output.close();
	return;
}

int main() {
	unordered_map<string, Customer> customers = getCustomers();
	vector<Transaction> transactions = getTransactions();
	RuleTwo(customers, transactions);
	RuleOne(customers);
	system("pause");
	return 0;
}