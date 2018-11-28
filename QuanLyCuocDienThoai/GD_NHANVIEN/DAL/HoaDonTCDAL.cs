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
        public List<HoaDonTinhCuoc> Load()
        {
            return db.HoaDonTinhCuocs.Where(s => s.Flag == true).ToList();
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
        public string GetPrintMaKH(int idmakh)
        {
            return db.KhachHangs.Where(s => s.Flag == true && s.KhachHangID == idmakh).Select(s => s.TenKH).FirstOrDefault();
        }
        public string GetPrintSim(int idsim)
        {
            return db.SIMs.Where(s => s.Flag == true && s.SIMID == idsim).Select(s => s.SoSim).FirstOrDefault();
        }
        public List<HoaDonTinhCuoc> TimHD(string idsim,string idmakh,string ngay,string check)
        {
            var res = db.HoaDonTinhCuocs.Where(s => s.Flag == true);
            if(idsim!="")
            {
                var a = Convert.ToInt32(idsim);
                res = res.Where(s => s.SIMID == a);
            }
            if (idmakh != "")
            {
                var a = Convert.ToInt32(idmakh);
                res = res.Where(s => s.KhachHangID == a);
            }
            if (check=="true")
            { var a = Convert.ToDateTime(ngay);
                res = res.Where(s => s.NgayHD == a);
            }
            return res.ToList();

        }
    }
}
