#include <iostream>
#include <iomanip>
#include <limits>

using namespace std;

int main() {
    int i = 4;
    double d = 4.0;
    string s = "HackerRank ";
    
    // Declare second integer, double, and String variables.
    int numInteger;
    double numDouble;
    string input;
    // Read and save an integer, double, and String to your variables.
    // Note: If you have trouble reading the entire string, please go back and review the Tutorial closely.
    cin>>numInteger;
    cin>>numDouble;

    cin.ignore();
    getline(cin, input);
    // Print the sum of both integer variables on a new line.
    cout<<i+numInteger<<"\n";
    // Print the sum of the double variables on a new line.
    printf("%.1lf\n", d+numDouble);
    // Concatenate and print the String variables on a new line
    // The 's' variable above should be printed first.
    cout<<s+input<<"\n";
    
    return 0;
}