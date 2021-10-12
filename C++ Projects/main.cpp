#include "Transaction.h"
#include <map>

// Reads csv file and returns vector of Customers
map<string, Customer> getCustomers() {
	string line;
	ifstream myfile("account_info.csv");
	map<string, Customer> customers;
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

string parseState(string desc) {
	string state = desc.substr(desc.size() - 2);
	if (state == "US") {
		state = desc.substr(desc.size() - 4, 2);
	}
	return state;
}

// FIXME: see why some states don't show
void RuleTwo(map<string, Customer> customers, vector<Transaction> transactions) {
	for (Transaction sale : transactions) {
		if(customers[sale.account].state != parseState(sale.merch_desc)){
			cout << "Client is in: " << customers[sale.account].state << endl << "Transaction was in: " << parseState(sale.merch_desc) << endl << endl;
		}
	}

	return;
}

int main() {
	map<string, Customer> customers = getCustomers();
	vector<Transaction> transactions = getTransactions();
	RuleTwo(customers, transactions);
	system("pause");
	return 0;
}