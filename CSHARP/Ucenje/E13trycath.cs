using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
using System.Text;
using System.Threading.Tasks;

namespace Ucenje
{
    internal class E13trycath
    {
        public static void Izvedi()
        {
            Console.WriteLine("E13");
            int b = 0;
            while (true)
            {
                Console.WriteLine("unesi broj");



                try
                {
                    b = int.Parse(Console.ReadLine());
                    break;
                }
                catch
                {
                    Console.WriteLine("Niste unjeli broj");
                }

            }
            Console.WriteLine(b);

            Console.WriteLine("*******************************************");

            int godine = 0;

            for(; ; )
            {

                Console.WriteLine("Unesi svoje godine");
                try
                {
                    godine = int.Parse(Console.ReadLine());
                    if(godine <1 || godine>110)
                        {
                             Console.WriteLine("nisi unio odgovarajući broj (1-110)");
                             continue;
                        }
                          break;
                }
                catch 
                {
                    Console.WriteLine("Nisi unio broj");
                  
                }
            }








































        }
    }
}
