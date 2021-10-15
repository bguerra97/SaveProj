#include "Transaction.h"

class Customer{
public:
	string last_name, first_name, street_address, unit, city, state, zip, dob, ssn, email, mobile, account;
	vector<Transaction> purchases;

public:
	Customer();

	void populate(stringstream& ss);
	void addPurchase(Transaction purchase);
};

