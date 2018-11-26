using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EFModel;
namespace GD_NHANVIEN.DAL
{
    public class DangKySIMDAL
    {
        QLCuocDTContext db = null;
        public DangKySIMDAL()
        {
            db = new QLCuocDTContext();
           
        }
        public int testnumber(string txt)
        {
            try
            {
                double number = Convert.ToDouble(txt);
            }
            catch (FormatException ex)
            {
                return 0;
            }
            return 1;
        }
        public string textexistmakh(int txt)
        {
            var res = db.HoaDonDangKies.Where(s => s.Flag == true && s.KhachHangID == txt).Select(s => s.KhachHangID).FirstOrDefault();
            var result = res.ToString();         
            return result;
        }
        public List<HoaDonDangKy> Load()
        {
            return db.HoaDonDangKies.Where(s => s.Flag == true).ToList();
        }
        public void ThemHDDK(string makh,string ngaydk,string chiphi,string tttt)
        {
            HoaDonDangKy hd = new HoaDonDangKy();
            var res1 = Convert.ToInt32(makh);
            var res2 = Convert.ToInt32(chiphi);
            hd.KhachHangID = res1;
            hd.NgayDK = Convert.ToDateTime(ngaydk);
            hd.ChiPhiDK = res2;
            if (tttt == "True")
                hd.TinhTrangThanhToan = true;
            else hd.TinhTrangThanhToan = false;
            hd.Flag = true;
            db.HoaDonDangKies.Add(hd);
            db.SaveChanges();

        }
        public void SuaHDDK(string idhd,string ngaydk,string chiphi,string tttt)
        {
            var res = Convert.ToInt32(idhd);
            var search = db.HoaDonDangKies.Where(s => s.Flag == true && s.HoaDonDangKyID == res).SingleOrDefault();
            search.NgayDK = Convert.ToDateTime(ngaydk);
            search.ChiPhiDK = Convert.ToInt32(chiphi);
            if (tttt == "True")
                search.TinhTrangThanhToan = true;
            else search.TinhTrangThanhToan = false;
            db.SaveChanges();
        }
        public void XoaHDDK(string idhd)
        {
            var res = Convert.ToInt32(idhd);
            var search = db.HoaDonDangKies.Where(s => s.Flag == true && s.HoaDonDangKyID == res).FirstOrDefault();
            search.Flag = false;
            db.SaveChanges();
        }
        public List<HoaDonDangKy> TimHDDK(string makh,string cbngaydk,string ngaydk,string chiphi,string tttt)
        {
            var res = db.HoaDonDangKies.Where(s => s.Flag == true);
            if(makh!="")
            {
                var a = Convert.ToInt32(makh);
                res = res.Where(s => s.KhachHangID == a);
            }
            if(cbngaydk=="True")
            {
                var a = Convert.ToDateTime(ngaydk);
                res = res.Where(s => s.NgayDK == a);
            }
            if(chiphi!="")
            {
                var a = Convert.ToInt32(chiphi);
                res = res.Where(s => s.ChiPhiDK == a);
            }
            if (tttt == "True")
                res = res.Where(s => s.TinhTrangThanhToan == true);
            else res = res.Where(s => s.TinhTrangThanhToan == false);
            return res.ToList();
        }

    }
}
