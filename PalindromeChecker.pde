public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])== true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = onlyLetters(word);
  String word3 = noSpaces(word2);
  String word4 = noCapitals(word3);
  if(word4.equals(reverse(word4))){
    return true;
  }
  else{
    return false;
  }
}
public String reverse(String str)
{
  String s = "";
  for(int i = str.length()-1; i >= 0; i--)
  {
    s = s +str.substring(i, i+1);
  }
  s = s.toLowerCase();
  return s; 
}
public String onlyLetters(String sString){
  String result = new String();
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      result = result + sString.substring(i,i+1);
  return result;
}
public String noSpaces(String sWord){
  String s = "";
  for(int i = 0; i <= sWord.length()-1; i++){
    if(sWord.substring(i, i+1).equals(" ")){
      s = s;
    } else{
      s = s + sWord.substring(i, i+1);
    }
  }
  return s; 
}
public String noCapitals(String sWord1){
  return sWord1.toLowerCase();
}
