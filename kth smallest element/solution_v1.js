/**
 * @param {number[]} arr
 * @param {number} l (starting index of the array i.e 0)
 * @param {number} r (ending index of the array i.e size-1)
 * @param {number} k
 * @return {number}
*/

class Solution {
  kthSmallest(arr,l,r,k){
    const new_arr = arr.sort((a,b)=> a-b)
    return new_arr[k-1]
  }
}
