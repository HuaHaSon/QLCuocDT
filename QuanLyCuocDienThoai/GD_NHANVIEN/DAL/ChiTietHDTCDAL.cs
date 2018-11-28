using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EFModel;
using Common;
namespace GD_NHANVIEN.DAL
{
    public class ChiTietHDTCDAL
    {
        QLCuocDTContext db = new QLCuocDTContext();
        public List<ChitietHDTC> Load(int idsim,int ? thang,int makh)
        {
            DateTime now = DateTime.Now;
            var startDate = new DateTime(now.Year, thang.GetValueOrDefault(1), 1);
            var endDate = startDate.AddMonths(1).AddDays(-1);
            var res = (from a in db.ChitietHDTCs join b in db.SIMs
                      on a.SIMID equals b.SIMID join c in db.HoaDonDangKies
                      on b.HoaDonDangKyID equals c.HoaDonDangKyID
                       where a.ThoiGianBD >= startDate && a.ThoiGianKT <= endDate && a.SIMID == idsim && c.KhachHangID == makh
                       select a).ToList();
            return res;
        }
        public decimal TinhTien(int idsim,int ?thang,int makh)
        {
            DateTime now = DateTime.Now;
            var startDate = new DateTime(now.Year, thang.GetValueOrDefault(1), 1);
            var endDate = startDate.AddMonths(1).AddDays(-1);
            var res = from a in db.ChitietHDTCs
                       join b in db.SIMs
                        on a.SIMID equals b.SIMID
                       join c in db.HoaDonDangKies
                       on b.HoaDonDangKyID equals c.HoaDonDangKyID
                       where a.ThoiGianBD >= startDate && a.ThoiGianKT <= endDate && a.SIMID == idsim && c.KhachHangID == makh
                       select a;
            decimal tienHoaDonThang = 0;
            foreach (var item in res)
            {
                tienHoaDonThang += MathSolve.TinhTienCuoc((DateTime)item.ThoiGianBD, (DateTime)item.ThoiGianKT);
            }
            return tienHoaDonThang;
        }
        //public void ThemCTHD(int idhd,int idsim,string tgbd,string tgkt,int sophusd)
        //{
        //    ChitietHDTC cthd = new ChitietHDTC();
        //    cthd.HoaDonTinhCuocID = idhd;
        //    cthd.SIMID = idsim;
        //    cthd.ThoiGianBD = Convert.ToDateTime(tgbd);
        //    cthd.ThoiGianKT = Convert.ToDateTime(tgkt);
        //    cthd.SoPhutSD = sophusd;
        //    cthd.Flag = true;
        //    db.ChitietHDTCs.Add(cthd);
        //    db.SaveChanges();
        //}
    }
}
