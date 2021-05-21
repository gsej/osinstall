
# set system mode to 0x02 which is using the raspberry pi temperature sensor
sudo i2cset -y 1 0x60 0x0f 0xaa && sudo i2cset -y 1 0x60 0x08 0x02

# sets threshold to 55 degrees C
sudo i2cset -y 1 0x60 0x0f 0xaa && sudo i2cset -y 1 0x60 0x01 45
