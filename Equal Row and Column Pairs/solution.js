/**
 * @param {number[][]} grid
 * @return {number}
 */
var equalPairs = function(grid) {
    let counter = 0;
    const newRow = [];
    const newColumn = [];
    const newGrid = [];

    for(let i = 0; i < grid.length; i++) {
        newRow.push(grid[i].join(''))
    }
    
    for(let i = 0; i < grid[0].length; i++) {
        newGrid[i] = [];
        for(let j = 0; j < grid.length; j++) {
            newGrid[i].push(grid[j][i])
        }
    }

    for(let i = 0; i < newGrid.length; i++) {
        newColumn.push(newGrid[i].join(''))
    }

    for(let row = 0; row < newRow.length; row++) {
        for(let column = 0; column < newColumn.length; column++) {
            if(newRow[row]===newColumn[column]) {
                counter++
            }
        }
    }

    return counter;
};
