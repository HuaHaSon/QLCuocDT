namespace Model.EFModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("FileLogSIM")]
    public partial class FileLogSIM
    {
        public int FileLogSIMID { get; set; }

        public int SIMID { get; set; }

        public DateTime ThoiGianBD { get; set; }

        public DateTime ThoiGianKT { get; set; }
    }
}
