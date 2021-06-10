# 第16週


# 專案練習
## sp > 09-linux > c > 02-multiroom > 02-multithread 
### cilent.c

36 連上伺服器  
42 等待輸入  
43 送出去形式  
29 印出  
31 廣播  

### server.c

執行  
第1個 terminal  

        #gcc -std=c99 server.c -o server  
        #gcc -std=c99 client.c -o client  
        #./server 8888  

第2個 terminal 

        ./client leana 127.0.0.1 8888

第3個 terminal 

        ./client christina 127.0.0.1 8888

第4個 terminal 

        ./client AIONLin 127.0.0.1 8888