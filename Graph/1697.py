from collections import deque

N, K = map(int, input().split())

sec = 0
q = deque()
q.append([N, 0])
visit = set()
v = N

while v != K:
    # print(q)
    v, sec = map(int, q.popleft())
    visit.add(v)
    # print(visit)

    for i in [v * 2, v + 1, v - 1] if v < K else [v - 1]:
        if 0 <= i <= 100000 and i not in visit:
            q.append([i, sec + 1])
print(sec)
