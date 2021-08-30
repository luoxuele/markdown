# gcc编译过程
    1. 预处理：cpp -->头文件展开，宏替换，去掉注释
        gcc -E hello.c -o hello.i
    2. 编译器：gcc -->c文件变成汇编文件
        gcc -S hello.i -o hello.s
    3. 汇编器：as -->汇编文件变成二进制文件
        gcc -c hello.s -o hello.o
    4. 链接器：ld --> 将函数库中相应的代码组合到目标文件
        gcc hello.o -o hello

# 参见参数
 -I path        头文件路径
 -D 宏定义名
 -O[0|1|2|3]      优化
 -Wall  提示警告信息    
 -g     添加调试信息
 -o name 输出文件名


# 静态库的制作
    1.命令规则
        lib***.a
    2. 制作步骤
        1.生成对应的.o文件 -c
        2. 将生成的.o文件打包 ar rcs + 静态库名字（libMytest.a）+ 生成的.o
    3. 发布和使用静态库
        .a库文件和相应的头文件
    4. 优缺点
        1. 按需导出，主程序需要哪个.o文件就把那个文件链接到主程序中
        2. 库被打包到了程序中，所以程序体积大，
            如果库发生了变化，还需要重新编译程序

    gcc -c  *.c -I ../include
    ar rcs libMyCalc.a *.o
    使用静态库的两种方法
    gcc main.c lib/libMyCalc.a -o sum -I include
    gcc main.c -Iinclude -L lib -l MyCalc -o myapp
        -L 静态库路径 
        -l 静态库名字（插头去尾）

    nm libMyCalc.a 查看库文件的组成

# 共享库的制作（动态库）
    1.命名规则
        lib***.so
    2. 制作步骤
        1.生成与位置无关的.o
            gcc -fPIC -c *.c -I../include
        2. 将.o打包成共享库
            gcc -shared -o libMyCalc.so *.o -Iinclude
    3. 发布和使用
        gcc main.c lib/libMyCalc.so -o app -Iinclude
        gcc main.c -Iinclude -L lib -l MyCalc -o app2
        ldconfig -v
        ldd xxx 查看xxx需要链接的动态库
    4. 解决程序执行时动态库无法被加载的问题
        动态链接器（本质也是一个动态库）
        寻找规则： 
            1.根据LD_LIBRARY_PATH环境变量
            2. 环境变量没有就默认

    5. 优缺点

        export LD_LIBRARY_PATH=./lib
        ldd app2
        /etc/ld.so.conf.d/
        /etc/ld.so.conf  动态链接库的配置文件


# gdb调试
    1.编译（包含调试信息）
        gcc -g hello.c
    2. gdb运行程序
        gdb a.out

    3.gdb命令
        l 查看源文件（默认包含main函数的文件）
        l xxx.c:行数
        l xxx.c:函数名

    设置断点
        break,可以简写b
        b 10
        b func

        info b 查询所有断点
    条件断点
     b test.c:8 if intValue = 5

     4. 调试代码
        run 运行程序，可简写r
        next 单步跟踪，函数调用当作一条简单的语句执行，可简写n
        step 单步跟踪，函数调用进入到函数体内，简写s
        finish  退出进入的函数
        until   退出循环体，可简写u,在一个循环体内单步跟踪的时候使用
        continue 继续运行程序，简写为c,执行程序直到遇到下一个断点
    
    5. 查看运行时数据
        print 打印变量、字符串、表达式等的值，可简写为p

    6. 自动显示
        
