#include <iostream>
#include <fstream>
#include <string>


using namespace std;

int main() {
	string line;
	ifstream myfile("account_info.csv");
	getline(myfile, line);
	cout << line << endl;
	system("pause");
	return 0;
}