using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ucenje
{
    internal class E01ULAZIZLAZ
    {
     

        public static void Izvedi()
        {
            Console.WriteLine("Pozdrav Svijetu" );

            Console.Write("ovo je u liniji");
            Console.WriteLine("ovo je u istoj liniji ali nakon ispisa ode u novu liniju");

            Console.WriteLine("1,red\n2. red\tnakon taba");

            Console.WriteLine(1);
            Console.WriteLine(true);
            Console.WriteLine(4.6);


            int i;
            Console.Write  ("Unesi cijeli broj: ");
            i = int.Parse(Console.ReadLine());


            Console.WriteLine("UNOI SI {0}",i);

            Console.Write("unesi ime grada:");
            string grad= Console.ReadLine();
            Console.WriteLine("unio si" + grad);

            Console.Write("Unesi svoje ime:");
            string ime = Console.ReadLine();

        }










    }
}
