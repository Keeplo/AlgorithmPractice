#include <iostream>
#include <vector>

using namespace std;


class Person{
	protected:
		string firstName;
		string lastName;
		int id;
	public:
		Person(string firstName, string lastName, int identification) {
			this->firstName = firstName;
			this->lastName = lastName;
			this->id = identification;
		}
		void printPerson(){
			cout<< "Name: "<< lastName << ", "<< firstName <<"\nID: "<< id << "\n"; 
		}
	
};

class Student :  public Person{
	private:
		vector<int> testScores;  
	public:
        /*	
        *   Class Constructor
        *   
        *   Parameters:
        *   firstName - A string denoting the Person's first name.
        *   lastName - A string denoting the Person's last name.
        *   id - An integer denoting the Person's ID number.
        *   scores - An array of integers denoting the Person's test scores.
        */
        Student(string firstName, string lastName, int identification, vector<int> scores) : Person(firstName, lastName, identification) {
			this->testScores = scores;
		}

        /*	
        *   Function Name: calculate
        *   Return: A character denoting the grade.
        */
        char calculate(){
            int avarage=0;
            char answer;
            for(int i=0; i<testScores.size(); i++) {
                avarage += testScores[i];
            }
            avarage /= testScores.size();

            if(avarage>=90) {
                answer = 'O';
            } else if(avarage>=80) {
                answer = 'E';
            } else if(avarage>=70) {
                answer = 'A';
            } else if(avarage>=55) {
                answer = 'P';
            } else if(avarage>=40) {
                answer = 'D';
            } else if(avarage<40) {
                answer = 'T';
            } else {
                answer = 'X';
            }

            return answer;
        }
};

int main() {
	string firstName;
  	string lastName;
	int id;
  	int numScores;
	cin >> firstName >> lastName >> id >> numScores;
  	vector<int> scores;

  	for(int i = 0; i < numScores; i++){
	  	int tmpScore;
	  	cin >> tmpScore;
		scores.push_back(tmpScore);
	}
    
	Student* s = new Student(firstName, lastName, id, scores);
    s->printPerson();
	cout << "Grade: " << s->calculate() << "\n";
	return 0;
}