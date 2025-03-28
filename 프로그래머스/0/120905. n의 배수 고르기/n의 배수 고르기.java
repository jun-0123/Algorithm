import java.util.List;
import java.util.Arrays;
import java.util.stream.Collectors;
class Solution {
    public int[] solution(int n, int[] numlist) {
        int[] answer = {};
        return Arrays.stream(numlist)
            .filter(x -> x % n == 0)
            .toArray();
    }
}