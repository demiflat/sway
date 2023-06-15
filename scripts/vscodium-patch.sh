#!/bin/bash
sudo cp /usr/share/codium/resources/app/product.json /usr/share/codium/resources/app/product.json.orig
cp /usr/share/codium/resources/app/product.json product.json.orig
cp /usr/share/codium/resources/app/product.json product.json.new
patch -b -u product.json.new -i product.json.patch
sudo cp product.json.new /usr/share/codium/resources/app/product.json
