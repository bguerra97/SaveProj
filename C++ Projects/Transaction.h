#include "Customer.h"

class Transaction{
public:
	string account, datetime, amount, date, merch_num, merch_desc, merch_cat, trans_num;

public:
	Transaction();
	void populate(stringstream& ss);
};

