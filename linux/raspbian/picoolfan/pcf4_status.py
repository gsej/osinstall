#!/usr/bin/python
# -*- coding: utf-8 -*-
# Written by Ioannis A.Mourtsiadis info@pimodules.compile
# Supplying PiCoolFAN4 with core temperature via I2C


import sys
import time
import datetime
import os
import re     
import getopt

import smbus
import time
import datetime

#You can install psutil using: sudo pip install psutil
#import psutil

i2c = smbus.SMBus(1)
counter=0

                                    
def getCPUtemperature():
    time.sleep(0.2)
    res = os.popen('vcgencmd measure_temp').readline()
    cpu_data=res.replace("temp=","").replace("'C\n","")
    cpu_int=int(float(cpu_data))
    return format(cpu_int,"02d")
    
def PCF4_ctemp():
   time.sleep(0.1)
   ctemp = i2c.read_byte_data(0x60, 0x00)
   ctemp = format(ctemp,"02d")
   return ctemp

def PCF4_ttemp():
   time.sleep(0.1)
   ttemp = i2c.read_byte_data(0x60, 0x01)
   ttemp = format(ttemp,"02d")
   return ttemp 

def PCF4_tstep():
   time.sleep(0.1)
   tstep = i2c.read_byte_data(0x60, 0x04)
   tstep = format(tstep,"02d")
   return tstep   
   
def PCF4_fspeed():
   time.sleep(0.1)
   fspeed = i2c.read_word_data(0x60, 0x02)
   fspeed = format(fspeed,"04d")
   return fspeed   

def PCF4_io():
   time.sleep(0.1)
   io = i2c.read_byte_data(0x60, 0x05)
   io = format(io,"01b")
   return io 
 
def PCF4_smode():
   time.sleep(0.1)
   smode = i2c.read_byte_data(0x60, 0x08)
   smode = format(smode,"02x")
   return smode   

def PCF4_itemp():
   time.sleep(0.1)
   itemp = i2c.read_byte_data(0x60, 0x0e)
   itemp = format(itemp,"02d")
   return itemp     
   
def PCF4_unclock():
   time.sleep(0.1)
   unclock = i2c.read_byte_data(0x60, 0x0f)
   unclock = format(unclock,"02x")
   return unclock 
   
def PCF4_led_on():
   time.sleep(0.1)
   led_on = i2c.read_byte_data(0x60, 0x09)
   led_on = format(led_on,"02x")
   return led_on 
   
 
   
def PCF4_version():
   time.sleep(0.1)
   version = i2c.read_byte_data(0x60, 0x0a)
   version = format(version,"02x")
   return version

				
				#unsigned int16	bfreq;			//0x06				//Buzzer frequency, if MSB is 0xff, then music notes, else in Hz,
				
				#unsigned int8	led_on;			//EEPROM //0x09
                #unsigned int8	version;			//0x0A				//if Read: Firmware and Hardware Version 0xHF (Hardare, Firmware)
   			
				#unsigned int8	tfactor;			//0x0D
				#unsigned int8	itemp;			//0x0E


   
while True:
    counter=counter+1
    print "PiCoolFAN 4 Internal registers status"
    print " ","PCB/FM Version:........................ ",PCF4_version()
    print " ","System Mode [0x08] smode:.............. ", PCF4_smode()
    print " ","RPi Core Tempemparature:............... ", getCPUtemperature()    
    print " ","PCF4 Received Core Temp [0x00] ctemp:.. ", PCF4_ctemp()
    print " ","PCF4 Internal Temp. [0x0E] itemp:...... ", PCF4_itemp()
    print " ","PCF4 Threshold Temp. [0x01] ttemp:..... ", PCF4_ttemp()
    print " ","PCF4 Temp. Step [0x04] tstep:.......... ", PCF4_tstep()
    print " ","PCF4 Fan Speed [0x02] fspeed:.......... ", PCF4_fspeed()
    print " ","Running time in Seconds:............... ", counter
    print "*************************************"
    print " "
    time.sleep(1)

