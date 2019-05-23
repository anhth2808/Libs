// NV0000
// PB0000
// HDLD0000
// CV0000

function createId(type) {
	// get lastItem
	let lastItem = "CV0115";	
    let reg = /[1-9]\d*/;
    
    // using regex to get number
    lastItem = lastItem.match(reg)[0];
    lastItem = parseInt(lastItem)    
	lastItem++;
	lastItem = lastItem.toString();

	let result = lastItem;
	for (let i = 0 ; i < (4 - lastItem.length); i++) {
		result = "0" + result;
	}
	return result;
}

console.log(createId("MaNV"));