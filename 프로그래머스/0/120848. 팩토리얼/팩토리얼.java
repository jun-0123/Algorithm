class Solution {
    public int solution(int n) {
        int answer = 1;
        int i=1;
        while(true){
            i*=answer;
            if(i>n) break;
            answer++;
        }
        
        return answer-1;
    }
}