<%@ Page Title="" Language="C#" MasterPageFile="~/SitePage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CapaPresentacion.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!-- Page Header Start -->
    <div
      class="container-fluid header-bg py-5 mb-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container py-5">
        <h1 class="display-4 text-white mb-3 animated slideInDown">
          About Us
        </h1>
        <nav aria-label="breadcrumb animated slideInDown">
          <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item">
              <a class="text-white" href="Default.aspx">Home</a>
            </li>
            <li class="breadcrumb-item">
              <a class="text-white" href="#">Pages</a>
            </li>
            <li class="breadcrumb-item text-primary active" aria-current="page">
              About Us
            </li>
          </ol>
        </nav>
      </div>
    </div>
    <!-- Page Header End -->


    <div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5 mb-5 wow fadeInUp" data-wow-delay="0.1s">
          <div class="col-lg-12">
            <p><span class="text-primary me-2">#</span>About Us</p>
            <h1 class="display-5 mb-0">
              MISSION, VISION
              <span class="text-primary">AND</span> VALUES
            </h1>
          </div>
        </div>
        <div class="row gy-5 gx-4">
          <div
            class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp"
            data-wow-delay="0.1s"
          >
            <img class="img-fluid mb-3" src="img/icon/contt.png" alt="Icon" />
            <h5 class="mb-3">MISSION</h5>
            <span>
                We are a company dedicated to the processing of Brazil Nuts, providing a quality and safe product to our international buyers, ensuring training and continuous improvement for all our employees.
            </span>
          </div>
          <div
            class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp"
            data-wow-delay="0.3s"
          >
            <img class="img-fluid mb-3" src="img/icon/contt.png" alt="Icon" />
            <h5 class="mb-3">VISION</h5>
            <span>
                To be a recognized company in the export of Brazil Nuts, with quality and safety standards based on international standards, respecting the environment, and continuously working on corporate social responsibility.
            </span>
          </div>
          <div
            class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp"
            data-wow-delay="0.5s"
          >
            <img class="img-fluid mb-3" src="img/icon/contt.png" alt="Icon" />
            <h5 class="mb-3">VALUES</h5>
            <span>
                Our behavior reflects the highest levels of ethics and responsibility in addressing the organization's challenges. Our commitment is clear and 100% focused on the company's benefit and corporate social responsibility.
            </span>
          </div>
          <div
            class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp"
            data-wow-delay="0.7s"
          >
            <img class="img-fluid mb-3" src="img/icon/contt.png" alt="Icon" />
            <h5 class="mb-3">HISTORY</h5>
            <span>
                Founded in 1988, the company LOURDES REVICMAR operated for two years on Avenida Beni-Mamoré with 60 machines that processed 5,000 kilos of almonds daily. Parboiling and sealing were carried out by Hecker, and baking and inspecting were carried out in Lourdes.
            </span>
          </div>
          
        </div>
      </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
