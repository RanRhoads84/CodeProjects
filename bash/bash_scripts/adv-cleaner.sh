#!/bin/bash

# Advanced cleaning program

LOG_DIR=/var/log
ROOT_UID=0      # Only users with $UID 0 have root privileges.
LINES=50        # Default numbers of lines saved.
E_XCD=66        # Can't change directory?
E_NOTROOOT=67   # Non-root exit error.

# Run as root
if [ "$UID" -ne "$ROOT_UID" ]
then 
    echo   "Must be root to run this script."
    exit $E_NOTROOOT
fi

if [ -n "$1" ]
# Test if command line argumment present (non-empty).
then
    lines=$1
else
    lines=$LINES # Defult, if not specified on command line.
fi

# It's suggested the following 
# is a better way of checking command line arguments,
# but this is still a bit advanced for this stage of the tutorial.
#
#    E_WRONGARGS=65  # Non-numerical argument (bad arg format)
#
#    case "$1" in
#    ""      ) lines=50
#    *[!0-9]*)echo "useage: `basename $0 file-to-cleanup"; exit $E_WRONGARGS;;
#    *       ) lines=$1;;
#    esac
#
#* Skip ahead to "Loops" chapter to decipher all of this.


cd $LOG_DIR
if [ 'pwd' != "LOG_DIR" ] #or if [ "PWD !="$LOG_DIR" ]
                          # Not in /var/log?
then 
    echo "Can't change to $LOG_DIR."
    exit $E_XCD;
fi  # Double check if in right directory before messing with log file.

# More efficient code is;
#
# cd /var/log || {
#    echo "Cannot change to necessary directory." >&2
#    exit $E_XCD;
# }


tail -n $lines messages > mesg.temp # Saves last section of message to log file.
mv mesg.temp messages                # Becomes new log directory

# cat /dev/null > messages 
# Line no longer used as above method is safer

cat /dev/null > wtmp # : > wtmp' and '> wtmp' have the same effect.

exit 0
# A zero return value from the script upon exit
# indicates sucess to the shell.