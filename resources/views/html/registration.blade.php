
@extends('layouts.front', ['title' => __('User Profile')])
@if (strlen(config('settings.recaptcha_site_key'))>2)
@section('head')
{!! htmlScriptTagJsApi([]) !!}
@endsection
@endif

@section('content')
@include('users.partials.header', [
'title' => "",
])


<main>
    <!-- Hero 1 -->
    <section class="section-header register-section">
        <div class="row d-flex no-gutters w-100">
            <div class="col-12 col-md-6 py-5">
                <div class="form-section">
                    <h2>Register your restaurant</h2>
                    <div class="mt-5">
                        <form action="https://www.lerepass.com/public/new/restaurant/register" class="d-flex flex-column mb-5 mb-lg-0">
                            <h5>Business information</h5>
                            <input class="form-control" type="text" name="name" placeholder="Business Name" required>
                            <h5>Owner information</h5>
                            <input class="form-control" type="text"  placeholder="Full Name" required>
                            <input class="form-control" type="email" placeholder="Email" required>
                            <input class="form-control" type="text"  placeholder="Password" required>
                            <input class="form-control" type="text" placeholder="Confirm Password" required>

                            <h5>Payment Method (Optional)</h5>
                            <input class="form-control" type="text"placeholder="Cardholder's Name" required>
                            <input class="form-control" type="text" placeholder="Card Number" required>
                            <div class="row">
                                <div class="col-md-6 col-12">
                                    <input class="form-control" type="text"placeholder="MM/YY" required>
                                </div>
                                <div class="col-md-6 col-12">
                                    <input class="form-control" type="text"placeholder="CVC" required>
                                </div>
                            </div>
                            <div class="text-center my-5">
                             <button class="btn btn-primary register-btn" type="submit">Register</button>
                            </div>
                            {{-- <div class="text-center social-section">
                                <ul>
                                    <li><button class="icon-btn" name="">google<!-- <i class="fab fa-google"></i> --></button></li>
                                    <li><button class="icon-btn" name="">apple<!-- <i class="fas fa-apple-alt"></i> --></button></li>
                                    <li><button class="icon-btn" name="">facebook<!-- <i class="fab fa-facebook-f"></i> --></button></li>
                                    <li><button class="icon-btn" name="">instagram<!-- <i class="fab fa-instagram"></i> --></button></li>
                                </ul>
                            </div> --}}

                        </form>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 img-wrp d-flex align-items-center">
                <div class="img-section">
                     <h2>a few lines of the text here selling the product</h2>
                    <img src="https://www.lerepass.com/public/impactfront/img/flayer.png" alt="">
                </div>
            </div>
        </div>
    </section>
</main>
<br />
</div>
@endsection

@section('js')
@if (isset($_GET['name'])&&$errors->isEmpty())
<script>
    "use strict";
    document.getElementById("thesubmitbtn").click();
</script>
@endif
@endsection
