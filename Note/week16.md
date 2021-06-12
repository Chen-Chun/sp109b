# 第16週

## 前言提要
> tcp v.s udp 差異   
udp  
封包丟出去就不管了 可能先丟後到 先丟先到  
tcp  
是連線導向 資料是照順序的

>thread v.s fork  
thread  
是把原本用fork的方式改成thread  
是原來工作程序的分支 資源需求不大
fork  
資源不共用 程序是完全獨立出來的

* 用chat來舉例 行程(process)之間的通訊

# 專案練習

>用不同方式大開多人聊天室 別是  
multithread  
poll 可觀測檔案串  
epoll 新版poll  

## sp > 09-linux > c > 02-multiroom > 02-multithread 

>資訊從servser1傳給client端 再從client端傳給server2

### server.c

執行程式  
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

* ./cilent = 執行檔案  
* leana = 聊天名字  
* 127.0.0.1 = 對方的id  
* 8888 = 我設定的port  

> 一樣是使用tcp方式打開

58 SOCK_STREAM 是指用串流的方式連線 就是tcp  
* tcp 好處  
自動重排 確保收到封包   

程式碼解讀
59 saddr = server位置 raddr = 接收位置  
60 再呼叫函數前把位置清0  
62 一開始設立的port=8888 再56行把函數從字串轉成整數
* 既然原本就是整數為什麼不直接給sin_port要轉成htons呢?  
因為不同系統會遇到不同轉換問題 造成排列順序不一 所以一開始就指定轉換一致 後續就不會造成問題

64 指所有封包都要收
66 assert()是一旦失敗程式會全部停掉  
69 client  



### cilent.c

36 連上伺服器  
42 等待輸入  
43 送出去形式  
29 印出  
31 廣播  


## sp > 09-linux > c > 02-multiroom > 03-poll

### server.c

25 這裡需要一格一個做測試 有訊息在測試  

## sp > 09-linux > c > 02-multiroom > 04-epoll

### server.c

一樣

53 EPOLL_CTL_ADD  
30 epoll_wait 傳回有多少事件發生  
31 只需偵測是否有事件 而不需要全測 效能才能提升  
32 只要有發生事件才去處理




