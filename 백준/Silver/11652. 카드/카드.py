N = int(input())

dict1 = {}

for i in range(N):
    K = int(input())
    if K in dict1:
        dict1[K] += 1
    else:
        dict1[K] = 1
dict2 =dict(sorted(dict1.items(), key=lambda x: x[0]))
print(max(dict2,key=dict2.get))