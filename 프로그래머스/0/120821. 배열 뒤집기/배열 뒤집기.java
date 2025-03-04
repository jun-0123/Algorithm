import java.util.*;

class Solution {
    public int[] solution(int[] num_list) {
        Deque<Integer> deque = new ArrayDeque<>();
        
        for (int i: num_list){
            deque.addFirst(i);
        }
        
        List<Integer> list = new ArrayList<>(deque);

        
        int[] result = new int[list.size()];
        for (int i = 0; i < list.size(); i++) {
            result[i] = list.get(i);
        }

        return result;
            
            
    }
}