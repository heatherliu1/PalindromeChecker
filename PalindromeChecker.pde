import processing.core.PApplet;

public class Sketch extends PApplet {
  public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(isPalindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean isPalindrome(String sWord){
  String reversed = reverse(sWord);
  if(sWord.equals(reversed))
    return true;
  return false;
}

public String reverse(String sWord){
  String s = "";
  for(int i = sWord.length(); i>0; i--)
      s = s + sWord.substring(i-1,i);
      
  return s;
}

public String onlyLetters(String sString){
  String s = "";
  for (int i = 0; i < sString.length(); i++)
    if (Character.isLetter(sString.charAt(i)) == true)
     s = s + sString.substring(i,i+1);
  return s;
  }
}
