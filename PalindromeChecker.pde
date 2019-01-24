public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
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
  //your code here
  String backward = "";
  for(int i = word.length(); i > 0; i--){
    if(word.substring(i-1,i).equals(" ") == false && word.substring(i-1,i).equals("!") == false && word.substring(i-1,i).equals(",") == false && word.substring(i-1,i).equals("'") == false){ //modify this to fix las two
    backward = backward + word.substring(i-1, i);
    }
  }
  String forward = "";
  for(int i = 0; i< word.length(); i++){
    if(word.substring(i,i+1).equals(" ") == false && word.substring(i,i+1).equals("!") == false && word.substring(i,i+1).equals(",") == false && word.substring(i,i+1).equals("'") == false){
       forward = forward + word.substring(i,i+1);
    }
  }
  if(backward.toLowerCase().equals(forward.toLowerCase())){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    return sNew;
}
