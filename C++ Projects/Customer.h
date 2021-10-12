#include <string>
#include <sstream>
#include <iostream>
#include <fstream>
#include <vector>

using namespace std;

class Customer{
public:
	string last_name, first_name, street_address, unit, city, state, zip, dob, ssn, email, mobile, account;

public:
	Customer();

	void populate(stringstream& ss);
};

