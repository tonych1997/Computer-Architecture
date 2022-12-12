#include <stdio.h>

int searchInsert(int *nums, int numsSize, int target) {

  int left = 0;
  int right = numsSize - 1;
  while (left <= right)
  {
    int mid = (left + right) / 2;
    if (target == nums[mid])
      return mid;
    else if (target < nums[mid])
      right = mid - 1;
    else
      left = mid + 1;
  }
  return left;
}


int main()
{
  int data[] = {1, 3, 5, 6};
  int size = 4;
  int tar[] = {5, 2, 7};

  for(int i=0; i<sizeof(tar)/sizeof(tar[0]); i++) {
  	printf("The target%d insert position is %d\n", i+1, searchInsert(data, size, tar[i]));
  }
  return 0;
}

