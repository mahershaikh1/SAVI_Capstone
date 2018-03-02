#define output(PIN) pinMode((PIN), OUTPUT)
#define input(PIN) pinMode((PIN), INPUT)
#define analog(PIN, VALUE) pinMode((PIN), OUTPUT); analogWrite((PIN), (VALUE))

#define CONTROL_A 47
#define CONTROL_B 46
#define CONTROL_C 45
#define DEMUX_0 48
#define DEMUX_1 49
#define DEMUX_2 50
#define DEMUX_3 51
#define DEMUX_4 52
#define DEMUX_5 53

#define ENABLE_H0 7
#define ENABLE_H1 6
#define ENABLE_H2 5
#define ENABLE_H3 4
#define ENABLE_H4 3
#define ENABLE_H5 2
#define M0_S1 22
#define M0_S2 23
#define M1_S1 24
#define M1_S2 25
#define M2_S1 26
#define M2_S2 27
#define M3_S1 28
#define M3_S2 29
#define M4_S1 30
#define M4_S2 31
#define M5_S1 32
#define M5_S2 33

void setup() {
  // set up all pins as output
  output(CONTROL_A); //control A
  output(CONTROL_B); //control B
  output(CONTROL_C); //control C
  output(DEMUX_0); //enable demux0
  output(DEMUX_1); //enable demux1
  output(DEMUX_2); //enable demux2
  output(DEMUX_3); //enable demux3
  output(DEMUX_4); //enable demux4
  output(DEMUX_5); //enable demux5

  output(ENABLE_H0);
  output(ENABLE_H1);
  output(ENABLE_H2);
  output(ENABLE_H3);
  output(ENABLE_H4);
  output(ENABLE_H5);
  output(M0_S1);
  output(M0_S2);
  output(M1_S1);
  output(M1_S2);
  output(M2_S1);
  output(M2_S2);
  output(M3_S1);
  output(M3_S2);
  output(M4_S1);
  output(M4_S2);
  output(M5_S1);
  output(M5_S2);

  double percent = 1;
  int value = percent * 255;

  analog(ENABLE_H0, value);
  analog(ENABLE_H1, value);
  analog(ENABLE_H2, value);
  analog(ENABLE_H3, value);
  analog(ENABLE_H4, value);
  analog(ENABLE_H5, value);
  
  digitalWrite(DEMUX_0, LOW);
  digitalWrite(DEMUX_1, LOW);
  digitalWrite(DEMUX_2, LOW);
  digitalWrite(DEMUX_3, LOW);
  digitalWrite(DEMUX_4, LOW);
  digitalWrite(DEMUX_5, LOW);
  
  Serial.println("Not dead");
}

void loop() {
  selectCharacter(1);
  //for (int k = 0; k < 8; ++k) {
    //selectCharacter(k);
    for (int i = 0; i < 6; ++i) {
      for (int j = 0; j < 5; ++j) {
        setMotor(i, false, true);
        delay(25);
        setMotor(i, false, false);
        delay(1000);
        setMotor(i, true, false);
        delay(25);
        setMotor(i, false, false);
        delay(1000);
      }
    }
  //}
}

void selectCharacter(int character) {
  digitalWrite(CONTROL_A, character & 1 ^ LOW);
  digitalWrite(CONTROL_B, character & 2 ^ LOW);
  digitalWrite(CONTROL_C, character & 4 ^ LOW);
}

void setMotor(int pin, bool currentState, bool nextState) {
  // TODO validate this against hardware
  if (currentState == nextState) {
    digitalWrite(getFirstPin(pin), LOW);
    digitalWrite(getSecondPin(pin), LOW);
  }
  else if (currentState) {
    // currentState is UP, nextState is DOWN
    digitalWrite(getFirstPin(pin), HIGH);
    digitalWrite(getSecondPin(pin), LOW);
  }
  else {
    digitalWrite(getFirstPin(pin), LOW);
    digitalWrite(getSecondPin(pin), HIGH);
  }
}

int getFirstPin(int pin) {
  switch(pin) {
    case 0:
      return M0_S1;
    case 1:
      return M1_S1;
    case 2:
      return M2_S1;
    case 3:
      return M3_S1;
    case 4:
      return M4_S1;
    case 5:
      return M5_S1;
  }
}

int getSecondPin(int pin) {
  switch(pin) {
    case 0:
      return M0_S2;
    case 1:
      return M1_S2;
    case 2:
      return M2_S2;
    case 3:
      return M3_S2;
    case 4:
      return M4_S2;
    case 5:
      return M5_S2;
  }
}
