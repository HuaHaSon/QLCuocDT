﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Data.Entity;
using GD_NHANVIEN.DAL;
namespace GD_NHANVIEN.GUI
{
    public partial class ThongtinSIM : DevExpress.XtraEditors.XtraForm
    {
        public string IDSIM = "";       
        HoaDonTC f;
        public ThongtinSIM(HoaDonTC ff)
        {
            InitializeComponent();
            // This line of code is generated by Data Source Configuration Wizard
            // Instantiate a new DBContext
            SIMDAL dal = new SIMDAL();
            
                var res = dal.Load();
                // This line of code is generated by Data Source Configuration Wizard
                sIMsBindingSource2.DataSource = res;
          
            f = ff;            
        }
        public void ClearSIM()
        {
            txthddk.Clear();
            txtsosim.Clear();
            txtidsim.Clear();
            txttensim.Clear();


        }
        public void Clear()
        {
            SIMDAL dal = new SIMDAL();
            txthddk.Clear();
            txtsosim.Clear();
            txtidsim.Clear();
            txttensim.Clear();
            sIMsBindingSource2.DataSource = dal.Load();

        }
        private void simpleButton4_Click(object sender, EventArgs e)
        {
            SIMDAL dal = new SIMDAL();
            if (txttensim.Text == "" && txtsosim.Text == "" && txthddk.Text == "")
                MessageBox.Show("Vui lòng nhập thông tin cần tìm", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            else
            {
                var res = dal.TimSIM(txttensim.Text, txtsosim.Text, txthddk.Text);
                sIMsBindingSource2.DataSource = res;
                MessageBox.Show("Tìm kiếm thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                ClearSIM();

            }
        }

        private void gridControl1_Click(object sender, EventArgs e)
        {
            txtidsim.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "SIMID").ToString();
            txttensim.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "TenSim").ToString();
            txtsosim.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "SoSim").ToString();
            txthddk.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "HoaDonDangKyID").ToString();
        }

        private void simpleButton3_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void simpleButton6_Click(object sender, EventArgs e)
        {
            ThongTinHDDK f = new ThongTinHDDK(null, this);
            f.Show();
        }
        internal void Change()
        {
            txthddk.Text = IDSIM;
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if (txtidsim.Text == "")
            {
                MessageBox.Show("Chọn Đối tượng cần nhập");
            }
            else
            {
                f.SIM = txtidsim.Text;
                f.Change2();
                this.Close();
            }
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}