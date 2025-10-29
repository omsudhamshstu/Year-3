#include <stdio.h>
#include <string.h>

int main() {
    char text[200];
    int key, i, len;
    printf("Enter text: ");
    if (fgets(text, sizeof(text), stdin) == NULL) return 0;
    len = strlen(text);
    if (len > 0 && text[len-1] == '\n') {
        text[len-1] = '\0';
        len--;
    }

    printf("Enter key (number): ");
    if (scanf("%d", &key) != 1) return 0;

    /* Encryption */
    for (i = 0; i < len; i++) text[i] = (char)(text[i] + key);
    printf("Encrypted: %s\n", text);

    /* Decryption */
    for (i = 0; i < len; i++) text[i] = (char)(text[i] - key);
    printf("Decrypted: %s\n", text);

    return 0;
}
