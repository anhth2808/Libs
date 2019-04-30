function desArray(item, box) {
    if (Array.isArray(item)){
        item.map(i => {
            desArray(i, box);
        });
    } else {
        box.push(item);
    }
}


function steamrollArray(arr) {
    // I'm a steamroller, baby
    let box = []
    desArray(arr, box);
    return box;
}
  
  steamrollArray([[["a"]], [["b"]]])