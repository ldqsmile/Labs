# Labs
使用docker建立学习sqli等的虚拟环境，无需docker知识，运行简单命令即可。
在ubuntu16.04下安装docker/docker-compose:
## Installation
```
# 安装pip
curl -s https://bootstrap.pypa.io/get-pip.py | python3

# 安装最新版docker
curl -s https://get.docker.com/ | sh

# 启动docker服务
service docker start

# 安装compose
pip install docker-compose 
```
其他操作系统安装docker和docker-compose请参考Docker文档进行安装。
## Usage
```
# 拉取项目
git clone https://github.com/ldqsmile/Labs.git
cd Labs

# 进入某一个漏洞/环境的目录
cd sqli-labs

# 启动整个环境
docker-compose up -d
```
测试完成后，停止环境
```
docker-compose down
```
相应环境中有各自的说明文档，请阅读使用。
