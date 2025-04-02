class Solution {
    public int solution(int[] numbers) {
        int answer = 0;
        int first= 0;
        int second = 0;
        
        for(int i:numbers){
            if(first<i){
                second=first;
                first=i;
            }else if(second<i){
                second=i;
            }
            
        }
        
        
        return first*second;
    }
}