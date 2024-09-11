using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test_Projects {
    class MuscleCar
    {
        public string Model { get; set; }
        public int Year { get; set; }
        public double EngineSize { get; set; }

        public virtual string GetDetails()
        {
            return $"Model: {Model}, Year: {Year}, Engine Size: {EngineSize}L";
        }
    }
    class FordMustang : MuscleCar
    {
        public string SpecialFeature { get; set; }

        public override string GetDetails()
        {
            return base.GetDetails() + $", Special Feature: {SpecialFeature}";
        }
    }
    class ChevroletCamaro : MuscleCar
    {
        public int Horsepower { get; set; }

        public override string GetDetails()
        {
            return base.GetDetails() + $", Horsepower: {Horsepower}hp";
        }
    }
    class DodgeChallenger : MuscleCar
    {
        public string Color { get; set; }

        public override string GetDetails()
        {
            return base.GetDetails() + $", Color: {Color}";
        }
    }
    public partial class Hieararchical_Inheritance_Example : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FordMustang mustang = new FordMustang
            {
                Model = "Mustang GT",
                Year = 2024,
                EngineSize = 5.0,
                SpecialFeature = "Performance Pack"
            };

            ChevroletCamaro camaro = new ChevroletCamaro
            {
                Model = "Camaro SS",
                Year = 2024,
                EngineSize = 6.2,
                Horsepower = 455
            };

            DodgeChallenger challenger = new DodgeChallenger
            {
                Model = "Challenger SRT",
                Year = 2024,
                EngineSize = 6.4,
                Color = "Red"
            };

            lblMustang.Text = "Details of Ford Mustang:<br />" + mustang.GetDetails();
            lblCamaro.Text = "Details of Chevrolet Camaro:<br />" + camaro.GetDetails();
            lblChallenger.Text = "Details of Dodge Challenger:<br />" + challenger.GetDetails();
        }
    }
}