namespace Model.EFModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietCuocGoi")]
    public partial class ChiTietCuocGoi
    {
        public int ChiTietCuocGoiID { get; set; }

        public int? SIMID { get; set; }

        public DateTime? ThoiGianBD { get; set; }

        public DateTime? ThoiGianKT { get; set; }

        public decimal ThanhTien { get; set; }

        public int SoPhutSD { get; set; }

        public int ChiTietHDTCID { get; set; }

        public bool Flag { get; set; }

        public virtual SIM SIM { get; set; }

        public virtual ChiTietHDTC ChiTietHDTC { get; set; }
    }
}
