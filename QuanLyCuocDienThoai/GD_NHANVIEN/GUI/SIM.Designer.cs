namespace GD_NHANVIEN.GUI
{
    partial class SIM
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(SIM));
            this.simpleButton5 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton4 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton3 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.txtsosim = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txttensim = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtidhd = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.simpleButton6 = new DevExpress.XtraEditors.SimpleButton();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.sIMsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSIMID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTenSim = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSoSim = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHoaDonDangKyID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.txtidsim = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sIMsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // simpleButton5
            // 
            this.simpleButton5.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton5.Appearance.Options.UseFont = true;
            this.simpleButton5.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton5.ImageOptions.Image")));
            this.simpleButton5.Location = new System.Drawing.Point(198, 150);
            this.simpleButton5.Name = "simpleButton5";
            this.simpleButton5.Size = new System.Drawing.Size(117, 45);
            this.simpleButton5.TabIndex = 49;
            this.simpleButton5.Text = "Sửa";
            this.simpleButton5.Click += new System.EventHandler(this.simpleButton5_Click);
            // 
            // simpleButton4
            // 
            this.simpleButton4.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton4.Appearance.Options.UseFont = true;
            this.simpleButton4.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton4.ImageOptions.Image")));
            this.simpleButton4.Location = new System.Drawing.Point(514, 150);
            this.simpleButton4.Name = "simpleButton4";
            this.simpleButton4.Size = new System.Drawing.Size(117, 45);
            this.simpleButton4.TabIndex = 48;
            this.simpleButton4.Text = "Tìm kiếm";
            this.simpleButton4.Click += new System.EventHandler(this.simpleButton4_Click);
            // 
            // simpleButton3
            // 
            this.simpleButton3.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton3.Appearance.Options.UseFont = true;
            this.simpleButton3.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton3.ImageOptions.Image")));
            this.simpleButton3.Location = new System.Drawing.Point(666, 150);
            this.simpleButton3.Name = "simpleButton3";
            this.simpleButton3.Size = new System.Drawing.Size(117, 45);
            this.simpleButton3.TabIndex = 47;
            this.simpleButton3.Text = "Refresh";
            this.simpleButton3.Click += new System.EventHandler(this.simpleButton3_Click);
            // 
            // simpleButton2
            // 
            this.simpleButton2.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton2.Appearance.Options.UseFont = true;
            this.simpleButton2.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton2.ImageOptions.Image")));
            this.simpleButton2.Location = new System.Drawing.Point(357, 150);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(117, 45);
            this.simpleButton2.TabIndex = 46;
            this.simpleButton2.Text = "Xóa";
            this.simpleButton2.Click += new System.EventHandler(this.simpleButton2_Click);
            // 
            // simpleButton1
            // 
            this.simpleButton1.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton1.Appearance.Options.UseFont = true;
            this.simpleButton1.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton1.ImageOptions.Image")));
            this.simpleButton1.Location = new System.Drawing.Point(47, 150);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(117, 45);
            this.simpleButton1.TabIndex = 45;
            this.simpleButton1.Text = "Thêm";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // txtsosim
            // 
            this.txtsosim.Location = new System.Drawing.Point(500, 54);
            this.txtsosim.Name = "txtsosim";
            this.txtsosim.Size = new System.Drawing.Size(170, 21);
            this.txtsosim.TabIndex = 40;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(434, 57);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(40, 13);
            this.label4.TabIndex = 39;
            this.label4.Text = "Số SIM";
            this.label4.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // txttensim
            // 
            this.txttensim.Location = new System.Drawing.Point(157, 107);
            this.txttensim.Name = "txttensim";
            this.txttensim.Size = new System.Drawing.Size(170, 21);
            this.txttensim.TabIndex = 36;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(68, 110);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(46, 13);
            this.label2.TabIndex = 35;
            this.label2.Text = "Tên SIM";
            this.label2.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.SteelBlue;
            this.label1.Location = new System.Drawing.Point(353, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(48, 24);
            this.label1.TabIndex = 34;
            this.label1.Text = "SIM";
            // 
            // txtidhd
            // 
            this.txtidhd.Location = new System.Drawing.Point(499, 103);
            this.txtidhd.Name = "txtidhd";
            this.txtidhd.ReadOnly = true;
            this.txtidhd.Size = new System.Drawing.Size(106, 21);
            this.txtidhd.TabIndex = 52;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(410, 106);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(78, 13);
            this.label3.TabIndex = 51;
            this.label3.Text = "ID Hóa đơn ĐK";
            this.label3.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // simpleButton6
            // 
            this.simpleButton6.Appearance.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton6.Appearance.Options.UseFont = true;
            this.simpleButton6.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.simpleButton6.Location = new System.Drawing.Point(611, 97);
            this.simpleButton6.Name = "simpleButton6";
            this.simpleButton6.Size = new System.Drawing.Size(59, 31);
            this.simpleButton6.TabIndex = 56;
            this.simpleButton6.Text = "Chọn";
            this.simpleButton6.Click += new System.EventHandler(this.simpleButton6_Click);
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.sIMsBindingSource;
            this.gridControl1.Location = new System.Drawing.Point(23, 215);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(806, 217);
            this.gridControl1.TabIndex = 57;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.gridControl1.Click += new System.EventHandler(this.gridControl1_Click);
            // 
            // sIMsBindingSource
            // 
            this.sIMsBindingSource.DataSource = typeof(Model.EFModel.SIM);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSIMID,
            this.colTenSim,
            this.colSoSim,
            this.colHoaDonDangKyID,
            this.colFlag});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            // 
            // colSIMID
            // 
            this.colSIMID.FieldName = "SIMID";
            this.colSIMID.Name = "colSIMID";
            this.colSIMID.Visible = true;
            this.colSIMID.VisibleIndex = 0;
            // 
            // colTenSim
            // 
            this.colTenSim.FieldName = "TenSim";
            this.colTenSim.Name = "colTenSim";
            this.colTenSim.Visible = true;
            this.colTenSim.VisibleIndex = 1;
            // 
            // colSoSim
            // 
            this.colSoSim.FieldName = "SoSim";
            this.colSoSim.Name = "colSoSim";
            this.colSoSim.Visible = true;
            this.colSoSim.VisibleIndex = 2;
            // 
            // colHoaDonDangKyID
            // 
            this.colHoaDonDangKyID.FieldName = "HoaDonDangKyID";
            this.colHoaDonDangKyID.Name = "colHoaDonDangKyID";
            this.colHoaDonDangKyID.Visible = true;
            this.colHoaDonDangKyID.VisibleIndex = 3;
            // 
            // colFlag
            // 
            this.colFlag.FieldName = "Flag";
            this.colFlag.Name = "colFlag";
            this.colFlag.Visible = true;
            this.colFlag.VisibleIndex = 4;
            // 
            // txtidsim
            // 
            this.txtidsim.Location = new System.Drawing.Point(157, 54);
            this.txtidsim.Name = "txtidsim";
            this.txtidsim.ReadOnly = true;
            this.txtidsim.Size = new System.Drawing.Size(170, 21);
            this.txtidsim.TabIndex = 59;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(68, 56);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(37, 13);
            this.label5.TabIndex = 58;
            this.label5.Text = "ID Sim";
            this.label5.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // SIM
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(841, 448);
            this.Controls.Add(this.txtidsim);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.simpleButton6);
            this.Controls.Add(this.txtidhd);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.simpleButton5);
            this.Controls.Add(this.simpleButton4);
            this.Controls.Add(this.simpleButton3);
            this.Controls.Add(this.simpleButton2);
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.txtsosim);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txttensim);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "SIM";
            this.Text = "SIM";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sIMsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private DevExpress.XtraEditors.SimpleButton simpleButton5;
        private DevExpress.XtraEditors.SimpleButton simpleButton4;
        private DevExpress.XtraEditors.SimpleButton simpleButton3;
        private DevExpress.XtraEditors.SimpleButton simpleButton2;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private System.Windows.Forms.TextBox txtsosim;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txttensim;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtidhd;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.SimpleButton simpleButton6;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private System.Windows.Forms.BindingSource sIMsBindingSource;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colSIMID;
        private DevExpress.XtraGrid.Columns.GridColumn colTenSim;
        private DevExpress.XtraGrid.Columns.GridColumn colSoSim;
        private DevExpress.XtraGrid.Columns.GridColumn colHoaDonDangKyID;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
        private System.Windows.Forms.TextBox txtidsim;
        private System.Windows.Forms.Label label5;
    }
}