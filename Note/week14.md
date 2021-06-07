# 第14週

## web server

## sp > 08-posix > 06-net > 05-http

curl -v http://localhost:8080

helloWedServer.c
 20 fsync(client_fd);緩衝 清出資料

headPrintServer.c
 
htmlServer.c
主要傳回檔案

主要取得GET

 24  responseFile(client_fd, path);  

httpd.c  
 14  sprintf(fpath, "./web%s", path);  
 18  file == NULL 開檔失敗執行  
 25  HTTP/1.1 執行版本  
     respones 把東西執行出來  
 26  Content-Type: text/html 指定版本  
 28  write 把 respone 把執行的檔案寫出來  

伺服端server

htmlThreadServer.c  
server   
如果net_accept有接收到檔案 就會回傳  
如果用thread可以繼續接下一個請求 適合容量大檔案  

## sp > 08-posix > 07-nonblocking 

block.c

nonblocking1.c

nonblocking2.c

## sp > 09-pipe > 00-shell

## sp > 09-pipe > 01-grep1 

## sp > 09-pipe > 02-popen 
popen1.c
 5  popen有點像管線的部分 需要寫入

popen2.c
 6  fread 

為甚麼要使用管線  
 管線用意 fock 的方式做連結   
 thread 會造成邊際效應 然後造成死結  
 ipc 不能用共用變數來解決  
 inter-process  
 互相溝通   

upper > upperpipe.c
用來呼叫管線
管線就是一種一切皆檔案的存在  
        gcc upper.c -o upper  
        gcc upperpipe.c -o upperpipe  
        ./upperpipe  


03-pipe > pipe1.c  
 9  pipefd[0]; 讀取  
    pipefd[1]; 寫入  
 40 else 擔任父親的腳色  

## sp >08-posix > 09-pipe > 04-fifo
01-user > README.md  
cat讀出  
echo寫入  

        od README.md
        od myfifo
        ps
        echo "hello myfifo" > myfifo

這種管線既是可以讀取和寫入


## sp >08-posix > 09-pipe > 04-fifo > 02-chat 
fifo.c  
 16  char * myfifo = "/tmp/myfifo";  在tmp下面做新增檔案  
 開兩個terminal fifo1 fifo2 並進行溝通  




為甚麼要使用管線

 管線用意 fock 的方式做連結   
 thread 會造成邊際效應 然後造成死結  
 ipc 不能用共用變數來解決  
 inter-process  
 互相溝通  



 06-net > 03-telenet1 > client.c  
全部溝通都要經過tcpip會造成負擔太大   
管線 行程和行程之間的溝通  
FIFO 是有名稱的管線 掛在檔案上面  



