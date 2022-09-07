# zlm构建工具
支持构建各个操作系统下的zlm包， 当前已支持centos7, ubuntu18, 
项目依赖docker，请先自行安装docker环境

linux下：

```shell
# 安装环境
./install.sh centos7
# 构建普通版本
sudo ./build.sh centos7

# 构建支持WEBRTC的版本
sudo ./build.sh centos7 rtc

# 移除安装环境
./uninstall.sh centos7
```

win下：

```shell
# 安装环境
./install.bat centos7
# 构建
./build.bat centos7

# 移除安装环境
./uninstall.bat centos7
```


构建完成后可在build下找到构建成功的文件


需要支持的操作系统，请大家在issues里留言。