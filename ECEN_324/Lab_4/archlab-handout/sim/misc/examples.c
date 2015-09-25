/* 
 * Architecture Lab: Part A 
 * 
 * High level specs for the functions that the students will rewrite
 * in Y86 assembly language
 */

/* $begin examples */
/* linked list element */
typedef struct ELE {
    int val;
    struct ELE *next;
} *list_ptr;


int main()
{

    // list_ptr result = malloc(sizeof(list_ele));
    // result->val = val;
    // result->next = next;
    // return result;

    list_ptr ll3;
    list_ptr ll2;
    list_ptr ll1;

    ll3->val = 13;
    ll3->next = 0;

    ll2->val = 17;
    ll2->next = ll3;

    ll1->val = 12;
    ll1->next = ll2;
    
    sum_list(ll1);
}



/* sum_list - Sum the elements of a linked list */
int sum_list(list_ptr ls)
{
    int val = 0;
    while (ls) {
	val += ls->val;
	ls = ls->next;
    }
    return val;
}

/* rsum_list - Recursive version of sum_list */
int rsum_list(list_ptr ls)
{
    if (!ls)
	return 0;
    else {
	int val = ls->val;
	int rest = rsum_list(ls->next);
	return val + rest;
    }
}

/* copy_block - Copy src to dest and return xor checksum of src */
int copy_block(int *src, int *dest, int len)
{
    int result = 0;
    while (len > 0) {
	int val = *src++;
	*dest++ = val;
	result ^= val;
	len--;
    }
    return result;
}
/* $end examples */
