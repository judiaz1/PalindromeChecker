public void setup()
{
  String lines[] = new String[]{"test","rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    //Can make more efficient by using regular expression?
    //Just a few cases we can add more so it's universal
    //did lowercase so it will be accurate.
    lines[i] = lines[i].replaceAll(" ","");
    lines[i] = lines[i].replaceAll(",","");
    lines[i] = lines[i].replaceAll("!","");
    lines[i] = lines[i].replaceAll("'","");
    lines[i] = lines[i].toLowerCase();
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord){
  boolean check = false;
  int count = sWord.length() -1;
  if(sWord.isEmpty()){
    return true;
  }
  
  for(int i = 0; i < sWord.length()-1; i++){
    if(sWord.charAt(i) == sWord.charAt(count)){
      count--;
      check = true;
    }else{
      return false;
    }
  }
  
  return check;
}

public String reverse(String sWord){
  String reversed = "";
  
  for(int i = sWord.length()-1; i >= 0; i--){
    reversed = reversed + sWord.charAt(i);
  }
  return reversed;
}
