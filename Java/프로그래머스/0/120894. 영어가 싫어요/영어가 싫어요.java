class Solution {
    public long solution(String numbers) {
        String[] numberStr = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
        long answer = 0;
 
        for (int i = 0; i < numberStr.length; i++)
            numbers = numbers.replaceAll(numberStr[i], Integer.toString(i));
 
        answer = Long.parseLong(numbers);
        return answer;
    
    }
    
    
}