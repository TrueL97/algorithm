function solution(new_id) {
    const answer = new_id
        .toLowerCase() // 1
        .replace(/[^\w-_.]/g, "") // 2  [^] :^는 부정 []안에 있는것을 제외한 문자가 대응 \w:[A-Za-z0-9_]와 같은뜻
        .replace(/\.+/g, ".") // 3   \. :그냥.은 특수문자(개행문자를 제외한 모든문자)이기 떄문에 그냥 사용하면 다른의미 \.이렇게 해야함 + :앞의 문자가 1회이상 반복되는 문자열
        .replace(/^\.|\.$/g, "") // 4   ^ :시작을 의미 | :조건을 합ㅊ필때 사용 $ :끝을 의미
        .replace(/^$/, "a") // 5  ^$ :시작문자, 종료문자가 없으므로 빈문자열
        .slice(0, 15) // 0번째 부터 15번째 까지 자름
        .replace(/\.$/g, ""); // 6
    return answer.padEnd(3, answer[answer.length - 1]); // 7
    // answer[answer.length - 1] length-1이 문자열 끝을 의미 문자열 길이가 3이 될때까지 문자열 끝에 추가 answer=ab일때 abb
    //answer.padStart(3, answer[answer.length - 1]);  answer=ab 일때 = bab
}

var a = solution("...!@BaT#*..y.abcd123efghijklm");
console.log(a);

// 1단계 new_id의 모든 대문자를 대응되는 소문자로 치환합니다.
// 2단계 new_id에서 알파벳 소문자, 숫자, 빼기(-), 밑줄(_), 마침표(.)를 제외한 모든 문자를 제거합니다.
// 3단계 new_id에서 마침표(.)가 2번 이상 연속된 부분을 하나의 마침표(.)로 치환합니다.
// 4단계 new_id에서 마침표(.)가 처음이나 끝에 위치한다면 제거합니다.
// 5단계 new_id가 빈 문자열이라면, new_id에 "a"를 대입합니다.
// 6단계 new_id의 길이가 16자 이상이면, new_id의 첫 15개의 문자를 제외한 나머지 문자들을 모두 제거합니다.
//      만약 제거 후 마침표(.)가 new_id의 끝에 위치한다면 끝에 위치한 마침표(.) 문자를 제거합니다.
// 7단계 new_id의 길이가 2자 이하라면, new_id의 마지막 문자를 new_id의 길이가 3이 될 때까지 반복해서 끝에 붙입니다.
