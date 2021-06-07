# 第十一週

## thread


# 專案練習

## sp > 08-posix > 02-thread

### producerConsumer.c

生產者消費者問題
* 演算法的down是鎖定的意思 up解鎖 有數量限制
* JS 有semaphore

semaphore 有函式 
 dowm()=sem_wait() 紅燈
 up()=sem_post() 綠燈 
 等待時間變成大於

生產者 是先 empty 再full
消費者 是先 full 再mutex

計數號記 可以放數字
先進先出


    sem_init(&empty, 0, 10) ; #有多少空間可以放入
    sem_init(&full, 0, 0) ;
    sem_init(&mutex, 0, 1) ;

pshare=0 表示共用

<img sce="./pricure/20210505"/>

* 補充
Dijkstrk 最短路徑運算


## philospher

哲學家用餐問題 主要是說避免死結問題
資源分級 先拿起左右兩邊編號較低的餐叉

這裡服務引入服務生的概念
先有3個哲學家 有五支筷子
每一位哲學家先吃5次在換下一位哲學家


期末報告

盡量用c

可以做
objdump反阻義
桌面分享
編輯器
小型vim



