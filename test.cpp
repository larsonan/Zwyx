#include <stdio.h>
#include <string>

using namespace std;

int main(int argc, char** argv)
{
        
        const char* test_name = argv[1];
	FILE* output = fopen("xc.asm", "r");
	FILE* expected_output = fopen((string(test_name) + "_expected.asm").c_str(), "r");
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
	        printf("%s - test failed!\n", test_name);
	}
	else
	{
	        printf("%s - test passed!\n", test_name);
	}
	
	fclose(output);
	fclose(expected_output);
	
	return 0;
}

