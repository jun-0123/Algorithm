class Solution {
    public int solution(int hp) {
        int answer = 0;
        int G=hp/5;
        hp-=G*5;
        int S=hp/3;
        hp-=S*3;
        int W=hp/1;
        
        answer=G+S+W;
        
        return answer;
    }
}