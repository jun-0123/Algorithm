class Solution {
    public int solution(int order) {
        int answer = 0;
        int ones = 0;
        
        while(order>0){
            ones = order%10;
            if(ones!=0 && ones%3==0){ answer++;}
            order/=10;
        }
        
        return answer;
    }
}