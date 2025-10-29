#include <stdio.h>
#include <string.h>

int main() {
    char data[50], stuffed[100];
    int i, j = 0;
    printf("Enter data: ");
    fgets(data, sizeof(data), stdin);
    
    // Remove newline character if present
    data[strcspn(data, "\n")] = '\0';

    // Character Stuffing (using DLE, STX, ETX)
    stuffed[j++] = 'D'; stuffed[j++] = 'L'; stuffed[j++] = 'E';
    stuffed[j++] = 'S'; stuffed[j++] = 'T'; stuffed[j++] = 'X';

    for (i = 0; i < strlen(data); i++) {
        if (data[i] == 'D' && data[i + 1] == 'L' && data[i + 2] == 'E')
            stuffed[j++] = 'D'; // Stuffing DLE
        stuffed[j++] = data[i];
    }

    stuffed[j++] = 'D'; stuffed[j++] = 'L'; stuffed[j++] = 'E';
    stuffed[j++] = 'E'; stuffed[j++] = 'T'; stuffed[j++] = 'X';
    stuffed[j] = '\0';

    printf("Character Stuffed Data: %s\n", stuffed);
    return 0;
}
