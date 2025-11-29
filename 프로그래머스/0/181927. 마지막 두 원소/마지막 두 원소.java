import java.util.*;

class Solution {
    public int[] solution(int[] num_list) {
        int len = num_list.length;
        int[] answer = new int [len+1];
        
        int a = num_list[len-2];
        int b = num_list[len-1];
        
        answer[len]=a<b?b-a:b*2;
        
        for(int i=0;i<len;i++){
            answer[i]=num_list[i];
        }
        
        
        
        return answer;
    }
}