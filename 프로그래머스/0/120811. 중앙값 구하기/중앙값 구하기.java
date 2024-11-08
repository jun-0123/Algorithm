import java.util.Arrays;

class Solution {
    public int solution(int[] array) {
        int half;
        Arrays.sort(array);
        
        half=array.length/2;
        
        return array[half];
    }
}