#!/bin/bash

rm -f testfile_1G

echo "$(date): start file creation"
dd if=/dev/zero of=testfile_1G oflag=direct bs=1M count=1K
echo "$(date): end file creation"

echo "$(date): sleep 3 seconds"
sleep 3

echo "$(date): start 1st read"
cat testfile_1G > /dev/null
echo "$(date): end 1st read"

echo "$(date): sleep 3 seconds"
sleep 3

echo "$(date): start 2nd read"
cat testfile_1G > /dev/null
echo "$(date): end 2nd read"

rm -f testfile_1G
