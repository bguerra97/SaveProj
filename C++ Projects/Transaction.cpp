#include "Transaction.h"

Transaction::Transaction() {

}

void Transaction::populate(stringstream& ss) {
	string elem;
	getline(ss, elem, ',');
	this->account = elem;
	getline(ss, elem, ',');
	this->datetime= elem;

	// Gets rid of the '-' at the end
	getline(ss, elem, ',');
	if (elem[elem.size() - 1] == '-') {
		elem.pop_back();
	}
	this->amount = elem;

	getline(ss, elem, ',');
	while (elem[0] == '0') {
		elem = elem.substr(1);
	}
	this->date = elem;
	getline(ss, elem, ',');
	this->merch_num = elem;
	getline(ss, elem, ',');
	this->merch_desc = elem;
	getline(ss, elem, ',');
	this->merch_cat = elem;
	getline(ss, elem, ',');
	this->trans_num = elem;
}
