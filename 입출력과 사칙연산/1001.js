const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().trim().split(" "); //한줄 입력

let a = Number(input[0]);
let b = Number(input[1]);
console.log(a - b);
