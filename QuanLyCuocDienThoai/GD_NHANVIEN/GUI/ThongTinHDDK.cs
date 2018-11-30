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
    public partial class ThongTinHDDK : DevExpress.XtraEditors.XtraForm
    {
        public string MaKH="";
        SIM f;
        ThongtinSIM g;
        public ThongTinHDDK(SIM ff,ThongtinSIM gg)
        {

            InitializeComponent();
            // This line of code is generated by Data Source Configuration Wizard
            // Instantiate a new DBContext
            //Model.EFModel.QLCuocDTContext dbContext = new Model.EFModel.QLCuocDTContext();
            //// Call the Load method to get the data for the given DbSet from the database.
            //dbContext.HoaDonDangKies.Load();
            //This line of code is generated by Data Source Configuration Wizard       
            DangKySIMDAL dal = new DangKySIMDAL();
            var res = dal.Load();
            hoaDonDangKiesBindingSource.DataSource = res;
            if(gg==null)
                f = ff;
            if (ff == null)
                g = gg;
            //txtmakh.Text = MaKH;
        }
        internal void Change()
        {
            
            txtmakh.Text = MaKH;
        }
        
        
        private void simpleButton6_Click(object sender, EventArgs e)
        {
            
            ThongtinKH f = new ThongtinKH(this,null,null);
            //txtmakh.Text = MaKH;
            f.Show();
        }

        private void gridControl1_Click(object sender, EventArgs e)
        {
            txtidhddk.Text= gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "HoaDonDangKyID").ToString();
            txtmakh.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "KhachHangID").ToString();
            txtchiphidk.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "ChiPhiDK").ToString();
            ngaydky.Value = (DateTime)gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "NgayDK");
            var result= gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "TinhTrangThanhToan");
            if (result.Equals(true))
                ttdky.Checked = true;
            else
                ttdky.Checked = false;
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            if(txtidhddk.Text=="")
                MessageBox.Show("Vui lòng chọn hóa đơn đăng ký!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            {
                if(g==null)
                {
                    f.IDHD = txtidhddk.Text;
                    f.Change();
                    this.Close();
                }
                else if(f==null)
                {
                    g.IDSIM = txtidhddk.Text;
                    g.Change();
                    this.Close();
                }
                
            }
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
        public void Clear()
        {
            DangKySIMDAL dal = new DangKySIMDAL();
            txtidhddk.Clear();
            txtmakh.Clear();
            cbngaydk.Checked = false;
            txtchiphidk.Clear();
            ttdky.Checked = false;
            hoaDonDangKiesBindingSource.DataSource = dal.Load();
        }
        public void ClearHD()
        {

            txtidhddk.Clear();
            txtmakh.Clear();
            cbngaydk.Checked = false;
            txtchiphidk.Clear();
            ttdky.Checked = false;

        }
        private void simpleButton4_Click(object sender, EventArgs e)
        {
            try
            {
                DangKySIMDAL dal = new DangKySIMDAL();
                if (txtmakh.Text == "" && cbngaydk.Checked == false && txtchiphidk.Text == "" && ttdky.Checked == false)
                {
                    var res = dal.TimHDDK("", "False", "", "", "False");
                    hoaDonDangKiesBindingSource.DataSource = res;
                    MessageBox.Show("Tìm kiếm thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    ClearHD();
                }
                else if (txtchiphidk.Text!=""&&dal.testnumber(txtchiphidk.Text) == 0)
                {
                    MessageBox.Show("Chi phí đăng ký phải là số", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

                else
                {
                    string a = "";
                    string b = "";
                    if (ttdky.Checked == true)
                        a = "True";
                    else a = "False";
                    if (cbngaydk.Checked == true)
                        b = "True";
                    else b = "False";
                    var res = dal.TimHDDK(txtmakh.Text, b, ngaydky.Value.ToString("yyyy/MM/dd"), txtchiphidk.Text, a);
                    hoaDonDangKiesBindingSource.DataSource = res;
                    MessageBox.Show("Tìm kiếm thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                    ClearHD();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Đã có lỗi xảy ra!");
            }
        }

        private void simpleButton3_Click(object sender, EventArgs e)
        {
            Clear();
        }
    }
}