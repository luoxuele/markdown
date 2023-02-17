wget https://github.com/facebook/zstd/releases/download/v1.5.2/zstd-1.5.2.tar.gz
tar xaf zstd-1.5.2.tar.gz

apt install liblzma5 liblzma-dev liblz4-dev


make
make install
make check


tar --zstd -cf directory.tar.zst directory/
tar --use-compress-program zstd -cf directory.tar.zst directory/

# tar
tar {A|c|d|r|t|u|x}[GnSkUWOmpsMBiajJzZhPlRvwo] [ARG...]

extract
create
list
test


tar xavf linux-6.1.4.tar.xz
tar tvf linux-6.1.4.tar.xz

-f, --file=ARCHIVE
-v, --verbose
-a, --auto-compress
-t, --list

tar -tf linux-6.1.4.tar.xz



tar -I 'zstd -9' -cvf Udemy\ -\ Speak\ English\ With\ Confidence\ English\ Speaking\ Course\ 2021-3.tar.zst  Udemy\ -\ Speak\ English\ With\ Confidence\ English\ Speaking\ Course\ 2021-3/

tar --list -af Udemy\ -\ Speak\ English\ With\ Confidence\ English\ Speaking\ Course\ 2021-3.tar.zst  | wc -l
tree 'Udemy - Speak English With Confidence English Speaking Course 2021-3/' | wc -l

