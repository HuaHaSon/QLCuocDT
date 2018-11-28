using Model.EFModel;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common
{
    public static class RandomFileSimLog
    {
        private static QLCuocDTContext db = new QLCuocDTContext();
        public static int RandomID()
        {
            Random ran = new Random();
            var listID = db.SIMs.Select(m => m.SIMID).ToArray();
            int mynum = listID[ran.Next(0, listID.Length)];
            return mynum;
        }
        public static void taofile()
        {
            FileStream fs = new FileStream(@"C:\test\test.txt", FileMode.Create);
            using (StreamWriter sWriter = new StreamWriter(fs, Encoding.UTF8))
            {
                List<string> ds = new List<string>();
                for (int i = 0; i < 100; i++)
                {
                    DateTime x = new DateTime();
                    DateTime y = new DateTime();
                    Random r = new Random();
                    while (x.CompareTo(y) >= 0)
                    {
                        int day = new int();
                        int day2 = new int();
                        day = r.Next(1, 31);
                        if (day == 31)
                        {
                            day2 = 31;
                        }
                        else
                        {
                            int temp = day + 1;
                            day2 = r.Next(day, temp);
                        }
                        x = new DateTime(2018, 12, day, r.Next(00, 24), r.Next(00, 60), r.Next(00, 60));
                        y = new DateTime(2018, 12, day2, r.Next(00, 24), r.Next(00, 60), r.Next(00, 60));
                    }
                    int RandomSimID = RandomID();
                    string line = RandomSimID + "\t" + x.ToString("dd/MM/yyyy HH:mm:ss") + "\t" + y.ToString("dd/MM/yyyy HH:mm:ss");
                    var check = ds.Contains(line);
                    if (check == true)
                    {
                        i = i - 1;
                    }
                    else
                    {
                        ds.Add(line);
                        sWriter.WriteLine(line);
                    }
                }
            }
            fs.Close();
        }
        public static void docFile()
        {
            db.Database.ExecuteSqlCommand("TRUNCATE TABLE [FileLogSIM]");
            string[] lines = System.IO.File.ReadAllLines(@"C:\test\test.txt");
            foreach (string line in lines)
            {
                // Use a tab to indent each line of the file.
                string[] split = line.Split('\t');
                DateTime dateBD = DateTime.ParseExact(split[1], "dd/MM/yyyy HH:mm:ss",
                                       System.Globalization.CultureInfo.InvariantCulture);
                DateTime dateKT = DateTime.ParseExact(split[2], "dd/MM/yyyy HH:mm:ss",
                                       System.Globalization.CultureInfo.InvariantCulture);
                db.FileLogSIMs.Add(new FileLogSIM() { SIMID = Convert.ToInt32(split[0]), ThoiGianBD = dateBD, ThoiGianKT = dateKT });
                db.SaveChanges();
            }
        }

        public static void addDatatoDB()
        {
            List<FileLogSIM> listFileLog = db.FileLogSIMs.ToList();
            List<FileLogSIM> listFileLogTemp = new List<FileLogSIM>(listFileLog.Count);
            listFileLog.ForEach((item) => { listFileLogTemp.Add(new FileLogSIM() { FileLogSIMID=item.FileLogSIMID,SIMID=item.SIMID,ThoiGianBD=item.ThoiGianBD,ThoiGianKT=item.ThoiGianKT}); });
            foreach (var item in listFileLogTemp)
            {
                item.ThoiGianBD = item.ThoiGianBD.Date;
            }

            var listDate = listFileLogTemp.Select(m => new { m.SIMID,m.ThoiGianBD}).Distinct().ToList();
            foreach(var item in listDate)
            {
                HoaDonTinhCuoc hdtc=new HoaDonTinhCuoc() { KhachHangID = db.SIMs.Find(item.SIMID).HoaDonDangKy.KhachHangID, SIMID = item.SIMID, NgayHD = item.ThoiGianBD, CuocThueBao = 50000, ThanhTien = 0, TongTien = 50000, Flag = true };
                db.HoaDonTinhCuocs.Add(hdtc);
                db.SaveChanges();
                var listFileLogReal = listFileLogTemp.Where(m => m.SIMID == hdtc.SIMID & m.ThoiGianBD==item.ThoiGianBD).ToList();
                foreach(var item1 in listFileLogReal)
                {
                    item1.ThoiGianBD = listFileLog.Where(m => m.FileLogSIMID == item1.FileLogSIMID).Select(m => m.ThoiGianBD).FirstOrDefault();
                }
                foreach(var item1 in listFileLogReal)
                {
                    var cthdtc = new ChitietHDTC() { SIMID = item1.SIMID, ThoiGianBD = item1.ThoiGianBD, ThoiGianKT = item1.ThoiGianKT, SoPhutSD =  item1.ThoiGianKT.Subtract(item1.ThoiGianBD).Hours*60 + item1.ThoiGianKT.Subtract(item1.ThoiGianBD).Minutes , HoaDonTinhCuocID=hdtc.HoaDonTinhCuocID,Flag=true };
                    db.ChitietHDTCs.Add(cthdtc);
                }
            }
            db.SaveChanges();
        }

    }
}
