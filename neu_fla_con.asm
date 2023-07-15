section .data
    ; constantes
    PI: dd 3.14159265359
    Gf: dd 1.1663787e-5
    H: dd 6.58211889e-16

section .text
    global main
    extern printf

main:
    ; calculo da probabilidade
    fld dword [PI]
    fmul dword [Gf]
    fmul dword [H]
    fdiv dword 2

    ; Imprimindo o resultado
    sub rsp, 8
    fstp qword [rsp]
    mov rdi, format
    mov rax, 1
    call printf

    ; saida
    mov eax, 0
    ret

section .data
    format db "Probabilidade da conversao de neutrinos: %f", 0
