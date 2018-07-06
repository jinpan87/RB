package com.demo;

public class PaiXu {
	/**
	 * 插入排序
	 * @param datas
	 * @return
	 */
	public static int[] sortInsert(int[] datas){
		for(int i=1;i<datas.length;i++){
			int j=i-1;
			int temp=datas[i];
			for(;j>=0&&temp<datas[j];j--){
				datas[j+1]=datas[j];
			}
			datas[j+1]=temp;
		}
		return datas;
	} 
	
/*	public static void main(String[] args) {
		List<Integer> list=List.of(1, 2, 3, 4, 5, 6, 7);
		list.forEach(System.out::println);
	}*/
}
