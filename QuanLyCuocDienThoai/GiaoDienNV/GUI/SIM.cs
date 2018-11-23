using Model.EFModel;
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
    public partial class SIM : Form
    {
        QLCuocDTContext db = new QLCuocDTContext();
        public SIM()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void bangkh_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            var result = from s in db.SIMs
                         where s.Flag == true
                         select s;
            dataGridView1.DataSource = result.ToList();
        }
    }
}
