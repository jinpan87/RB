package com.demo;

public class BubbleSort {
	/**
	 * 冒泡排序法
	 * @author jinpan
	 *
	 */
	public static void bubbleSort(int[] arr){
		if(arr==null||arr.length==0)return;
		for(int i=1;i<arr.length-1;i++){
			for(int j=0;j<arr.length-i;j++){
				if(arr[j]>arr[j+1]){
					swap(arr,j,j+1);
				}
			}
		}
	}
	public static void swap(int[] arr,int i,int j){
		int temp=arr[i];
		arr[i]=arr[j];
		arr[j]=temp;
	}
	
	/**
	 * 选择排序
	 * @param args
	 */
	public static void selectSort(int[] arr){
		if(arr==null||arr.length==0)return;
		int k=0;
		for(int i=0;i<arr.length-1;i++){
			 k=i;
			for(int j=k+1;j<arr.length;j++){
				if(arr[k]>arr[j]){
					k=j;
				}
			}
			if(i!=k){
				swap(arr,i,k);
			}
		}
	}
	
	/**
	 * 插入排序
	 * @param args
	 */
	public static void insertSort(int[] arr){
		if(arr==null||arr.length==0)return;
		int i,j,index;
		for(i=1;i<arr.length;i++){
			index=arr[i];
			j=i-1;
			while(j>=0&index<arr[j]){
				arr[j+1]=arr[j];
				j--;
			}
			arr[j+1]=index;
		}
	}
	public static void main(String[] args) {
		int[] arr={3,4,78,34,23,56,99,12};
		BubbleSort.insertSort(arr);
		for(int i=0;i<arr.length;i++){
			System.out.println(arr[i]);
		}
	}
}
