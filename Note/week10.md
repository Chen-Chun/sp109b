# 第十週

# 課程內容

## 單形成系統與多工之比較

配合 sp > 08-posix > 02-thread

## 協問式多工系統

作業系統像是指令一樣 控制cpu切換行程 當行程一在執行輸出入或是讀檔的時候 就把cpu切換到其他行程 使整個系統執行順暢
當所有行程都滿的時候 就只能等

輪詢
依照順序輪流詢問 是否有輸出入 當都沒有偵測到時 再進行一輪詢問
這種方法不適合多工

由裝置發出詢問
也由裝置發出中斷
適合多工

## 行程

有時間中斷 可以避免一直在同一個迴圈卡死
0.1秒 可以執行100億的指令

posix thread 比較
行程=posix 比較大
相互間不共用變數
切換時 除嘞要保存暫存器還有分頁表=映射表
執行緒=thread 比較小
可以共用行程 並且可以共用變數
切換時 只需要保存暫存器

排成問題
先到先做排成FCFS
循環分時排成RR

內文切換
作業系統需要做甚麼動作


行程切換的第一個工作就是要保留暫存器和pc 

## 記憶體分配策略
垃圾蒐集法 要有一個垃圾收集不要的東西 才不會暫記憶體空間

# 專案執行

## sp > 08-posix > 02-thread

### race.c

* 執行時為何不是 0 就是正負在交替
因為georgeMary有重疊到的地方 所以當在編譯時 會有兩種方向做選擇這中情況就叫做 RACE CONDITION

但是不可以出現一下正一下負的情況

### norace.c

要控制一下正一下負的情況 可以使這個
主要使用 lock unlock 來控制

mutex可以避免競爭
先上鎖 更改完counter後 再進解鎖
inc dec 都只有進去一次 然後一直執行
main inc dec 同時執行

### deadllock.c

B lock y
A lock x

看作業系統是先lock x還是y  
死結會存在 會存在a等b放x或y 或者是相反 是大家在互相等

先進後出 可以避免死結的形成

        pthread_mutex_lock(&x);
        printf("A lock x\n");

        sleep(1);
        pthread_mutex_lock(&y);
        printf("A lock y\n");

        pthread_mutex_unlock(&y); 
        pthread_mutex_unlock(&x);

### produceConsumer.c






