﻿using CliningContoraFromValera.DAL;

namespace CliningContoraFromValera.Bll.Models
{
    public class ServiceModel
    {
        public int Id { get; set; }
        public string ServiceType { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public decimal CommercialPrice { get; set; }
        public string Unit { get; set; }
        public TimeSpan EstimatedTime { get; set; }
        public ServiceOrderDTO ServiceOrder { get; set; }
    }
}