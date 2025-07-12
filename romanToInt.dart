class Solution{
  int romanToInt(String s)
  {
    //creating dictonary
     final romanValues={
      "I": 1,
      "V":5,
      "X":10,
      "L":50,
      "C":100,
      "D":500,
      "M": 1000
      };
      int total=0;//Get all the total value
      //Geting the first String
      for(int i=0;i<s.length;i++)
      {
       // String currentStr=s[i];
      //Geting the first value    using dictonary
        int currentValue=romanValues[s[i]]!;

        //if there is more than one value:
        if(i+1<s.length){
          //String nextStr=s[i+1];
          //converting string to value using dictornary
          int nextValue=romanValues[s[i+1]]!;


          if(currentValue<nextValue){
            total=total-currentValue;//crrent=1,total=0,now total=-1

          }
          else{
            total=total+currentValue;
          }
          }
          else{
            total=total +currentValue;
          }
          
        }
      
      return total;
}
}

void main(){
  final solution=Solution();
  print(solution.romanToInt("III"));
  print(solution.romanToInt("IV"));
  print(solution.romanToInt("MCMXCIV"));
}
