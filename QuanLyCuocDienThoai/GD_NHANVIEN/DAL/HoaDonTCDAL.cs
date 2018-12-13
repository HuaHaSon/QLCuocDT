using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EFModel;
namespace GD_NHANVIEN.DAL
{
    public class HoaDonTCDAL
    {
        QLCuocDTContext db = new QLCuocDTContext();
        public List<HoaDonTinhCuocThang> Load()
        {
            return db.HoaDonTinhCuocThangs.ToList();
        }
        //public void ThemHD(int idkh,int idsim,string ngayhd,int cuoctb,decimal thanhtien,decimal tongtien)
        //{
        //    HoaDonTinhCuoc hd = new HoaDonTinhCuoc();
        //    hd.KhachHangID = idkh;
        //    hd.SIMID = idsim;
        //    hd.NgayHD = Convert.ToDateTime(ngayhd);
        //    hd.CuocThueBao = cuoctb;
        //    hd.ThanhTien = thanhtien;
        //    hd.TongTien = tongtien;
        //    hd.Flag = true;
        //    db.HoaDonTinhCuocs.Add(hd);
        //    db.SaveChanges();
        //}
        public string GetPrintMaKH(int idsim)
        {
            var res = from a in db.SIMs
                      join b in db.HoaDonDangKies on a.HoaDonDangKyID equals b.HoaDonDangKyID
                      join c in db.KhachHangs on b.KhachHangID equals c.KhachHangID
                      where a.Flag == true && a.SIMID == idsim
                      select c.TenKH;
            return res.FirstOrDefault();
        }
        public string GetPrintSim(int idsim)
        {
            return db.SIMs.Where(s => s.Flag == true && s.SIMID == idsim).Select(s => s.SoSim).FirstOrDefault();
        }
        public List<HoaDonTinhCuocThang> TimHD(string idsim,string ngay,string check)
        {
            var res = db.HoaDonTinhCuocThangs.ToList();
            if(idsim!="")
            {
                var a = Convert.ToInt32(idsim);
                res = res.Where(s => s.SIMID == a).ToList();
            }            
            if (check=="true")
            { var a = Convert.ToDateTime(ngay);
                res = res.Where(s => s.ThangHD.Month == a.Month).ToList();
            }
            return res.ToList();

        }
    }
}
