using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ucenje
{
    internal class E10Whilepetlja
    {
        public static void Izvedi()
        {
            //Console.WriteLine("E10");

            while (true)
            {
                Console.WriteLine("ispis");
                break;
            }

            int i = 0;
            while (++i < 10)
            {
                Console.WriteLine(i);
            }

            int j = 0;
            while (1>=10 && j++ < 10)
            {
                Console.WriteLine(j+i);
            }

            int odbroja = 0;
            int dobroja = 10;
            for (int x = odbroja; x <= dobroja; x++)
            {
                Console.WriteLine(x);
            }































        }
    }
}
