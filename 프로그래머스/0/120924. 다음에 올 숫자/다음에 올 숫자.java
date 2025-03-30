class Solution {
    public int solution(int[] common) {
        int x = common[0];
        int y = common[1];
        int z = common[2];
        
        int gap=0;
        
        if(y-x==z-y){
            gap=z-y;
            return common[common.length-1]+gap;
        }else{
            gap=z/y;
            return common[common.length-1]*gap;
        }
        
        
        
    }
}