// Atlas main entry point

#include "stdafx.h"
#include <ctime>
//#include <string>
#include <cstring>
#include <vector>
//#include <conio.h>
#include <curses.h>
#include <clocale>
#include <locale>
#include "AtlasCore.h"

using namespace std;

//int _tmain(int argc, _TCHAR* argv[])
int main(int argc, char* argv[])
{
	clock_t StartTime, EndTime, ElapsedTime;
	int argoff = 0;
	int retcode = 0;

	Logger.SetLogStatus(false);
	StartTime = clock();
	printf("Atlas 1.12 by Klarth\n");
	printf("Biên dịch cho Linux bởi Huy Thắng\n");
	//int m = setmode(fileno(stdout), old_mode); // trả về mode cũ
	if (argc != 3 && argc != 5)
	{
		printf("Sử dụng: %s [tham số] ROM.ext Script.txt\n", argv[0]);
		printf("Tham số: -d filename hoặc -d stdout (gỡ lỗi)\n");
		printf("Tham số trong ngoặc vuông là tùy chọn\n\n");
		printf("Nhấn phím bất kỳ để tiếp tục\n");
		(void)getch();
		return 1;
	}

	if (strcmp("-d", argv[1]) == 0)
	{
		if (strcmp("stdout", argv[2]) == 0)
			Atlas.SetDebugging(stdout);
		else
			Atlas.SetDebugging(fopen(argv[2], "w"));
		argoff += 2;
	}

	if (!Atlas.Insert(argv[1 + argoff], argv[2 + argoff]))
	{
		printf("Insertion failed\n\n");
		retcode = 2;
	}

	EndTime = clock();

	ElapsedTime = EndTime - StartTime;

	printf("Execution time: %u msecs\n", (unsigned int)ElapsedTime);

	return retcode;
}
