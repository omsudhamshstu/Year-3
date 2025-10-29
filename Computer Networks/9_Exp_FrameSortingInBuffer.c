#include <stdio.h>

int main() {
    int n, i, j, temp, frame[20];
    printf("Enter number of frames: ");
    scanf("%d", &n);
    printf("Enter frame numbers: ");
    for (i = 0; i < n; i++) scanf("%d", &frame[i]);

    // Sort (Ascending)
    for (i = 0; i < n - 1; i++)
        for (j = i + 1; j < n; j++)
            if (frame[i] > frame[j]) {
                temp = frame[i];
                frame[i] = frame[j];
                frame[j] = temp;
            }

    printf("Frames after sorting: ");
    for (i = 0; i < n; i++) printf("%d ", frame[i]);
    printf("\n");
    return 0;
}

