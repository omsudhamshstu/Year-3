#include <stdio.h>

int main() {
    int bucketSize, rate, n, sent, rem = 0, incoming;

    printf("Enter bucket size: ");
    scanf("%d", &bucketSize);
    printf("Enter output rate: ");
    scanf("%d", &rate);
    printf("Enter number of packets: ");
    scanf("%d", &n);

    while (n--) {
        printf("Enter packet size: ");
        scanf("%d", &incoming);

        if (incoming + rem > bucketSize) {
            printf("Packet loss = %d\n", (incoming + rem) - bucketSize);
            rem = bucketSize;
        } else rem += incoming;

        sent = (rem > rate) ? rate : rem;
        rem -= sent;
        printf("Sent: %d | Remaining: %d\n", sent, rem);
    }
    return 0;
}

