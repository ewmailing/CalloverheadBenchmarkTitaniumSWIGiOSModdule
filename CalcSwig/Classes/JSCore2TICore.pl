#!/bin/sh
FILE=$1
if [ -e $FILE ]; then
	echo "Substituting in $FILE"
else 
	echo "File does not exist"
fi

perl -p -i -e 's/<JavaScriptCore\/JavaScript.h>/<TiCore\/Ti.h>/g' $FILE
perl -p -i -e 's/JSContext/TiContext/g' $FILE
perl -p -i -e 's/JSClass/TiClass/g' $FILE
perl -p -i -e 's/JSValue/TiValue/g' $FILE
perl -p -i -e 's/JSObject/TiObject/g' $FILE
perl -p -i -e 's/JSStatic/TiStatic/g' $FILE
perl -p -i -e 's/JSString/TiString/g' $FILE
perl -p -i -e 's/JSGlobal/TiGlobal/g' $FILE
perl -p -i -e 's/kJSPropertyAttribute/kTiPropertyAttribute/g' $FILE

