N, M = map(int, input().split())
lst = list(map(int, input().split()))
lst.sort()
ans = []


def back():
    if len(ans) == M:
        print(*ans)
        return
    for i in lst:
        if len(ans) == 0 or i >= ans[-1]:
            ans.append(i)
            back()
            ans.pop()


back()
