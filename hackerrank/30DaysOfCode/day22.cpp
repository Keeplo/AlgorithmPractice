#include <iostream>
#include <cstddef>

using namespace std;	

class Node{
    public:
        int data;
        Node *left;
        Node *right;
        Node(int d){
            data = d;
            left = NULL;
            right = NULL;
        }
};
class Solution{
    public:
  		Node* insert(Node* root, int data) {
            if(root == NULL) {
                return new Node(data);
            }
            else {
                Node* cur;
                if(data <= root->data){
                    cur = insert(root->left, data);
                    root->left = cur;
                }
                else{
                    cur = insert(root->right, data);
                    root->right = cur;
               }

               return root;
           }
        }

		int getHeight(Node* root){
            int count=0;
            if(root->right || root->left) {
                int left=0, right=0;
                if(root->right) right = 1 + getHeight(root->right);
                if(root->left) left = 1 + getHeight(root->left);

                right > left ? count = right : count = left;
            } else {
                return 0;
            }

            return count;
        }

        /*
            int getHeight(Node* root){
            int count = 0;
            while(root->right) {
                count++;
                root = root->right;
            }

            return count;
        }
        */

}; //End of Solution

int main() {
    Solution myTree;
    Node* root = NULL;
    int t;
    int data;

    cin >> t;

    while(t-- > 0){
        cin >> data;
        root = myTree.insert(root, data);
    }
    int height = myTree.getHeight(root);
    cout << height;

    return 0;
}
    