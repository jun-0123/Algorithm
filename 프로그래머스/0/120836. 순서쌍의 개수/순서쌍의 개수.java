class Solution {
    public int solution(int n) {
        int answer = 0;
        
        for(int i =1; i<=n;i++){
            if(n%i==0){
                answer++;
                if((n/i)-i==0){
                return answer=answer*2-1;
            }
            if((n/i)-i==1){
                return answer*=2;
            }
            }
            
        }
        return answer;
    }
}