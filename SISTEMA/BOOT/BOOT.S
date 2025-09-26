; Arquivo: boot.s
.set MAGIC,    0x1BADB002   ; Número mágico do GRUB
.set FLAGS,    0x0          ; Flags do GRUB
.set CHECKSUM, -(MAGIC + FLAGS) ; Checksum do GRUB

.section .multiboot
    .long MAGIC
    .long FLAGS
    .long CHECKSUM

.section .text
.global start
.extern main

start:
    call main       ; Chama a função 'main' em C
    cli             ; Desabilita interrupções
    hlt             ; Para a CPU

.Lloop:
    jmp .Lloop      ; Loop infinito para garantir que a CPU não pare
