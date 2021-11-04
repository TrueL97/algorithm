const fs = require("fs");

const input = fs.readFileSync("/dev/stdin").toString().trim().split("\n"); //여러줄 입력
let a = Number(input[0]);
let b = Number(input[1]);

//b=385
let c = b % 10; //5
let d = Math.floor(b / 10) % 10; //8
let e = Math.floor(b / 100) % 10; //3

console.log(a * c);
console.log(a * d);
console.log(a * e);
console.log(a * b);
