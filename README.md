
# aurdl-configs

#### 介绍

众所都周知，国内Github用起来很麻烦

众所都又周知，aur里的构建脚本大多指向Github

众所都再周知，不是每个人都能挂上七根木棍畅游互联网世界（比如我）

于是有了此仓库

#### 文件说明

仓库有三个文件
1. makepkg.conf：是我修改过的版本，主要改了dlagent的https协议下载器
2. makepkg.conf.bak：Archlinux原版makepkg.conf文件
3. aurdl：替换GitHub链接的脚本文件


#### 安装教程

1.  克隆此仓库
2.  将aurdl脚本复制到你想要存放的目录，并且sudo chmod +x aurdl
3.  将makepkg.conf文件存放至/etc目录，替换原有文件
4.  用编辑器打开makepkg.conf文件并将字段/path/to/aurdl替换为你的路径（必须是完整路径，如/home/username/aurdl）
5.  可自行编辑脚本文件，以替换自己喜欢的镜像站url或者反代服务器

#### 使用说明

皇帝的新说明！

#### 特别说明

脚本修改自[知乎专栏](https://zhuanlan.zhihu.com/p/176987140)的脚本
