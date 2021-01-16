#include<iostream>
using namespace std;
void read(int arr[],int n){
    for(int i=1;i<=n;i++)
    {   cout<<"Enter the "<<i<<" element";
        cin>>arr[i];
    }
}

void print(int arr[],int n)
{
    for(int i=1;i<=n;i++)
    {
        cout<< "The"<<i<<"element is"<<arr[i]<<endl;
    }
}

int main()
{   int n;
    cout<<" The number of element you want in array";
    cin>>n;
    int arr[n];
    read(arr,n);
    print(arr,n);
    return 0;
} 
 
