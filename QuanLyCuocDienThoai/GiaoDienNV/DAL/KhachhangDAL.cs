using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EFModel;
namespace GiaoDienNV.DAL
{
    public class KhachhangDAL
    {
        QLCuocDTContext db = null;
        public KhachhangDAL()
        {
            db = new QLCuocDTContext();
        }
        public List<KhachHang> Load()
        {
            return db.KhachHangs.Where(s => s.Flag == true).ToList();
        }
    }
}
