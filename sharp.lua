file.open("storage.lua", "r")
v0=file.readline()
v0=v0*1
file.close()

led_pin=5
gpio.mode(led_pin,gpio.OUTPUT)
gpio.write(led_pin,gpio.HIGH)
tmr.delay(10000)
gpio.write(led_pin,gpio.LOW)
tmr.delay(280)
voltage=adc.read(0)
tmr.delay(40)
gpio.write(led_pin,gpio.HIGH)
print(voltage)
if voltage<v0 then
    v0=voltage
    file.open("storage.lua", "w+")
    file.writeline(v0)
    file.close()
end
voltage=(voltage/1024)*3.615384615
v0=(v0/1024)*3.615384615
dust=(voltage*0.17-v0)*1000
print("Sharp output:"..dust.."ug/m3")

