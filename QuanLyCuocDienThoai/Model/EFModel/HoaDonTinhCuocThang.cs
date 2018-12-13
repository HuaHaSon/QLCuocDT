namespace Model.EFModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HoaDonTinhCuocThang")]
    public partial class HoaDonTinhCuocThang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HoaDonTinhCuocThang()
        {
            ChiTietHDTCs = new HashSet<ChiTietHDTC>();
        }

        public int HoaDonTinhCuocThangID { get; set; }

        public int SIMID { get; set; }

        public decimal TienThueBao { get; set; }

        public decimal TienCuocSD { get; set; }

        public bool Flag { get; set; }

        public DateTime ThangHD { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietHDTC> ChiTietHDTCs { get; set; }

        public virtual SIM SIM { get; set; }
    }
}
