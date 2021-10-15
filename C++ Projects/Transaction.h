#include <string>
#include <sstream>
#include <iostream>
#include <fstream>
#include <vector>

using namespace std;

class Transaction{
public:
	string account, datetime, amount, date, merch_num, merch_desc, merch_cat, trans_num;

public:
	Transaction();
	void populate(stringstream& ss);
};

