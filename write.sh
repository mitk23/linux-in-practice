#!/bin/bash

rm -f testfile_1G

echo "$(date): start write (file creation)"
dd if=/dev/zero of=testfile_1G bs=1M count=1K
echo "$(date): end write"

rm -f testfile_1G
