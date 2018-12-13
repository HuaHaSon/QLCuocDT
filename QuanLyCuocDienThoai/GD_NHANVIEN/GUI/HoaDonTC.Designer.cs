namespace GD_NHANVIEN.GUI
{
    partial class HoaDonTC
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(HoaDonTC));
            this.simpleButton7 = new DevExpress.XtraEditors.SimpleButton();
            this.txtidsim = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtcuoctb = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txttongtien = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.txtthanhtien = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.txtidhd = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.dtngay = new System.Windows.Forms.DateTimePicker();
            this.cbngay = new System.Windows.Forms.CheckBox();
            this.simpleButton3 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton4 = new DevExpress.XtraEditors.SimpleButton();
            this.HDprintPreviewDialog1 = new System.Windows.Forms.PrintPreviewDialog();
            this.HDprintDocument1 = new System.Drawing.Printing.PrintDocument();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton5 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.hoaDonTinhCuocThangsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colHoaDonTinhCuocThangID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSIMID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTienThueBao = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTienCuocSD = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colThangHD = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.hoaDonTinhCuocThangsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // simpleButton7
            // 
            this.simpleButton7.Appearance.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton7.Appearance.Options.UseFont = true;
            this.simpleButton7.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.simpleButton7.Location = new System.Drawing.Point(381, 111);
            this.simpleButton7.Name = "simpleButton7";
            this.simpleButton7.Size = new System.Drawing.Size(59, 31);
            this.simpleButton7.TabIndex = 75;
            this.simpleButton7.Text = "Chọn";
            this.simpleButton7.Click += new System.EventHandler(this.simpleButton7_Click);
            // 
            // txtidsim
            // 
            this.txtidsim.Location = new System.Drawing.Point(213, 117);
            this.txtidsim.Name = "txtidsim";
            this.txtidsim.ReadOnly = true;
            this.txtidsim.Size = new System.Drawing.Size(160, 21);
            this.txtidsim.TabIndex = 73;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(124, 120);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(40, 13);
            this.label3.TabIndex = 72;
            this.label3.Text = "Số SIM";
            this.label3.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // txtcuoctb
            // 
            this.txtcuoctb.Location = new System.Drawing.Point(562, 72);
            this.txtcuoctb.Name = "txtcuoctb";
            this.txtcuoctb.ReadOnly = true;
            this.txtcuoctb.Size = new System.Drawing.Size(133, 21);
            this.txtcuoctb.TabIndex = 62;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(473, 75);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(78, 13);
            this.label5.TabIndex = 61;
            this.label5.Text = "Cước thuê bao";
            this.label5.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.SteelBlue;
            this.label1.Location = new System.Drawing.Point(349, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(231, 24);
            this.label1.TabIndex = 57;
            this.label1.Text = "HÓA ĐƠN TÍNH CƯỚC";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(701, 75);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(28, 13);
            this.label7.TabIndex = 76;
            this.label7.Text = "VNĐ";
            this.label7.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(701, 167);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(28, 13);
            this.label4.TabIndex = 79;
            this.label4.Text = "VNĐ";
            this.label4.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // txttongtien
            // 
            this.txttongtien.Location = new System.Drawing.Point(562, 164);
            this.txttongtien.Name = "txttongtien";
            this.txttongtien.ReadOnly = true;
            this.txttongtien.Size = new System.Drawing.Size(133, 21);
            this.txttongtien.TabIndex = 78;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(473, 167);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(52, 13);
            this.label8.TabIndex = 77;
            this.label8.Text = "Tổng tiền";
            this.label8.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(701, 120);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(28, 13);
            this.label9.TabIndex = 82;
            this.label9.Text = "VNĐ";
            this.label9.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // txtthanhtien
            // 
            this.txtthanhtien.Location = new System.Drawing.Point(562, 117);
            this.txtthanhtien.Name = "txtthanhtien";
            this.txtthanhtien.ReadOnly = true;
            this.txtthanhtien.Size = new System.Drawing.Size(133, 21);
            this.txtthanhtien.TabIndex = 81;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(473, 120);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(58, 13);
            this.label10.TabIndex = 80;
            this.label10.Text = "Thành tiền";
            this.label10.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // txtidhd
            // 
            this.txtidhd.Location = new System.Drawing.Point(214, 72);
            this.txtidhd.Name = "txtidhd";
            this.txtidhd.ReadOnly = true;
            this.txtidhd.Size = new System.Drawing.Size(82, 21);
            this.txtidhd.TabIndex = 85;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(125, 75);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(61, 13);
            this.label11.TabIndex = 84;
            this.label11.Text = "ID Hóa đơn";
            this.label11.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // dtngay
            // 
            this.dtngay.CustomFormat = "dd/MM/yyyy";
            this.dtngay.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtngay.Location = new System.Drawing.Point(213, 161);
            this.dtngay.Name = "dtngay";
            this.dtngay.Size = new System.Drawing.Size(169, 21);
            this.dtngay.TabIndex = 69;
            // 
            // cbngay
            // 
            this.cbngay.AutoSize = true;
            this.cbngay.Location = new System.Drawing.Point(115, 164);
            this.cbngay.Name = "cbngay";
            this.cbngay.Size = new System.Drawing.Size(93, 17);
            this.cbngay.TabIndex = 86;
            this.cbngay.Text = "Ngày hóa đơn";
            this.cbngay.UseVisualStyleBackColor = true;
            // 
            // simpleButton3
            // 
            this.simpleButton3.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton3.Appearance.Options.UseFont = true;
            this.simpleButton3.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton3.ImageOptions.Image")));
            this.simpleButton3.Location = new System.Drawing.Point(256, 218);
            this.simpleButton3.Name = "simpleButton3";
            this.simpleButton3.Size = new System.Drawing.Size(117, 45);
            this.simpleButton3.TabIndex = 66;
            this.simpleButton3.Text = "Refresh";
            this.simpleButton3.Click += new System.EventHandler(this.simpleButton3_Click);
            // 
            // simpleButton4
            // 
            this.simpleButton4.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton4.Appearance.Options.UseFont = true;
            this.simpleButton4.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton4.ImageOptions.Image")));
            this.simpleButton4.Location = new System.Drawing.Point(46, 218);
            this.simpleButton4.Name = "simpleButton4";
            this.simpleButton4.Size = new System.Drawing.Size(117, 45);
            this.simpleButton4.TabIndex = 67;
            this.simpleButton4.Text = "Tìm kiếm";
            this.simpleButton4.Click += new System.EventHandler(this.simpleButton4_Click);
            // 
            // HDprintPreviewDialog1
            // 
            this.HDprintPreviewDialog1.AutoScrollMargin = new System.Drawing.Size(0, 0);
            this.HDprintPreviewDialog1.AutoScrollMinSize = new System.Drawing.Size(0, 0);
            this.HDprintPreviewDialog1.ClientSize = new System.Drawing.Size(400, 300);
            this.HDprintPreviewDialog1.Enabled = true;
            this.HDprintPreviewDialog1.Icon = ((System.Drawing.Icon)(resources.GetObject("HDprintPreviewDialog1.Icon")));
            this.HDprintPreviewDialog1.Name = "HDprintPreviewDialog1";
            this.HDprintPreviewDialog1.Visible = false;
            // 
            // HDprintDocument1
            // 
            this.HDprintDocument1.PrintPage += new System.Drawing.Printing.PrintPageEventHandler(this.printDocument1_PrintPage);
            // 
            // simpleButton2
            // 
            this.simpleButton2.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton2.Appearance.Options.UseFont = true;
            this.simpleButton2.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton2.ImageOptions.Image")));
            this.simpleButton2.Location = new System.Drawing.Point(704, 484);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(144, 38);
            this.simpleButton2.TabIndex = 87;
            this.simpleButton2.Text = "In Hoá Đơn";
            this.simpleButton2.Click += new System.EventHandler(this.simpleButton2_Click);
            // 
            // simpleButton5
            // 
            this.simpleButton5.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton5.Appearance.Options.UseFont = true;
            this.simpleButton5.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton5.ImageOptions.Image")));
            this.simpleButton5.Location = new System.Drawing.Point(463, 218);
            this.simpleButton5.Name = "simpleButton5";
            this.simpleButton5.Size = new System.Drawing.Size(117, 45);
            this.simpleButton5.TabIndex = 88;
            this.simpleButton5.Text = "Gửi mail";
            this.simpleButton5.Click += new System.EventHandler(this.simpleButton5_Click);
            // 
            // simpleButton1
            // 
            this.simpleButton1.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton1.Appearance.Options.UseFont = true;
            this.simpleButton1.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton1.ImageOptions.Image")));
            this.simpleButton1.Location = new System.Drawing.Point(646, 218);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(202, 45);
            this.simpleButton1.TabIndex = 89;
            this.simpleButton1.Text = "Chi tiết hóa đơn";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click_1);
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.hoaDonTinhCuocThangsBindingSource;
            this.gridControl1.Location = new System.Drawing.Point(33, 278);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(832, 200);
            this.gridControl1.TabIndex = 90;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.gridControl1.Click += new System.EventHandler(this.gridControl1_Click);
            // 
            // hoaDonTinhCuocThangsBindingSource
            // 
            this.hoaDonTinhCuocThangsBindingSource.DataSource = typeof(Model.EFModel.HoaDonTinhCuocThang);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colHoaDonTinhCuocThangID,
            this.colSIMID,
            this.colTienThueBao,
            this.colTienCuocSD,
            this.colFlag,
            this.colThangHD});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            // 
            // colHoaDonTinhCuocThangID
            // 
            this.colHoaDonTinhCuocThangID.FieldName = "HoaDonTinhCuocThangID";
            this.colHoaDonTinhCuocThangID.Name = "colHoaDonTinhCuocThangID";
            this.colHoaDonTinhCuocThangID.Visible = true;
            this.colHoaDonTinhCuocThangID.VisibleIndex = 0;
            // 
            // colSIMID
            // 
            this.colSIMID.FieldName = "SIMID";
            this.colSIMID.Name = "colSIMID";
            this.colSIMID.Visible = true;
            this.colSIMID.VisibleIndex = 1;
            // 
            // colTienThueBao
            // 
            this.colTienThueBao.FieldName = "TienThueBao";
            this.colTienThueBao.Name = "colTienThueBao";
            this.colTienThueBao.Visible = true;
            this.colTienThueBao.VisibleIndex = 2;
            // 
            // colTienCuocSD
            // 
            this.colTienCuocSD.FieldName = "TienCuocSD";
            this.colTienCuocSD.Name = "colTienCuocSD";
            this.colTienCuocSD.Visible = true;
            this.colTienCuocSD.VisibleIndex = 3;
            // 
            // colFlag
            // 
            this.colFlag.FieldName = "Flag";
            this.colFlag.Name = "colFlag";
            this.colFlag.Visible = true;
            this.colFlag.VisibleIndex = 4;
            // 
            // colThangHD
            // 
            this.colThangHD.FieldName = "ThangHD";
            this.colThangHD.Name = "colThangHD";
            this.colThangHD.Visible = true;
            this.colThangHD.VisibleIndex = 5;
            // 
            // HoaDonTC
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(877, 553);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.simpleButton5);
            this.Controls.Add(this.simpleButton2);
            this.Controls.Add(this.cbngay);
            this.Controls.Add(this.txtidhd);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.txtthanhtien);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txttongtien);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.simpleButton7);
            this.Controls.Add(this.txtidsim);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.dtngay);
            this.Controls.Add(this.simpleButton4);
            this.Controls.Add(this.simpleButton3);
            this.Controls.Add(this.txtcuoctb);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "HoaDonTC";
            this.Text = "HoaDonTC";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.hoaDonTinhCuocThangsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton simpleButton7;
        private System.Windows.Forms.TextBox txtidsim;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtcuoctb;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txttongtien;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtthanhtien;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtidhd;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.DateTimePicker dtngay;
        private System.Windows.Forms.CheckBox cbngay;
        private DevExpress.XtraEditors.SimpleButton simpleButton3;
        private DevExpress.XtraEditors.SimpleButton simpleButton4;
        private System.Windows.Forms.PrintPreviewDialog HDprintPreviewDialog1;
        private System.Drawing.Printing.PrintDocument HDprintDocument1;
        private DevExpress.XtraEditors.SimpleButton simpleButton2;
        private DevExpress.XtraEditors.SimpleButton simpleButton5;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private System.Windows.Forms.BindingSource hoaDonTinhCuocThangsBindingSource;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colHoaDonTinhCuocThangID;
        private DevExpress.XtraGrid.Columns.GridColumn colSIMID;
        private DevExpress.XtraGrid.Columns.GridColumn colTienThueBao;
        private DevExpress.XtraGrid.Columns.GridColumn colTienCuocSD;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colThangHD;
    }
}