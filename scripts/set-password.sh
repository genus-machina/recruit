#!/bin/bash -e

if [ -n "${PI_PASSWORD}" ]
then
	echo "pi:${PI_PASSWORD}" | chpasswd
else
	passwd pi
fi
