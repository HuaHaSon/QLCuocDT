namespace Model.EFModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietHDTC")]
    public partial class ChiTietHDTC
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ChiTietHDTC()
        {
            ChiTietCuocGois = new HashSet<ChiTietCuocGoi>();
        }

        public int ChiTietHDTCID { get; set; }

        public int SoPhutSD { get; set; }

        public DateTime NgayHD { get; set; }

        public int HoaDonTinhCuocThangID { get; set; }

        public decimal ThanhTien { get; set; }

        public bool Flag { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietCuocGoi> ChiTietCuocGois { get; set; }

        public virtual HoaDonTinhCuocThang HoaDonTinhCuocThang { get; set; }
    }
}
