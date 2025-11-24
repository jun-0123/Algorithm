import java.util.*;

class Solution {
    public int[] solution(int n) {
        int[] answer = {};
        int divisor = 2;
        ArrayList<Integer> list = new ArrayList<>();
        
        while(n>=divisor){
            if(n%divisor==0){
                n/=divisor;
                list.add(divisor);
            }else{
                divisor++;
            }
        }
        
        return list.stream()
                   .distinct()
                   .sorted()
                   .mapToInt(Integer::intValue)
                   .toArray();
    }
}