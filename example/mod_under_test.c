#include "mod_under_test.h"
#include "dependency1.h"


int do_operation(int a, int b)
{
	return dep_operation(a,b);
}
