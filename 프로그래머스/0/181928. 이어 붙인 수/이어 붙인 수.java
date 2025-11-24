class Solution {
    public int solution(int[] num_list) {
        int answer = 0;
        int odd = 0;
        int even = 0;
        
        for(int n:num_list){
            if(n%2==0){
                even*=10;
                even+=n;
            }else{
                odd*=10;
                odd+=n;
            }
        }
        answer = even + odd;
        
        return answer;
    }
}