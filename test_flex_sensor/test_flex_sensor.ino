 #include "BluetoothSerial.h"

int flexPin = 39;
int flexPin2 = 35; //35
int flexPin3 = 33; //33
int flexPin4 = 32; 
int flexPin5 = 34; //34

String device_name = "Bai tap lon mon nhung";

BluetoothSerial SerialBT;

void setup()
{
  Serial.begin(9600);
  SerialBT.begin(device_name); //Bluetooth device name
  Serial.printf("The device with name \"%s\" is started.\nNow you can pair it with Bluetooth!\n", device_name.c_str());
}

void loop()
{
  String text = "";
  int flexVal;
  int flexVal2;
  int flexVal3;
  int flexVal4;
  int flexVal5;

  flexVal=analogRead(flexPin);
  Serial.println(flexVal);

  flexVal2=analogRead(flexPin2);
  Serial.println(flexVal2);

  flexVal3=analogRead(flexPin3);
  Serial.println(flexVal3);

  flexVal4=analogRead(flexPin4);
  Serial.println(flexVal4);

  flexVal5=analogRead(flexPin5);
  Serial.println(flexVal5);

//  SerialBT.print("Dự đoán: ");
//  if(flexVal>=4000 && flexVal2>=4000 && flexVal3>=4000 && flexVal4>=4000 && flexVal5>=4000) {
//    SerialBT.println("5");
//  } else {
//    SerialBT.println("0");
//  }

  

  if(flexVal == 4095 && flexVal2 >= 1700 && flexVal2 <= 2700 && 
  flexVal3 >= 2000 && flexVal3 <= 3000 && 
  flexVal4 >= 2000 && flexVal4 <= 3000 && 
  flexVal5 >= 2000 && flexVal5 <= 3000){
    Serial.println("A");
    text = "A";
  }

  if(flexVal >= 3000 && flexVal <= 3800 &&
  flexVal2 == 4095 && 
  flexVal3 == 4095 && 
  flexVal4 == 4095 && 
  flexVal5 == 4095){
    Serial.println("B");
    text = "B";
  }

  if(flexVal == 4095 &&
  flexVal2 == 4095 && 
  flexVal3 >= 3000 && flexVal3 <= 3800 && 
  flexVal4 >= 3500 && flexVal4 <= 4095 && 
  flexVal5 >= 3800 && flexVal5 <= 4095 ){
    Serial.println("C");
    text = "C";
  }

  if(flexVal == 4095 &&
  flexVal2 == 4095 && 
  flexVal3 == 4095 && 
  flexVal4 >= 3400 && flexVal4 <= 3800 && 
  flexVal5 == 4095 ){
    Serial.println("D");
    text = "D";
  }

  if(flexVal >= 700 && flexVal <= 1700 &&
  flexVal2 >= 3000 && flexVal2 <= 4000 &&
  flexVal3 >= 3200 && flexVal3 <= 4095 &&
  flexVal4 >= 2000 && flexVal4 <= 3000 && 
  flexVal5 >= 2000 && flexVal5 <= 2800 ){
    Serial.println("E");
    text = "E";
  }

  if(flexVal >= 3500 && flexVal <= 4095 &&
  flexVal2 >= 3200 && flexVal2 <= 3800 &&
  flexVal3 == 4095 &&
  flexVal4 == 4095 && 
  flexVal5 == 4095){
    Serial.println("F");
    text = "F";
  }

  if(flexVal == 4095 &&
  flexVal2 == 4095 &&
  flexVal3 >= 1000 && flexVal3 <= 2000 &&
  flexVal4 >= 2800 && flexVal4 <= 3800  && 
  flexVal5 >= 2200 && flexVal5 <= 3200){
    Serial.println("G");
    text = "G";
  }

  if(flexVal == 4095 &&
  flexVal2 == 4095 &&
  flexVal3 == 4095 &&
  flexVal4 >= 2200 && flexVal4 <= 3100  && 
  flexVal5 >= 1100 && flexVal5 <= 1900){
    Serial.println("H");
    text = "H";
  }

  if(flexVal == 4095 &&
  flexVal2 >= 1200 && flexVal2 <= 1800 &&
  flexVal3 >= 3000 && flexVal3 <= 4095 &&
  flexVal4 >= 2900 && flexVal4 <= 3600  && 
  flexVal5 == 4095){
    Serial.println("I");
    text = "I";
  }

  if(flexVal == 4095 &&
  flexVal2 == 4095 &&
  flexVal3 >= 3000 && flexVal3 <= 3800 &&
  flexVal4 >= 2500 && flexVal4 <= 3200  && 
  flexVal5 == 4095){
    Serial.println("J");
    text = "J";
  }

  if(flexVal >= 2400 && flexVal <= 3400 &&
  flexVal2 == 4095 &&
  flexVal3 == 4095 &&
  flexVal4 >= 2200 && flexVal4 <= 3200  && 
  flexVal5 >= 2200 && flexVal5 <= 3200){
    Serial.println("K");
    text = "K";
  }

  if(flexVal >= 3800 && flexVal <= 4095 &&
  flexVal2 >= 3800 && flexVal2 <= 4095 &&
  flexVal3 >= 3200 && flexVal3 <= 3800 &&
  flexVal4 >= 2900 && flexVal4 <= 3500  && 
  flexVal5 >= 2700 && flexVal5 <= 3500){
    Serial.println("L");
    text = "L";
  }

  if(flexVal >= 3500 && flexVal < 4095 &&
  flexVal2 >= 3500 && flexVal2 <= 4095 &&
  flexVal3 >= 3500 && flexVal3 <= 4095 &&
  flexVal4 >= 3500 && flexVal4 <= 4095  && 
  flexVal5 >= 1000 && flexVal5 <= 1700){
    Serial.println("M");
    text = "M";
  }

  if(flexVal >= 3500 && flexVal <= 4095 &&
  flexVal2 >= 3500 && flexVal2 <= 4095 &&
  flexVal3 >= 3500 && flexVal3 <= 4095 &&
  flexVal4 >= 1000 && flexVal4 <= 1800  && 
  flexVal5 >= 2400 && flexVal5 <= 3000){
    Serial.println("N");
    text = "N";
  }

  if(flexVal == 4095 &&
  flexVal2 == 4095 &&
  flexVal3 == 4095 &&
  flexVal4 >= 3400 && flexVal4 <= 4000  && 
  flexVal5 >= 2700 && flexVal5 <= 3400){
    Serial.println("O");
    text = "O";
  }

  if(flexVal >= 1500 && flexVal <= 2000 &&
  flexVal2 == 4095 &&
  flexVal3 >= 3900 && flexVal3 <= 4095 &&
  flexVal4 == 4095  && 
  flexVal5 == 4095){
    Serial.println("P");
    text = "P";
  }

  if(flexVal == 4095 &&
  flexVal2 >= 3900 && flexVal2 <= 4095 &&
  flexVal3 >= 3500 && flexVal3 <= 4095 &&
  flexVal4 >= 2400 && flexVal4 <= 3000 &&
  flexVal5 >= 2100 && flexVal5 <= 2800){
    Serial.println("Q");
    text = "Q";
  }

  if(flexVal == 4095 &&
  flexVal2 == 4095 &&
  flexVal3 == 4095 &&
  flexVal4 >= 2700 && flexVal4 <= 3200 &&
  flexVal5 == 4095){
    Serial.println("R");
    text = "R";
  }

  if(flexVal == 4095 &&
  flexVal2 >= 3900 && flexVal2 <= 4095 &&
  flexVal3 >= 1500 && flexVal3 <= 2500 &&
  flexVal4 >= 2300 && flexVal4 <= 2800 &&
  flexVal5 >= 2500 && flexVal5 <= 3000){
    Serial.println("S");
    text = "S ";
  }
  
  if(flexVal == 4095 && flexVal2 == 4095 && 
  flexVal3 >= 2500 && flexVal3 <= 3500 && 
  flexVal4 >= 2000 && flexVal4 <= 3000 && 
  flexVal5 >= 2000 && flexVal5 <= 3000){
    Serial.println("1");
    text = "1";
  }

  if(flexVal == 4095 && flexVal2 == 4095 && 
  flexVal3 == 4095 && flexVal4 >= 2000 && flexVal4 <= 3000 && 
  flexVal5 >= 2000 && flexVal5 <= 3000){
    Serial.println("2");
    text = "2";
  }

  if(flexVal == 4095 && flexVal2 == 4095 && 
  flexVal3 == 4095 && flexVal4 >= 2800 && flexVal4 <= 3300 && 
  flexVal5 >= 2300 && flexVal5 <= 2800){
    Serial.println("3");
    text = "3";
  }

  if(flexVal == 4095 && flexVal2 == 4095 && 
  flexVal3 == 4095 && 
  flexVal4 == 4095 &&
  flexVal5 >= 3000 && flexVal5 <= 4000){
    Serial.println("4");
    text = "4";
  }

  if(flexVal == 4095 && flexVal2 == 4095 && 
  flexVal3 == 4095 && flexVal4 == 4095 && 
  flexVal5 == 4095){
    Serial.println("5");
    text = "5";
  }

  if(flexVal == 4095 && flexVal2 == 4095 && 
  flexVal3 == 4095 && flexVal4 == 4095 && 
  flexVal5 >= 1000 && flexVal5 <= 2000){
    Serial.println("6");
    text = "6";
  } 

  if(flexVal == 4095 && flexVal2 == 4095 && 
  flexVal3 == 4095 && 
  flexVal4 >= 1000 && flexVal4 <= 2000 &&
  flexVal5 == 4095){
    Serial.println("7");
    text = "7";
  }

  if(flexVal == 4095 && flexVal2 == 4095 && 
  flexVal3 >= 2000 && flexVal3 <= 2800 &&
  flexVal4 ==4095 &&
  flexVal5 == 4095){
    Serial.println("8");
    text = "8";
  }

  if(flexVal == 4095 &&
  flexVal2 >= 2000 && flexVal2 <= 3000 &&
  flexVal3 == 4095 && 
  flexVal4 == 4095 &&
  flexVal5 == 4095){
    Serial.println("9");
    text = "9";
  }

  
  
  
  
  SerialBT.println(text);
  Serial.println(text);

  delay(3000);
}
