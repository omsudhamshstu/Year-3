#include <stdio.h>
#define INF 999

int main() {
    int n, i, j, src, min, u;
    int cost[10][10], dist[10], vis[10] = {0};
    printf("Enter nodes: "); scanf("%d", &n);
    printf("Enter cost matrix:\n");
    for (i = 0; i < n; i++)
        for (j = 0; j < n; j++)
            scanf("%d", &cost[i][j]);

    printf("Enter source: "); scanf("%d", &src);
    for (i = 0; i < n; i++) dist[i] = cost[src][i];
    vis[src] = 1; dist[src] = 0;

    for (i = 1; i < n; i++) {
        min = INF;
        for (j = 0; j < n; j++)
            if (!vis[j] && dist[j] < min) { min = dist[j]; u = j; }
        vis[u] = 1;
        for (j = 0; j < n; j++)
            if (!vis[j] && dist[u] + cost[u][j] < dist[j])
                dist[j] = dist[u] + cost[u][j];
    }

    printf("Shortest Distances:\n");
    for (i = 0; i < n; i++) printf("%d -> %d = %d\n", src, i, dist[i]);
    return 0;
}

