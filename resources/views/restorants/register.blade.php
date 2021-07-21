
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
<!--new registration page-->
<main>
    <!-- Hero 1 -->
    <section class="section-header register-section">
        <div class="row d-flex no-gutters w-100">
            <div class="col-12 col-md-6 py-5">
                <div class="form-section">
                    <h2>{{ __('Register your restaurant') }}</h2>
                    <div class="mt-5">
                        <form id="registerform" class="d-flex flex-column mb-5 mb-lg-0" method="post" action="{{ route('newrestaurant.store') }}" autocomplete="off">
                            @csrf
                            @if (session('status'))
                                <div class="alert alert-success alert-dismissible fade show" role="alert">
                                    {{ session('status') }}
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            @endif
                            <h5>{{ __('Business information') }}</h5>
                            <input
                                class="form-control {{ $errors->has('name') ? ' is-invalid' : '' }}"
                                type="text"
                                name="name"
                                id="name"
                                placeholder="{{ __('Business Name') }}"
                                value="{{ isset($_GET["name"])?$_GET['name']:""}}"
                                required autofocus
                            >
                            @if ($errors->has('name'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('name') }}</strong>
                            </span>
                            @endif
                            <h5>{{ __('Owner information') }}</h5>
                            <input
                                class="form-control {{ $errors->has('name_owner') ? ' is-invalid' : '' }}"
                                type="text"
                                name="name_owner"
                                id="name_owner"
                                placeholder="{{ __('Full Name') }}"
                                value="{{ isset($_GET["name"])?$_GET['name']:""}}"
                                required autofocus
                            >
                            @if ($errors->has('name_owner'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('name_owner') }}</strong>
                            </span>
                            @endif
                            <input
                                class="form-control {{ $errors->has('email_owner') ? ' is-invalid' : '' }}"
                                type="email"
                                name="email_owner"
                                id="email_owner"
                                placeholder="{{ __('Email') }}"
                                value="{{ isset($_GET["email"])?$_GET['email']:""}}"
                                required autofocus
                            >
                            @if ($errors->has('email_owner'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('email_owner') }}</strong>
                            </span>
                            @endif
                            <input
                                class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}"
                                type="text"
                                name="password"
                                id="password"
                                placeholder="{{ __('Password') }}"
                                value="{{ isset($_GET["password"])? $_GET['password']:""}}"
                                required autofocus
                            >
                            <input
                                class="form-control {{ $errors->has('password_confirm') ? ' is-invalid' : '' }}"
                                type="text"
                                name="confirm_password"
                                id="confirm_password"
                                placeholder="{{ __('Confirm Password') }}"
                                value="{{ isset($_GET["confirm_password"])? $_GET['confirm_password']:""}}"
                                required autofocus
                            >

                            {{-- <h5>Payment Method (Optional)</h5>
                            <input class="form-control" type="text"placeholder="Cardholder's Name" required>
                            <input class="form-control" type="text" placeholder="Card Number" required>
                            <div class="row">
                                <div class="col-md-6 col-12">
                                    <input class="form-control" type="text"placeholder="MM/YY" required>
                                </div>
                                <div class="col-md-6 col-12">
                                    <input class="form-control" type="text"placeholder="CVC" required>
                                </div>
                            </div> --}}
                            <div class="text-center my-5">
                                @if (strlen(config('settings.recaptcha_site_key'))>2)
                                    @if ($errors->has('g-recaptcha-response'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                                    </span>
                                    @endif
                                {!! htmlFormButton(__('Save'), ['id'=>'thesubmitbtn','class' => 'btn btn-success mt-4']) !!}
                                @else
                                <button type="submit" id="thesubmitbtn" class="btn btn-primary register-btn">{{__('Register')}}</button>
                                @endif
                             {{-- <button class="btn btn-primary register-btn" type="submit">Register</button> --}}
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
<!--new registration page-->
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
