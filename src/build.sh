#!/bin/sh

#
# @name Organic Builder
# @author José Wilker <jose.wilker@smartapps.com.br>
# @description Builder for organiCSS
# @date 2014-11-14
#

organic="organic.css";

rm -rf $organic;

echo "Building file organic.css...";
lessc organic/organic.less organic.css --clean-css="--compatibility=ie8 --advanced";

if [ -f $organic ]; then
	echo "Done! The file 'organic.css' was created successfully.";
fi;
