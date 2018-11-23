namespace Model.EFModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HoaDonDangKy")]
    public partial class HoaDonDangKy
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HoaDonDangKy()
        {
            SIMs = new HashSet<SIM>();
        }

        public int HoaDonDangKyID { get; set; }

        public int KhachHangID { get; set; }

        public DateTime NgayDK { get; set; }

        public int ChiPhiDK { get; set; }

        public bool TinhTrangThanhToan { get; set; }

        public bool Flag { get; set; }

        public virtual KhachHang KhachHang { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SIM> SIMs { get; set; }
    }
}
