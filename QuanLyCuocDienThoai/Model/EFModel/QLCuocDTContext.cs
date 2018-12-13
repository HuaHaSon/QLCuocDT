namespace Model.EFModel
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class QLCuocDTContext : DbContext
    {
        public QLCuocDTContext()
            : base("name=QLCuocDTContext")
        {
        }

        public virtual DbSet<ChiTietCuocGoi> ChiTietCuocGois { get; set; }
        public virtual DbSet<ChiTietHDTC> ChiTietHDTCs { get; set; }
        public virtual DbSet<FileLogSIM> FileLogSIMs { get; set; }
        public virtual DbSet<GiaCuoc> GiaCuocs { get; set; }
        public virtual DbSet<HoaDonDangKy> HoaDonDangKies { get; set; }
        public virtual DbSet<HoaDonTinhCuocThang> HoaDonTinhCuocThangs { get; set; }
        public virtual DbSet<KhachHang> KhachHangs { get; set; }
        public virtual DbSet<SIM> SIMs { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<TienThueBao> TienThueBaos { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ChiTietCuocGoi>()
                .Property(e => e.ThanhTien)
                .HasPrecision(18, 0);

            modelBuilder.Entity<ChiTietHDTC>()
                .Property(e => e.ThanhTien)
                .HasPrecision(18, 0);

            modelBuilder.Entity<ChiTietHDTC>()
                .HasMany(e => e.ChiTietCuocGois)
                .WithRequired(e => e.ChiTietHDTC)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<GiaCuoc>()
                .Property(e => e.GioBD)
                .IsUnicode(false);

            modelBuilder.Entity<GiaCuoc>()
                .Property(e => e.GioKT)
                .IsUnicode(false);

            modelBuilder.Entity<HoaDonDangKy>()
                .HasMany(e => e.SIMs)
                .WithRequired(e => e.HoaDonDangKy)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<HoaDonTinhCuocThang>()
                .Property(e => e.TienThueBao)
                .HasPrecision(18, 0);

            modelBuilder.Entity<HoaDonTinhCuocThang>()
                .Property(e => e.TienCuocSD)
                .HasPrecision(18, 0);

            modelBuilder.Entity<HoaDonTinhCuocThang>()
                .HasMany(e => e.ChiTietHDTCs)
                .WithRequired(e => e.HoaDonTinhCuocThang)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<KhachHang>()
                .Property(e => e.CMND)
                .IsUnicode(false);

            modelBuilder.Entity<KhachHang>()
                .Property(e => e.Email)
                .IsFixedLength();

            modelBuilder.Entity<KhachHang>()
                .HasMany(e => e.HoaDonDangKies)
                .WithRequired(e => e.KhachHang)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SIM>()
                .Property(e => e.SoSim)
                .IsUnicode(false);

            modelBuilder.Entity<SIM>()
                .HasMany(e => e.HoaDonTinhCuocThangs)
                .WithRequired(e => e.SIM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TienThueBao>()
                .Property(e => e.GiaTienThueBao)
                .HasPrecision(18, 0);
        }
    }
}
