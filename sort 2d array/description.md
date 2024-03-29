Given a `n x n` matrix.
The problem is to sort the given matrix in strict order. 
Here strict order means that the matrix is sorted in a way such that all elements in a row are sorted in increasing order
and for row `‘i’`, where `1 <= i <= n-1`,
the first element of row `‘i’` is greater than or equal to the last element of row `‘i-1’`.

**Example:**
```
    Input : [[5, 4, 7], [1, 3, 8], [2, 9, 6]]
    Output : [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
```
