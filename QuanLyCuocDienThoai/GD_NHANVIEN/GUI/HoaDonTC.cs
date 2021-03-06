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
using Model.EFModel;
using GD_NHANVIEN.DAL;
namespace GD_NHANVIEN.GUI
{
    public partial class HoaDonTC : DevExpress.XtraEditors.XtraForm
    {
        public string MaKH = "";
        public string SIM = "";
        public string Thanhtien = "";
        public string Tongtien = "";
        public string TenKH = "";
        public string Sosim = "";
        QLCuocDTContext db = new QLCuocDTContext();
        public HoaDonTC()
        {
            InitializeComponent();
            // This line of code is generated by Data Source Configuration Wizard
            // Instantiate a new DBContext
            //Model.EFModel.QLCuocDTContext dbContext = new Model.EFModel.QLCuocDTContext();
            //// Call the Load method to get the data for the given DbSet from the database.
            //dbContext.HoaDonTinhCuocs.Load();
            //// This line of code is generated by Data Source Configuration Wizard
            txtcuoctb.Text = "50000";
            dtngay.Value = System.DateTime.Now;
            HoaDonTCDAL dal = new HoaDonTCDAL();
            var result = dal.Load();
            hoaDonTinhCuocThangsBindingSource.DataSource = result;
            // This line of code is generated by Data Source Configuration Wizard
            // Instantiate a new DBContext
            
        }
        internal void Change1()
        {
            //int a = Convert.ToInt32(MaKH);                
            //txtmakh.Text = db.KhachHangs.Where(s => s.KhachHangID == a).Select(s=>s.TenKH).FirstOrDefault().ToString();
        }
        internal void Change2()
        {
            int a = Convert.ToInt32(SIM);
            txtidsim.Text = db.SIMs.Where(s => s.SIMID == a).Select(s => s.SoSim).FirstOrDefault().ToString();           
        }
        internal void Change3()
        {
            txtthanhtien.Text = Thanhtien;
        }
        internal void Change4()
        {
            txttongtien.Text = Tongtien;
        }
        public void Change5()
        {
            HoaDonTCDAL dal = new HoaDonTCDAL();
            TenKH = dal.GetPrintMaKH(Convert.ToInt32(SIM));
            Sosim = dal.GetPrintSim(Convert.ToInt32(SIM));
        }
        private void simpleButton6_Click(object sender, EventArgs e)
        {
            ThongtinKH f = new ThongtinKH(null,null,this);
            f.Show();
        }

        private void simpleButton7_Click(object sender, EventArgs e)
        {
            ThongtinSIM f = new ThongtinSIM(this);
            f.Show();
        }

        private void bangdhtc_Click(object sender, EventArgs e)
        {
            //cbngay.Checked = true;
            //txtidhd.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "HoaDonTinhCuocID").ToString();            
            //txtidsim.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "SIMID").ToString();
            //dtngay.Value=(DateTime)gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "NgayHD");
            //txtcuoctb.Text= gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "CuocThueBao").ToString();
            //txtthanhtien.Text=gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "ThanhTien").ToString();
            //txttongtien.Text= gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "TongTien").ToString();
            
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            
            
        }

