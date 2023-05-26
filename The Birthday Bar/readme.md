Two children, Lily and Ron, want to share a chocolate bar. Each of the squares has an integer on it.

Lily decides to share a contiguous segment of the bar selected such that:

The length of the segment matches Ron's birth month, and,
The sum of the integers on the squares is equal to his birth day.
Determine how many ways she can divide the chocolate.

Example
```sh
s = [2,2,1,3,2]
d = 4
m = 2
```

Lily wants to find segments summing to Ron's birth day, <code>d = 4</code> with a length equalling his birth month, <code>m = 2</code>. In this case, there are two segments meeting her criteria:<code>[2,2]</code> and<code>[1,3]</code>.

**Function Description**

Complete the birthday function in the editor below.

birthday has the following parameter(s):

- int s[n]: the numbers on each of the squares of chocolate
- int d: Ron's birth day
- int m: Ron's birth month

**Returns**
- int: the number of ways the bar can be divided

**Input Format**

The first line contains an integer **_n_**, the number of squares in the chocolate bar.<br>
The second line contains  **_n_** space-separated integers **_s[i]_**, the numbers on the chocolate squares where <code>0 ≤ i ≤ n</code>.
The third line contains two space-separated integers,  and , Ron's birth day and his birth month.<br>

**Constraints**
- 1 ≤ n 100
- 1 ≤ s[i] ≤ 5, where (0 ≤ i < n)
- 1 ≤ d ≤ 31
- 1 ≤ m ≤ 12
