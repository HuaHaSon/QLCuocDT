using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GiaoDienNV.GUI
{
    public partial class DangKySIM : Form
    {
        public DangKySIM()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button6_Click(object sender, EventArgs e)
        {
            ThongTinKH tt = new ThongTinKH();
            tt.Show();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            ThongTinSIM tt = new ThongTinSIM();
            tt.Show();
        }
    }
}
