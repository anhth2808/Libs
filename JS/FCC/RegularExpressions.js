function telephoneCheck(str) {
    // Good luck!
    const teleRegex1 = /^[1]?\s?[(][0-9]{3}[)]\s?[0-9]{3}[-][0-9]{4}|^[1]?\s?[0-9]{3}[-|\s][0-9]{3}[-|\s][0-9]{4}|^\d{10}$/;
    // 
    const teleRegex2 = /\d?\s?[(][0-9][0-9]{2}[)][0-9][0-9]{2}-?[0-9][0-9]{3}/;

    mTeleRegex1 = "^[0-9]{3}[-|\s][0-9]{3}[-|\s][0-9]{4}";
    mTeleRegex2 = /^[(][0-9]{3}[)]\s?[0-9]{3}[-][0-9]{4}/;
    mTeleRegex3 = /^\d{10}$/
    myR = /mTeleRegex1/;
    // temp 1 
    // (?=^[1]?\s?.*)(?=.*[(]?[0-9]{3}[)-|\s]?[0-9]{3}[-|\s]?[0-9]{4})(?=.*\d$)

    // check end is number
    // .*\d$

    // check number with -
    // .*[(]?[0-9]{3}[)-|\s]?[0-9]{3}[-|\s]?[0-9]{4}

    // check area code
    // ^[1]?\s?.* 

    // ver1
    // /^[1]?\s?[(]?[0-9]{3}[)-|\s]?[0-9]{3}[-|\s]?[0-9]{4}/;
    
    
    // /\d?\s?[(+]?[0-9][0-9]{2}[)|-]?[0-9][0-9]{2}-?[0-9][0-9]{3}/;
        // /[(]?[0-9][0-9]{2}[0|-]?[0-9][0-9]{2}-?[0-9][0-9]{3}/;
    // const teleRegex2 = ;
    // -?[0-9]{5}-?[0-9]


    return str.match(teleRegex1);
  }
  
console.log(telephoneCheck("1 555 555 5555"));
  

// let repeatNum = "42 42 42 42";
// let reRegex = /(\d+)(\s)\1\2\1/; // Change this line
// let result = repeatNum.match(reRegex);
// console.log(result);

// let repeatStr = "regex regex regex";
// let repeatRegex = /^(\w+)(\s)\1\2\1$/;
// repeatRegex.test(repeatStr); // Returns true

// console.log(repeatStr.match(repeatRegex)); // Returns ["regex regex", "regex"]


// let hello = "   Hello, World!  ";
// let wsRegex = /^\s+|\s+$/g; // Change this line
// let result = hello.replace(wsRegex, ""); // Change this line

// console.log(result+"a");