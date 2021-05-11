// Select hint button
// Register an onclick event on this button
// Ajouter la classe a la  div de hint

const button = document.querySelector('#show-hint')

button.addEventListener('click', (event) => {
    const hintDiv = document.querySelector('.hint')
    hintDiv.classList.toggle('active')
})


const tiles = Array.from(document.querySelectorAll('td'))

const isNeighborWithTheEmptyTile = (tile, emptyTile) => {
    tileColumn = tile.cellIndex
    emptyTileColumn = emptyTile.cellIndex
    tileRow = tile.parentNode.rowIndex
    emptyTileRow = emptyTile.parentNode.rowIndex

    console.log(tileColumn, tileRow);

    return (tileColumn === emptyTileColumn && tileRow === emptyTileRow + 1) ||
         (tileColumn === emptyTileColumn && tileRow === emptyTileRow - 1) ||
         (tileRow === emptyTileRow && tileColumn === emptyTileColumn + 1) ||
         (tileRow === emptyTileRow && tileColumn === emptyTileColumn - 1);
}

const swapTiles = (tile, emptyTile) => {
    tile.classList.add('empty')
    emptyTile.classList.remove('empty')
    emptyTile.innerText = tile.innerText
    tile.innerText = ''
}

const puzzleIsSolved = () => {
    const solvedString = "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15"
    const currentStateOfTheGame = tiles.map(tile => tile.innerText).join(',')
    return solvedString === currentStateOfTheGame
}

const handleTileClick = (tile) => {
    const emptyTile = document.querySelector('.empty')
    if (isNeighborWithTheEmptyTile(tile, emptyTile)) {
        swapTiles(tile, emptyTile)
        if (puzzleIsSolved()) {
            alert("Bravo a moi")
        }
    }
}

tiles.forEach(tile => tile.addEventListener('click', (event) => {
    handleTileClick(event.currentTarget)
}))

// Get all tiles
// Register a click event on all of my tiles
// On click =>
    // check if my tiles is a neighbor of the empty tile
    // Swap the clicked tile with the empty one
    // Verify if I won