using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EFModel;
namespace GD_NHANVIEN.DAL
{
    public class SIMDAL
    {
        QLCuocDTContext db = null;
        public SIMDAL()
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
        public int testsosim(string txt)
        {
            if (txt.Length != 11 && txt.Length!=12)
                return 0;
            return 1;
        }
        public int testtypesim(string txt)
        {

            if (txt.Length > 1)
            {
                if (txt.Substring(0, 2).Equals("84"))              
                
                    return 1;
            }
            return 0;
        }
        public List<SIM> Load()
        {
            return db.SIMs.Where(s => s.Flag == true).ToList();
        }
        public string testexistsim(string data)
        {
            var res = db.SIMs.Where(s => s.Flag==true && s.SoSim==data).Select(s=>s.SoSim).FirstOrDefault();
            if (res == null)
                return "Success";
            return res.ToString();
        }        
        public string testexistidhd(int data)
        {
            var res = db.SIMs.Where(s => s.Flag==true && s.HoaDonDangKyID == data).Select(s => s.HoaDonDangKyID).FirstOrDefault();
            var result = Convert.ToString(res);       
            return result;
        }
        public void ThemSIM(string tensim,string sosim,string hddky)
        {
            var res = Convert.ToInt32(hddky);
            SIM sim = new SIM();
            sim.TenSim = tensim;
            sim.SoSim = sosim;
            sim.HoaDonDangKyID = res;
            sim.Flag = true;
            db.SIMs.Add(sim);
            db.SaveChanges();
        }
        public void SuaSIM(string idsim,string tensim,string sosim)
        {
            var res= Convert.ToInt32(idsim);       
            var search = db.SIMs.Where(s => s.Flag && s.SIMID == res).SingleOrDefault();
            search.TenSim = tensim;
            search.SoSim = sosim;
         
            db.SaveChanges();
        }
        public void XoaSIM(string idsim)
        {
            var res = Convert.ToInt32(idsim);
            var search = db.SIMs.Where(s => s.SIMID == res).SingleOrDefault();
            search.Flag = false;
            db.SaveChanges();
        }
        public List<SIM> TimSIM(string tensim,string sosim,string idhddky)
        {
           
            var res = db.SIMs.Where(s => s.Flag == true);
            if (tensim != "")
                res = res.Where(s => s.TenSim.Contains(tensim));
            if (sosim != "")
                res = res.Where(s => s.SoSim.Contains(sosim));
            if (idhddky != "")
            {
                var a = Convert.ToInt32(idhddky);
                res = res.Where(s => s.HoaDonDangKyID == a);
            }
               
            return res.ToList();
        }
    }
}
