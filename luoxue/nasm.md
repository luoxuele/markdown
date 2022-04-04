# nasm
## lesson 1    sys_write

```nasm
_start:
    mov rax,1
    mov rdi,1
    mov rsi,msg
    mov rdx,17
    syacall
```
    
## lesson 2 sys_exit
```nasm
_start:
    mov rax,60
    mov rdi,0
    syscall
```

## lesson 3  calculate the length of a string
```nasm
_start:
    mov rax,msg
    mov rbx,rax
nextchar:
    cmp byte[rax],0
    jz finished
    inc rax
    jmp nextchar
finished:
    sub rax,rbx
    
```

## lesson 4    subroutine
```nasm
; int slen(char*)
slen:
    push rbx
    mov rbx,rax
nextchar:
    cmp byte[rax],0
    jz finished
    inc rax
    jmp nextchar
finished:
    sub rax,rbx
    pop rbx
    ret
   
```

## lesson 5 external include files

```nasm
;functions.asm

;------void sprint(string messge)
sprint:
    push rdi
    push rsi
    push rdx
    push rax
    call slen
    
    mov rdx,rax    
    pop rax
    mov rsi,rax
    mov rax,1
    mov rdi,1    
    syscall
    
    push rdx
    push rsi
    push rdi
    ret
    
```

## lesson 6 linefeed
```nasm
; void sprintLF(string str)
sprintLF:
    push rax
    call sprint
    
    mov rax,0x0a
    push rax
    mov rax,rsp
    call sprint
    pop rax
    pop rax
    ret  
    
```

## lesson 7 passing arguments
```nasm
_start:
    pop rcx
nextArgs:
    cmp rcx,0
    jz noMoreArgs
    pop rax
    push rcx
    call sprintLF
    pop rcx
    dec rcx
    jmp nextArgs
noMoreArgs:
    call quit
```

## lesson 8 User input
```nasm
section .data
    msg1 db "Please enter your name",0x00
    msg2 db "hello, ",0x00
section .bss
    sinput: resb 255
    
_start:
    mov rax,msg1
    call sprint
    
    mov rax,0
    mov rdi,1
    mov rsi,sinput
    mov rdx,255
    syscall
    
    mov rax,msg2
    call sprint
    mov rax,sinput
    call sprintLF
    	 
```

## lesson 9 Count 10
```nasm
_start:
    mov rcx,0
nextNumber:
    inc rcx
    mov rax,rcx
    add rax,48
    
    push rcx
    push rax
    mov rax,rsp
    call sprintLF
    pop rax
    pop rcx
    
    cmp rcx,10
    jnz nextNumber
    
    call quit
    
```

## lesson itoa (integer to ascii)
```nasm
; void iprint(Integer number)
iprint:
    
```
    