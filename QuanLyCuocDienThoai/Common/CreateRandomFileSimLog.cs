using Model.EFModel;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common
{
    public static class CreateRandomFileSimLog
    {
        private static QLCuocDTContext db = new QLCuocDTContext();
        public static int RandomID()
        {
            Random ran = new Random();
            var listID = db.SIMs.Select(m => m.SIMID).ToArray();
            int mynum = listID[ran.Next(0, listID.Length)];
            return mynum;
        }
        public static void taofile(string a)
        {
            FileStream fs = new FileStream(a + "\\log.txt", FileMode.Create);
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
                    string line = RandomSimID + "   " + x.ToString("dd/MM/yyyy HH:mm:ss") + "   " + y.ToString("dd/MM/yyyy HH:mm:ss");
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

    }
}
