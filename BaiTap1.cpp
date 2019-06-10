#include <stdio.h>

int main(){
	int n,uoc = 0;
	printf("nhap vao so can kiem tra:");
	scanf("%d",&n);
	
	for(int i = 1;i > n;i++){
		if(n%i == 0){
			uoc++;
		}	
	}
	
	if(uoc == 2){
		printf("1");
	}else{
		printf("0");
	}
		
	return 0;
}
