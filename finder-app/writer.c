#include <stdio.h>
#include <syslog.h>

int main(int argc, char *argv[]){
	openlog(NULL,0,LOG_USER);
	
	if(argc != 3){
		syslog(LOG_ERR, "Invalid no of arguments: %d, try again!",argc);
		printf("Invalid no of arguments: %d, try again!",argc);
		return 1;
		}
		
	FILE *file;
	const char* path = argv[1];
	
	file = fopen(path, "w");
	if (file == NULL)
	{
		syslog(LOG_ERR, "File doesnt exit!!");
		return 1;
	}
	
	fprintf(file, "%s",argv[2]);
	syslog(LOG_DEBUG, "Writing %s to %s",argv[2], argv[1]);
	
	}
	

	
	
	
	
	
	
	
	
