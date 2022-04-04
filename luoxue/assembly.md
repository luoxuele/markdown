# assembly
register    寄存器
memory    内存
addressing    寻址
instruction    指令
assembler    汇编程序
disassembler    反汇编程序

statement    语句
comment    注释
label    标签
symbolic label    符号标记
symbol    象征，符号
identifier 标识符
colon    冒号    :

section    段
directive    指示，指令
operand    操作数
    register
    memory
    immediate
recursion 递归


data movement
    mov <dest> ,<src>
        register,memory,immediate
        mov eax,27
        mov dword [dValue],27  
        
 Addresses and Values     
     lea --- load effective address 加载有效地址
     lea rcx, byte [bvar]
     lea rsi, dword [dVar]
     
 conversion    类型转换
    narrow 缩小
    widen    扩大
    movzx
    

addition
subtraction
multiplication
division


# reference
https://gcc.gnu.org/onlinedocs/gcc/
https://www.nasm.us/doc/
https://www.cs.virginia.edu/~evans/cs216/guides/x86.html
https://cs.lmu.edu/~ray/notes/nasmtutorial/
