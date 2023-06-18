## Challenge description

### Merge Sort I

Like QuickSort, MergeSort runs quickly in O(n log n) time. While Mergesort uses more space and is not usually as fast (in practice) as Quicksort, Mergesort has the benefit of being stable, which means it keeps duplicate elements in the original order that they started with. This is meaningless if the values being sorted is all there is, but usually there's associated data with each element which sometimes needs to be preserved in the original order. For example, if you sort by one value of an item, and then by another value, you may not want the second sort to mess up the order of the first sort.

#### Stable Sort Example

Sort a deck of card so the suits are in order and each suit is in number-order.

#### Answer:
  0 - Start with an unsorted deck <br>
  1 - Sort the entire deck by number <br>
  2 - Use a stable sort and sort by suit. Since the sort is stable, the number order is preserved. See each step below:

![merge-sort-1](https://github.com/rica213/dsa-challenge/assets/10439283/ea0fe4d8-a97e-45f1-932c-4762d61777f4)


#### Merge Method

The main part of MergeSort involves the merge method, which merges 2 sorted arrays to create one sorted array. This can be done in one pass through the arrays, by comparing the values of the two arrays before placing a value in the large array.

#### Challenge

You are given two sorted arrays. Can you merge the them and return one sorted array? This should be done with only one run through the array.

#### Example
```
p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]
```
