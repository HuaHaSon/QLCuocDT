using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common
{
    public static class MathSolve
    {
        public static decimal TinhTienCuoc(System.DateTime thoiGianBD,System.DateTime thoiGianKT)
        {
            decimal kq = 0;
            DateTime date1 = new DateTime(thoiGianBD.Year, thoiGianBD.Month, thoiGianBD.Day, 7, 00, 00);
            DateTime date2 = new DateTime(thoiGianBD.Year, thoiGianBD.Month, thoiGianBD.Day, 23, 00, 00);
            int tgBD = Int32.Parse(thoiGianBD.ToString("HH"));
            int tgKT = Int32.Parse(thoiGianKT.ToString("HH"));
            if ((tgBD >= 7 & tgKT < 23))
            {
                kq = thoiGianKT.Subtract(thoiGianBD).Hours * 60 + thoiGianKT.Subtract(thoiGianBD).Minutes;
                kq = kq * 200;
            }
            else if((tgBD < 7 & tgKT >= 23))
            {
                decimal kq0 = (date2.Subtract(date1).Hours * 60 + date2.Subtract(date1).Minutes)*200 ;
                decimal kq1= (date1.Subtract(thoiGianBD).Hours * 60 + date1.Subtract(thoiGianBD).Minutes)*150;
                decimal kq2 = (thoiGianKT.Subtract(date2).Hours * 60 + thoiGianKT.Subtract(date2).Minutes)*150;
                kq = kq0 + kq1 + kq2;
            }
            else if ((tgBD < 7 & tgKT < 23))
            {
                decimal kq1= (date1.Subtract(thoiGianBD).Hours * 60 + date1.Subtract(thoiGianBD).Minutes)*150;
                decimal kq2 = (thoiGianKT.Subtract(date1).Hours * 60 + thoiGianKT.Subtract(date1).Minutes)*200;
                kq = kq1 + kq2;
            }
            else if ((tgBD >= 7 & tgKT >= 23))
            {
                decimal kq1 = (date2.Subtract(thoiGianBD).Hours * 60 + date2.Subtract(thoiGianBD).Minutes) * 200;
                decimal kq2 = (thoiGianKT.Subtract(date2).Hours * 60 + thoiGianKT.Subtract(date2).Minutes) * 150;
                kq = kq1 + kq2;
            }
            return kq;
        }
    }
}
