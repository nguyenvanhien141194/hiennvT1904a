#include<stdio.h>
main(){
	int a,b;
	printf("nhap vao so thu 1: ");
	scanf("%d",&a);
	printf("nhap vao so thu 2: ");
	scanf("%d",&b);
	
	for(int i = a; i<=b; i++){
		int dem = 0;
		for(int j=1;j<=i;j++){
			if(i%j==0){
				dem++;
			}
		}
		if(dem ==2 ){
			printf("%2d",i) ;
		}
	}
	
	return 0;
}
