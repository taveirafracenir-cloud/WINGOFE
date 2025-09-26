// Arquivo: kernel.c
#include <stdint.h>

void main(void) {
    // Endereço da memória de vídeo para texto
    uint16_t* video_memory = (uint16_t*)0xB8000;
    
    // Define a cor do texto (cinza claro em fundo preto)
    uint8_t color = 0x07;
    
    // Loop para exibir a mensagem "Bem-vindo ao WINGOFE!"
    const char* message = "Bem-vindo ao WINGOFE!";
    int i = 0;
    while (message[i] != '\0') {
        video_memory[i] = (uint16_t)message[i] | ((uint16_t)color << 8);
        i++;
    }
    
    // Loop infinito para segurar a execução do kernel
    while(1) {
        // O código do seu sistema vai aqui
    }
}
