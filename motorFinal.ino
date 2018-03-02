//Motor control file.
//clockwise and counter clockwise functions.  

#include <Stepper.h>

// change this to the number of steps on your motor
const int steps = 20;

//{13, 12, 11, 10} = clockwise
//{10, 11, 12, 13} = counter-clockwise
Stepper motor(steps, 10, 11, 12, 13);

// the previous reading from the analog input
int previous = 0;

void setup() {

    pinMode(4, OUTPUT);
    pinMode(5, OUTPUT);
    pinMode(6, OUTPUT);
    
  //rpm value
  motor.setSpeed(1000);
}

void loop() {

  counter_clockwise();
  
  
}

void clockwise() {
  motor.step(-steps);
}

void counter_clockwise() {
  motor.step(steps);
}

void pinOne() {
    digitalWrite(4,LOW);
    digitalWrite(5,LOW);
    digitalWrite(6,LOW);
}

void pinTwo() {
    digitalWrite(4,HIGH);
    digitalWrite(5,LOW);
    digitalWrite(6,LOW);
}

void pinThree() {
    digitalWrite(4,LOW);
    digitalWrite(5,HIGH);
    digitalWrite(6,LOW);
}

void pinFour() {
    digitalWrite(4,HIGH);
    digitalWrite(5,HIGH);
    digitalWrite(6,LOW);
}

void pinFive() {
    digitalWrite(4,LOW);
    digitalWrite(5,LOW);
    digitalWrite(6,HIGH);
}

void pinSix() {
    digitalWrite(4,HIGH);
    digitalWrite(5,LOW);
    digitalWrite(6,HIGH);
}

void resetAll() {
    digitalWrite(4,HIGH);
    digitalWrite(5,HIGH);
    digitalWrite(6,HIGH);
}


