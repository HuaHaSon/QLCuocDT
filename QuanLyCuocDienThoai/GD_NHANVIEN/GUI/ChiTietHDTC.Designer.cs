namespace GD_NHANVIEN.GUI
{
    partial class ChiTietHDTC
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ChiTietHDTC));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtmakh = new System.Windows.Forms.TextBox();
            this.txtidsim = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.fileLogSIMsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.simpleButton3 = new DevExpress.XtraEditors.SimpleButton();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.chiTietHDTCsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colChiTietHDTCID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSoPhutSD = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNgayHD = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHoaDonTinhCuocThangID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colThanhTien = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.txtngayhd = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.fileLogSIMsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chiTietHDTCsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(273, 45);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(0, 13);
            this.label1.TabIndex = 0;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.SteelBlue;
            this.label2.Location = new System.Drawing.Point(331, 37);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(202, 24);
            this.label2.TabIndex = 58;
            this.label2.Text = "CHI TIẾT HÓA ĐƠN";
            // 
            // txtmakh
            // 
            this.txtmakh.Location = new System.Drawing.Point(213, 82);
            this.txtmakh.Name = "txtmakh";
            this.txtmakh.ReadOnly = true;
            this.txtmakh.Size = new System.Drawing.Size(209, 21);
            this.txtmakh.TabIndex = 66;
            // 
            // txtidsim
            // 
            this.txtidsim.Location = new System.Drawing.Point(546, 81);
            this.txtidsim.Name = "txtidsim";
            this.txtidsim.ReadOnly = true;
            this.txtidsim.Size = new System.Drawing.Size(161, 21);
            this.txtidsim.TabIndex = 69;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(530, 45);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(0, 13);
            this.label7.TabIndex = 67;
            // 
            // fileLogSIMsBindingSource
            // 
            this.fileLogSIMsBindingSource.DataSource = typeof(Model.EFModel.FileLogSIM);
            // 
            // simpleButton3
            // 
            this.simpleButton3.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton3.Appearance.Options.UseFont = true;
            this.simpleButton3.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton3.ImageOptions.Image")));
            this.simpleButton3.Location = new System.Drawing.Point(705, 439);
            this.simpleButton3.Name = "simpleButton3";
            this.simpleButton3.Size = new System.Drawing.Size(109, 39);
            this.simpleButton3.TabIndex = 78;
            this.simpleButton3.Text = "Thoát";
            this.simpleButton3.Click += new System.EventHandler(this.simpleButton3_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(486, 82);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(53, 17);
            this.label6.TabIndex = 68;
            this.label6.Text = "Số SIM";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(108, 83);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(102, 17);
            this.label5.TabIndex = 65;
            this.label5.Text = "Tên khách hàng";
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.chiTietHDTCsBindingSource;
            this.gridControl1.Location = new System.Drawing.Point(22, 207);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(792, 226);
            this.gridControl1.TabIndex = 80;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.gridControl1.Click += new System.EventHandler(this.gridControl1_Click_1);
            // 
            // chiTietHDTCsBindingSource
            // 
            this.chiTietHDTCsBindingSource.DataSource = typeof(Model.EFModel.ChiTietHDTC);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colChiTietHDTCID,
            this.colSoPhutSD,
            this.colNgayHD,
            this.colHoaDonTinhCuocThangID,
            this.colThanhTien,
            this.colFlag});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            // 
            // colChiTietHDTCID
            // 
            this.colChiTietHDTCID.FieldName = "ChiTietHDTCID";
            this.colChiTietHDTCID.Name = "colChiTietHDTCID";
            this.colChiTietHDTCID.Visible = true;
            this.colChiTietHDTCID.VisibleIndex = 0;
            // 
            // colSoPhutSD
            // 
            this.colSoPhutSD.FieldName = "SoPhutSD";
            this.colSoPhutSD.Name = "colSoPhutSD";
            this.colSoPhutSD.Visible = true;
            this.colSoPhutSD.VisibleIndex = 1;
            // 
            // colNgayHD
            // 
            this.colNgayHD.FieldName = "NgayHD";
            this.colNgayHD.Name = "colNgayHD";
            this.colNgayHD.Visible = true;
            this.colNgayHD.VisibleIndex = 2;
            // 
            // colHoaDonTinhCuocThangID
            // 
            this.colHoaDonTinhCuocThangID.FieldName = "HoaDonTinhCuocThangID";
            this.colHoaDonTinhCuocThangID.Name = "colHoaDonTinhCuocThangID";
            this.colHoaDonTinhCuocThangID.Visible = true;
            this.colHoaDonTinhCuocThangID.VisibleIndex = 3;
            // 
            // colThanhTien
            // 
            this.colThanhTien.FieldName = "ThanhTien";
            this.colThanhTien.Name = "colThanhTien";
            this.colThanhTien.Visible = true;
            this.colThanhTien.VisibleIndex = 4;
            // 
            // colFlag
            // 
            this.colFlag.FieldName = "Flag";
            this.colFlag.Name = "colFlag";
            this.colFlag.Visible = true;
            this.colFlag.VisibleIndex = 5;
            // 
            // simpleButton1
            // 
            this.simpleButton1.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton1.Appearance.Options.UseFont = true;
            this.simpleButton1.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton1.ImageOptions.Image")));
            this.simpleButton1.Location = new System.Drawing.Point(571, 146);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(243, 45);
            this.simpleButton1.TabIndex = 90;
            this.simpleButton1.Text = "Chi tiết sử dụng trong ngày";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click_2);
            // 
            // txtngayhd
            // 
            this.txtngayhd.Location = new System.Drawing.Point(213, 129);
            this.txtngayhd.Name = "txtngayhd";
            this.txtngayhd.ReadOnly = true;
            this.txtngayhd.Size = new System.Drawing.Size(209, 21);
            this.txtngayhd.TabIndex = 93;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(108, 130);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(92, 17);
            this.label3.TabIndex = 92;
            this.label3.Text = "Ngày hóa đơn";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(273, 92);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(0, 13);
            this.label4.TabIndex = 91;
            // 
            // ChiTietHDTC
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(843, 503);
            this.Controls.Add(this.txtngayhd);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.simpleButton3);
            this.Controls.Add(this.txtidsim);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.txtmakh);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "ChiTietHDTC";
            this.Text = "ChiTietHDTC";
            ((System.ComponentModel.ISupportInitialize)(this.fileLogSIMsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chiTietHDTCsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtmakh;
        private System.Windows.Forms.TextBox txtidsim;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.BindingSource fileLogSIMsBindingSource;
        private DevExpress.XtraEditors.SimpleButton simpleButton3;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private System.Windows.Forms.BindingSource chiTietHDTCsBindingSource;
        private DevExpress.XtraGrid.Columns.GridColumn colChiTietHDTCID;
        private DevExpress.XtraGrid.Columns.GridColumn colSoPhutSD;
        private DevExpress.XtraGrid.Columns.GridColumn colNgayHD;
        private DevExpress.XtraGrid.Columns.GridColumn colHoaDonTinhCuocThangID;
        private DevExpress.XtraGrid.Columns.GridColumn colThanhTien;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private System.Windows.Forms.TextBox txtngayhd;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
    }
}