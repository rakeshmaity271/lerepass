<div class="card card-profile shadow ">
    <div class="px-4">
      <div class="mt-5">
        <h3>{{ __('Checkout') }}<span class="font-weight-light"></span></h3>
      </div>
      <div  class="border-top">
        <!-- Price overview -->
        <div id="totalPrices" v-cloak>
            <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <span v-if="totalPrice==0">{{ __('Cart is empty') }}!</span>

                            <span v-if="totalPrice"><strong>{{ __('Subtotal') }}:</strong></span>
                            <span v-if="totalPrice" class="ammount"><strong>@{{ totalPriceFormat }}</strong></span>
                            @if(config('app.isft'))
                                <span v-if="totalPrice&&delivery"><br /><strong>{{ __('Delivery') }}:</strong></span>
                                <span v-if="totalPrice&&delivery" class="ammount"><strong>@{{ deliveryPriceFormated }}</strong></span><br />
                            @endif
                            <br />
                            <span v-if="totalPrice"><strong>{{ __('TOTAL') }}:</strong></span>
                            <span v-if="totalPrice" class="ammount"><strong>@{{ withDeliveryFormat   }}</strong></span>
                            <input v-if="totalPrice" type="hidden" id="tootalPricewithDeliveryRaw" :value="withDelivery" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End price overview -->

        <!-- Payment  Methods -->
        <div class="cards">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <!-- Errors on Stripe -->
                        @if (session('error'))
                            <div role="alert" class="alert alert-danger">{{ session('error') }}</div>
                        @endif

                        @if(!config('settings.is_whatsapp_ordering_mode'))
                        <!-- COD -->
                        @if (!config('settings.hide_cod'))
                            <div class="custom-control custom-radio mb-3">
                                <input name="paymentType" class="custom-control-input" id="cashOnDelivery" type="radio" value="cod" {{ config('settings.default_payment')=="cod"?"checked":""}}>
                                <label class="custom-control-label" for="cashOnDelivery"><span class="delTime">{{ config('app.isqrsaas')?__('Cash / Card Terminal'): __('Cash on delivery') }}</span> <span class="picTime">{{ __('Cash on pickup') }}</span></label>
                            </div>
                        @endif

                        @if($enablePayments)

                            <!-- STIPE CART -->
                            @if (config('settings.stripe_key')&&config('settings.enable_stripe'))
                                <div class="custom-control custom-radio mb-3">
                                    <input name="paymentType" class="custom-control-input" id="paymentStripe" type="radio" value="stripe" {{ config('settings.default_payment')=="stripe"?"checked":""}}>
                                    <label class="custom-control-label" for="paymentStripe">{{ __('Pay with card') }}</label>
                                </div>
                            @endif

                            <!-- Extra Payments ( Via module ) -->
                            @foreach ($extraPayments as $extraPayment)
                                @include($extraPayment.'::selector')
                            @endforeach


                        @endif

                        @endif
                    </div>
                </div>
            </div>
        </div>

        <!-- END Payment -->

        <!-- Payment Actions -->
        @if(!config('settings.social_mode'))

            <!-- COD -->
            @include('cart.payments.cod')

            <!-- Extra Payments ( Via module ) -->
            @foreach ($extraPayments as $extraPayment)
                @include($extraPayment.'::button')
            @endforeach

            </form>

            <!-- Stripe -->
            @include('cart.payments.stripe')

            

        @elseif(config('settings.is_whatsapp_ordering_mode'))
            @include('cart.payments.whatsapp')
        @elseif(config('settings.is_facebook_ordering_mode'))
            @include('cart.payments.facebook')
        @endif
        <!-- END Payment Actions -->

        <br/><br/>
        <div class="text-center">
            <div class="custom-control custom-checkbox mb-3">
                <input class="custom-control-input" id="privacypolicy" type="checkbox">
                <!--<label class="custom-control-label" for="privacypolicy">{{ __('I agree to the Terms and Conditions and Privacy Policy') }}</label>-->
                <label class="custom-control-label" for="privacypolicy">
                    &nbsp;&nbsp;{{__('I agree to the')}}
                    <a href="{{config('settings.link_to_ts')}}" target="_blank" style="text-decoration: underline;">{{__('Terms of Service')}}</a> {{__('and')}}
                    <a href="{{config('settings.link_to_pr')}}" target="_blank" style="text-decoration: underline;">{{__('Privacy Policy')}}</a>.
                </label>
            </div>
        </div>

      </div>
      <br />
      <br />
    </div>
  </div>

  @if(config('settings.is_demo') && config('settings.enable_stripe'))
    @include('cart.democards')
  @endif
