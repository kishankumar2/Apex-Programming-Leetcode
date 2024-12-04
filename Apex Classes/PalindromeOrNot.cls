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
    
    /**
     * Method to check if a number is palindrome using String manipulation
     * Logic:
     * 1. Convert the input number to String
     * 2. Split the string into array of characters
     * 3. Create a new string by iterating array from end to start (reverse the string)
     * 4. Compare original and reversed string - if equal, it's palindrome
     * Example: 121 -> "121" -> ["1","2","1"] -> "121" -> true
     */
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
    
    /**
     * Method to check if a number is palindrome using mathematical operations
     * Logic:
     * 1. First check if number is negative - negative numbers can't be palindrome
     * 2. Store original number in temp variable
     * 3. Build reversed number digit by digit:
     *    - Get last digit using modulo 10 (MATH.Mod(temp,10))
     *    - Add digit to reversed number
     *    - Multiply reversed number by 10 to shift digits left
     *    - Remove last digit from temp by dividing by 10
     * 4. Compare original and reversed number
     * Example: 121 -> First digit:1, Second:2, Third:1 -> 121 -> true
     */
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