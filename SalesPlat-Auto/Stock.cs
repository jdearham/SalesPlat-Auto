//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SalesPlat_Auto
{
    using System;
    using System.Collections.Generic;
    
    public partial class Stock
    {
        public Stock()
        {
            this.Sales = new HashSet<Sale>();
        }
    
        public int StockId { get; set; }
        public string Make { get; set; }
        public string Model { get; set; }
        public Nullable<decimal> Year { get; set; }
        public Nullable<decimal> PurchasePrice { get; set; }
        public string Colour { get; set; }
    
        public virtual ICollection<Sale> Sales { get; set; }
    }
}
