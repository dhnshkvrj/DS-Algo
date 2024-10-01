class Solution {
public:
    int searchInsert(vector<int>& nums, int target) {
        int n=nums.size();
        int low=0, high=n-1, pos=n;
        while(low<=high){
            int mid=(low+high)/2;
            if(nums[mid]>=target){
                pos=mid;
                high=mid-1;
            }
            else
                low=mid+1;
        }
        return pos;
    }
};