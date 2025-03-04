class Solution {
    public int solution(int n, int k) {
        int meat = n*12000;
        int juice = (k-(n/10))*2000;
        return meat+juice;
    }
}