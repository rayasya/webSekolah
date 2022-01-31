<!doctype html>
<html lang="en">

  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{asset('frontend')}}/css/bootstrap.min.css">

    <!-- my link -->
    <link rel="stylesheet" href="{{asset('frontend')}}/css/style.css">

    <!-- cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
      integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
      crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

    <title>SMKN 1 BONDOWOSO</title>
  </head>

  <body>
    <nav class="navbar navbar-expand-lg fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">
          <img src="{{asset('frontend')}}/img/logo-smakensa.svg" width="90" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="/#">Beranda</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/#about">Tentang</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/#website">Website Lain</a>
            </li>
            <li class="nav-item">
              <div class="btn-group nav-link">
                <button type="button" class="btn dropdown" data-toggle="dropdown" aria-haspopup="true"
                  aria-expanded="false">
                  Keahlian <i class="fas fa-angle-down"></i>
                </button>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="/#jurusan">Bisnis management<a>
                      <a class="dropdown-item" href="/#jurusan">Teknologi Informatika</a>
                      <a class="dropdown-item" href="/#jurusan">Seni</a>
                </div>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/#contact">Kontak</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/terkini">Berita</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/tanggapan">Tanggapan</a>
            </li>
          </ul>
          <ul class="navbar-nav ml-auto">

            <li class="nav-item">
              <a class="nav-link" href="/#"> <i class="fab fa-instagram"></i> </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/#"> <i class="fab fa-facebook-f"></i> </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="testi mt-5">
      <div class="container">
        <div class="swiper">
          <div class="text-center">
            <h2 class="title mt-5">Tanggapan Tentang Sekolah</h2>
            <hr class="garis">
          </div>
          <div class="swiper-container mt-5">
            <div class="swiper-wrapper">
              @foreach ($komentar as $row)
              @if ($row->status == 2)
              <div class="swiper-slide">
                <div class="testimonialBox">
                  <div class="detail">
                    <img src="{{asset('alumni').'/'.$row->foto}}">
                  </div>
                  <div class="star mb-2">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                  </div>
                  <div class="content">
                    <p>"{{$row->pesan}}"</p>
                  </div>
                  <div class="text-center">
                    <h3>{{$row->nama}}</h3>
                    <h5>{{$row->profesi}}</h5>
                  </div>
                </div>
              </div>
              @endif
              @endforeach
            </div>
            <div class="swiper-pagination"></div>
          </div>
        </div>
      </div>
    </div>

    <div class="tanggapan" id="tanggapan">
      <div class="jumbotron d-flex align-items-center">
        <div class="container">
          <div class="text-center">
            <h2 class="title">Tanggapan</h2>
            <p class="text-title">Masukan Motivasi Dan Komentar</p>
            <hr class="garis">
          </div>
          <div class="row pt-5 d-flex align-items-center">
            <div class="col-sm-6">
              <div class="text-center">
                <img src="{{asset('frontend')}}/img/image.png" class="img-fluid" data-aos="fade-up">
              </div>
            </div>
            <div class="col-sm-6 text-center">
              <form class="forms-sample" action="/komentar/simpan" method="post" enctype="multipart/form-data">
                @csrf
                <div class="form-group">

                  <input type="text" value="{{old('nama')}}" class="form-control" id="exampleInputName1"
                    placeholder="Nama" name="nama" data-aos="fade-down" data-aos-duration="1300">

                  @error('nama')
                  <p class="text-warning">{{$message}}</p>
                  @enderror

                </div>
                <div class="form-group">

                  <input type="text" value="{{old('profesi')}}" class="form-control" id="exampleInputName1"
                    placeholder="Profesi" name="profesi">

                  @error('profesi')
                  <p class="text-warning">{{$message}}</p>
                  @enderror

                </div>
                <div class="form-group">
                  <textarea class="form-control" value="{{old('pesan')}}" id="exampleTextarea1" rows="3"
                    placeholder="pesan" name="pesan"></textarea>
                  @error('pesan')
                  <p class="text-warning">{{$message}}</p>
                  @enderror
                </div>
                <div class="form-group">
                  <div class="input-group ">
                    <div class="input-group mb-3">
                      <div class="custom-file">
                        <input type="file" name="foto" class="custom-file-input" id="inputGroupFile01"
                          aria-describedby="inputGroupFileAddon01">
                        <label class="custom-file-label" for="inputGroupFile01">Foto</label>
                      </div>
                    </div>
                    @error('foto')
                    <p class="text-warning">{{$message}}</p>
                    @enderror
                  </div>
                </div>
                <button data-aos="fade-down" data-aos-duration="500" type="submit" class="btn submit" style="background-color: #c5196b; color:white;">Kirim Pesan <i
                    class="fas fa-paper-plane"></i> </button>
            </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    </div>

    <div class="footer">
      <div class="jumbotron d-flex align-items-center">
        <div class="container">
          <div class="row">
            <div class="col-sm-3">
              <h4>Alamat</h4>
              <p>Jl. HOS Cokroaminoto No. 110 Bondowoso, Jawa Timur Indonesia</p>

              <h4>Hub</h4>
              <p>Phone : 0332-4312-01</p>
              <p>Fax : 0332-4312-01</p>
              <p>Email : smkn1_bws@yahoo.com</p>
            </div>
            <div class="col-sm-3">
              <h4>Menu</h4>
              <p>Beranda</p>
              <p>Artikel</p>
              <p>Website kami</p>
              <p>Tentang</p>
              <p>Bidang keahlian</p>
              <p>Hubungi</p>
            </div>

            <div class="col-sm-3">
              <h4>Link Pintas</h4>
              <p>KEMENDIKBUD</p>
              <p>DITPSMK</p>

              <h4>SosialMedia</h4>
              <p>Instagram</p>
              <p>Facebook</p>
            </div>

            <div class="col-sm-12 col-lg-3 logo-logo">
              <div class="row text-center">
                <div class="col-6 col-sm-3 col-lg-6">
                  <img src="{{asset('frontend')}}/img/smakensa-1.png" class="img-fluid">
                </div>
                <div class="col-6 col-sm-3 col-lg-6">
                  <img src="{{asset('frontend')}}/img/kemdikbud-1.png" class="img-fluid">
                </div>


                <div class="col-6 col-sm-3 col-lg-6">
                  <img src="{{asset('frontend')}}/img/jatim-1.png" class="img-fluid">
                </div>
                <div class="col-6 col-sm-3 col-lg-6">
                  <img src="{{asset('frontend')}}/img/bondowoso-1.png" class="img-fluid">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="copyright">
      <div class="container">
        <p>Copyright © 2021. IT SMAKENSA 2021 - Gen12 2.0</p>
      </div>
    </div>

    <script src="{{asset('frontend')}}/js/slider.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="{{asset('frontend')}}/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('frontend')}}/js/swiper-bundle.min.js"></script>
    <script>
      window.addEventListener("scroll", function () {
      var header = document.querySelector(".navbar");
      header.classList.toggle("sticky", window.scrollY > 0);
    })
    </script>
    <script>
      function myFunction(x) {
      if (x.matches) {
        var swiper = new Swiper('.brand', {
          slidesPerView: 3,
          spaceBetween: 30,
          freeMode: true,
          loop:true,
          pagination: {
            el: '.swiper-pagination',
            clickable: true,
          },
        });
      } else {
        var swiper = new Swiper('.brand', {
          slidesPerView: 5,
          spaceBetween: 30,
          freeMode: true,
          loop:true,
          pagination: {
            el: '.swiper-pagination',
            clickable: true,
          },
        });
      }
    }

    var x = window.matchMedia("(max-width: 700px)");
    myFunction(x);
    x.addListener(myFunction);
    </script>
    <script>
      var swiper = new Swiper('.swiper-container', {
      effect: 'coverflow',
      grabCursor: true,
      centeredSlides: true,
      slidesPerView: 'auto',
      coverflowEffect: {
        rotate: 10,
        stretch: 0,
        depth: 0,
        modifier: 3,
        slideShadows: false,
      },

        // jika ingin membuat looping card
        // loop:true

        //   script di bawah jika ingin tidak loop card
        pagination: {
          el: '.swiper-pagination',
        },
      });
    </script>
  </body>

</html>