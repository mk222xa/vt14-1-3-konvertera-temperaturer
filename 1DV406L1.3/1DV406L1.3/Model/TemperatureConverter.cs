using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1DV406L1._3.Model
{
    public static class TemperatureConverter
    {
        public static int CelciusToFahrenheit(int degreesC)
        {
            int fahrenheit;
            fahrenheit = degreesC * 9 / 5 + 32;
            return fahrenheit;
        }
        public static int FahrenheitToCelcius(int degreesF)
        {
            int celcius;
            celcius = (degreesF - 32) * 5 / 9;
            return celcius;
        }
    }
}