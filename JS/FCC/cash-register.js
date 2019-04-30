const UnitAmount = {
    "PENNY" : 0.01,
    "NICKEL": 0.05,
    "DIME": 0.1,
    "QUARTER": 0.25,
    "ONE": 1,
    "FIVE":	5,
    "TEN": 10,
    "TWENTY": 20,
    "ONE HUNDRED": 100
}


function fixNumber(number) {
    return parseFloat(number.toFixed(3));
}


function checkCashRegister(price, cash, cid) {
    let change = [];
    // Here is your change, ma'am.
    let temp = cash - price;
    let totalCid = 0;

    let result = {
        status : "",
        change : []
    }
    

    for (let i = cid.length - 1; i >= 0 ; i--) {
        // console.log(cid[i][1])
        totalCid += cid[i][1];
        
    }

    // cash-in-drawer as the value for the key change if it is equal to the change due.
    if (totalCid === temp) {
        result.status = "CLOSED";
        result.change = cid;
        return result;
    }

    
    
    for (let i = cid.length - 1; i >= 0 ; i--) {
        let unit = UnitAmount[cid[i][0]];

        console.log("unit:", unit);
        if (temp >= unit) {
            let timeTemp = parseInt(temp / unit);
            
            let timeExist = parseInt(cid[i][1] / unit);
            // console.log("temp:", temp);
            // console.log(timeExist, timeTemp);

            let time;
            //
            if (timeExist != 0) {
                time = timeTemp > timeExist ? timeExist : timeTemp;
            }

            console.log(time);

            if ((cid[i][1] - time * unit) >= 0) {
                // console.log("temp", temp);

                temp -= time * unit;
                // fix decimal number
                temp = fixNumber(temp);
                
                totalCid -= time * unit;
                // fix decimal number
                totalCid = fixNumber(totalCid);

                console.log("totalCid:",totalCid);
                change.push([cid[i][0], time * unit]);
            } 
        }
    }

    // 
    if (temp) {
        result.status = "INSUFFICIENT_FUNDS";
        result.change = [];
        return result;
    } else {
        result.status = "OPEN";
        result.change = change;
        return result;
    }
}

let x;

x = checkCashRegister(3.26, 100, [["PENNY", 1.01], ["NICKEL", 2.05], ["DIME", 3.1], ["QUARTER", 4.25], ["ONE", 90], ["FIVE", 55], ["TEN", 20], ["TWENTY", 60], ["ONE HUNDRED", 100]]);

// x =  checkCashRegister(19.5, 20, [["PENNY", 0.01], ["NICKEL", 0], ["DIME", 0], ["QUARTER", 0], ["ONE", 0], ["FIVE", 0], ["TEN", 0], ["TWENTY", 0], ["ONE HUNDRED", 0]])

// x = checkCashRegister(19.5, 20, [["PENNY", 0.5], ["NICKEL", 0], ["DIME", 0], ["QUARTER", 0], ["ONE", 0], ["FIVE", 0], ["TEN", 0], ["TWENTY", 0], ["ONE HUNDRED", 0]]);

console.log(x);