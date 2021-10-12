#include "Transaction.h"

// Reads csv file and returns vector of Customers
vector<Customer> getCustomers() {
	string line;
	ifstream myfile("account_info.csv");
	vector<Customer> customers;
	getline(myfile, line);
	stringstream ss(line);
	while (getline(myfile, line)) {
		stringstream ss(line);
		Customer person;
		person.populate(ss);
		customers.push_back(person);
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

int main() {
	vector<Customer> customers = getCustomers();
	vector<Transaction> transactions = getTransactions();
	system("pause");
	return 0;
}