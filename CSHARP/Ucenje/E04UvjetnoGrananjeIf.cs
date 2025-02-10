using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ucenje
{
    internal class E04UvjetnoGrananjeIf
    {
        public static void Izvedi()
        {
            Console.WriteLine("E04");

            int broj = 7;
            bool uvjet = broj == 7;

            if (uvjet)
            {
                Console.WriteLine("Broj ima vrijednost 7");
            }

            if (broj == 7)
            {
                

            }

            if (broj == 7)
            {
                Console.WriteLine("i opet je 7 ali uz");
            }


            broj = 1;
            int temp = 2;
            if(broj!=1 & temp < 0)
            {
                Console.WriteLine("hladno je");

            }

            broj = 1;
            if (broj != 1 && temp < 0)
            {
                Console.WriteLine("hladno je");

            }
            if(broj>0 || temp > 0)
            {
                Console.WriteLine("toplo je ");
            }

            if (broj > 1 || temp > 0) {
                Console.WriteLine("ovo je kompliciran izraz");
            }

            if(broj > 0)
            {
                int t = 8; 

            }

            string grad = "Osijek";
            if (grad == "Osijek")
            {
                Console.WriteLine("Super");

            }
            else {
                Console.WriteLine("nije super");


                    }




        }

    
     

    }
}
