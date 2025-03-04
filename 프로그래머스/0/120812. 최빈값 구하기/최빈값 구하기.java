import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

class Solution {
    public int solution(int[] array) {
        Map<Integer, Integer> map = new HashMap<Integer, Integer>();

        
        for(int i:array){
            if(map.containsKey(i)){
                int j = map.get(i)+1;
                map.put(i,j);
            }else{
                map.put(i,1);
            }
        }
        
        Integer maxValue = Collections.max(map.values());   
        int count = 0;
        int maxKey = 0;
        Set<Entry<Integer, Integer>> entrySet = map.entrySet();
        
        for(Entry<Integer, Integer> entry : entrySet){
            if (entry.getValue() == maxValue) {
                maxKey = entry.getKey();
                count++;
            }
            if(count > 1){
                return -1;
            }
        }

        return maxKey;
    }
}