        private void printDocument1_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
        {
            
            e.Graphics.DrawString("Hóa Đơn Tính Cước SIM", new Font("Time New Roman", 20, FontStyle.Bold), Brushes.Black, new Point(25, 90));         
            e.Graphics.DrawString("-------------------------------------", new Font("Time New Roman", 15, FontStyle.Bold), Brushes.Black, new Point(25, 130));
            e.Graphics.DrawString("- Họ tên khách hàng: " +TenKH, new Font("Time New Roman", 15, FontStyle.Regular), Brushes.Black, new Point(25, 150));
            e.Graphics.DrawString("- Số SIM: " + Sosim, new Font("Time New Roman", 15, FontStyle.Regular), Brushes.Black, new Point(25, 180));
            e.Graphics.DrawString("- Ngày hóa đơn: " + dtngay.Text, new Font("Time New Roman", 15, FontStyle.Regular), Brushes.Black, new Point(25, 210));
            e.Graphics.DrawString("- Cước thuê bao: " + txtcuoctb.Text, new Font("Time New Roman", 15, FontStyle.Regular), Brushes.Black, new Point(25, 240));
            e.Graphics.DrawString("- Thành tiền: " + txtthanhtien.Text, new Font("Time New Roman", 15, FontStyle.Regular), Brushes.Black, new Point(25, 270));
            e.Graphics.DrawString("- Tổng tiền: " + txttongtien.Text, new Font("Time New Roman", 15, FontStyle.Regular), Brushes.Black, new Point(25, 300));
            
            


        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            if(txtidsim.Text==""||txtcuoctb.Text==""||txtthanhtien.Text==""||txttongtien.Text=="" ||cbngay.Checked==false)
            {
                MessageBox.Show("Chưa đủ thông tin để in!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                Change5();
                HDprintPreviewDialog1.Document = HDprintDocument1;
                HDprintPreviewDialog1.ShowDialog();
            }
            
        }

        private void simpleButton4_Click(object sender, EventArgs e)
        {
            if (txtidsim.Text == "" && cbngay.Checked == false)
            {
                MessageBox.Show("Vui lòng chọn thông tin cần tìm", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                string a = "";
                if (cbngay.Checked == true)
                    a = "true";
                else a = "false";
                HoaDonTCDAL dal = new HoaDonTCDAL();
                var result = dal.TimHD(SIM, dtngay.Value.ToString("yyyy/MM/dd"), a);
                hoaDonTinhCuocThangsBindingSource.DataSource = result;
                MessageBox.Show("Tìm thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                Clear();
            }

    
         
        }
        public void Clear()
        {
            txtidsim.Clear();
            txtidhd.Clear();
            txtthanhtien.Clear();
            txttongtien.Clear();
            cbngay.Checked = false;
            SIM = "";
        }

        private void simpleButton3_Click(object sender, EventArgs e)
        {
            HoaDonTCDAL dal = new HoaDonTCDAL();
            var result = dal.Load();
            hoaDonTinhCuocThangsBindingSource.DataSource = result;
            txtidsim.Clear();           
            txtthanhtien.Clear();
            txttongtien.Clear();
            cbngay.Checked = false;
        }

        private void simpleButton5_Click(object sender, EventArgs e)
        {
            if (txtidsim.Text == ""|| txtcuoctb.Text == "" || txtthanhtien.Text == "" || txttongtien.Text == "" || cbngay.Checked == false)
            {
                MessageBox.Show("Vui lòng tính cước để gửi!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {

                GuiMail f = new GuiMail(SIM, dtngay.Value.ToString("MM/yyyy"), txtcuoctb.Text, txtthanhtien.Text, txttongtien.Text);
                f.Show();
            }
            
        }

        private void simpleButton1_Click_1(object sender, EventArgs e)
        {
            if (txtidsim.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đầy đủ thông tin", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {               
                ChiTietHDTC f = new ChiTietHDTC(SIM,txtidhd.Text);
                f.Show();
                txtthanhtien.Clear();
                txttongtien.Clear();
                txtidhd.Clear();
            }
        }

        private void gridControl1_Click(object sender, EventArgs e)
        {
            cbngay.Checked = true;
            txtidhd.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "HoaDonTinhCuocThangID").ToString();       
            var a = Convert.ToInt32(gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "SIMID").ToString());
            txtidsim.Text = db.SIMs.Where(s => s.SIMID == a).Select(s => s.SoSim).FirstOrDefault().ToString();
            SIM = a.ToString();
            dtngay.Value = (DateTime)gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "ThangHD");
            txtcuoctb.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "TienThueBao").ToString();
            txtthanhtien.Text = gridView1.GetRowCellValue(gridView1.FocusedRowHandle, "TienCuocSD").ToString();
            txttongtien.Text = (Convert.ToInt32(txtcuoctb.Text) + Convert.ToInt32(txtthanhtien.Text)).ToString();
        }
    }
}