<%@ Page Title="" Language="C#" MasterPageFile="~/SitePage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CapaPresentacion.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!-- Header Start -->
    <div class="container-fluid bg-dark p-0 mb-5">
      <div class="row g-0 flex-column-reverse flex-lg-row">
        <div class="col-lg-6 p-0 wow fadeIn" data-wow-delay="0.1s">
          <div
            class="header-bg h-100 d-flex flex-column justify-content-center p-5"
          >
            <h1 class="display-4 text-light mb-5">
              Agricultural Industrial Society Blacutt Hnos. S.R.L.
            </h1>
            <div class="d-flex align-items-center pt-4 animated slideInDown">
              <!-- <a href="" class="btn btn-primary py-sm-3 px-3 px-sm-5 me-5"
                >Read More</a
              > -->
              <button
                type="button"
                class="btn-play"
                data-bs-toggle="modal"
                data-src="https://www.youtube.com/embed/UE0dp2hGV-o"
                data-bs-target="#videoModal"
              >
                <span></span>
              </button>
              <h6 class="text-white m-0 ms-4 d-none d-sm-block">Watch Video</h6>
            </div>
          </div>
        </div>
        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
          <div class="owl-carousel header-carousel">
            <div class="owl-carousel-item">
              <img class="img-fluid" src="img/carusela1.jpg" alt="" />
            </div>
            <div class="owl-carousel-item">
              <img class="img-fluid" src="img/carucel2.jpg" alt="" />
            </div>
            <div class="owl-carousel-item">
              <img class="img-fluid" src="img/carrucel3.jpg" alt="" />
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Header End -->

    <!-- Video Modal Start -->
    <div
      class="modal modal-video fade"
      id="videoModal"
      tabindex="-1"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content rounded-0">
          <div class="modal-header">
            <h3 class="modal-title" id="exampleModalLabel">Corporate video</h3>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <!-- 16:9 aspect ratio allowscriptaccess="always" -->
            <div class="ratio ratio-16x9">
              <iframe
                class="embed-responsive-item"
                src=""
                id="video"
                allow="autoplay"
                allowfullscreen
                muted
              ></iframe>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Video Modal End -->

    <!-- About Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5">
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
            <p><span class="text-primary me-2">#</span>Welcome</p>
            <h1 class="display-5 mb-4">
              Certifications
              <span class="text-primary">Blacutt</span> Hnos. S.R.L.
            </h1>
            <p class="mb-4">
              We have a solid track record of rigorously complying with current regulations. Below are the national and international certifications that support the commitment of the Industrial Agricultural Society Blacutt Hnos. S.R.L.
            </p>
            <h5 class="mb-3">
              <i class="far fa-check-circle text-primary me-3"></i>FSSC
              22000
            </h5>
            <h5 class="mb-3">
              <i class="far fa-check-circle text-primary me-3"></i>Certification
              organic
            </h5>
            <h5 class="mb-3">
              <i class="far fa-check-circle text-primary me-3"></i>Certification
              CE-OS
            </h5>
            <h5 class="mb-3">
              <i class="far fa-check-circle text-primary me-3"></i>Certification
              KHOSER
            </h5>
            <a class="btn btn-primary py-3 px-5 mt-3" href="#">See more</a>
          </div>
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="img-border">
              <img class="img-fluid" src="img/certifi.jpg" alt="" />
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- About End -->

    <!-- Facts Start -->
    <div
      class="container-xxl bg-primary facts my-5 py-5 wow fadeInUp"
      data-wow-delay="0.1s"
    >
      <div class="container py-5">
        <div class="row g-4">
          <div
            class="col-md-6 col-lg-3 text-center wow fadeIn"
            data-wow-delay="0.1s"
          >
            <i class="fa fa-certificate fa-3x text-primary mb-3"></i>
            <h1 class="text-white mb-2" data-toggle="counter-up">12345</h1>
            <p class="text-white mb-0">Total Exports</p>
          </div>
          <div
            class="col-md-6 col-lg-3 text-center wow fadeIn"
            data-wow-delay="0.3s"
          >
            <i class="fa fa-users fa-3x text-primary mb-3"></i>
            <h1 class="text-white mb-2" data-toggle="counter-up">12345</h1>
            <p class="text-white mb-0">Total Clients</p>
          </div>
          <div
            class="col-md-6 col-lg-3 text-center wow fadeIn"
            data-wow-delay="0.5s"
          >
            <i class="fa fa-certificate fa-3x text-primary mb-3"></i>
            <h1 class="text-white mb-2" data-toggle="counter-up">12345</h1>
            <p class="text-white mb-0">Total Memberships</p>
          </div>
          <div
            class="col-md-6 col-lg-3 text-center wow fadeIn"
            data-wow-delay="0.7s"
          >
            <i class="fa fa-shield-alt fa-3x text-primary mb-3"></i>
            <h1 class="text-white mb-2" data-toggle="counter-up">12345</h1>
            <p class="text-white mb-0">Certifications</p>
          </div>
        </div>
      </div>
    </div>
    <!-- Facts End -->

    <!-- Service Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5 mb-5 wow fadeInUp" data-wow-delay="0.1s">
          <div class="col-lg-6">
            <p><span class="text-primary me-2">#</span>Contact List</p>
            <h1 class="display-5 mb-0">
              Customer service
              <span class="text-primary">24 Hrs</span> Available
            </h1>
          </div>
          <div class="col-lg-6">
            <div
              class="bg-primary h-100 d-flex align-items-center py-4 px-4 px-sm-5"
            >
              <i class="fa fa-3x fa-mobile-alt text-white"></i>
              <div class="ms-4">
                <p class="text-white mb-0">Call for more info</p>
                <h2 class="text-white mb-0">+591 71117777</h2>
              </div>
            </div>
          </div>
        </div>
        <div class="row gy-5 gx-4">
          <div
            class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp"
            data-wow-delay="0.1s"
          >
            <img class="img-fluid mb-3" src="img/icon/contt.png" alt="Icon" />
            <h5 class="mb-3">José Blacutt Mérida</h5>
            <span
              >ADMINISTRATIVE MANAGER Cellphone +591 71117777
              Email blacutthermanossrl@gmail.com</span
            >
          </div>
          <div
            class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp"
            data-wow-delay="0.3s"
          >
            <img class="img-fluid mb-3" src="img/icon/contt.png" alt="Icon" />
            <h5 class="mb-3">Juan Estrada Ribert</h5>
            <span
              >SUB-MANAGER Cellphone +591 74726203 Email jestradaribert@gmail.com</span
            >
          </div>
          <div
            class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp"
            data-wow-delay="0.5s"
          >
            <img class="img-fluid mb-3" src="img/icon/contt.png" alt="Icon" />
            <h5 class="mb-3">Dany Loayza Choque</h5>
            <span
              >ACCOUNTING MANAGER Cellphone +591 69382582 Email blacutthermanossrl@gmail.com</span
            >
          </div>
          <div
            class="col-lg-3 col-md-4 col-sm-6 wow fadeInUp"
            data-wow-delay="0.7s"
          >
            <img class="img-fluid mb-3" src="img/icon/contt.png" alt="Icon" />
            <h5 class="mb-3">Nicolás Mamani Tateishi</h5>
            <span
              >QUALITY DIRECTOR Cellphone +591 73999722 Email edward.nicolas@hotmail.com</span
            >
          </div>
          
        </div>
      </div>
    </div>
    <!-- Service End -->

    <!-- Animal Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <div
          class="row g-5 mb-5 align-items-end wow fadeInUp"
          data-wow-delay="0.1s"
        >
          <div class="col-lg-6">
            <p><span class="text-primary me-2">#</span>Our gallery</p>
            <h1 class="display-5 mb-0">
              Collection and <span class="text-primary">processing</span> process
            </h1>
          </div>
          <div class="col-lg-6 text-lg-end">
            <a class="btn btn-primary py-3 px-5" href="#"
              >Explore More</a
            >
          </div>
        </div>
        <div class="row g-4">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="row g-4">
              <div class="col-12">
                <a
                  class="animal-item"
                  href="img/almendra1.jpg"
                  data-lightbox="animal"
                >
                  <div class="position-relative">
                    <img class="img-fluid" src="img/almendra1.jpg" alt="" />
                    <div class="animal-text p-4">
                      <!-- <p class="text-white small text-uppercase mb-0">Animal</p>
                      <h5 class="text-white mb-0">Elephant</h5> -->
                    </div>
                  </div>
                </a>
              </div>
              <div class="col-12">
                <a
                  class="animal-item"
                  href="img/almendra2.jpg"
                  data-lightbox="animal"
                >
                  <div class="position-relative">
                    <img class="img-fluid" src="img/almendra2.jpg" alt="" />
                    <div class="animal-text p-4">
                      <!-- <p class="text-white small text-uppercase mb-0">Animal</p>
                      <h5 class="text-white mb-0">Elephant</h5> -->
                    </div>
                  </div>
                </a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="row g-4">
              <div class="col-12">
                <a
                  class="animal-item"
                  href="img/almendra3.jpg"
                  data-lightbox="animal"
                >
                  <div class="position-relative">
                    <img class="img-fluid" src="img/almendra3.jpg" alt="" />
                    <div class="animal-text p-4">
                      <!-- <p class="text-white small text-uppercase mb-0">Animal</p>
                      <h5 class="text-white mb-0">Elephant</h5> -->
                    </div>
                  </div>
                </a>
              </div>
              <div class="col-12">
                <a
                  class="animal-item"
                  href="img/almendra4.jpg"
                  data-lightbox="animal"
                >
                  <div class="position-relative">
                    <img class="img-fluid" src="img/almendra4.jpg" alt="" />
                    <div class="animal-text p-4">
                      <!-- <p class="text-white small text-uppercase mb-0">Animal</p>
                      <h5 class="text-white mb-0">Elephant</h5> -->
                    </div>
                  </div>
                </a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="row g-4">
              <div class="col-12">
                <a
                  class="animal-item"
                  href="img/almendra5.jpg"
                  data-lightbox="animal"
                >
                  <div class="position-relative">
                    <img class="img-fluid" src="img/almendra5.jpg" alt="" />
                    <div class="animal-text p-4">
                      <!-- <p class="text-white small text-uppercase mb-0">Animal</p>
                      <h5 class="text-white mb-0">Elephant</h5> -->
                    </div>
                  </div>
                </a>
              </div>
              <div class="col-12">
                <a
                  class="animal-item"
                  href="img/almendra6.jpg"
                  data-lightbox="animal"
                >
                  <div class="position-relative">
                    <img class="img-fluid" src="img/almendra6.jpg" alt="" />
                    <div class="animal-text p-4">
                      <!-- <p class="text-white small text-uppercase mb-0">Animal</p>
                      <h5 class="text-white mb-0">Elephant</h5> -->
                    </div>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Animal End -->

    <!-- Testimonial Start -->
    <div class="container-xxl py-5">
      <div class="container">
        <h1
          class="display-5 text-center mb-5 wow fadeInUp"
          data-wow-delay="0.1s"
        >
          Our Clients
        </h1>
          <div
              class="owl-carousel testimonial-carousel wow fadeInUp"
              data-wow-delay="0.1s">
              <div class="testimonial-item text-center">
                  <img
                      class="img-fluid rounded-circle border border-2 p-2 mx-auto mb-4"
                      src="img/alemaniat.png"
                      style="width: 100px; height: 100px" />
                  <div class="testimonial-text rounded text-center p-4">
                      <h5 class="mb-1">Customers in Germany</h5>
                      <span class="fst-italic">Country</span>
                  </div>
              </div>
              <div class="testimonial-item text-center">
                  <img
                      class="img-fluid rounded-circle border border-2 p-2 mx-auto mb-4"
                      src="img/australia.png"
                      style="width: 100px; height: 100px" />
                  <div class="testimonial-text rounded text-center p-4">
                      <h5 class="mb-1">Customers in Australia</h5>
                      <span class="fst-italic">Country</span>
                  </div>
              </div>
              <div class="testimonial-item text-center">
                  <img
                      class="img-fluid rounded-circle border border-2 p-2 mx-auto mb-4"
                      src="img/inglaterra.png"
                      style="width: 100px; height: 100px" />
                  <div class="testimonial-text rounded text-center p-4">
                      <h5 class="mb-1">Customers in England</h5>
                      <span class="fst-italic">Country</span>
                  </div>
              </div>
              <div class="testimonial-item text-center">
                  <img
                      class="img-fluid rounded-circle border border-2 p-2 mx-auto mb-4"
                      src="img/unitedtates.png"
                      style="width: 100px; height: 100px" />
                  <div class="testimonial-text rounded text-center p-4">
                      <h5 class="mb-1">Customers in United States</h5>
                      <span class="fst-italic">Country</span>
                  </div>
              </div>
              <div class="testimonial-item text-center">
                  <img
                      class="img-fluid rounded-circle border border-2 p-2 mx-auto mb-4"
                      src="img/netherlands.png"
                      style="width: 100px; height: 100px" />
                  <div class="testimonial-text rounded text-center p-4">
                      <h5 class="mb-1">Customers in Netherlands</h5>
                      <span class="fst-italic">Country</span>
                  </div>
              </div>
          </div>
      </div>
    </div>
    <!-- Testimonial End -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
