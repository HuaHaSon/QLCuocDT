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
using Common;
namespace GD_NHANVIEN.GUI
{
    public partial class Index : DevExpress.XtraEditors.XtraForm
    {
        public Index()
        {
            InitializeComponent();
        }

        private void simpleButton1_Click_1(object sender, EventArgs e)
        {
            panelmain1.Controls.Clear();
            Khachhang f = new Khachhang();
            f.TopLevel = false;
            panelmain1.Controls.Add(f);
            f.Show();
        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            panelmain1.Controls.Clear();
            SIM f = new SIM();
            f.TopLevel = false;
            panelmain1.Controls.Add(f);
            f.Show();
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panelmain1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void simpleButton4_Click(object sender, EventArgs e)
        {
            panelmain2.Controls.Clear();
            DangKySIM f = new DangKySIM();
            f.TopLevel = false;
            panelmain2.Controls.Add(f);
            f.Show();
        }

        private void simpleButton3_Click(object sender, EventArgs e)
        {
            panelmain2.Controls.Clear();
            HoaDonTC f = new HoaDonTC();
            f.TopLevel = false;
            panelmain2.Controls.Add(f);
            f.Show();
        }

        private void simpleButton5_Click(object sender, EventArgs e)
        {

        }

        private void simpleButton5_Click_1(object sender, EventArgs e)
        {
            try
            {
                RandomFileSimLog.taofile();
                RandomFileSimLog.docFile();
                RandomFileSimLog.addDatatoDB();
                MessageBox.Show("Thêm File thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Đã có lỗi xảy ra!");
            }
            
        }

        private void simpleButton4_Click_1(object sender, EventArgs e)
        {
            panelmain1.Controls.Clear();
            DangKySIM f = new DangKySIM();
            f.TopLevel = false;
            panelmain1.Controls.Add(f);
            f.Show();
        }
    }
}