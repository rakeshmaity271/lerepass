<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes  V1 /api
|--------------------------------------------------------------------------
|
*/

Route::get('/test', function () {
    dd('Hello World');
});
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => 'auth:api'], function () {
    //Driver - Private
    Route::get('/driverorders', 'DriverController@getOrders')->name('driver.orders');
    Route::get('/updateorderstatus/{order}/{status}', 'DriverController@updateOrderStatus')->name('driver.updateorderstatus');
    Route::get('/updateorderlocation/{order}/{lat}/{lng}', 'DriverController@orderTracking')->name('driver.updateorderlocation');
    Route::get('/rejectorder/{order}', 'DriverController@rejectOrder')->name('driver.rejectorder');
    Route::get('/acceptorder/{order}', 'DriverController@acceptOrder')->name('driver.acceptorder');
    Route::get('/driveronline', 'DriverController@goOnline')->name('driver.goonline');
    Route::get('/drveroffline', 'DriverController@goOffline')->name('driver.gooffline');
});

//Driver - Public
Route::post('/drivergettoken', 'DriverController@getToken')->name('driver.getToken');




/*
|--------------------------------------------------------------------------
| API Routes  V2 /api/v2/
|--------------------------------------------------------------------------
|
*/

//DRIVER
Route::prefix('v2/driver')->group(function () {
    /**
     * AUTH
     */
    //Auth /api/v2/driver/auth
    Route::prefix('auth')->name('driver.auth.')->group(function () {
        Route::post('gettoken', 'API\Driver\AuthController@getToken')->name('getToken'); 
        Route::post('register', 'API\Driver\AuthController@register')->name('register'); 
        Route::group(['middleware' => 'auth:api'], function () {
            Route::get('data', 'API\Driver\AuthController@getUseData')->name('getUseData'); 
            Route::get('driveronline', 'API\Driver\AuthController@goOnline')->name('goonline');
            Route::get('drveroffline', 'API\Driver\AuthController@goOffline')->name('gooffline');
        });   
    });

    /**
     * Settings - uses the same from client
     */
    //Settings /api/v2/driver/settings
    Route::prefix('settings')->name('driver.settings.')->group(function () {
        Route::get('/', 'API\Client\SettingsController@index')->name('indexapi');
    });

    //NEEDS AUTHENTICATION
    Route::group(['middleware' => 'auth:api'], function () {

        /**
         * ORDERS
         */

        //Orders /api/v2/client/orders
        Route::prefix('orders')->name('driver.orders.')->group(function () {
            Route::get('/', 'API\Driver\OrdersController@index');
            Route::get('/order/{order}', 'API\Driver\OrdersController@order');
            Route::get('earnings','API\Driver\OrdersController@earnings');
            Route::get('updateorderstatus/{order}/{status}', 'API\Driver\OrdersController@updateOrderStatus')->name('driver.updateorderstatus');
            Route::get('updateorderlocation/{order}/{lat}/{lng}', 'API\Driver\OrdersController@orderTracking')->name('driver.updateorderlocation');
            Route::get('rejectorder/{order}', 'API\Driver\OrdersController@rejectOrder')->name('driver.rejectorder');
            Route::get('acceptorder/{order}', 'API\Driver\OrdersController@acceptOrder')->name('driver.acceptorder');
        });
    });


});


