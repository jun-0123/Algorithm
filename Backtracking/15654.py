N, M = map(int, input().split())

ans=[]

lst = list(map(int,input().split()))
lst.sort()


def back():
    if len(ans) == M:
        print(" ".join(map(str, ans)))
        return
    for i in lst:
        if i not in ans:
            ans.append(i)
            back()
            ans.pop()

back()