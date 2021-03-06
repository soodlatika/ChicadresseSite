﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Chicadresse.Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using Chicadresse.Entities.Domain;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class ChicadressEntities : DbContext
    {
        public ChicadressEntities()
            : base("name=ChicadressEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Attendance> Attendances { get; set; }
        public virtual DbSet<Group> Groups { get; set; }
        public virtual DbSet<Guest_Companinons> Guest_Companinons { get; set; }
        public virtual DbSet<Guest_Details> Guest_Details { get; set; }
        public virtual DbSet<Guest_Table> Guest_Table { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<Table> Tables { get; set; }
        public virtual DbSet<UserActivation> UserActivations { get; set; }
        public virtual DbSet<UserRole> UserRoles { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Wedding> Weddings { get; set; }
    
        public virtual ObjectResult<Guest_List_Result> Guest_List(Nullable<int> weddingId, string name, Nullable<int> pageNumber, Nullable<int> pageSize, string orderBy)
        {
            var weddingIdParameter = weddingId.HasValue ?
                new ObjectParameter("WeddingId", weddingId) :
                new ObjectParameter("WeddingId", typeof(int));
    
            var nameParameter = name != null ?
                new ObjectParameter("Name", name) :
                new ObjectParameter("Name", typeof(string));
    
            var pageNumberParameter = pageNumber.HasValue ?
                new ObjectParameter("PageNumber", pageNumber) :
                new ObjectParameter("PageNumber", typeof(int));
    
            var pageSizeParameter = pageSize.HasValue ?
                new ObjectParameter("PageSize", pageSize) :
                new ObjectParameter("PageSize", typeof(int));
    
            var orderByParameter = orderBy != null ?
                new ObjectParameter("OrderBy", orderBy) :
                new ObjectParameter("OrderBy", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Guest_List_Result>("Guest_List", weddingIdParameter, nameParameter, pageNumberParameter, pageSizeParameter, orderByParameter);
        }
    }
}
