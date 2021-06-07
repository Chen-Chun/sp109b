# 第九週

 ## 作業系統
 >MSYS2  
CygWin  
MinGW  
posix

 > gcc georgeMary.c -l pthread -o  
 * -l 是連接 
 * pthread
 > arg存參數  
 attr 存函數(屬性)  
 thread(多執行序的表示)

* 一個程式有3個在執行
ex: web service 爬蟲

* thread 可以共用變數
* process 不可以共用變數

# 專案練習

## sp > 08-posix > 01-basic

mello(100e6)指heap  
main 指 code  
&x 指 stack  

### mem.c
> $ ps  -A   
#可列在執行得程式

>每個程式算一個行程process  
用fork可建立行程  
所以每個程式可用無線個進程  
「&」在背景執行  

> kill 6395 可delet ./forever 的進程  
gitpid 取得現在行程代號

## sp > 10-riscv
定位起始位置

## sp > 08-posix > 02-thread

### 

