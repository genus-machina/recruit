#!/bin/bash -e

function cleanup () {
	rm -f "${ARCHIVE}"
}

trap cleanup EXIT

ARCH=armv6l
BASE_URL=https://nodejs.org/dist/latest-v8.x/
PACKAGE=$(curl -sL "${BASE_URL}" | tr '<>' '$' | cut -d '$' -f 3 | grep "${ARCH}.tar.xz")
VERSION=$(basename "${PACKAGE}" '.tar.xz')

ARCHIVE="/tmp/${PACKAGE}"

echo Downloading latest node distribution...
curl -o "${ARCHIVE}" -#L "${BASE_URL}/${PACKAGE}"

echo Extracting archive...
pushd /opt > /dev/null
tar Jxvf "${ARCHIVE}"
popd > /dev/null

echo Installing commands...
ln -sf /opt/${VERSION}/bin/* /usr/local/bin/
