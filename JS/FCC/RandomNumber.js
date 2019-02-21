
// 0 to num-1 
function random(num) {
    return Math.floor(Math.random() * num);
}

// min to max
function randomRange(myMin, myMax) {
    return Math.floor(Math.random() * (myMax - myMin)) + myMin;
}

// Change these values to test your function
var myRandom = random(5);
console.log(myRandom);