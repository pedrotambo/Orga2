global suma

%define tam_short 2

section .text

suma:
    ; rdi <-- puntero al vector
    ; si <-- largo del vector
    ; tengo que devolver en rax el resultado de sumar los elementos

    mov rax, 0 ; donde acumulo la sumatoria de los elementos
    mov r9, 0 ; índice al vector
    .ciclo:
        ; acumulo en rax
        add ax, [rdi + r9*tam_short]
        ; incremento el índice
        inc r9
        ; evalúo la terminación del ciclo
        cmp r9w, si
        jne .ciclo
    ret
