// Bluetooth module type is 'Kedsum HC-06 Serial Bluetooth' it's made for Arduinos

#include <SoftwareSerial.h>

// Definitions used by hardware
#define ONE_INPUT 22
#define TWO_INPUT 23
#define THREE_INPUT 24
#define FOUR_INPUT 25
#define FIVE_INPUT 26
#define SIX_INPUT 27
#define SELECT_BUTTON 48
#define BACK_BUTTON 49
#define UP_BUTTON 50
#define DOWN_BUTTON 51
#define LEFT_BUTTON 52
#define RIGHT_BUTTON 53

#define BAUD_RATE 9600

// General defines for the overall program
#define CYCLE_MILLIS 2

// Definitions to be used by the display
#define CHARS_PER_ROW 2
#define COLUMNS_PER_CHAR 2
#define ROWS_PER_CHAR 3
#define PINS_PER_CHAR 6
#define ROWS 1

// Definitions to be used keyboard
#define CIRCULAR_BUFFER_LENGTH 10
// We want a key read every 100 milliseconds, so 100 divided by
// whatever our cycle define is
#define CYCLES_PER_KEY_INPUT (100 / CYCLE_MILLIS)

// Keyboard handling variables
int writeChar;
int readBuffer[CIRCULAR_BUFFER_LENGTH];
int readBufferIndex;

// Counter for when the hardware pools the hardware
int keyboardReadCounter;

// Counter for when we send a message to the device
int keyboardSendCounter;

void setup() 
{
  // set up all pins as output
  pinMode(ONE_INPUT, INPUT);
  pinMode(TWO_INPUT, INPUT);
  pinMode(THREE_INPUT, INPUT);
  pinMode(FOUR_INPUT, INPUT);
  pinMode(FIVE_INPUT, INPUT);
  pinMode(SIX_INPUT, INPUT);
  pinMode(SELECT_BUTTON, INPUT);
  pinMode(BACK_BUTTON, INPUT);
  pinMode(UP_BUTTON, INPUT);
  pinMode(DOWN_BUTTON, INPUT);
  pinMode(LEFT_BUTTON, INPUT);
  pinMode(RIGHT_BUTTON, INPUT);
  Serial.begin(BAUD_RATE);
  //readNumber = 0;
  memset(&readBuffer, 0, CIRCULAR_BUFFER_LENGTH * sizeof(int));
  readBufferIndex = 0;
  writeChar = 0;
  keyboardReadCounter = 0;
  keyboardSendCounter = 0;
}

void loop() 
{
  handleKeyboard();
  delay(CYCLE_MILLIS);
}

void handleKeyboard() {
  readKeyboard();
  if (keyboardSendCounter >= CYCLES_PER_KEY_INPUT) {
    if (digitalRead(SELECT_BUTTON)) {
      sendButtonPress("SELECT " + String(getKeyPressed()));
    }
    else if (digitalRead(BACK_BUTTON)) {
      sendButtonPress("BACK");
    }
    else if (digitalRead(UP_BUTTON)) {
      sendButtonPress("UP");
    }
    else if (digitalRead(DOWN_BUTTON)) {
      sendButtonPress("DOWN");
    }
    else if (digitalRead(LEFT_BUTTON)) {
      sendButtonPress("LEFT");
    }
    else if (digitalRead(RIGHT_BUTTON)) {
      sendButtonPress("RIGHT");
    }
    else {
      return;
    }
    keyboardSendCounter = 0;
  }
  else {
    ++keyboardSendCounter;
  }
}

void readKeyboard() {
  if (keyboardReadCounter >= CYCLES_PER_KEY_INPUT) {
    readBuffer[readBufferIndex] = getValue();
    readBufferIndex = (readBufferIndex + 1) % CIRCULAR_BUFFER_LENGTH;
    keyboardReadCounter = 0;
  }
  else {
    ++keyboardReadCounter;
  }
}

char getKeyPressed() {
  int maxValue = 0;
  for (int i = 0; i < CIRCULAR_BUFFER_LENGTH; ++i) {
    if (readBuffer[i] > maxValue) {
      maxValue = readBuffer[i];
    }
    readBuffer[i] = 0;
  }
  return getCharFromKeyboardInt(maxValue);
}

void sendButtonPress(String type) {
  Serial.println("{\"type\":\"BUTTON_PRESSED\",\"value\":\"" + type + "\"}");
}

int getValue() {
  int value = digitalRead(ONE_INPUT);
  value += digitalRead(TWO_INPUT) << 1;
  value += digitalRead(THREE_INPUT) << 2;
  value += digitalRead(FOUR_INPUT) << 3;
  value += digitalRead(FIVE_INPUT) << 4;
  value += digitalRead(SIX_INPUT) << 5;
  return value;
}

char getCharFromKeyboardInt(int c) {
  if (c == 60) {
    return '#';
  }
  else if (c == 50) {
    return '$';
  }
  else if (c == 4) {
    return '\'';
  }
  else if (c == 54) {
    return '(';
  }
  else if (c == 2) {
    return ',';
  }
  else if (c == 12) {
    return '/';
  }
  else if (c == 50) {
    return '.';
  }
  else if (c == 18) {
    return ':';
  }
  else if (c == 38) {
    return '?';
  }
  else if (c == 1) {
    return 'a';
  }
  else if (c == 9) {
    return 'c';
  }
  else if (c == 3) {
    return 'b';
  }
  else if (c == 17) {
    return 'e';
  }
  else if (c == 25) {
    return 'd';
  }
  else if (c == 27) {
    return 'g';
  }
  else if (c == 11) {
    return 'f';
  }
  else if (c == 10) {
    return 'i';
  }
  else if (c == 19) {
    return 'h';
  }
  else if (c == 5) {
    return 'k';
  }
  else if (c == 26) {
    return 'j';
  }
  else if (c == 13) {
    return 'm';
  }
  else if (c == 7) {
    return 'l';
  }
  else if (c == 21) {
    return 'o';
  }
  else if (c == 29) {
    return 'n';
  }
  else if (c == 31) {
    return 'q';
  }
  else if (c == 15) {
    return 'p';
  }
  else if (c == 14) {
    return 's';
  }
  else if (c == 23) {
    return 'r';
  }
  else if (c == 37) {
    return 'u';
  }
  else if (c == 30) {
    return 't';
  }
  else if (c == 58) {
    return 'w';
  }
  else if (c == 39) {
    return 'v';
  }
  else if (c == 61) {
    return 'y';
  }
  else if (c == 45) {
    return 'x';
  }
  else if (c == 53) {
    return 'z';
  }
  else {
    return ' ';
  }
}

