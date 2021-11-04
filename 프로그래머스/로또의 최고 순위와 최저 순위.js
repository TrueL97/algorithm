function solution(lottos, win_nums) {
    var answer = [];

    const correct = lottos.filter((lotto) => win_nums.includes(lotto)).length;
    //filter:각 요소를 시험할 함수. true를 반환하면 요소를 유지하고, false를 반환하면 버립니다. 다음 세 가지 매개변수를 받습니다.

    const zeros = lottos.filter((lotto) => lotto === 0).length;
    console.log(correct, zeros);

    // let min = 7 - correct >= 6 ? 6 : 7 - correct;
    // let max = min - zeros < 1 ? 1 : min - zeros;

    var min = 7 - correct;
    if (min === 7) {
        min = 6;
    }
    var max = 7 - correct - zeros;
    if (max === 7) {
        max = 6;
    }
    answer = [max, min];
    return answer;
}
var a = [0, 0, 0, 0, 0, 0];
var b = [31, 10, 45, 1, 6, 19];
console.log(solution(a, b));

// 당첨 번호	   31	 10    45  1	 6 19       결과
// 최고 순위 번호	31	0→10	44	1	0→6	25	4개 번호 일치, 3등
// 최저 순위 번호	31	0→11	44	1	0→7	25	2개 번호 일치, 5등
