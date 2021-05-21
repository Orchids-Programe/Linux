#!/bin/bash
`ls /home/student`
for i in *.doc
do
    mv "$i" "${i%doc}txt"
done

