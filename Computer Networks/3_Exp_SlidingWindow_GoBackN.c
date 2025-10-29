#include <stdio.h>

int main() {
    int frames, window, i = 1;
    printf("Enter total frames: ");
    scanf("%d", &frames);
    printf("Enter window size: ");
    scanf("%d", &window);

    while (i <= frames) {
        int sent = 0;
        printf("\nSending Frames: ");
        for (int j = i; j < i + window && j <= frames; j++) {
            printf("%d ", j);
            sent++;
        }
        printf("\nAcknowledged Frames till: %d", i + sent - 1);
        i += sent;
    }
    printf("\nAll frames sent successfully.\n");
    return 0;
}

