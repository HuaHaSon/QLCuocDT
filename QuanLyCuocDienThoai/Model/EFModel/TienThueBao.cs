namespace Model.EFModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TienThueBao")]
    public partial class TienThueBao
    {
        [Key]
        [Column(Order = 0)]
        public int TienThueBaoID { get; set; }

        [Key]
        [Column(Order = 1)]
        public decimal GiaTienThueBao { get; set; }
    }
}
