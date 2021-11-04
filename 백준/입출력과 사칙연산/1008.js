const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().trim().split(" "); //한줄 입력

let a = input[0];
let b = input[1];
console.log(a / b);
