
int main(){
	int i = 6;
	int result = 0;
	switch (i) {
			case 0: 
				result += 2;
				result %= 2;
				break;
			case 1: 
				result += 3;
				result %= 4;
				break;
			case 2: 
				result += 5;
				result %= 4;
				break;
			case 3: 
				result += 1;
				result %= 3;
				break;
			case 4:
				result += 5;
				result %= 6;
				break;
			case 5: 
				result += 8;
				result %= 5;
				break;
			case 6: 
				result += 2;
				result %= 1;
				break;
			case 7: 
				result += 5;
				result %= 9;
				break;
			default: 
				result += 0;
				result %= 2;
				break;
	}

	return 0;
	
}