/******************************************************************************
Modified code obtained in https://github.com/sparkfun/AD8232_Heart_Rate_Monitor

******************************************************************************/

void setup() {
  // initialize the serial communication:
  Serial.begin(9600);
}

void loop() {
  
       Serial.println(analogRead(A0));

  delay(1);
}
