#!/bin/bash

echo
echo
echo "    ===       ===         || "
echo "  =     =   =     =       || "
echo "  =     =   =     =       || "
echo "  =     =   =     =       || "
echo "    ===       ===     = = =  "
echo "                    (c) TheSecretAgent"
echo
echo
echo



BACKUPFILE=backup-$(date +%m-%d-%Y)


archive=${1:-$BACKUPFILE}

tar cvf - `find . -mtime -1 -type d -print` > $archive.tar
gzip $archive.tar
echo "Directory $PWF backed up in archive file \"archive.tar.gz\"."

exit 0
