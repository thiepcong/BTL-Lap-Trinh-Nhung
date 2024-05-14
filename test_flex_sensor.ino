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
  flexVal4 >= 1500 && flexVal4 <= 2500 && 
  flexVal5 >= 1500 && flexVal5 <= 2500){
    text = "A";
  }

  if(flexVal == 4095 && flexVal2 == 4095 && 
  flexVal3 >= 2500 && flexVal3 <= 3500 && 
  flexVal4 >= 2000 && flexVal4 <= 3000 && 
  flexVal5 >= 2000 && flexVal5 <= 3000){
    text = "1";
  }

  if(flexVal == 4095 && flexVal2 == 4095 && 
  flexVal3 == 4095 && flexVal4 >= 2600 && flexVal4 <= 3600 && 
  flexVal5 >= 2500 && flexVal5 <= 3500){
    text = "2";
  }
  SerialBT.println(text);
  Serial.println(text);

  delay(3000);
}
