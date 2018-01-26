public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " is a palidrome.");
    }
    else
    {
      println(lines[i] + " is not a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
    if(tellmeWhy(word).equals(reverse(tellmeWhy(word))))
      return true;
    else
      return false;
}

public String tellmeWhy(String sString){
  String newString = new String();
  for(int i = 0 ; i<sString.length() ; i++)
    if(Character.isLetter(sString.charAt(i)) == true)
      newString = newString + sString.charAt(i);
    
  return newString.toLowerCase();
}

public String reverse(String str)
{
    String sNew = new String();

    for(int i = str.length()-1 ; i>-1 ; i--)
      sNew = sNew + str.charAt(i);

    return sNew.toLowerCase(); 
}


