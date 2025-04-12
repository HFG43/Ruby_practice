# https://leetcode.com/problems/median-of-two-sorted-arrays/description/

def find_median_sorted_arrays(nums1, nums2)
  nums =  [nums1, nums2]
  merged_nums = nums.flatten.sort

  if ((merged_nums.size % 2 === 0) && (merged_nums.size > 2)) 
    second_m = merged_nums.size / 2
    first_m = second_m - 1
    sum = merged_nums[first_m] + merged_nums[second_m]
    sum / 2.to_f
  elsif merged_nums.size % 2 != 0
    position = (merged_nums.size / 2).round
    merged_nums[position]
  elsif merged_nums.size === 0
    0
  elsif merged_nums.size <= 2
    sum = 0.to_f
    merged_nums.each { |num| sum += num}
    sum / merged_nums.size
  end  
end

find_median_sorted_arrays([1,3], [2])
find_median_sorted_arrays([1,2], [3,4])