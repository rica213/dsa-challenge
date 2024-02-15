const ReverseMatrix90deg = (matrix) => {
  const output = [];
  for(let i = 0; i < matrix[0].length; i++) {
    output[i] = [];
    for(let j = matrix.length-1; j >= 0; j--) {
      output[i].push(matrix[j][i]);
    }
  }
  return output;
}

const matrix = [[1, 2, 3],[4, 5, 6],[7, 8, 9]];
console.log(ReverseMatrix90deg(matrix))

//[[7, 4, 1],[8, 5, 2],[9, 6, 3]]
