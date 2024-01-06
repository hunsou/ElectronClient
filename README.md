# ElectronClient
The client for the open source emulator ElectronMS.

Change the IP in Constant.cs and build to use.

# customizations

1. 去掉了启动时的MessageBox
2. 去掉了右键菜单中的Vote
3. Constant.IP会设置为可执行文件名中第一个匹配的ip地址
4. 参考 [Beanfun](https://github.com/pungin/Beanfun) 实现任意非韩国系统区域(system locale)启动游戏 `MainWindow.xaml.cs` `startByLR(gamePath, commandLine, is64BitGame);`

# links
### KMS1.2.316  
- 服务端 Server Side  
[AzureV316](https://github.com/SoulGirlJP/AzureV316)  
[Electron](https://github.com/Bratah123/ElectronMS)  

- 客户端 Client Side  
[ElectronClient](https://github.com/Bratah123/ElectronClient)  
可以修改`Local.dll`中`00004ce0 09`的16进制数字IP实现修改连接的服务器IP  