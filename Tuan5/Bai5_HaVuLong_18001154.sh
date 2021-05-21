#!/bin/bash
echo `ls /home/student/Desktop`
all=$(ls Desktop/)
echo "- Tat ca cac file trong /Desktop:" $all
echo "- Tat ca cac file co duoi .sh:"
find -name "*.sh"