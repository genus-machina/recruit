#!/bin/bash -e

echo 'dtparam=i2c_arm=on' >> /boot/config.txt
echo 'dtparam=i2c_baudrate=600000' >> /boot/config.txt
