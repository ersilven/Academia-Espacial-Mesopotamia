using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using AcaEspacial.Models;

namespace AcaEspacial.Data
{
    public partial class AcademiaContext : DbContext
    {
        public AcademiaContext()
        {
        }

        public AcademiaContext(DbContextOptions<AcademiaContext> options)
            : base(options)
        {
        }

        public virtual DbSet<AcademiaArea> AcademiaArea { get; set; } = null!;
        public virtual DbSet<Academias> Academias { get; set; } = null!;
        public virtual DbSet<AlumnoArea> AlumnoArea { get; set; } = null!;
        public virtual DbSet<AreaClase> AreaClase { get; set; } = null!;
        public virtual DbSet<Estatus> Estatus { get; set; } = null!;
        public virtual DbSet<MaestroAcademia> MaestroAcademia { get; set; } = null!;
        public virtual DbSet<MaestroArea> MaestroArea { get; set; } = null!;
        public virtual DbSet<Roles> Roles { get; set; } = null!;
        public virtual DbSet<Usuario> Usuario { get; set; } = null!;
        public virtual DbSet<UsuarioEstatus> UsuarioEstatus { get; set; } = null!;
        public virtual DbSet<UsuarioPass> UsuarioPass { get; set; } = null!;
        public virtual DbSet<UsuarioRoles> UsuarioRoles { get; set; } = null!;

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AcademiaArea>(entity =>
            {
                entity.Property(e => e.IDAcademiaArea).HasDefaultValueSql("(newid())");

                entity.Property(e => e.CreatedOn).HasDefaultValueSql("(getdate())");

                entity.HasOne(d => d.IDAcademiaNavigation)
                    .WithMany(p => p.AcademiaArea)
                    .HasForeignKey(d => d.IDAcademia)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_AcademiaArea_Academias");

                entity.HasOne(d => d.IDAreaNavigation)
                    .WithMany(p => p.AcademiaArea)
                    .HasForeignKey(d => d.IDArea)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_AcademiaArea_AreaClase");
            });

            modelBuilder.Entity<Academias>(entity =>
            {
                entity.Property(e => e.IDAcademia).HasDefaultValueSql("(newid())");

                entity.Property(e => e.CreatedOn).HasDefaultValueSql("(getdate())");
            });

            modelBuilder.Entity<AlumnoArea>(entity =>
            {
                entity.Property(e => e.IDAlumnoArea).HasDefaultValueSql("(newid())");

                entity.Property(e => e.CreatedOn).HasDefaultValueSql("(getdate())");

                entity.HasOne(d => d.IDAreaNavigation)
                    .WithMany(p => p.AlumnoArea)
                    .HasForeignKey(d => d.IDArea)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_AlumnoArea_AreaClase");

                entity.HasOne(d => d.IDUsuarioNavigation)
                    .WithMany(p => p.AlumnoArea)
                    .HasForeignKey(d => d.IDUsuario)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_AlumnoArea_Usuario");
            });

            modelBuilder.Entity<AreaClase>(entity =>
            {
                entity.Property(e => e.IDArea).HasDefaultValueSql("(newid())");

                entity.Property(e => e.CreatedOn).HasDefaultValueSql("(getdate())");
            });

            modelBuilder.Entity<Estatus>(entity =>
            {
                entity.HasKey(e => e.IDEstatus)
                    .HasName("PK__Estatus__042C4B51FA1797F4");

                entity.Property(e => e.IDEstatus).HasDefaultValueSql("(newid())");

                entity.Property(e => e.CreatedOn).HasDefaultValueSql("(getdate())");
            });

