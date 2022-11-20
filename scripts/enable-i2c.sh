#!/bin/bash -e

sed -i "s/#dtparam=i2c_arm=on/dtparam=i2c_arm=on\ndtparam=i2c_baudrate=600000/" /boot/config.txt
