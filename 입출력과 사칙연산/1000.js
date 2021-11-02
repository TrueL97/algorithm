const fs = require("fs");
const input = fs.readFileSync("/dev/stdin").toString().split(" "); //한줄 입력

var j = 0;
for (let i = 0; i < input.length; i++) {
    let a = Number(input[i]);
    j = j + a;
}
console.log(j);
// const input1 = fs.readFileSync("/dev/stdin").toString().trim().split("\n"); //여러줄 입력
// for (let i = 0; i < input1.length; i++) {
//     console.log(input1);
//     console.log(input1[i]);
// }
