#!/bin/bash -e

sed -i "/enable the optional hardware interfaces/a enable_uart=1" /boot/config.txt
