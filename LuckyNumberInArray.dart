class Solution
{
  //ex:arr[2,2,3,4]
  int findLucky(List<int>arr)
  {
    //creating a map to store key:value
    Map<int,int>frequency={};
     int largestLucky=-1;
    for (int num in arr)
    {
      frequency[num]=(frequency[num]??0)+1;
    }
      //frequency [2]=null??0->returns 0;0+1=1
      //frequency[2]=1??0->returns 1;1+1=2

      //checking if the number is lucky or not : condition->1.num==count&&num>largestLuckyNumber
      //Here LargestLuckyNumber is to track the largest Number which is lucky
     
      frequency.forEach((num,count)
      {
        if(num==count && num>largestLucky)
        {
           largestLucky=num;
        }
      });
  return largestLucky;
    }

    } 
// void main()
// {
//   final solution=Solution();
//   print(solution.findLucky([2,2,2,3,3]));
// }
