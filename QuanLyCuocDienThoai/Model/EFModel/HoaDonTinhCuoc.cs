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
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HoaDonTinhCuoc()
        {
            ChitietHDTCs = new HashSet<ChitietHDTC>();
        }

        public int HoaDonTinhCuocID { get; set; }

        public int KhachHangID { get; set; }

        public int? SIMID { get; set; }

        public DateTime NgayHD { get; set; }

        public int CuocThueBao { get; set; }

        public decimal ThanhTien { get; set; }

        public decimal TongTien { get; set; }

        public bool Flag { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChitietHDTC> ChitietHDTCs { get; set; }

        public virtual KhachHang KhachHang { get; set; }

        public virtual SIM SIM { get; set; }
    }
}
