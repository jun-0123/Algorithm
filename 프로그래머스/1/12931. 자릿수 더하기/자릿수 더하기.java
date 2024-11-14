import java.util.*;

public class Solution {
    public int solution(int n) {
        int answer = 0;

        return add(n,answer);
    }
    public int add(int n,int ans){
        if(n==0) return ans;
        ans+=n%10;
        return add(n/10,ans);
    }
}