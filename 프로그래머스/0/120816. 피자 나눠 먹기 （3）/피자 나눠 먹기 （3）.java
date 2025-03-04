class Solution {
    public int solution(int slice, int n) {
        int piece = n / slice;
        boolean tf = n % slice > 0?true:false;
        return tf?piece+1:piece;
    }
}