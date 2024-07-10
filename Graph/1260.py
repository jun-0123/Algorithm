import sys
from collections import deque

input=sys.stdin.readline
n, m, v = map(int, input().split())

arr = [[0] * (n + 1) for _ in range(n + 1)]
visitD = [False for _ in range(n + 1)]
visitB = visitD[:]

for i in range(m):
    a, b = map(int, input().split())
    arr[a][b] = arr[b][a] = 1


def bfs(i):
    q = deque()
    q.append(i)
    visitB[i] = True
    while len(q) > 0:
        temp = q.popleft()
        print(temp, end=" ")
        for j in range(1,n + 1):
            if arr[temp][j] == 1 and not visitB[j]:
                q.append(j)
                visitB[j] = True


def dfs(i):
    visitD[i] = True
    print(i, end=" ")
    for j in range(1,n + 1):
        if arr[i][j] == 1 and not visitD[j]:
            dfs(j)


dfs(v)
print()
bfs(v)
