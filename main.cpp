#include "calculator.h"
#include <cstdio>

int main()
{
	Calculator calc;
	int res;

	res = calc.Add(5.8, 6.1);
	printf("res = %d\n", res);

	return 0;
}
