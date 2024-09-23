/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
public:
    void f(TreeNode* node, vector<int>& ans){
        if(!node)   return; 
        f(node->left,ans);
        ans.push_back(node->val);
        f(node->right,ans);
    }
    int kthSmallest(TreeNode* root, int k) {
        if(!root)   return -1;
        vector<int> ans;
        f(root,ans);
        return ans[k-1];
    }
};