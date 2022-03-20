#define _CRT_SECURE_NO_WARNINGS 1
#include <stdio.h>
#include<string.h>//strcmp比较字符是否正确
#include<windows.h>//cls清屏
#include<stdlib.h>//strlen计算字符串长度
#include<math.h>//sqrt开平方
阶乘算法
int main()
{
	int a=10;
	long long  b=1;
	long long  c = 0;
	//printf("请输入需要计算的数数：\n");
	//scanf("%d", &a);
	//for (int j = 1; j <= 10; j++)
	
		for (int i = 1; i <= a; i++)
		{
			b =b * i;
			c = c + b;


		}
	printf("%lld\n",c);
	return 0;
}

有序数组啰嗦找法
int main()
{
	int arr[] = { 1,2,3,4,5,6,8,9,10 };
	int k = 9;
	//写一个代码在有序的数组中找到7
	int i = 0;
	int sz = sizeof(arr) / sizeof(arr[0]);
	for (i = 0; i < sz; i++)
	{
		if (k == arr[i])
		{
			printf("找到了下标%d\n", i);
			break;
		}
	}
	if (i == sz)
		printf("找不到\n");
	return 0;
}
int main()
{
	int i = 0;
	char password[20] = { 0 };
	for (i = 0; i <3; i++)
	{
		printf("请输入密码:>");
		scanf("%s", password);
		if (strcmp(password, "123456") == 0)
		{
			printf("登陆成功\n");
		break; 
		}
	}
	if (i == 3)
	{
		printf("登录失败\n");
	}
	return 0;
}



有序数组神奇找法:二分查找算法
int main()
{
	int arr[] = { 1,2,3,4,5,6,7,8,9,10 };
	int k=7;
	int sz = sizeof(arr) / sizeof(arr[0]);//计算数组数字个数
	int left = 0;//左下标
	int right = sz - 1;//右下标
	while (left<=right)
	{
		int mid = (left + right) / 2;
		if (arr[mid]>k)
		{
			right = mid - 1;
		}
		else if (arr[mid]<k)
		{
			left = mid + 1;
		}
		else
		{
			printf("下标是 % d\n",mid);
			break;
		}
	}
	if (left>right)
	{
		printf("找不到\n");
	}
	return 0;
}

 !!!字符替换及其一些应用
int main()
{
	char arr1[] = "welcom to china";//数组中不含\0,字符串中含有\0,所以需要把他减掉
	char arr2[] = "###############";
	int left = 0;
	
	//int right = (sizeof(arr1) / (sizeof(arr1[0]) - 2)；//数组不含\0,字符串含\0故减去二
	int right =strlen(arr1) - 1;//计算字符个数等同于上
	while (left <= right)
	{
		arr2[left] = arr1[left];
		arr2[right] = arr1[right];
		printf("%s\n", arr2);
	Sleep(1000);//停留一秒
	system("cls");//清空当前屏幕
		left++;
		right--;
	  }
	
	return 0;
}
 
三数字排序
int main()
	{
		int a = 0;
         int b = 0;
         int c = 0;
		 int d = 0;
scanf("%d%d%d", &a, &b, &c);
if (a<b)
{
	d = a;
	a = b;
	b = d; 
}
if (a < c)
{
	d = a;
	a = c;
	c = d;
}
if (b < c)
{
	d = b;
	b = c;
	c = d;
 }
printf("%d%d%d", a, b, c);
		return 0;
	}

计算三的倍数
int main()
{
	int i = 0;
	for (i = 1; i < 100; i++)
	{
		if (i % 3 == 0)
			printf("%d\n", i);
	}
	return 0;
}

最大公约数
int main()
{
	int a, b,i;
	int c = 0;
	scanf("%d%d", &a, &b);
	for (i =a; i <= a ; i--)
	{
		if (a % i == 0 && b % i == 0)
		{
			printf("最大公约数%d", i);
			break;
		}
	        }

	return 0;
  }
辗转相除法
24,18
24%18=6
18%6=0
6为最大公约数
若18%6不是0,18和6继续辗转相除
小数%大数==小数
int main()
{
	int m ;
	int n ;
	int r = 0;
	scanf("%d%d", &m, &n);

	while (m % n)//m%n为零为假跳出循环
	{
		r = m % n;
		m = n;
		n = r;
	}
	printf("%d\n",r);
	return 0;
}//计算闰年
int main()
{
	int year = 0;
	int a = 0;
	for (year = 1000; year <= 2000; year++)
	{
		if ((year % 400 == 0) || (year % 4 == 0 && year % 100 != 0))
		{
			printf("%d年", year);
			a++;
		}
	}
	printf("共%dyear", a);
	return 0;
}
判断是否为素数
int main()
{
	int i = 0;
	for (i = 100; i <= 200; i++)
	{
     //素数判断，只能被1和其本身整除
	//试除法，产生2-（i-1）之间的数
		//不是素数的，两约数必有一者小于等于开平方本身
		//i=a*b必有a或b小于开平方i,开平方sqrt(开平方)
		int j = 0;
		for (j = 2; j < sqrt(i); j++)
		{
			if(i%j==0)
			{
				break;
			}
		}
		if (j >sqrt( i))
		{
			printf("%d  ", i);
		}
	}
	return 0;
}

找九数
int main()
{
	int i = 0;
	int b = 0;
	for (i = 0; i <= 100; i++)
	{
		if (i % 10 == 9)
		{
			printf("%d  ", i);
			b++;
		}
		if (i / 10 ==9)
		{
			printf("%d  ", i);
			b++;

		}
		
	}
	printf("够哦偶偶偶偶偶偶偶偶女%d  ", b);
	return 0;
}
加减算法
int main()
{
	int a = 0;
	double b = 0.0;
	double c = 1.0;
	for (int i = 1; i <= 100; i++)
	{
		b += c * 1.0 / i;
		c = -c;
	}
	printf("%lf",b);
	return 0;
}

求最大值
int main()
{
	int arr[] = { -1 };
	int max = arr[0];
	int i = 0;
	int sz = sizeof(arr) / sizeof(arr[0]);
	for (i = 1; i < sz; i++)
	{
		if (arr[i] > max)
		{
			max = arr[i];
		}

	}
	printf("max=%d\n", max);
	return 0;
}

九九乘法表
int main()
{
	int a;
	int b;
	int c = 0;
	for (a = 1; a <= 9; a++)
	{
		for (b = 1; b<=a; b++)
		{
			c = a * b;
			printf("%d*%d=%-2d ", a, b, c);
		}
		printf("\n");
	}
	return 0;
}

