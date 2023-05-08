#include <Adafruit_NeoPixel.h> //(LEDs)
#ifdef __AVR__ //(LEDs)
#include <avr/power.h> // Required for 16 MHz Adafruit Trinket (LEDs)
#endif //LEDs
#define PIN_NEO_PIXEL  2   // Arduino pin that connects to NeoPixel (LEDs)
#define NUM_PIXELS     4  // The number of LEDs (pixels) on NeoPixel
int LEDs[] = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11}; //different pins of LEDs
Adafruit_NeoPixel NeoPixel(NUM_PIXELS, PIN_NEO_PIXEL, NEO_GRB + NEO_KHZ800); //LEDs
const int in15 = A3; //spinner
const int BUZZER_PIN = A2; //buzzer
const int BUTTON_START = A1; //buzzer
int frequency = 3000;   //buzzer frequency

void setup() { //setup for spinner, buzzer, and LEDs
  NeoPixel.begin(); // INITIALIZE NeoPixel strip object (LEDs)
  pinMode(in15, OUTPUT);// Set the pin as an output (spinner)
  digitalWrite(in15, LOW);// Turn off the motor to start with (spinner)
  pinMode(BUTTON_START, INPUT_PULLUP); //set arduino pin to input (buzzer)
  pinMode(BUZZER_PIN, OUTPUT); //set arduino pin to output (buzzer)
}

void spin() { //function to start spinner
    digitalWrite(in15, HIGH);// Set the motor direction and turn it on
    int spinFor = rand() % 2 + 1;// Generate a random spin time between 1 and 5 seconds
    delay(spinFor * 1000); // Wait for the motor to spin for the random amount of time
    digitalWrite(in15, LOW); // Turn off the motor
}

void stop() { //function to stop spinner
    digitalWrite(in15, LOW); //turn off motor
}

