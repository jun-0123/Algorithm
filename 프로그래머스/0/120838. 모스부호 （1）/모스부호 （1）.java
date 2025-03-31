import java.util.Arrays;

class Solution {
    public String solution(String letter) {
        String answer = "";
        String[] decode = {".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."};
        
        String[] encode = letter.split(" ");
        
        for(String str:encode){
            int code = Arrays.asList(decode).indexOf(str)+97;
            answer+=(char)code;
        }
        return answer;
    }
}