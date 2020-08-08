#include <iostream>
#include <queue>
#include <stack>

using namespace std;

class Solution {
    public:
        stack<char> s;
        queue<char> q;
    
    void pushCharacter(char c) {
        this->s.push(c);
    }
    void enqueueCharacter(char c) {
        this->q.push(c);
    }
    char popCharacter() {
        char popChar;
        popChar = s.top();
        s.pop();
        return popChar;
    }
    char dequeueCharacter() {
        char dequeueChar;
        dequeueChar = q.front();
        q.pop();
        return dequeueChar;
    }
};

int main() {
    string s;
    getline(cin, s);
    
    Solution obj;
    
    for (int i = 0; i < s.length(); i++) {
        obj.pushCharacter(s[i]);
        obj.enqueueCharacter(s[i]);
    }
    
    bool isPalindrome = true;
    
    for (int i = 0; i < s.length() / 2; i++) {
        if (obj.popCharacter() != obj.dequeueCharacter()) {
            isPalindrome = false;
            
            break;s
        }
    }
    
    if (isPalindrome) {
        cout << "The word, " << s << ", is a palindrome.";
    } else {
        cout << "The word, " << s << ", is not a palindrome.";
    }
    
    return 0;
}