const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().split(" "); //한줄 입력

let a = Number(input[0]);
let b = Number(input[1]);

console.log(a + b);
console.log(a - b);
console.log(a * b);
console.log(Math.floor(a / b));
console.log(a % b);
