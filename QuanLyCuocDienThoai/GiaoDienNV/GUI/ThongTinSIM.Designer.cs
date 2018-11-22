namespace GiaoDienNV.GUI
{
    partial class ThongTinSIM
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
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.txtcv = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.bangkh = new System.Windows.Forms.DataGridView();
            this.button4 = new System.Windows.Forms.Button();
            this.SIMID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenSIM = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoSIM = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.bangkh)).BeginInit();
            this.SuspendLayout();
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(174, 79);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(173, 20);
            this.textBox1.TabIndex = 61;
            // 
            // txtcv
            // 
            this.txtcv.Location = new System.Drawing.Point(572, 79);
            this.txtcv.Name = "txtcv";
            this.txtcv.Size = new System.Drawing.Size(170, 20);
            this.txtcv.TabIndex = 60;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(483, 82);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(42, 13);
            this.label5.TabIndex = 59;
            this.label5.Text = "Số SIM";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(111, 82);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(48, 13);
            this.label2.TabIndex = 58;
            this.label2.Text = "Tên SIM";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.SteelBlue;
            this.label1.Location = new System.Drawing.Point(342, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(169, 24);
            this.label1.TabIndex = 57;
            this.label1.Text = "THÔNG TIN SIM";
            // 
            // bangkh
            // 
            this.bangkh.AllowUserToAddRows = false;
            this.bangkh.AllowUserToDeleteRows = false;
            this.bangkh.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.bangkh.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.SIMID,
            this.TenSIM,
            this.SoSIM});
            this.bangkh.Location = new System.Drawing.Point(24, 187);
            this.bangkh.Name = "bangkh";
            this.bangkh.ReadOnly = true;
            this.bangkh.Size = new System.Drawing.Size(830, 184);
            this.bangkh.TabIndex = 62;
            // 
            // button4
            // 
            this.button4.BackColor = System.Drawing.Color.Thistle;
            this.button4.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button4.Location = new System.Drawing.Point(364, 120);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(121, 44);
            this.button4.TabIndex = 63;
            this.button4.Text = "Tìm kiếm";
            this.button4.UseVisualStyleBackColor = false;
            // 
            // SIMID
            // 
            this.SIMID.HeaderText = "ID SIM";
            this.SIMID.Name = "SIMID";
            this.SIMID.ReadOnly = true;
            // 
            // TenSIM
            // 
            this.TenSIM.HeaderText = "Tên SIM";
            this.TenSIM.Name = "TenSIM";
            this.TenSIM.ReadOnly = true;
            // 
            // SoSIM
            // 
            this.SoSIM.HeaderText = "Số SIM";
            this.SoSIM.Name = "SoSIM";
            this.SoSIM.ReadOnly = true;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.Thistle;
            this.button1.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(572, 380);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(121, 44);
            this.button1.TabIndex = 64;
            this.button1.Text = "Chọn";
            this.button1.UseVisualStyleBackColor = false;
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.Color.SteelBlue;
            this.button2.Font = new System.Drawing.Font("Times New Roman", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.Location = new System.Drawing.Point(718, 380);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(121, 44);
            this.button2.TabIndex = 65;
            this.button2.Text = "Thoát";
            this.button2.UseVisualStyleBackColor = false;
            // 
            // ThongTinSIM
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(866, 433);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.bangkh);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.txtcv);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "ThongTinSIM";
            this.Text = "ThongTinSIM";
            ((System.ComponentModel.ISupportInitialize)(this.bangkh)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox txtcv;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView bangkh;
        private System.Windows.Forms.DataGridViewTextBoxColumn SIMID;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenSIM;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoSIM;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
    }
}