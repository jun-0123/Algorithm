import java.util.ArrayList;
import java.util.List;

class Solution {
    public int[] solution(int n) {
        List<Integer> ans = new ArrayList();
        for(int i = 1; i <= n;i+=2){
            
                ans.add(i);
            
        }
        return ans.stream()
               .mapToInt(i -> i)
               .toArray();
    }
}