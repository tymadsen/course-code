/********************************************************
 * Kernels to be optimized for the CS:APP Performance Lab
 ********************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "defs.h"

/* 
 * Please fill in the following team struct 
 */
team_t team = {
    "Ty's Team",              /* Team name */

    "tmadsen2",                /* First member Route-Y ID */
    "Ty Madsen",     /* First member full name */
    "danceclass1@gmail.com",  /* First member email address */

    "",                   /* Second member Route-Y ID */
    "",                   /* Second member full name (leave blank if none) */
    ""                    /* Second member email addr (leave blank if none) */
};

/***************
 * ROTATE KERNEL
 ***************/

/******************************************************
 * Your different versions of the rotate kernel go here
 ******************************************************/

/* 
 * naive_rotate - The naive baseline version of rotate 
 */
char naive_rotate_descr[] = "naive_rotate: Naive baseline implementation";
void naive_rotate(int dim, pixel *src, pixel *dst) 
{
    int i, j;

    for (i = 0; i < dim; i++)
	for (j = 0; j < dim; j++)
	    dst[RIDX(dim-1-j, i, dim)] = src[RIDX(i, j, dim)];
}

/* 
 * rotate - Your current working version of rotate
 * IMPORTANT: This is the version you will be graded on
 */
char rotate_descr[] = "rotate_5: Unroll i 8 times. Current working copy.";
void rotate(int dim, pixel *src, pixel *dst) 
{
    int i, j;
    int dim_1 = dim-1;
    int dim_7 = dim-7;
    int dim2 = dim*2;
    int dim3 = dim*3;
    int dim4 = dim*4;
    int dim5 = dim*5;
    int dim6 = dim*6;
    int dim7 = dim*7;


    for (i = 0; i < dim_7; i+=8)
    {
        for (j = 0; j < dim; j++)
        {
            int dpix = RIDX(dim_1-j, i, dim);
            int spix = RIDX(i, j, dim);

            dst[dpix] = src[spix];
            dst[dpix + 1] = src[spix + dim];
            dst[dpix + 2] = src[spix + dim2];
            dst[dpix + 3] = src[spix + dim3];
            dst[dpix + 4] = src[spix + dim4];
            dst[dpix + 5] = src[spix + dim5];
            dst[dpix + 6] = src[spix + dim6];
            dst[dpix + 7] = src[spix + dim7];

        }
    }
    for (; i < dim; i++)
    {
        dst[RIDX(dim_1-j, i, dim)] = src[RIDX(i, j, dim)];
    }
}

/*********************************************************************
 * register_rotate_functions - Register all of your different versions
 *     of the rotate kernel with the driver by calling the
 *     add_rotate_function() for each test function. When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_rotate_functions() 
{
    add_rotate_function(&naive_rotate, naive_rotate_descr);   
    add_rotate_function(&rotate, rotate_descr); 
    /* ... Register additional test functions here */
}


/***************
 * SMOOTH KERNEL
 **************/

/***************************************************************
 * Various typedefs and helper functions for the smooth function
 * You may modify these any way you like.
 **************************************************************/

/* A struct used to compute averaged pixel value */
typedef struct {
    int red;
    int green;
    int blue;
    int num;
} pixel_sum;

/* Compute min and max of two integers, respectively */
static int min(int a, int b) { return (a < b ? a : b); }
static int max(int a, int b) { return (a > b ? a : b); }

/* 
 * initialize_pixel_sum - Initializes all fields of sum to 0 
 */
static void initialize_pixel_sum(pixel_sum *sum) 
{
    sum->red = sum->green = sum->blue = 0;
    sum->num = 0;
    return;
}

/* 
 * accumulate_sum - Accumulates field values of p in corresponding 
 * fields of sum 
 */
static void accumulate_sum(pixel_sum *sum, pixel p) 
{
    sum->red += (int) p.red;
    sum->green += (int) p.green;
    sum->blue += (int) p.blue;
    sum->num++;
    return;
}

/* 
 * assign_sum_to_pixel - Computes averaged pixel value in current_pixel 
 */
static void assign_sum_to_pixel(pixel *current_pixel, pixel_sum sum) 
{
    current_pixel->red = (unsigned short) (sum.red/sum.num);
    current_pixel->green = (unsigned short) (sum.green/sum.num);
    current_pixel->blue = (unsigned short) (sum.blue/sum.num);
    return;
}

/* 
 * avg - Returns averaged pixel value at (i,j) 
 */
static pixel avg(int dim, int i, int j, pixel *src) 
{
    int ii, jj;
    pixel_sum sum;
    pixel current_pixel;

    initialize_pixel_sum(&sum);
    for(ii = max(i-1, 0); ii <= min(i+1, dim-1); ii++) 
	for(jj = max(j-1, 0); jj <= min(j+1, dim-1); jj++) 
	    accumulate_sum(&sum, src[RIDX(ii, jj, dim)]);

    assign_sum_to_pixel(&current_pixel, sum);
    return current_pixel;
}

/******************************************************
 * Your different versions of the smooth kernel go here
 ******************************************************/

/*
 * naive_smooth - The naive baseline version of smooth 
 */
