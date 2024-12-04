/**
 * @description       : 
 * @author            : Kishan
 * @group             : 
 * @last modified on  : 12-04-2024
 * @last modified by  : Kishan
**/

/**
 * https://leetcode.com/problems/palindrome-number/description/
 * Given an integer x, return true if x is a 
palindrome
, and false otherwise.

 

Example 1:

Input: x = 121
Output: true
Explanation: 121 reads as 121 from left to right and from right to left.
Example 2:

Input: x = -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
Example 3:

Input: x = 10
Output: false
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 * 
 * **/
public class PalindromeOrNot {
    
    Public static Boolean palindromUsingString(Integer X){
        String originalNum = String.valueOf(X);
        String [] Num = originalNum.split('');
        String newNum = '';
        for(Integer i = Num.size()-1;i>=0;i-- ){
            newNum+=Num[i];
        }
        
        if(newNum == originalNum){
            return true;
        }
        return false;
    }
    
    Public static Boolean palindromUsinginteger(Integer X){
        if(x < 0){
            return false;
        }
        
        Integer temp = X;
        Integer newNum = 0;
        
        while(true){
          newNum = newNum + MATH.Mod(temp,10);
            if(temp/10 == 0){
                break;
            }
            newNum =newNum*10;
            temp = temp/10;
            
        }
        system.debug(newNum);
        if(newNum == X){
            return true;
        }
        
        return false;
    }
    
    
    
}