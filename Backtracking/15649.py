N, M = map(int, input().split())
answer = []


def back():
    # 원하는 길이의 순열이 완성되면 출력
    if len(answer) == M:
        print(" ".join(map(str, answer)))
        return

    # i는 1부터 N까지의 숫자
    for i in range(1, N + 1):
        # 순열이므로 겹치는지 아닌지 확인
        # 중복이 아니면 숫자 i를 리스트에 추가
        if i not in answer:
            answer.append(i)
            back()
            # return 되서 돌아오면 전 단계로 돌아감
            # 예를 들어 순열이 1,2,3이면 return 되서 돌아온 후 3이 pop되고
            # 1,2에서 다음 값을 찾는 형식으로 전 단계로 돌아가는 것
            answer.pop()


back()