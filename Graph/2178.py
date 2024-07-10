from collections import deque

N, M = map(int, input().split())

visit = [[False for _ in range(M)] for _ in range(N)]
miro = [[] for i in range(N)]
for i in range(N):
    miro[i] = [int(i) for i in input()]

# visit[0][0] = True
n, m = 0, 0
q = deque()

while n < N - 1 or m < M - 1:
    if n != 0:
        if miro[n - 1][m] == 1 :
            q.append([n - 1, m])
            miro[n - 1][m] += miro[n][m]

    if m != 0:
        if miro[n][m - 1] == 1 :
            q.append([n, m - 1])
            miro[n][m - 1] += miro[n][m]

    if n != N - 1:
        if miro[n + 1][m] == 1 :
            q.append([n + 1, m])
            miro[n + 1][m] += miro[n][m]

    if m != M - 1:
        if miro[n][m + 1] == 1 :
            q.append([n, m + 1])
            miro[n][m + 1] += miro[n][m]

    n,m=map(int,q.popleft())
print(miro[-1][-1])
