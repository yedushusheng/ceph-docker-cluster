#!/bin/bash

#docker  stop  `docker  ps  -aq`
#docker  rm  -v   `docker  ps  -aq`

rm -rf  /etc/ceph
rm -rf  /var/lib/ceph


for disk  in  {sdb,sdc}
do
   mkfs.xfs  -f   /dev/$disk
done
