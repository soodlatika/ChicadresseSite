//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Task
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Task()
        {
            this.User_Task = new HashSet<User_Task>();
        }
    
        public int TaskId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public Nullable<int> TimingId { get; set; }
        public Nullable<int> CategoryId { get; set; }
        public Nullable<int> UserId { get; set; }
        public Nullable<bool> CompletionStatus { get; set; }
        public string Notes { get; set; }
        public Nullable<int> Budget { get; set; }
        public Nullable<int> BusinessUserId { get; set; }
        public string TimeMonth { get; set; }
    
        public virtual Business_User Business_User { get; set; }
        public virtual Task_Timing Task_Timing { get; set; }
        public virtual Tasks_Category Tasks_Category { get; set; }
        public virtual User User { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<User_Task> User_Task { get; set; }
    }
}
