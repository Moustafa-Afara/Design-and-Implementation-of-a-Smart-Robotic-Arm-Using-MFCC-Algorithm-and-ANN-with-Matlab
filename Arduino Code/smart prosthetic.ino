#include <Servo.h>
#include <RH_ASK.h>   // Include the RH_ASK library
#include <SPI.h>      // Not actually used but needed to compile the RH_ASK library 
String incomingSerial;   // for incoming serial data 
 RH_ASK radio(2000, 11, 12);
 
Servo ThumbServo;   // create servo object to control a servo (Thumb Finger) 
Servo IndexServo;   // create servo object to control a servo (Index Finger) 
Servo MiddleServo;  // create servo object to control a servo (Middle Finger) 
Servo RingServo;    // create servo object to control a servo (Ring Finger) 
Servo SmallServo;   // create servo object to control a servo (Small Finger
void setup() {
  // put your setup code here, to run once:
ThumbServo.attach(1);  // attaches the servo on pin 2 to the servo object 
  IndexServo.attach (2);  
  MiddleServo.attach (3);
  RingServo.attach (4);
  SmallServo.attach (5);  
  
  Serial.begin(9600);     // opens serial port, sets data rate to 9600 bps
}

void loop() {
  // put your main code here, to run repeatedly:
  radio.waitPacketSent();
  if (Serial.available() > 0)  {  
            // read the incoming byte: 
              incomingSerial = Serial.readString();
              incomingSerial.remove(3);  
             Serial.println(incomingSerial);
             if(incomingSerial.startsWith("1"))              
              {  incomingSerial=incomingSerial.substring (2,3 );

                ThumbServo.write(incomingSerial.toInt());    // tell servo to go to  position in variable 'pos' 
               }  
              else if(incomingSerial.startsWith("2"))              
               { incomingSerial=incomingSerial.substring ( 2,3 );
                IndexServo.write(incomingSerial.toInt());    // tell servo to go to  position in variable 'pos' 
               }  
              else if(incomingSerial.startsWith("3"))              
                {incomingSerial=incomingSerial.substring ( 2,3 ); 
                MiddleServo.write(incomingSerial.toInt());    // tell servo to go to  position in variable 'pos' 
               }  
              else if(incomingSerial.startsWith("4"))              
               { incomingSerial=incomingSerial.substring ( 2,3 ) ; 
                RingServo.write(incomingSerial.toInt());    // tell servo to go to  position in variable 'pos' 
               }  
              else if(incomingSerial.startsWith("5"))       { 
                incomingSerial=incomingSerial.substring (2,3 );
                SmallServo.write(incomingSerial.toInt());    // tell servo to go to  position in variable 'pos' 
               }  

}}
