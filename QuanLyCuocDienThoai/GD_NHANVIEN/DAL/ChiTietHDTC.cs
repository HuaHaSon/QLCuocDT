using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EFModel;
namespace GD_NHANVIEN.DAL
{
    public class ChiTietHDTC
    {
        QLCuocDTContext db = null;
        public ChiTietHDTC()
        {
            db = new QLCuocDTContext();
        }

    }
}
