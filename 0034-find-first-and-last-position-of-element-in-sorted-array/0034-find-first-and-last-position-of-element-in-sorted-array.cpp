class Solution {
public:
    vector<int> searchRange(vector<int>& nums, int target) {
        int n=nums.size();
        int low=0, high=n-1;
        
        int first=-1;
        while(low<=high){
            int mid=(low+high)/2;
            if(nums[mid]<target)
                low=mid+1;
            else{                                       // If nums[mid]>=target
                if(nums[mid]==target)   first=mid;
                high=mid-1;
            }
        }

        int last=-1;
        low=0, high=n-1;
        while(low<=high){
            int mid=(low+high)/2;
            if(nums[mid]<=target){
                if(nums[mid]==target)   last=mid;
                low=mid+1;
            }
            else
                high=mid-1;
        }
        return {first,last};
    }
};