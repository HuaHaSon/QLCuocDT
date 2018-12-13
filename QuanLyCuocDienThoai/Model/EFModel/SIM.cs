namespace Model.EFModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SIM")]
    public partial class SIM
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SIM()
        {
            ChiTietCuocGois = new HashSet<ChiTietCuocGoi>();
            HoaDonTinhCuocThangs = new HashSet<HoaDonTinhCuocThang>();
        }

        public int SIMID { get; set; }

        [Required]
        [StringLength(20)]
        public string TenSim { get; set; }

        [Required]
        [StringLength(20)]
        public string SoSim { get; set; }

        public int HoaDonDangKyID { get; set; }

        public bool Flag { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietCuocGoi> ChiTietCuocGois { get; set; }

        public virtual HoaDonDangKy HoaDonDangKy { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HoaDonTinhCuocThang> HoaDonTinhCuocThangs { get; set; }
    }
}
