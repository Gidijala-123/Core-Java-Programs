
public class MultiDimensionalArray {

	public static void main(String[] args) {
		int i,j,k,l;
		int a[][] = {{1,2,3},{10,20,30},{11,22,33,44}};
		for(i=0;i<3;i++) {
			for(j=0;j<3;j++) {
				System.out.print(a[i][j]+" ");
			}
			System.out.println();
		}
		
		System.out.println();
		String b[][] = {{"a","b","c"},{"aa","bb","cc"},{"aaa","bbb","ccc","ddd"}};
		for (k=0;k<3;k++) {
			for (l=0;l<b[k].length;l++) {
				System.out.print(b[k][l]+ " ");
			}
			System.out.println();
		}

	}
	

}
