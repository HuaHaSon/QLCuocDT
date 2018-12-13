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
        public List<ChiTietHDTC> Load(int idhd)
        {
            return db.ChiTietHDTCs.Where(s => s.HoaDonTinhCuocThangID == idhd).ToList();
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
