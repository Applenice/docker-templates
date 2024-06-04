### 使用说明
基于参考中列出的项目进行改造，通过libreoffice进行word文档转pdf的容器工具，默认添加宋体、黑体、楷体三种字体支持，用于支持中文。

#### 配置方法
1、构建镜像
```shell
docker build -t libreofficetools:v1 .
```

2、创建wordtopdf命令
```shell
echo "docker run --rm -i libreofficetools:v1" > /usr/bin/wordtopdf && chmod +x /usr/bin/wordtopdf
```

3、文档转换
```shell
$ cat Document.docx | topdf > Document.pdf
```

#### 参考
1、https://github.com/vladholubiev/docker-libreoffice-pdf-cli  
