using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using Model.EFModel;
using Common;
namespace GD_NHANVIEN.GUI
{
    public partial class GuiMail : DevExpress.XtraEditors.XtraForm
    {
        QLCuocDTContext db = new QLCuocDTContext();
        public GuiMail(string idsim,string ngay,string cuoc,string thanhtien,string tt)
        {
            InitializeComponent();           
            var b= Convert.ToInt32(idsim);
            var res = (from s in db.SIMs
                                   join q in db.HoaDonDangKies on s.HoaDonDangKyID equals q.HoaDonDangKyID
                                   join c in db.KhachHangs on q.KhachHangID equals c.KhachHangID
                                   where s.Flag == true && s.SIMID == b
                                   select c).FirstOrDefault();
            tenkh.Text = res.TenKH;
            sosim.Text = db.SIMs.Where(s => s.Flag == true && s.SIMID==b).Select(s => s.SoSim).FirstOrDefault();
            mailnhan.Text = db.KhachHangs.Where(s => s.Flag == true && s.KhachHangID == res.KhachHangID).Select(s => s.Email).SingleOrDefault();
            ngayhd.Text = ngay;
            cuoctb.Text = cuoc;
            tiencuoc.Text = thanhtien;
            tongtien.Text = tt;
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            try
            {
                if (tieude.Text == "")
                    MessageBox.Show("Vui lòng nhập tiêu đề!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                else
                {

                    MailHelper.SendMailAuthentication(mailnhan.Text, tenkh.Text, sosim.Text, tieude.Text, ngayhd.Text, cuoctb.Text, tiencuoc.Text, tongtien.Text);
                    MessageBox.Show("Gủi thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Đã có lỗi xảy ra!");
            }

        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void tenkh_TextChanged(object sender, EventArgs e)
        {

        }
    }
}