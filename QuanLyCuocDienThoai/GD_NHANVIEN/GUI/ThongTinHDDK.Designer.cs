namespace GD_NHANVIEN.GUI
{
    partial class ThongTinHDDK
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ThongTinHDDK));
            this.simpleButton6 = new DevExpress.XtraEditors.SimpleButton();
            this.ttdky = new System.Windows.Forms.CheckBox();
            this.ngaydky = new System.Windows.Forms.DateTimePicker();
            this.simpleButton4 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton3 = new DevExpress.XtraEditors.SimpleButton();
            this.txtchiphidk = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtmakh = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.hoaDonDangKiesBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colHoaDonDangKyID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colKhachHangID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNgayDK = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colChiPhiDK = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTinhTrangThanhToan = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.txtidhddk = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.cbngaydk = new System.Windows.Forms.CheckBox();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.hoaDonDangKiesBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // simpleButton6
            // 
            this.simpleButton6.Appearance.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton6.Appearance.Options.UseFont = true;
            this.simpleButton6.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.simpleButton6.Location = new System.Drawing.Point(317, 114);
            this.simpleButton6.Name = "simpleButton6";
            this.simpleButton6.Size = new System.Drawing.Size(59, 31);
            this.simpleButton6.TabIndex = 71;
            this.simpleButton6.Text = "Chọn";
            this.simpleButton6.Click += new System.EventHandler(this.simpleButton6_Click);
            // 
            // ttdky
            // 
            this.ttdky.AutoSize = true;
            this.ttdky.Location = new System.Drawing.Point(554, 122);
            this.ttdky.Name = "ttdky";
            this.ttdky.Size = new System.Drawing.Size(50, 17);
            this.ttdky.TabIndex = 69;
            this.ttdky.Text = "Xong";
            this.ttdky.UseVisualStyleBackColor = true;
            // 
            // ngaydky
            // 
            this.ngaydky.CustomFormat = "dd/MM/yyyy";
            this.ngaydky.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.ngaydky.Location = new System.Drawing.Point(207, 168);
            this.ngaydky.Name = "ngaydky";
            this.ngaydky.Size = new System.Drawing.Size(169, 21);
            this.ngaydky.TabIndex = 68;
            // 
            // simpleButton4
            // 
            this.simpleButton4.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton4.Appearance.Options.UseFont = true;
            this.simpleButton4.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton4.ImageOptions.Image")));
            this.simpleButton4.Location = new System.Drawing.Point(285, 214);
            this.simpleButton4.Name = "simpleButton4";
            this.simpleButton4.Size = new System.Drawing.Size(117, 45);
            this.simpleButton4.TabIndex = 66;
            this.simpleButton4.Text = "Tìm kiếm";
            this.simpleButton4.Click += new System.EventHandler(this.simpleButton4_Click);
            // 
            // simpleButton3
            // 
            this.simpleButton3.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton3.Appearance.Options.UseFont = true;
            this.simpleButton3.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton3.ImageOptions.Image")));
            this.simpleButton3.Location = new System.Drawing.Point(437, 214);
            this.simpleButton3.Name = "simpleButton3";
            this.simpleButton3.Size = new System.Drawing.Size(117, 45);
            this.simpleButton3.TabIndex = 65;
            this.simpleButton3.Text = "Refresh";
            this.simpleButton3.Click += new System.EventHandler(this.simpleButton3_Click);
            // 
            // txtchiphidk
            // 
            this.txtchiphidk.Location = new System.Drawing.Point(554, 75);
            this.txtchiphidk.Name = "txtchiphidk";
            this.txtchiphidk.Size = new System.Drawing.Size(170, 21);
            this.txtchiphidk.TabIndex = 61;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(465, 78);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(80, 13);
            this.label5.TabIndex = 60;
            this.label5.Text = "Chi phí đăng ký";
            this.label5.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(434, 123);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(112, 13);
            this.label4.TabIndex = 59;
            this.label4.Text = "Tình trạng thanh toán";
            this.label4.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // txtmakh
            // 
            this.txtmakh.Location = new System.Drawing.Point(207, 120);
            this.txtmakh.Name = "txtmakh";
            this.txtmakh.ReadOnly = true;
            this.txtmakh.Size = new System.Drawing.Size(104, 21);
            this.txtmakh.TabIndex = 58;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(118, 123);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(77, 13);
            this.label2.TabIndex = 57;
            this.label2.Text = "ID Khách hàng";
            this.label2.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.SteelBlue;
            this.label1.Location = new System.Drawing.Point(310, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(272, 24);
            this.label1.TabIndex = 56;
            this.label1.Text = "THÔNG TIN ĐĂNG KÝ SIM";
            // 
            // simpleButton2
            // 
            this.simpleButton2.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton2.Appearance.Options.UseFont = true;
            this.simpleButton2.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton2.ImageOptions.Image")));
            this.simpleButton2.Location = new System.Drawing.Point(728, 434);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(117, 45);
            this.simpleButton2.TabIndex = 85;
            this.simpleButton2.Text = "Thoát";
            this.simpleButton2.Click += new System.EventHandler(this.simpleButton2_Click);
            // 
            // simpleButton1
            // 
            this.simpleButton1.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton1.Appearance.Options.UseFont = true;
            this.simpleButton1.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton1.ImageOptions.Image")));
            this.simpleButton1.Location = new System.Drawing.Point(588, 434);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(117, 45);
            this.simpleButton1.TabIndex = 84;
            this.simpleButton1.Text = "Chọn";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.hoaDonDangKiesBindingSource;
            this.gridControl1.Location = new System.Drawing.Point(-6, 263);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(833, 166);
            this.gridControl1.TabIndex = 86;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.gridControl1.Click += new System.EventHandler(this.gridControl1_Click);
            // 
            // hoaDonDangKiesBindingSource
            // 
            this.hoaDonDangKiesBindingSource.DataSource = typeof(Model.EFModel.HoaDonDangKy);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colHoaDonDangKyID,
            this.colKhachHangID,
            this.colNgayDK,
            this.colChiPhiDK,
            this.colTinhTrangThanhToan,
            this.colFlag});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            // 
            // colHoaDonDangKyID
            // 
            this.colHoaDonDangKyID.FieldName = "HoaDonDangKyID";
            this.colHoaDonDangKyID.Name = "colHoaDonDangKyID";
            this.colHoaDonDangKyID.Visible = true;
            this.colHoaDonDangKyID.VisibleIndex = 0;
            // 
            // colKhachHangID
            // 
            this.colKhachHangID.FieldName = "KhachHangID";
            this.colKhachHangID.Name = "colKhachHangID";
            this.colKhachHangID.Visible = true;
            this.colKhachHangID.VisibleIndex = 1;
            // 
            // colNgayDK
            // 
            this.colNgayDK.FieldName = "NgayDK";
            this.colNgayDK.Name = "colNgayDK";
            this.colNgayDK.Visible = true;
            this.colNgayDK.VisibleIndex = 2;
            // 
            // colChiPhiDK
            // 
            this.colChiPhiDK.FieldName = "ChiPhiDK";
            this.colChiPhiDK.Name = "colChiPhiDK";
            this.colChiPhiDK.Visible = true;
            this.colChiPhiDK.VisibleIndex = 3;
            // 
            // colTinhTrangThanhToan
            // 
            this.colTinhTrangThanhToan.FieldName = "TinhTrangThanhToan";
            this.colTinhTrangThanhToan.Name = "colTinhTrangThanhToan";
            this.colTinhTrangThanhToan.Visible = true;
            this.colTinhTrangThanhToan.VisibleIndex = 4;
            // 
            // colFlag
            // 
            this.colFlag.FieldName = "Flag";
            this.colFlag.Name = "colFlag";
            this.colFlag.Visible = true;
            this.colFlag.VisibleIndex = 5;
            // 
            // txtidhddk
            // 
            this.txtidhddk.Location = new System.Drawing.Point(207, 75);
            this.txtidhddk.Name = "txtidhddk";
            this.txtidhddk.ReadOnly = true;
            this.txtidhddk.Size = new System.Drawing.Size(156, 21);
            this.txtidhddk.TabIndex = 88;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(99, 78);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(102, 13);
            this.label3.TabIndex = 87;
            this.label3.Text = "ID Hóa đơn đăng ký";
            this.label3.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // cbngaydk
            // 
            this.cbngaydk.AutoSize = true;
            this.cbngaydk.Location = new System.Drawing.Point(103, 171);
            this.cbngaydk.Name = "cbngaydk";
            this.cbngaydk.Size = new System.Drawing.Size(92, 17);
            this.cbngaydk.TabIndex = 89;
            this.cbngaydk.Text = "Ngày đăng ký";
            this.cbngaydk.UseVisualStyleBackColor = true;
            // 
            // ThongTinHDDK
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(857, 488);
            this.Controls.Add(this.cbngaydk);
            this.Controls.Add(this.txtidhddk);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.simpleButton2);
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.simpleButton6);
            this.Controls.Add(this.ttdky);
            this.Controls.Add(this.ngaydky);
            this.Controls.Add(this.simpleButton4);
            this.Controls.Add(this.simpleButton3);
            this.Controls.Add(this.txtchiphidk);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtmakh);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "ThongTinHDDK";
            this.Text = "ThongTinHDDK";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.hoaDonDangKiesBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton simpleButton6;
        private System.Windows.Forms.CheckBox ttdky;
        private System.Windows.Forms.DateTimePicker ngaydky;
        private DevExpress.XtraEditors.SimpleButton simpleButton4;
        private DevExpress.XtraEditors.SimpleButton simpleButton3;
        private System.Windows.Forms.TextBox txtchiphidk;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.SimpleButton simpleButton2;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private System.Windows.Forms.BindingSource hoaDonDangKiesBindingSource;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colHoaDonDangKyID;
        private DevExpress.XtraGrid.Columns.GridColumn colKhachHangID;
        private DevExpress.XtraGrid.Columns.GridColumn colNgayDK;
        private DevExpress.XtraGrid.Columns.GridColumn colChiPhiDK;
        private DevExpress.XtraGrid.Columns.GridColumn colTinhTrangThanhToan;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
        private System.Windows.Forms.TextBox txtmakh;
        private System.Windows.Forms.TextBox txtidhddk;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.CheckBox cbngaydk;
    }
}