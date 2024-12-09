/*
https://leetcode.com/problems/relative-ranks/description/

ou are given an integer array score of size n, where score[i] is the score of the ith athlete in a competition. All the scores are guaranteed to be unique.

The athletes are placed based on their scores, where the 1st place athlete has the highest score, the 2nd place athlete has the 2nd highest score, and so on. The placement of each athlete determines their rank:

The 1st place athlete's rank is "Gold Medal".
The 2nd place athlete's rank is "Silver Medal".
The 3rd place athlete's rank is "Bronze Medal".
For the 4th place to the nth place athlete, their rank is their placement number (i.e., the xth place athlete's rank is "x").
Return an array answer of size n where answer[i] is the rank of the ith athlete.

 

Example 1:

Input: score = [5,4,3,2,1]
Output: ["Gold Medal","Silver Medal","Bronze Medal","4","5"]
Explanation: The placements are [1st, 2nd, 3rd, 4th, 5th].
Example 2:

Input: score = [10,3,8,9,4]
Output: ["Gold Medal","5","Bronze Medal","Silver Medal","4"]
Explanation: The placements are [1st, 5th, 3rd, 2nd, 4th].
*/

public class RelativeRanks {
    
    /**
     * Brute force approach to determine relative ranks
     * Time Complexity: O(n^2) where n is size of input array
     * Logic:
     * 1. For each score, compare with all other scores to determine its rank
     * 2. If current score is less than another score, increment rank
     * 3. Convert rank to appropriate medal/position string
     * @param rankLst List of integer scores
     * @return List of strings with medals/ranks
     */
    public static List<String> relativeRankBruteForce(LIST<Integer> rankLst){
        List<String> posToreturn = new List<String>();
        for(Integer i=0;i<rankLst.size();i++){
            Integer rank = 1;
            for(Integer j=0;j<rankLst.size();j++){
                if(i!=j && rankLst[i]<rankLst[j]){
                    rank++;
                }
            }
            switch on rank{
                when 1{
                  posToreturn.add('Gold Medal'); 
                }
                when 2{
                  posToreturn.add('Silver Medal');  
                }
                when 3{
                    posToreturn.add('Bronze Medal');
                }
                when else{
                    posToreturn.add(String.valueOf(rank));
                }
            }
        }
        
        
        return posToreturn;
    }
    
    /**
     * Optimized approach using sorting
     * Time Complexity: O(nlogn) due to sorting
     * Logic:
     * 1. Create copy of input array and sort it
     * 2. Create map to store score->rank mapping
     * 3. Iterate sorted array from end (highest) to start (lowest)
     *    assigning ranks 1,2,3 etc
     * 4. Use map to lookup ranks for original scores
     * 5. Convert ranks to medal/position strings
     * @param rankLst List of integer scores
     * @return List of strings with medals/ranks
     */
    public static List<String> relativeRankusingSorting(LIST<Integer> rankLst){
        
        LIST<Integer> tempLst = rankLst.clone();
         tempLst.sort();
       
        List<String> posToreturn = new List<String>();
        MAP<Integer,Integer> reverseLst = new MAP<Integer,Integer>();
        Integer j=1;
        for(Integer i=tempLst.size()-1;i>=0;i--){
           reverseLst.put(tempLst[i],j);
            j++;
        }
        System.debug(reverseLst);
        for(integer i:rankLst){
            Integer rank = reverseLst.get(i);
            switch on rank{
                when 1{
                  posToreturn.add('Gold Medal'); 
                }
                when 2{
                  posToreturn.add('Silver Medal');  
                }
                when 3{
                    posToreturn.add('Bronze Medal');
                }
                when else{
                    posToreturn.add(String.valueOf(rank));
                }
            }
        }
        
        return posToreturn;
    }
}