namespace GD_NHANVIEN.GUI
{
    partial class ThongtinSIM
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ThongtinSIM));
            this.simpleButton6 = new DevExpress.XtraEditors.SimpleButton();
            this.txthddk = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.simpleButton4 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton3 = new DevExpress.XtraEditors.SimpleButton();
            this.txtsosim = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txttensim = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.sIMsBindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSIMID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTenSim = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSoSim = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHoaDonDangKyID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.simpleButton2 = new DevExpress.XtraEditors.SimpleButton();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.txtidsim = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sIMsBindingSource2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // simpleButton6
            // 
            this.simpleButton6.Appearance.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton6.Appearance.Options.UseFont = true;
            this.simpleButton6.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.simpleButton6.Location = new System.Drawing.Point(602, 112);
            this.simpleButton6.Name = "simpleButton6";
            this.simpleButton6.Size = new System.Drawing.Size(59, 31);
            this.simpleButton6.TabIndex = 70;
            this.simpleButton6.Text = "Chọn";
            this.simpleButton6.Click += new System.EventHandler(this.simpleButton6_Click);
            // 
            // txthddk
            // 
            this.txthddk.Location = new System.Drawing.Point(490, 118);
            this.txthddk.Name = "txthddk";
            this.txthddk.ReadOnly = true;
            this.txthddk.Size = new System.Drawing.Size(106, 21);
            this.txthddk.TabIndex = 69;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(401, 121);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(78, 13);
            this.label3.TabIndex = 68;
            this.label3.Text = "ID Hóa đơn ĐK";
            this.label3.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // simpleButton4
            // 
            this.simpleButton4.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton4.Appearance.Options.UseFont = true;
            this.simpleButton4.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton4.ImageOptions.Image")));
            this.simpleButton4.Location = new System.Drawing.Point(276, 166);
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
            this.simpleButton3.Location = new System.Drawing.Point(428, 166);
            this.simpleButton3.Name = "simpleButton3";
            this.simpleButton3.Size = new System.Drawing.Size(117, 45);
            this.simpleButton3.TabIndex = 65;
            this.simpleButton3.Text = "Refresh";
            this.simpleButton3.Click += new System.EventHandler(this.simpleButton3_Click);
            // 
            // txtsosim
            // 
            this.txtsosim.Location = new System.Drawing.Point(491, 68);
            this.txtsosim.Name = "txtsosim";
            this.txtsosim.Size = new System.Drawing.Size(170, 21);
            this.txtsosim.TabIndex = 62;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(425, 71);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(40, 13);
            this.label4.TabIndex = 61;
            this.label4.Text = "Số SIM";
            this.label4.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // txttensim
            // 
            this.txttensim.Location = new System.Drawing.Point(145, 118);
            this.txttensim.Name = "txttensim";
            this.txttensim.Size = new System.Drawing.Size(170, 21);
            this.txttensim.TabIndex = 60;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(56, 121);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(46, 13);
            this.label2.TabIndex = 59;
            this.label2.Text = "Tên SIM";
            this.label2.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.SteelBlue;
            this.label1.Location = new System.Drawing.Point(324, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(169, 24);
            this.label1.TabIndex = 58;
            this.label1.Text = "THÔNG TIN SIM";
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.sIMsBindingSource2;
            this.gridControl1.Location = new System.Drawing.Point(14, 233);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(817, 224);
            this.gridControl1.TabIndex = 71;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.gridControl1.Click += new System.EventHandler(this.gridControl1_Click);
            // 
            // sIMsBindingSource2
            // 
            this.sIMsBindingSource2.DataSource = typeof(Model.EFModel.SIM);
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
            // simpleButton2
            // 
            this.simpleButton2.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton2.Appearance.Options.UseFont = true;
            this.simpleButton2.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton2.ImageOptions.Image")));
            this.simpleButton2.Location = new System.Drawing.Point(714, 463);
            this.simpleButton2.Name = "simpleButton2";
            this.simpleButton2.Size = new System.Drawing.Size(117, 45);
            this.simpleButton2.TabIndex = 83;
            this.simpleButton2.Text = "Thoát";
            this.simpleButton2.Click += new System.EventHandler(this.simpleButton2_Click);
            // 
            // simpleButton1
            // 
            this.simpleButton1.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton1.Appearance.Options.UseFont = true;
            this.simpleButton1.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton1.ImageOptions.Image")));
            this.simpleButton1.Location = new System.Drawing.Point(574, 463);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(117, 45);
            this.simpleButton1.TabIndex = 82;
            this.simpleButton1.Text = "Chọn";
            this.simpleButton1.Click += new System.EventHandler(this.simpleButton1_Click);
            // 
            // txtidsim
            // 
            this.txtidsim.Location = new System.Drawing.Point(145, 63);
            this.txtidsim.Name = "txtidsim";
            this.txtidsim.ReadOnly = true;
            this.txtidsim.Size = new System.Drawing.Size(170, 21);
            this.txtidsim.TabIndex = 85;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(56, 66);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(39, 13);
            this.label5.TabIndex = 84;
            this.label5.Text = "ID SIM";
            this.label5.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // ThongtinSIM
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(843, 517);
            this.Controls.Add(this.txtidsim);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.simpleButton2);
            this.Controls.Add(this.simpleButton1);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.simpleButton6);
            this.Controls.Add(this.txthddk);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.simpleButton4);
            this.Controls.Add(this.simpleButton3);
            this.Controls.Add(this.txtsosim);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txttensim);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "ThongtinSIM";
            this.Text = "ThongtinSIM";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sIMsBindingSource2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private DevExpress.XtraEditors.SimpleButton simpleButton6;
        private System.Windows.Forms.TextBox txthddk;
        private System.Windows.Forms.Label label3;
        private DevExpress.XtraEditors.SimpleButton simpleButton4;
        private DevExpress.XtraEditors.SimpleButton simpleButton3;
        private System.Windows.Forms.TextBox txtsosim;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txttensim;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private System.Windows.Forms.BindingSource sIMsBindingSource2;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colSIMID;
        private DevExpress.XtraGrid.Columns.GridColumn colTenSim;
        private DevExpress.XtraGrid.Columns.GridColumn colSoSim;
        private DevExpress.XtraGrid.Columns.GridColumn colHoaDonDangKyID;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
        private DevExpress.XtraEditors.SimpleButton simpleButton2;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private System.Windows.Forms.TextBox txtidsim;
        private System.Windows.Forms.Label label5;
    }
}