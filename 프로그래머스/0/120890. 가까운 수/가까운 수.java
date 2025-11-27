import java.util.*;

class Solution {
    public int solution(int[] array, int n) {
        int answer = 0;
        
        Arrays.sort(array);
        
        int gap = 0;
        int min = Integer.MAX_VALUE;

        for(int num: array){
            
            gap = Math.abs(num - n);
            if(min>gap){
                min = gap;
                answer = num;
            }
        }
        
        return answer;
    }
}