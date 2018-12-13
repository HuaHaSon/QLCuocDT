namespace GD_NHANVIEN.GUI
{
    partial class CTCG
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CTCG));
            this.label7 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.chiTietCuocGoisBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colChiTietCuocGoiID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSIMID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colThoiGianBD = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colThoiGianKT = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colThanhTien = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSoPhutSD = new DevExpress.XtraGrid.Columns.GridColumn();
            this.simpleButton3 = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chiTietCuocGoisBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(486, 58);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(0, 13);
            this.label7.TabIndex = 69;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.SteelBlue;
            this.label2.Location = new System.Drawing.Point(287, 47);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(210, 24);
            this.label2.TabIndex = 68;
            this.label2.Text = "CHI TIẾT CUỘC GỌI";
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.chiTietCuocGoisBindingSource;
            this.gridControl1.Location = new System.Drawing.Point(4, 117);
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(819, 241);
            this.gridControl1.TabIndex = 70;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // chiTietCuocGoisBindingSource
            // 
            this.chiTietCuocGoisBindingSource.DataSource = typeof(Model.EFModel.ChiTietCuocGoi);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colChiTietCuocGoiID,
            this.colSIMID,
            this.colThoiGianBD,
            this.colThoiGianKT,
            this.colThanhTien,
            this.colSoPhutSD});
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            // 
            // colChiTietCuocGoiID
            // 
            this.colChiTietCuocGoiID.FieldName = "ChiTietCuocGoiID";
            this.colChiTietCuocGoiID.Name = "colChiTietCuocGoiID";
            this.colChiTietCuocGoiID.Visible = true;
            this.colChiTietCuocGoiID.VisibleIndex = 0;
            // 
            // colSIMID
            // 
            this.colSIMID.FieldName = "SIMID";
            this.colSIMID.Name = "colSIMID";
            this.colSIMID.Visible = true;
            this.colSIMID.VisibleIndex = 1;
            // 
            // colThoiGianBD
            // 
            this.colThoiGianBD.FieldName = "ThoiGianBD";
            this.colThoiGianBD.Name = "colThoiGianBD";
            this.colThoiGianBD.Visible = true;
            this.colThoiGianBD.VisibleIndex = 2;
            // 
            // colThoiGianKT
            // 
            this.colThoiGianKT.FieldName = "ThoiGianKT";
            this.colThoiGianKT.Name = "colThoiGianKT";
            this.colThoiGianKT.Visible = true;
            this.colThoiGianKT.VisibleIndex = 3;
            // 
            // colThanhTien
            // 
            this.colThanhTien.FieldName = "ThanhTien";
            this.colThanhTien.Name = "colThanhTien";
            this.colThanhTien.Visible = true;
            this.colThanhTien.VisibleIndex = 4;
            // 
            // colSoPhutSD
            // 
            this.colSoPhutSD.FieldName = "SoPhutSD";
            this.colSoPhutSD.Name = "colSoPhutSD";
            this.colSoPhutSD.Visible = true;
            this.colSoPhutSD.VisibleIndex = 5;
            // 
            // simpleButton3
            // 
            this.simpleButton3.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton3.Appearance.Options.UseFont = true;
            this.simpleButton3.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton3.ImageOptions.Image")));
            this.simpleButton3.Location = new System.Drawing.Point(706, 364);
            this.simpleButton3.Name = "simpleButton3";
            this.simpleButton3.Size = new System.Drawing.Size(109, 39);
            this.simpleButton3.TabIndex = 79;
            this.simpleButton3.Text = "Thoát";
            this.simpleButton3.Click += new System.EventHandler(this.simpleButton3_Click);
            // 
            // CTCG
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(827, 435);
            this.Controls.Add(this.simpleButton3);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label2);
            this.Name = "CTCG";
            this.Text = "CTCG";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chiTietCuocGoisBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private System.Windows.Forms.BindingSource chiTietCuocGoisBindingSource;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colChiTietCuocGoiID;
        private DevExpress.XtraGrid.Columns.GridColumn colSIMID;
        private DevExpress.XtraGrid.Columns.GridColumn colThoiGianBD;
        private DevExpress.XtraGrid.Columns.GridColumn colThoiGianKT;
        private DevExpress.XtraGrid.Columns.GridColumn colThanhTien;
        private DevExpress.XtraGrid.Columns.GridColumn colSoPhutSD;
        private DevExpress.XtraEditors.SimpleButton simpleButton3;
    }
}