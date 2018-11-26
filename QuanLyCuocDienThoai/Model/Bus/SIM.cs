using Model.EFModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Bus
{
    public static partial class SIM
    {
        private static QLCuocDTContext db = new QLCuocDTContext();
        public static int RandomID()
        {
            Random ran = new Random();
            var listID = db.SIMs.Select(m => m.SIMID).ToArray();
            int mynum = listID[ran.Next(0, listID.Length)];
            return mynum;
        }
    }
}
