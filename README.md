# MacOS-VPN-Auto-Gateway
通过将APNIC发布的最新国内ip段列表加入到本地路由，实现国内ip段不通过VPN请求互联网


## 使用说明：

> 生成ip_up.sh、ip_down.sh命令文件

    sudo ./ip_fetch.sh


> 正确运行后，可以在该文件夹下看到两个文件，分别是ip_up.sh、ip_down.sh

    //添加网关列表
    ./ip_up.sh
  
    //删除网关列表
    ./ip_down.sh
