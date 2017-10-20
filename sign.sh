#/bin/sh


cat $1 | md5 > $1.md5

shasum -a 1 aa.xml | grep -Eo "^[[:alnum:]]+" > $1.sha1

echo 'md5'
cat $1.md5

echo 'sha1'
cat $1.sha1
