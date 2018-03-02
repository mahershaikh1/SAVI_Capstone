const int channel[] = {4, 5, 6};
 
//the output pin - mux input
const int outputPin = 7;
byte motors = 0;

void setup() 
{
  // set up all pins as output

    pinMode(4, OUTPUT); //control A
    pinMode(5, OUTPUT); //control B
    pinMode(6, OUTPUT); //control C
    pinMode(7, OUTPUT); //enable demux0
    pinMode(8, OUTPUT); //enable demux1
    pinMode(9, OUTPUT); //enable demux2
    pinMode(10, OUTPUT); //enable demux3
    pinMode(11, OUTPUT); //enable demux4
    pinMode(12, OUTPUT); //enable demux5
    

    Serial.begin(9600);
    Serial.println("Enter Motor Number 1 to 6 or x to Clear");
  
}
 
void loop() 
{
     
    digitalWrite(7,LOW);
    digitalWrite(8,HIGH);
    digitalWrite(9,HIGH);
    digitalWrite(10,HIGH);
    digitalWrite(11,HIGH);
    digitalWrite(12,HIGH);
    pinOne();


/*
    pinOne();
    delay(100);
    pinTwo();
    delay(100);
    pinThree();
    delay(100);
    pinFour();
    delay(100);
    pinFive();
    delay(100);
    pinSix();
    delay(100);
*/
}


void pinZero() {
    digitalWrite(4,LOW);
    digitalWrite(5,LOW);
    digitalWrite(6,LOW);
}

void pinOne() {
    digitalWrite(4,HIGH);
    digitalWrite(5,LOW);
    digitalWrite(6,LOW);
}

void pinTwo() {
    digitalWrite(4,LOW);
    digitalWrite(5,HIGH);
    digitalWrite(6,LOW);
}

void pinThree() {
    digitalWrite(4,HIGH);
    digitalWrite(5,HIGH);
    digitalWrite(6,LOW);
}

void pinFour() {
    digitalWrite(4,LOW);
    digitalWrite(5,LOW);
    digitalWrite(6,HIGH);
}

void pinFive() {
    digitalWrite(4,HIGH);
    digitalWrite(5,LOW);
    digitalWrite(6,HIGH);
}


void resetAll() {
    digitalWrite(4,HIGH);
    digitalWrite(5,HIGH);
    digitalWrite(6,HIGH);
}