void loop() { //run all lights
  NeoPixel.clear(); //set all pixel colors to 'off'. It only takes effect if pixels.show() is called
  int light = rand() % 10 + 1; //create random number between 1 and 10 for lighting up a random button
  spin();// Spin the motor for a random amount of time between 1 and 5 seconds
  stop();    // Stop the motor again 
  delay(1000); //hold pause for 1 second
  int BUTT_STATE = digitalRead(BUTTON_START);//read the start state
  if (BUTT_STATE == LOW){ //buzzes once to say spinning
    tone(BUZZER_PIN, frequency); //turn on buzzer
    delay(1000);//tone 1sec
    noTone(BUZZER_PIN); //turn off buzzer
    switch (light) { //switch case for all 10 buttons
      case 1: //button 1
        for (int pixel = 0; pixel < NUM_PIXELS; pixel++) { // for each pixel
          digitalWrite(LEDs[2], HIGH); //send signal to LED pin 2
          NeoPixel.setPixelColor(pixel, NeoPixel.Color(100, 0, 200)); // it only takes effect if pixels.show() is called
          NeoPixel.show();}   // send the updated pixel colors to the NeoPixel hardware.
          delay(5000); //wait 5 seconds with lights on
          NeoPixel.clear(); // set all pixel colors to 'off'. It only takes effect if pixels.show() is called
          delay(700); //wait .7 seconds
            tone(BUZZER_PIN, frequency); //turn on buzzer
            delay(1000);//tone 1sec
            noTone(BUZZER_PIN); //turn off buzzer
            delay(4000);//wait 4secs
            //Tells user round done by busing 3 times
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500); //wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500);//wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(1000);//wait 1 second
            noTone(BUZZER_PIN);//turn off buzzer
        break; //end case
      
      case 2: //button 2
        for (int pixel = 0; pixel < NUM_PIXELS; pixel++) { // for each pixel
          digitalWrite(LEDs[3], HIGH); //send signal to LED pin 3
          NeoPixel.setPixelColor(pixel, NeoPixel.Color(0, 100, 100)); // it only takes effect if pixels.show() is called
          NeoPixel.show();}   // send the updated pixel colors to the NeoPixel hardware.
          delay(5000); //wait 5 seconds
          NeoPixel.clear(); // set all pixel colors to 'off'. It only takes effect if pixels.show() is called
            tone(BUZZER_PIN, frequency); //turn on buzzer
            delay(1000);//tone 1sec
            noTone(BUZZER_PIN); //turn off buzzer
            delay(4000);//wait 4secs
            //Tells user round done by busing 3 times
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500); //wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500);//wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(1000);//wait 1 second
            noTone(BUZZER_PIN);//turn off buzzer
        break; //end case
      
      case 3: //button 3
        for (int pixel = 0; pixel < NUM_PIXELS; pixel++) { // for each pixel
          digitalWrite(LEDs[4], HIGH); //send signal to LED pin 4
          NeoPixel.setPixelColor(pixel, NeoPixel.Color(200, 0, 100)); // it only takes effect if pixels.show() is called
          NeoPixel.show();}   // send the updated pixel colors to the NeoPixel hardware.
          delay(5000); //wait 5 seconds
          NeoPixel.clear(); // set all pixel colors to 'off'. It only takes effect if pixels.show() is called
            tone(BUZZER_PIN, frequency); //turn on buzzer
            delay(1000);//tone 1sec
            noTone(BUZZER_PIN); //turn off buzzer
            delay(4000);//wait 4secs
            //Tells user round done by busing 3 times
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500); //wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500);//wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(1000);//wait 1 second
            noTone(BUZZER_PIN);//turn off buzzer
        break; //end case
      
      case 4: //button 4
        for (int pixel = 0; pixel < NUM_PIXELS; pixel++) { // for each pixel
          digitalWrite(LEDs[5], HIGH); //send signal to LED pin 5
          NeoPixel.setPixelColor(pixel, NeoPixel.Color(100, 100, 100)); // it only takes effect if pixels.show() is called
          NeoPixel.show();}   // send the updated pixel colors to the NeoPixel hardware. 
          delay(5000); //wait 5 seconds
          NeoPixel.clear(); // set all pixel colors to 'off'. It only takes effect if pixels.show() is called
            tone(BUZZER_PIN, frequency); //turn on buzzer
            delay(1000);//tone 1sec
            noTone(BUZZER_PIN); //turn off buzzer
            delay(4000);//wait 4secs
            //Tells user round done by busing 3 times
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500); //wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500);//wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(1000);//wait 1 second
            noTone(BUZZER_PIN);//turn off buzzer
        break; //end case
      
      case 5: //button 5
        for (int pixel = 0; pixel < NUM_PIXELS; pixel++) { // for each pixel
          digitalWrite(LEDs[6], HIGH); //send signal to LED pin 6
          NeoPixel.setPixelColor(pixel, NeoPixel.Color(100, 0, 0)); // it only takes effect if pixels.show() is called
          NeoPixel.show();}   // send the updated pixel colors to the NeoPixel hardware.
          delay(5000); //wait 5 seconds
          NeoPixel.clear(); // set all pixel colors to 'off'. It only takes effect if pixels.show() is called
            tone(BUZZER_PIN, frequency); //turn on buzzer
            delay(1000);//tone 1sec
            noTone(BUZZER_PIN); //turn off buzzer
            delay(4000);//wait 4secs
            //Tells user round done by busing 3 times
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500); //wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500);//wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(1000);//wait 1 second
            noTone(BUZZER_PIN);//turn off buzzer
        break; //end case
      
      case 6: //button 6 
        for (int pixel = 0; pixel < NUM_PIXELS; pixel++) { // for each pixel
          digitalWrite(LEDs[7], HIGH); //send signal to LED pin 7
          NeoPixel.setPixelColor(pixel, NeoPixel.Color(0, 100, 0)); // it only takes effect if pixels.show() is called
          NeoPixel.show();}   // send the updated pixel colors to the NeoPixel hardware. 
          delay(5000); //wait 5 seconds
          NeoPixel.clear(); // set all pixel colors to 'off'. It only takes effect if pixels.show() is called
            tone(BUZZER_PIN, frequency); //turn on buzzer
            delay(1000);//tone 1sec
            noTone(BUZZER_PIN); //turn off buzzer
            delay(4000);//wait 4secs
            //Tells user round done by busing 3 times
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500); //wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500);//wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(1000);//wait 1 second
            noTone(BUZZER_PIN);//turn off buzzer
        break; //end case
      
      case 7: //button 7
        for (int pixel = 0; pixel < NUM_PIXELS; pixel++) { // for each pixel
          digitalWrite(LEDs[8], HIGH); //send signal to LED pin 8
          NeoPixel.setPixelColor(pixel, NeoPixel.Color(0, 0, 100)); // it only takes effect if pixels.show() is called
          NeoPixel.show();}   // send the updated pixel colors to the NeoPixel hardware.
          delay(5000); //wait 5 seconds
          NeoPixel.clear(); // set all pixel colors to 'off'. It only takes effect if pixels.show() is called
            tone(BUZZER_PIN, frequency); //turn on buzzer
            delay(1000);//tone 1sec
            noTone(BUZZER_PIN); //turn off buzzer
            delay(4000);//wait 4secs
            //Tells user round done by busing 3 times
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500); //wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500);//wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(1000);//wait 1 second
            noTone(BUZZER_PIN);//turn off buzzer
        break; //end case
      
      case 8: //button 8
        for (int pixel = 0; pixel < NUM_PIXELS; pixel++) { // for each pixel
          digitalWrite(LEDs[9], HIGH); //send signal to LED pin 9
          NeoPixel.setPixelColor(pixel, NeoPixel.Color(100, 0, 100)); // it only takes effect if pixels.show() is called
          NeoPixel.show();}   // send the updated pixel colors to the NeoPixel hardware.
          delay(5000); //wait 5 seconds
          NeoPixel.clear(); // set all pixel colors to 'off'. It only takes effect if pixels.show() is called
            tone(BUZZER_PIN, frequency); //turn on buzzer
            delay(1000);//tone 1sec
            noTone(BUZZER_PIN); //turn off buzzer
            delay(4000);//wait 4secs
            //Tells user round done by busing 3 times
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500); //wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500);//wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(1000);//wait 1 second
            noTone(BUZZER_PIN);//turn off buzzer
        break; //end case
      
      case 9: //button 9
        for (int pixel = 0; pixel < NUM_PIXELS; pixel++) { // for each pixel
          digitalWrite(LEDs[10], HIGH); //send signal to LED pin 10
          NeoPixel.setPixelColor(pixel, NeoPixel.Color(150, 100, 10)); // it only takes effect if pixels.show() is called
          NeoPixel.show();}   // send the updated pixel colors to the NeoPixel hardware.
          delay(5000); //wait 5 seconds
          NeoPixel.clear(); // set all pixel colors to 'off'. It only takes effect if pixels.show() is called
            tone(BUZZER_PIN, frequency); //turn on buzzer
            delay(1000);//tone 1sec
            noTone(BUZZER_PIN); //turn off buzzer
            delay(4000);//wait 4secs
            //Tells user round done by busing 3 times
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500); //wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500);//wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(1000);//wait 1 second
            noTone(BUZZER_PIN);//turn off buzzer
        break; //end case
      
      case 10: //button 10
        for (int pixel = 0; pixel < NUM_PIXELS; pixel++) { // for each pixel
          digitalWrite(LEDs[11], HIGH); //send signal to LED pin 11
          NeoPixel.setPixelColor(pixel, NeoPixel.Color(10, 150, 10)); // it only takes effect if pixels.show() is called
          NeoPixel.show();}   // send the updated pixel colors to the NeoPixel hardware.
          delay(5000); //wait 5 seconds
          NeoPixel.clear(); // set all pixel colors to 'off'. It only takes effect if pixels.show() is called
            tone(BUZZER_PIN, frequency); //turn on buzzer
            delay(1000);//tone 1sec
            noTone(BUZZER_PIN); //turn off buzzer
            delay(4000);//wait 4secs
            //Tells user round done by busing 3 times
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500); //wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(500);//wait .5 seconds
            noTone(BUZZER_PIN);//turn off buzzer
            delay(300);//wait .3 seconds
            tone(BUZZER_PIN, frequency);//turn on buzzer
            delay(1000);//wait 1 second
            noTone(BUZZER_PIN);//turn off buzzer
        break; //end case

      default: //default setting
        NeoPixel.clear(); // set all pixel colors to 'off'. It only takes effect if pixels.show() is called
    }
    stop();// Stop the motor 
    delay(3000); //wait 3 seconds with motor stopped
  }
}