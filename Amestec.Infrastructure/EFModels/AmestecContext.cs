using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Amestec.Infrastructure.EFModels;

public partial class AmestecContext : DbContext
{
    public AmestecContext()
    {
    }

    public AmestecContext(DbContextOptions<AmestecContext> options)
        : base(options)
    {
    }

    public virtual DbSet<AccessedHistory> AccessedHistories { get; set; }

    public virtual DbSet<Artist> Artists { get; set; }

    public virtual DbSet<ArtistsLink> ArtistsLinks { get; set; }

    public virtual DbSet<ArtistsPicture> ArtistsPictures { get; set; }

    public virtual DbSet<Email> Emails { get; set; }

    public virtual DbSet<News> News { get; set; }

    public virtual DbSet<NewsPicture> NewsPictures { get; set; }

    public virtual DbSet<Registration> Registrations { get; set; }

    public virtual DbSet<Timeline> Timelines { get; set; }

    public virtual DbSet<User> Users { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=localhost;Initial Catalog=Amestec;Trusted_Connection=True;Encrypt=False");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<AccessedHistory>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Accessed__3214EC07F77767C6");

            entity.Property(e => e.Date).HasColumnType("datetime");
            entity.Property(e => e.DeviceDetails).HasMaxLength(255);
            entity.Property(e => e.Location).HasMaxLength(255);
            entity.Property(e => e.Page).HasMaxLength(255);
        });

        modelBuilder.Entity<Artist>(entity =>
        {
            entity.Property(e => e.CreatedBy).HasMaxLength(255);
            entity.Property(e => e.CreatedDate).HasColumnType("datetime");
            entity.Property(e => e.LongDescription).HasMaxLength(4000);
            entity.Property(e => e.Name).HasMaxLength(255);
            entity.Property(e => e.ShortDescription).HasMaxLength(400);
        });

        modelBuilder.Entity<ArtistsLink>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__ArtistsL__3214EC07CBDE1C38");

            entity.Property(e => e.Link).HasMaxLength(400);
            entity.Property(e => e.Type).HasMaxLength(10);

            entity.HasOne(d => d.IdArtistNavigation).WithMany(p => p.ArtistsLinks)
                .HasForeignKey(d => d.IdArtist)
                .HasConstraintName("FK__ArtistsLi__IdArt__267ABA7A");
        });

        modelBuilder.Entity<ArtistsPicture>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__ArtistsP__3214EC0749C37EAC");

            entity.Property(e => e.Path).HasMaxLength(400);
            entity.Property(e => e.Type).HasMaxLength(10);

            entity.HasOne(d => d.IdArtistNavigation).WithMany(p => p.ArtistsPictures)
                .HasForeignKey(d => d.IdArtist)
                .HasConstraintName("FK__ArtistsPi__IdArt__29572725");
        });

        modelBuilder.Entity<Email>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Emails__3214EC07A82CF43E");

            entity.Property(e => e.Email1)
                .HasMaxLength(255)
                .HasColumnName("Email");
        });

        modelBuilder.Entity<News>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__News__3214EC079F128582");

            entity.Property(e => e.Content).HasMaxLength(4000);
            entity.Property(e => e.CreatedBy).HasMaxLength(255);
            entity.Property(e => e.CreatedDate).HasColumnType("datetime");
            entity.Property(e => e.Title).HasMaxLength(255);
        });

        modelBuilder.Entity<NewsPicture>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__NewsPict__3214EC078C5ADD26");

            entity.Property(e => e.Path).HasMaxLength(400);
            entity.Property(e => e.Type).HasMaxLength(10);

            entity.HasOne(d => d.IdNewNavigation).WithMany(p => p.NewsPictures)
                .HasForeignKey(d => d.IdNew)
                .HasConstraintName("FK__NewsPictu__IdNew__2E1BDC42");
        });

        modelBuilder.Entity<Registration>(entity =>
        {
            entity.Property(e => e.BirthDate).HasColumnType("date");
            entity.Property(e => e.Email).HasMaxLength(255);
            entity.Property(e => e.Name).HasMaxLength(255);
            entity.Property(e => e.PhoneNumber).HasMaxLength(255);
            entity.Property(e => e.Surname).HasMaxLength(255);
        });

        modelBuilder.Entity<Timeline>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Timeline__3214EC077D3A5D2B");

            entity.Property(e => e.CreatedBy).HasMaxLength(255);
            entity.Property(e => e.CreatedDate).HasColumnType("datetime");
            entity.Property(e => e.Date).HasColumnType("date");

            entity.HasOne(d => d.IdArtistNavigation).WithMany(p => p.Timelines)
                .HasForeignKey(d => d.IdArtist)
                .HasConstraintName("FK__Timelines__IdArt__32E0915F");
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Users__3214EC07D37F6495");

            entity.Property(e => e.Email).HasMaxLength(255);
            entity.Property(e => e.Password).HasMaxLength(255);
            entity.Property(e => e.Role).HasMaxLength(255);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
