#include "Customer.h"

Customer::Customer() {

}

void Customer::populate(stringstream& ss) {
	string elem;
	getline(ss, elem, ',');
	this->last_name = elem;
	getline(ss, elem, ',');
	this->first_name = elem;
	getline(ss, elem, ',');
	this->street_address = elem;
	getline(ss, elem, ',');
	this->unit = elem;
	getline(ss, elem, ',');
	this->city = elem;
	getline(ss, elem, ',');
	this->state = elem;
	getline(ss, elem, ',');
	this->zip = elem;
	getline(ss, elem, ',');
	this->dob = elem;
	getline(ss, elem, ',');
	this->ssn = elem;
	getline(ss, elem, ',');
	this->email = elem;
	getline(ss, elem, ',');
	this->mobile = elem;
	getline(ss, elem, ',');
	this->account = elem;
}

void Customer::addPurchase(Transaction purchase) {
	this->purchases.push_back(purchase);
}