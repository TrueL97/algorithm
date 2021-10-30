// class Animal {
//     constructor(name) {
//         this.speed = 0;
//         this.name = name;
//     }

const { Interface } = require("readline");

//     run(speed) {
//         this.speed += speed;
//         console.log(`${this.name}asd`);
//     }

//     stop() {
//         this.speed = 0;
//         console.log(`${this.name}`);
//     }
// }

// class Rabbit extends Animal {
//     hide() {
//         console.log(`${this.name}`);
//     }

//     stop() {
//         super.stop(); // 부모 클래스의 stop을 호출해 멈추고,
//         this.hide(); // 숨습니다.
//     }
// }

// let rabbit = new Rabbit("흰 토끼");

// rabbit.run(5); // 흰 토끼 은/는 속도 5로 달립니다.
// rabbit.stop(); // 흰 토끼 이/가 멈췄습니다. 흰 토끼 이/가 숨었습니다!

class Car {
    constructor(speed) {
        this.speed = speed;
        console.log("차" + speed);
    }
    con() {
        console.log("부모차" + speed);
    }
}

class BMW extends Car {
    con() {
        console.log(this.speed);
        console.log("자식차");
    }
}
let bmw = new BMW(10);
bmw.con();
