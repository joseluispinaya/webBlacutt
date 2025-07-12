using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CapaPresentacion
{
    public class PromptDatoz
    {
        public string Company { get; set; }
        public string HistoricalOverview { get; set; }
        public string Mission { get; set; }
        public string Vision { get; set; }
        public Values Values { get; set; }
        public string QualityPolicies { get; set; }
        public List<string> CollectionProcess { get; set; }
        public List<string> RegulationsCertifications { get; set; }
        public List<string> Harvest { get; set; }
        public List<string> Advantages { get; set; }
        public string ExportOffer { get; set; }
        public List<ProductClassification> ProductClassification { get; set; }
        public Contactz Contact { get; set; }
        public OrganizationalStructure OrganizationalStructure { get; set; }
    }

    public class Values
    {
        public string Integrity { get; set; }
        public string FlexibilityAndAdaptation { get; set; }
    }

    public class ProductClassification
    {
        public string Type { get; set; }
        public string Definition { get; set; }
    }

    public class Contactz
    {
        public string Address { get; set; }
        public List<string> Phones { get; set; }
    }

    public class OrganizationalStructure
    {
        public List<string> BoardOfDirectors { get; set; }
        public MainDepartments MainDepartments { get; set; }
    }

    public class MainDepartments
    {
        public List<string> Accounting { get; set; }
        public List<string> Production { get; set; }
        public string QualityManagement { get; set; }
    }
}