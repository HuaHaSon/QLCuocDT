namespace Model.EFModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HoaDonTinhCuoc")]
    public partial class HoaDonTinhCuoc
    {
        public int HoaDonTinhCuocID { get; set; }

        public int KhachHangID { get; set; }

        public int? SIMID { get; set; }

        public DateTime NgayHD { get; set; }

        public int CuocThueBao { get; set; }

        public int ThanhTien { get; set; }

        public int TongTien { get; set; }

        public bool Flag { get; set; }

        public virtual KhachHang KhachHang { get; set; }

        public virtual SIM SIM { get; set; }
    }
}
