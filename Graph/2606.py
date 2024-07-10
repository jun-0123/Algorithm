from collections import deque


def bfs(graph, start, visit):
    queue = deque([start])
    visit[start] = True

    while queue:
        v = queue.popleft()
        for i in graph[v]:
            if not visit[i]:
                queue.append(i)
                visit[i] = True


N = int(input())
M = int(input())

com = [[0 for i in range(N)] for j in range(N)]
graph = [[] for i in range(N)]
for i in range(M):
    a, b = map(int, input().split())
    graph[a-1].append(b-1)
    graph[b-1].append(a-1)

visit = [False] * N

bfs(graph, 0, visit)
print(sum(visit)-1)
