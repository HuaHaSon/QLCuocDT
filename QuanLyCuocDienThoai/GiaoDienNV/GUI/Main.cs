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
    public partial class Main : Form
    {
        public Main()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
                panelmain.Controls.Clear();
                Khachhang kh = new Khachhang();
                kh.TopLevel = false;
                kh.AutoScroll = true;
                panelmain.Controls.Add(kh);
                kh.Show();
                    

           
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            panelmain.Controls.Clear();
            SIM sim = new SIM();
            sim.TopLevel = false;
            sim.AutoScroll = true;
            panelmain.Controls.Add(sim);
            sim.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            panelmain2.Controls.Clear();
            DangKySIM dk = new DangKySIM();
            dk.TopLevel = false;
            dk.AutoScroll = true;
            panelmain2.Controls.Add(dk);
            dk.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            panelmain2.Controls.Clear();
            HoaDonTC tc = new HoaDonTC();
            tc.TopLevel = false;
            tc.AutoScroll = true;
            panelmain2.Controls.Add(tc);
            tc.Show();
        }

        private void Main_Load(object sender, EventArgs e)
        {

        }
    }
}