            modelBuilder.Entity<MaestroAcademia>(entity =>
            {
                entity.Property(e => e.IDMaestroAcademia).HasDefaultValueSql("(newid())");

                entity.Property(e => e.CreatedOn).HasDefaultValueSql("(getdate())");

                entity.HasOne(d => d.IDAcademiaNavigation)
                    .WithMany(p => p.MaestroAcademia)
                    .HasForeignKey(d => d.IDAcademia)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_MaestroAcademia_Academias");

                entity.HasOne(d => d.IDUsuarioNavigation)
                    .WithMany(p => p.MaestroAcademia)
                    .HasForeignKey(d => d.IDUsuario)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_MaestroAcademia_Usuario");
            });

            modelBuilder.Entity<MaestroArea>(entity =>
            {
                entity.Property(e => e.IDMaestroArea).HasDefaultValueSql("(newid())");

                entity.Property(e => e.CreatedOn).HasDefaultValueSql("(getdate())");

                entity.HasOne(d => d.IDAreaNavigation)
                    .WithMany(p => p.MaestroArea)
                    .HasForeignKey(d => d.IDArea)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_MaestroArea_AreaClase");

                entity.HasOne(d => d.IDUsuarioNavigation)
                    .WithMany(p => p.MaestroArea)
                    .HasForeignKey(d => d.IDUsuario)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_MaestroArea_Usuario");
            });

            modelBuilder.Entity<Roles>(entity =>
            {
                entity.HasKey(e => e.IDRol)
                    .HasName("PK__Roles__A681ACB68F3E8812");

                entity.Property(e => e.IDRol).HasDefaultValueSql("(newid())");

                entity.Property(e => e.CreatedOn).HasDefaultValueSql("(getdate())");
            });

            modelBuilder.Entity<Usuario>(entity =>
            {
                entity.Property(e => e.IDUsuario).HasDefaultValueSql("(newid())");

                entity.Property(e => e.CreatedOn).HasDefaultValueSql("(getdate())");
            });

            modelBuilder.Entity<UsuarioEstatus>(entity =>
            {
                entity.HasKey(e => e.IDUsuarioEstatus)
                    .HasName("PK__UsuarioE__C19EBAFB7CE52971");

                entity.Property(e => e.IDUsuarioEstatus).HasDefaultValueSql("(newid())");

                entity.Property(e => e.CreatedOn).HasDefaultValueSql("(getdate())");

                entity.HasOne(d => d.IDEstatusNavigation)
                    .WithMany(p => p.UsuarioEstatus)
                    .HasForeignKey(d => d.IDEstatus)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_UsuarioEstatus_Estatus");

                entity.HasOne(d => d.IDUsuarioNavigation)
                    .WithMany(p => p.UsuarioEstatus)
                    .HasForeignKey(d => d.IDUsuario)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_UsuarioEstatus_Usuario");
            });

            modelBuilder.Entity<UsuarioPass>(entity =>
            {
                entity.Property(e => e.IDUsuarioPass).HasDefaultValueSql("(newid())");

                entity.Property(e => e.CreatedOn).HasDefaultValueSql("(getdate())");

                entity.HasOne(d => d.IDUsuarioNavigation)
                    .WithMany(p => p.UsuarioPass)
                    .HasForeignKey(d => d.IDUsuario)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_UsuarioPass_Usuario");
            });

            modelBuilder.Entity<UsuarioRoles>(entity =>
            {
                entity.HasKey(e => e.IDUsuarioRol)
                    .HasName("PK__UsuarioR__3A284C80A7782D7B");

                entity.Property(e => e.IDUsuarioRol).HasDefaultValueSql("(newid())");

                entity.Property(e => e.CreatedOn).HasDefaultValueSql("(getdate())");

                entity.HasOne(d => d.IDRolNavigation)
                    .WithMany(p => p.UsuarioRoles)
                    .HasForeignKey(d => d.IDRol)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_UsuarioRoles_Roles");

                entity.HasOne(d => d.IDUsuarioNavigation)
                    .WithMany(p => p.UsuarioRoles)
                    .HasForeignKey(d => d.IDUsuario)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_UsuarioRoles_Usuario");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
