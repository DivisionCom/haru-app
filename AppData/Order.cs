//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Haru.AppData
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Order()
        {
            this.Product = new HashSet<Product>();
        }
    
        public int OrderID { get; set; }
        public string OrderStatus { get; set; }
        public System.DateTime OrderDeliveryDate { get; set; }
        public int OrderPickupPoint { get; set; }
        public int OrderCode { get; set; }
        public string OrderClientName { get; set; }
        public System.DateTime OrderDate { get; set; }
        public string OrderComposition { get; set; }
    
        public virtual PickupPoint PickupPoint { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Product> Product { get; set; }
    }
}