char naive_smooth_descr[] = "naive_smooth: Naive baseline implementation";
void naive_smooth(int dim, pixel *src, pixel *dst) 
{
    int i, j;

    for (i = 0; i < dim; i++)
	for (j = 0; j < dim; j++)
	    dst[RIDX(i, j, dim)] = avg(dim, i, j, src);
}

/*
 * smooth - Your current working version of smooth. 
 * IMPORTANT: This is the version you will be graded on
 */
char smooth_descr[] = "smooth: Current working version";
void smooth(int dim, pixel *src, pixel *dst) 
{
    naive_smooth(dim, src, dst);
}

/*
 * smooth - Your current working version of smooth. 
 * IMPORTANT: This is the version you will be graded on
 */
char smooth1_descr[] = "smooth1: Unroll i by 4";
void smooth1(int dim, pixel *src, pixel *dst) 
{

    int i, j;
    int dim_1 = dim-1;
    int dim_3 = dim-3;

    for (i = 0; i < dim_3; i+=4)
    {
        for (j = 0; j < dim; j++)
        {
            dst[RIDX(i, j, dim)] = avg(dim, i, j, src);
            dst[RIDX(i+1, j, dim)] = avg(dim, i+1, j, src); 
            dst[RIDX(i+2, j, dim)] = avg(dim, i+2, j, src); 
            dst[RIDX(i+3, j, dim)] = avg(dim, i+3, j, src);
        }
    }
    for (; i < dim; i++)
    {
        dst[RIDX(i, j, dim)] = avg(dim, i, j, src); 
    }
}

/*
 * smooth - Your current working version of smooth. 
 * IMPORTANT: This is the version you will be graded on
 */
char smooth2_descr[] = "smooth2: Unroll i by 8";
void smooth2(int dim, pixel *src, pixel *dst) 
{

    int i, j;
    int dim_1 = dim-1;
    int dim_7 = dim-7;

    for (i = 0; i < dim_7; i+=8)
    {
        for (j = 0; j < dim; j++)
        {
            dst[RIDX(i, j, dim)] = avg(dim, i, j, src);
            dst[RIDX(i+1, j, dim)] = avg(dim, i+1, j, src); 
            dst[RIDX(i+2, j, dim)] = avg(dim, i+2, j, src); 
            dst[RIDX(i+3, j, dim)] = avg(dim, i+3, j, src); 
            dst[RIDX(i+4, j, dim)] = avg(dim, i+4, j, src); 
            dst[RIDX(i+5, j, dim)] = avg(dim, i+5, j, src); 
            dst[RIDX(i+6, j, dim)] = avg(dim, i+6, j, src); 
            dst[RIDX(i+7, j, dim)] = avg(dim, i+7, j, src);
        }
    }
    for (; i < dim; i++)
    {
        dst[RIDX(i, j, dim)] = avg(dim, i, j, src); 
    }
}

/*
 * smooth - Your current working version of smooth. 
 * IMPORTANT: This is the version you will be graded on
 */
char smooth3_descr[] = "smooth3: eliminate function calls upgraded";
void smooth3(int dim, pixel *src, pixel *dst) 
{
     int i, j, k;
     int dim_1 = dim-1;
     int dim_2 = dim-2;

    for (i = 0; i < dim; i++)
    for (j = 0; j < dim; j++)
        dst[RIDX(i, j, dim)] = avg(dim, i, j, src);

    dst[0] = (src[0] = )

    /*top row*/
    for(j = 1; j < dim_2; j++)
    {
        int pix1 = src[j-1];
        int pix2 = src[j];
        int pix3 = src[j+1];
        int pix4 = src[dim];
        int pix5 = src[dim+1];
        int pix6 = src[dim+2];
    }

    /*bottom row*/
    int end = dim*dim;
    for(j = end-dim + 1; j < end-1; j++)
    {
        int pix1 = src[j-1];
        int pix2 = src[j];
        int pix3 = src[j+1];
        int pix4 = src[j-dim-1];
        int pix5 = src[j-dim];
        int pix6 = src[j-dim+1];
    }

    /*left side*/
    end = (dim-2)*dim;
    for(i = dim; i < end+1; i+=dim)
    {
        int pix1 = src[i-dim];
        int pix2 = src[i];
        int pix3 = src[i+dim];
        int pix4 = src[i-dim+1];
        int pix5 = src[i+1];
        int pix6 = src[i+dim+1];
    }

    /*right side*/
    start = dim+dim-1;
    end = (dim-1)*dim;
    for(i = start; i < end; i+=dim)
    {
        int pix1 = src[i-dim];
        int pix2 = src[i];
        int pix3 = src[i+dim];
        int pix4 = src[i-dim-1];
        int pix5 = src[i-1];
        int pix6 = src[i+dim-1];
    }

 
}


/********************************************************************* 
 * register_smooth_functions - Register all of your different versions
 *     of the smooth kernel with the driver by calling the
 *     add_smooth_function() for each test function.  When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_smooth_functions() {
    add_smooth_function(&smooth, smooth_descr);
    add_smooth_function(&smooth1, smooth1_descr);
    add_smooth_function(&smooth2, smooth2_descr);
    add_smooth_function(&naive_smooth, naive_smooth_descr);
    /* ... Register additional test functions here */
}

