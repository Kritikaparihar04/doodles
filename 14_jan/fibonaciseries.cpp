#include<iostream>
using namespace std;
int main()
{ 
      int n;
      int f=1;
      int s=1;
      int r=0;
      cout<<"Enter the range";
      cin>>n;
      if(n==0 || n==1)
      {
          return 1;
      }
      else
      {
         for(int i=0;i<n;i++)
         {   f=s;
             s=r;
             r=f+s;
             cout<<r<<" ";
         }  
      }
      
return 0;
     
}
