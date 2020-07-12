#include <iostream>
#include <cmath>

using namespace std;

// Complete the solve function below.
void solve(double meal_cost, int tip_percent, int tax_percent) {
    double tip, tax;
    int totalCost;

    tip = (double)tip_percent/100 * meal_cost;
    tax = (double)tax_percent/100 * meal_cost;
    totalCost = ceil(tip + tax + meal_cost);
    cout<<totalCost<<"\n";

}

int main()
{
    double meal_cost;
    cin >> meal_cost;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');

    int tip_percent;
    cin >> tip_percent;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');

    int tax_percent;
    cin >> tax_percent;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');

    solve(meal_cost, tip_percent, tax_percent);

    return 0;
}