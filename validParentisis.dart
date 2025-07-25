class Solution{
  bool isValid(String s)
  {
    //Quick check about if the string is even or odd
    if(s.length%2!=0)
    {
      return false;

    }
    //creating the data structure for getting the values 
    //list
    final stack=[];
    final pairs={
      ")":"(",
      "}":"{",
      "]":"["
    };
    //getting the values in the array
    for(int i=0;i<s.length;i++)
    {
      final char=s[i];//getting all the string in the array
      //checking for opening bracket
      if(pairs.containsValue(char))
      {
        stack.add(char);
      } 
      //checking for closing bracket
      else if(pairs.containsKey(char))
      {//"(]""==return false
        if(stack.isEmpty|| stack.removeLast()!=pairs[char])
        return false;
      }
      else
      {
        return false;
      }
    }return stack.isEmpty;
  }
}
// void main()
// {
//   final solution =Solution();
//   print(solution.isValid("()"));
// }