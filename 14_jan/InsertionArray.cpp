#include<iostream>
using namespace std;

void getArray(int arr[],int n)
{
    for(int i=1;i<=n;i++)
    {
        cout<<"Enter the "<<i<<" element";
        cin>>arr[i];
    }
}

 void  printArray(int arr[],int n)
{
    for(int i=1;i<=n;i++)
    {
        cout<<"The "<<i<<" element :"<<arr[i]<<endl;
    }   

}

void insertArray(int arr[],int e,int n,int ne)
{   for(int i=n;i<=n+ne;i++)
    {
        cout<<"Enter the "<<i<<"elelment" <<endl;
        cin>>arr[i];
    }
    arr[n+1]=e;
    cout<<"The new array list is";
    for(int i=1;i<=n+ne;i++)
    {
        cout<<"element"<<i<<":"<<arr[i]<<endl;
    }
}

int main()
{
    int arr[100];
    int n,e,ne;
    cout<<"Enter the numnber of element you want to store";
    cin>>n;
    getArray(arr,n);
    printArray(arr,n);
    cout<<"Enter the number of element you want to insert more in the array list";
    cin>>ne;
    insertArray(arr,e,n,ne);
    
    return 0;
}
