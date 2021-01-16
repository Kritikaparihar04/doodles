#include<iostream>
using namespace std;
int main()
{   int n=5;
    int sum=0;
    int arr[100];
    for(int i=1;i<=n;i++)
    {
        cout<<"Enter the element"<<i;
        cin>>arr[i];
    }

    for(int i=1;i<=n;i++)
    {
    sum+=arr[i];
    }
    cout<<"The sum of array elements is"<<sum;
}