#include <stdio.h>
#include <string.h>

void computeCRC(char data[], char poly[]) {
    int dlen, plen, i, j;
    char temp[200];
    dlen = strlen(data);
    plen = strlen(poly);

    strcpy(temp, data);
    for (i = 0; i < plen - 1; i++) strcat(temp, "0");

    for (i = 0; i < dlen; i++) {
        if (temp[i] == '1') {
            for (j = 0; j < plen; j++) {
                if (temp[i + j] == poly[j]) temp[i + j] = '0';
                else temp[i + j] = '1';
            }
        }
    }

    printf("CRC: ");
    for (i = dlen; i < dlen + plen - 1; i++) printf("%c", temp[i]);
    printf("\n");
}

int main() {
    char data[100];
    printf("Enter data bits (e.g. 110101...): ");
    if (fgets(data, sizeof(data), stdin) == NULL) return 0;
    if (strlen(data) > 0 && data[strlen(data)-1] == '\n') data[strlen(data)-1] = '\0';

    printf("CRC-12: "); computeCRC(data, "1100000001111");
    printf("CRC-16: "); computeCRC(data, "11000000000000101");
    printf("CRC-CCITT: "); computeCRC(data, "10001000000100001");
    return 0;
}
