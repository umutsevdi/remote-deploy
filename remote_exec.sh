#!/bin/bash
# Example scripts
# 
# get files
sftp umutsevdi@pi.local << 'END'
    get SSD1306_OLED_RPI-1.2/*
    quit
    END

# send files
sftp umutsevdi@pi.local << 'END'
    put `pwd`/SSD1306_OLED_RPI-1.2/* SSD1306_OLED_RPI/
    quit
    END

# compile and run
ssh umutsevdi@pi.local <<  'END'
    cd SSD1306_OLED_RPI
    make clean
    make install
    sudo ./bin/test
    exit
    END
