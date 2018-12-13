using Model.EFModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Bus
{
    public class KhachHangBus
    {
        QLCuocDTContext db = new QLCuocDTContext();
        public int Login(string email, string passWord)
        {
            var result = db.KhachHangs.SingleOrDefault(x => x.Email == email&x.CMND==passWord);
            if (result == null)
            {
                return -1;
            }
            else
            {
                if (!result.Flag)
                {
                    return 0;
                }
                else
                {
                    if (result.CMND == passWord)
                    {
                        return 1;
                    }
                    else
                    {
                        return -2;
                    }
                }
            }
        }
    }
}
