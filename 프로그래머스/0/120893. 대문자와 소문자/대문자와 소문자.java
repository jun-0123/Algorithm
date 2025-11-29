class Solution {
    public String solution(String my_string) {
        String answer = "";
        
        for(char c: my_string.toCharArray()){
            if(Character.isUpperCase(c)){
                c=Character.toLowerCase(c);
            }else{
                c=Character.toUpperCase(c);
            }
            answer+=c;
        }
        
        
        return answer;
    }
}