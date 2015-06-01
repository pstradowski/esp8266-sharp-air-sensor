# esp8266-sharp-air-sensor

This is simple Lua script to use Sharp GP2Y1010AU0F with NodeMCU.
It is inspired by work of Chris Nafis http://www.howmuchsnow.com/arduino/airquality/ and https://github.com/Trefex/arduino-airquality/tree/master/Module_Dust-Sensor, but I used more precise approach to calibrate the sensor.
While Chris Nafis had a chance to compare, I must rather use an approach described in the application note: http://sharp-world.com/products/device/lineup/data/pdf/datasheet/gp2y1010au_appl_e.pdf - I store minimum value reported by the sensor in a config file (storage.lua) and calculate final measurements useing V0 as described in the applicaiton note.
I use a voltage divider to lower down the output of GP2Y1010AU0F to the level of ESP8266(1V), so the code incorporates values of my resistors.

