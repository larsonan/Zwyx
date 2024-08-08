#include <stdio.h>
int main()
{
	FILE* output = fopen("xc.asm", "r");
	FILE* expected_output = fopen("expected.asm", "r");
	int c = fgetc(output);
	int ec = fgetc(expected_output);
	int failed = 0;
	while ((c != EOF) || (ec != EOF))
	{
		if (c != ec)
		{
			failed = 1;
			break;
		}
	        c = fgetc(output);
	        ec = fgetc(expected_output);
	}
	
	if (failed)
	{
	        printf("Test failed!\n");
	}
	else
	{
	        printf("Test passed!\n");
	}
	
	fclose(output);
	fclose(expected_output);
	
	return 0;
}

