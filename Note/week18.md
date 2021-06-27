# 第18週

# xv6

作業系統是一件不容易的事情
Unix6
所以研究ptt
jos的系統

2018年 xv6
2019年 xv6-riscv
 
# xv6-riscv/kernel
start.c 是c語言第一個執行的地方
    main 中的語言解釋
    第0核心用來跑作業系統
    kvminithart 是切換分業
    plic 中斷控制器
    iinit 檔案系統的底層
    fileinit 0放終端機輸出
    virtio 是一種特定協定

entry.s 才是真正開始執行系統的地方
spin 是無窮迴圈 不讓他亂跑