//Vendor
Route::prefix('v2/vendor')->group(function () {
    /**
     * AUTH
     */
    //Auth /api/v2/vendor/auth
    Route::prefix('auth')->name('vendor.auth.')->group(function () {
        Route::post('gettoken', 'API\Vendor\AuthController@getToken')->name('getToken'); 
        Route::post('register', 'API\Vendor\AuthController@register')->name('register'); 
        Route::group(['middleware' => 'auth:api'], function () {
            Route::get('data', 'API\Vendor\AuthController@getUseData')->name('getUseData'); 
        });   
    });

    /**
     * Settings - uses the same from client
     */
    //Settings /api/v2/vendor/settings
    Route::prefix('settings')->name('vendor.settings.')->group(function () {
        Route::get('/', 'API\Client\SettingsController@index')->name('indexapivendor');
    });

    //NEEDS AUTHENTICATION
    Route::group(['middleware' => 'auth:api'], function () {

        /**
         * ORDERS
         */

        //Orders /api/v2/client/orders
        Route::prefix('orders')->name('vendor.orders.')->group(function () {
            Route::get('/', 'API\Vendor\OrdersController@index');
            Route::get('/order/{order}', 'API\Vendor\OrdersController@order');
            Route::get('earnings','API\Vendor\OrdersController@earnings');
            Route::get('updateorderstatus/{order}/{status}', 'API\Vendor\OrdersController@updateOrderStatus')->name('vendor.updateorderstatus');
            Route::get('updateorderlocation/{order}/{lat}/{lng}', 'API\Vendor\OrdersController@orderTracking')->name('vendor.updateorderlocation');
            Route::get('rejectorder/{order}', 'API\Vendor\OrdersController@rejectOrder')->name('vendor.rejectorder');
            Route::get('acceptorder/{order}', 'API\Vendor\OrdersController@acceptOrder')->name('vendor.acceptorder');
        });
    });


});


//CLIENT
Route::prefix('v2/client')->group(function () {
    
    /**
     * AUTH
     */
    //Auth /api/v2/client/auth
    Route::prefix('auth')->name('auth.')->group(function () {
            Route::post('gettoken', 'API\Client\AuthController@getToken')->name('getToken'); 
            Route::post('register', 'API\Client\AuthController@register')->name('register'); 
            Route::post('loginfb', 'API\Client\AuthController@loginFacebook'); 
            Route::post('logingoogle', 'API\Client\AuthController@loginGoogle'); 
            Route::group(['middleware' => 'auth:api'], function () {
                Route::get('data', 'API\Client\AuthController@getUseData')->name('getUseData'); 
            });   
    });

     /**
     * Settings
     */
    //Settings /api/v2/client/settings
    Route::prefix('settings')->name('settings.')->group(function () {
        Route::get('/', 'API\Client\SettingsController@index')->name('indexapiclient');
    });
   


    /**
     * VENDOR
     */

    //Vendor /api/v2/client/vendor
    Route::prefix('vendor')->name('vendor.')->group(function () {
        Route::get('cities', 'API\Client\VendorController@getCities')->name('cities');
        Route::get('list/{city_id}', 'API\Client\VendorController@getVendors')->name('list');
        Route::get('{id}/items', 'API\Client\VendorController@getVendorItems')->name('items');
        Route::get('{id}/hours', 'API\Client\VendorController@getVendorHours')->name('hours');
        Route::get('/deliveryfee/{res}/{adr}', 'API\Client\VendorController@getDeliveryFee')->name('delivery.fee');
    });


   

    //NEEDS AUTHENTICATION
    Route::group(['middleware' => 'auth:api'], function () {

        /**
         * ORDERS
         */

        //Orders /api/v2/client/orders
        Route::prefix('orders')->name('orders.')->group(function () {
            Route::get('/', 'API\Client\OrdersController@index');
            Route::post('/', 'API\Client\OrdersController@store')->name('storeapi');
        });


        /**
         * Addresses
         */

        //Addresses /api/v2/client/addresses
        Route::prefix('addresses')->name('orders.')->group( function () {
            Route::get('/', 'API\Client\AddressController@getMyAddresses');
            Route::get('/fees/{restaurant_id}', 'API\Client\AddressController@getMyAddressesWithFees');
            Route::post('/', 'API\Client\AddressController@makeAddress')->name('make.address');
            Route::post('/delete', 'API\Client\AddressController@deleteAddress')->name('delete.address');
        });

        /**
         * Notifications
         */

        //Notifications /api/v2/client/notifications
        Route::prefix('notifications')->name('orders.')->group( function () {
            Route::get('/', 'API\Client\NotificationsController@index');
        });


    });
});