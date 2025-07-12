<%@ Page Title="" Language="C#" MasterPageFile="~/SitePage.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="CapaPresentacion.Products" %>
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
          Our Products
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
              Our Products
            </li>
          </ol>
        </nav>
      </div>
    </div>
    <!-- Page Header End -->

    <!-- Membership Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div
          class="row g-5 mb-5 align-items-end wow fadeInUp"
          data-wow-delay="0.1s"
        >
          <div class="col-lg-6">
            <p><span class="text-primary me-2">#</span>Products</p>
            <h1 class="display-5 mb-0">
              Amazon chestnut types of
              <span class="text-primary">Products</span>
            </h1>
          </div>
          <div class="col-lg-6 text-lg-end">
            <a class="btn btn-primary py-3 px-5" href="#" id="catall">Download catalog</a>
          </div>
        </div>
        <div class="row g-4" id="listaPr">
        </div>
      </div>
    </div>
    <!-- Membership End -->

    <!-- Modal detail -->

    <div class="modal fade" id="detalleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content rounded-0">
                <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Product details</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-7">
                            <h5 class="mb-3"><i class="fa fa-certificate text-primary me-3"></i>Definition</h5>
                            <span id="defini">
                                
                            </span>

                            <h5 class="mt-3 mb-2"><i class="fa fa-certificate text-primary me-3"></i>Specification</h5>

                            <p class="mb-3" id="specifi">
                            </p>

                            <h5 class="mb-2"><i class="fa fa-certificate text-primary me-3"></i>Packing</h5>

                            <p class="mb-2" id="packi">
                            </p>

                        </div>
                        <div class="col-sm-5 text-center">
                            <h5 class="mb-3" id="typesa"></h5>

                            <img id="imgUsuarioMx" src="imagenes/brokenDMo.png" alt="Foto usuario"
                                style="height: 250px; max-width: 250px;">
                        </div>
    
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-danger btn-sm" type="button" data-bs-dismiss="modal">Cancelar</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <script src="js/products.js"></script>
</asp:Content>
