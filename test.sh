#!/bin/sh

#check failure detection
egrep -f test/regex-fail /dev/null 2>/dev/null
if [ $? != 2 ]; then 
	echo "Test Error: Unknown regex behavior"
	exit 2
fi

#check for regexp errors
failflag=0
basepath=$(git rev-parse --show-toplevel)
cd $basepath/ignore.d.server
for i in `ls`; do
        egrep -f $i /dev/null #2>/dev/null
        if [ $? -ne 1 ]; then
                echo "error in server/$i"
                failflag=1
        fi
done

cd $basepath/ignore.d.workstation
        for i in `ls`; do
                egrep -f $i /dev/null #2>/dev/null
                if [ $? -ne 1 ]; then
                        echo "error in workstation/$i"
                        failflag=1
        fi
done

exit $failflag
