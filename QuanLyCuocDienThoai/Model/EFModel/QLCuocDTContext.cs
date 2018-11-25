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

        public virtual DbSet<ChitietHDTC> ChitietHDTCs { get; set; }
        public virtual DbSet<GiaCuoc> GiaCuocs { get; set; }
        public virtual DbSet<HoaDonDangKy> HoaDonDangKies { get; set; }
        public virtual DbSet<HoaDonTinhCuoc> HoaDonTinhCuocs { get; set; }
        public virtual DbSet<KhachHang> KhachHangs { get; set; }
        public virtual DbSet<SIM> SIMs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
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

            modelBuilder.Entity<KhachHang>()
                .HasMany(e => e.HoaDonTinhCuocs)
                .WithRequired(e => e.KhachHang)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SIM>()
                .Property(e => e.SoSim)
                .IsUnicode(false);
        }
    }
}
