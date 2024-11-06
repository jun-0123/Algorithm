li = []
  
for i in range(2,10000+1):
  prime = True
  for j in range(2,i):
    if i%j==0:
      prime = False
      break
  if prime:
    li.append(i)


nn = int(input())

for ii in range(nn):
  n = int(input())
  n1=n//2
  n2=n1
  
  
  while True:
    if n1 in li and n2 in li:
      print(n1, n2)
      break
    n1-=1
    n2+=1