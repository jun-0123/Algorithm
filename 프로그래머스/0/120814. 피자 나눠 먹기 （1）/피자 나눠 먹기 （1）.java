class Solution {
    public int solution(int n) {
        int i = n / 7;
        boolean b = n % 7 >0?true:false;
        
        return b?i+1:i;
    }
}