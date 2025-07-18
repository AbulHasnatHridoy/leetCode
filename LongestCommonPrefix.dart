class Solution
{
  String longestCommonPrefix(List<String> strs)
  {
    //check if the String is empty or not
    if(strs.isEmpty)return "";
    //Now sorting the list so that it is easy to compare
    strs.sort();
    //establising first and last of the string after sorting
    String first=strs.first;
    String last=strs.last;
    int minlength=0;
    //Now checking which has the minimum length
    if(first.length<last.length)
    {
       minlength=first.length;
    }
    else{
     minlength=last.length;
    }
    //
    int i=0;
    while(i<minlength && first[i]==last[i])
    {
      i++;
    }
    return first.substring(0,i);
  }
}
void main()
{
  final solution=Solution();
  print(solution.longestCommonPrefix(["flower","flow","flight"]));
}