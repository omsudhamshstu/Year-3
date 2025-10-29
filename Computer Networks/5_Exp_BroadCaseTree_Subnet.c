#include <stdio.h>
#define INF 999

int main() {
    int n, i, j, u, v, min, total = 0;
    int cost[10][10], vis[10] = {0};

    printf("Enter nodes: "); scanf("%d", &n);
    printf("Enter cost matrix:\n");
    for (i = 0; i < n; i++)
        for (j = 0; j < n; j++) {
            scanf("%d", &cost[i][j]);
            if (cost[i][j] == 0) cost[i][j] = INF;
        }

    vis[0] = 1;
    for (int edges = 0; edges < n - 1; edges++) {
        min = INF;
        for (i = 0; i < n; i++)
            if (vis[i])
                for (j = 0; j < n; j++)
                    if (!vis[j] && cost[i][j] < min) {
                        min = cost[i][j]; u = i; v = j;
                    }
        printf("Edge: %d -> %d  cost: %d\n", u, v, min);
        vis[v] = 1; total += min;
    }
    printf("Total Cost = %d\n", total);
    return 0;
}

