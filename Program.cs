using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2ndPractice
{
    class Program
    {
        static void Main(string[] args)
        {
            ////Finding Vowels In String and Index...

            // Console.Write("Enter Message : ");
            // string Message = Console.ReadLine();
            //// Message = Message.ToLower();
            // int Count=0;

            // for (int i = 0; i < Message.Length; i++)
            // {
            //     if (Message[i] == 'a' || Message[i] == 'A' || Message[i] == 'a' || Message[i] == 'e' || Message[i] == 'E' || Message[i] == 'i' || Message[i] == 'I' || Message[i] == 'o' || Message[i] == 'O' || Message[i] == 'u' || Message[i] == 'U')
            //     {
            //         Count++;
            //         Console.WriteLine(i + " " + Message[i]);
            //     }
            // }
            // Console.WriteLine("Total Number of Vowels in String are "+Count+".");

            ////Sorting Array in Descending Order

            //Console.Write("Enter Length : ");
            //int n = Convert.ToInt32(Console.ReadLine());
            //int[] arr = new int[n];

            //for (int i = 0; i < arr.Length; i++)
            //{
            //    arr[i] = Convert.ToInt32(Console.ReadLine());

            //}
            //Console.WriteLine("Your Sorted Array.");
            //Array.Sort(arr);
            //for (int i = 0; i < arr.Length; i++)
            //{
            //    Console.Write(arr[i] + " ");
            //}
            //Console.WriteLine("\nYour Array In Descending Array.");
            //Array.Reverse(arr);
            //for (int i = 0; i < arr.Length; i++)
            //{
            //    Console.Write(arr[i] + " ");
            //}

            ////Swapping WithOut Third Variable

            //Console.Write("Number 1 : ");
            //int num1 = Convert.ToInt32(Console.ReadLine());

            //Console.Write("Number 2 : ");
            //int num2 = Convert.ToInt32(Console.ReadLine());

            //num1 = num1 + num2;
            //num2 = num1 - num2;
            //num1 = num1 - num2;

            //Console.WriteLine("After Swapping");
            //Console.WriteLine("Number 1 : " + num1 + " - Number 2 : " + num2);

            ////Even Odd WithOut Mod..
            //for (int i = 0; i < 100; i++)
            //{



            //Double number = Convert.ToDouble(Console.ReadLine());

            //Double num1 = number / 2;
            //Double num2 = Math.Floor(num1);

            //Double temp = num1 - num2;
            //if (temp==0)
            //{
            //    Console.WriteLine("Even");
            //}
            //else
            //{
            //    Console.WriteLine("Odd");
            //}
            //}

            ////int num;

            //if ((num 1 == 0))
            //{

            //}

            //int num = 12345;


            ////Input Matrix Diagnol Sum...
            /*           Console.Write("Enter Dimension : ");
            int num = int.Parse(Console.ReadLine());

            int[,] arr = new int[num, num];

            for (int i = 0; i < num; i++)
            {
                for (int j = 0; j < num; j++)
                {
                    arr[i,j] = int.Parse(Console.ReadLine());
                }
            }
            int sum = 0; 
            for (int i = 0; i < num; i++)
            {
                for (int j = 0; j < num; j++)
                {
                    if (i==j)
                    {
                        sum += arr[i, j];

                    }
                }
            }
            for (int i = 0; i < num; i++)
            {
                for (int j = 0; j < num; j++)
                {
                    arr[i, j] += sum;
                }
            }
            Console.WriteLine("Sum is " + sum);

            for (int i = 0; i < num; i++)
            {
                for (int j = 0; j < num; j++)
                {
                    Console.Write(arr[i,j]+" ");
                }
                Console.WriteLine();
            }*/



            ////Closest Number Finding...

            //int[] arr = new int[] { 65, 12, 7, 9, 45, 85 };
            //int num = int.Parse(Console.ReadLine());
            //int temp=0;
            //for (int i = 0; i < arr.Length; i++)
            //{
            //    for (int j = 0; j < arr.Length; j++)
            //    {
            //        if (arr[j]==(num-i))
            //        {
            //            temp = arr[j];
            //            break;
            //        }

            //        if (arr[j] == (num+i))
            //        {

            //            temp = arr[j];
            //            break;
            //        }
            //    }
            //}
            //Console.WriteLine("closet number to : " +num + " is " + temp);




            //Hashing Function

            Console.ReadLine();
        }
    }
}
