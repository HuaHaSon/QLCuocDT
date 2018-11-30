using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EFModel;
namespace GD_NHANVIEN.DAL
{
    public class KhachHangDAL
    {
        QLCuocDTContext db = null;
        public KhachHangDAL()
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
        public int testcmnd(string data)
        {
            if (data.Length !=9)
                return 0;
            return 1;
        }
        public List<KhachHang> Load()
        {
            return db.KhachHangs.Where(s => s.Flag == true).ToList();
        }
        public void ThemKH(string tenkh,string cmnd,string nghenghiep,string chucvu,string diachi,string email)
        {
            KhachHang kh = new KhachHang();
            kh.TenKH = tenkh;
            kh.CMND = cmnd;
            kh.NgheNghiep = nghenghiep;
            kh.ChucVu = chucvu;
            kh.DiaChi = diachi;
            kh.Email = email;
            kh.Flag = true;
            db.KhachHangs.Add(kh);
            db.SaveChanges();
        }
        public void SuaKH(string makh,string tenkh,string cmnd,string nghenghiep,string chucvu,string diachi,string email)
        {
            var res = Convert.ToInt32(makh);
            var search = db.KhachHangs.Where(s => s.KhachHangID == res).SingleOrDefault();
            search.TenKH = tenkh;
            search.CMND = cmnd;
            search.NgheNghiep = nghenghiep;
            search.ChucVu = chucvu;
            search.DiaChi = diachi;
            search.Email = email;
            db.SaveChanges();
        }
        public void XoaKH(string makh)
        {
            var res = Convert.ToInt32(makh);
            var search = db.KhachHangs.Where(s => s.KhachHangID == res).SingleOrDefault();
            search.Flag = false;
            db.SaveChanges();
        }
        public List<KhachHang> TimKH(string tenkh,string cmnd,string nghienghiep,string chucvu,string diachi,string email)
        {
            var search = db.KhachHangs.Where(s => s.Flag == true);
            if (tenkh != "")
                search = search.Where(s => s.TenKH.Contains(tenkh));
            if (cmnd!="")
                search = search.Where(s => s.CMND.Contains(cmnd));
            if(nghienghiep!="")
                search = search.Where(s => s.NgheNghiep.Contains(nghienghiep));
            if (chucvu != "")
                search = search.Where(s => s.ChucVu.Contains(chucvu));
            if (diachi != "")
                search = search.Where(s => s.DiaChi.Contains(diachi));
            if (email != "")
                search = search.Where(s => s.Email.Contains(email));
            return search.ToList();
        }
    }
}
