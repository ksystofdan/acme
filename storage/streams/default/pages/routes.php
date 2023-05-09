<?php

Route::any('/', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::3.ar',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 3,
]);

Route::any('/', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::3.en',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 3,
]);

Route::any('/', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::3.de',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 3,
]);

Route::any('/', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::3.es',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 3,
]);

Route::any('/privacy-policy', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::4.ar',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 4,
]);

Route::any('/privacy-policy', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::4.en',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 4,
]);

Route::any('/privacy-policy', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::4.de',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 4,
]);

Route::any('/privacy-policy', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::4.es',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 4,
]);

Route::any('/about-us', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::6.ar',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 6,
]);

Route::any('/about-us', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::6.en',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 6,
]);

Route::any('/about-us', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::6.de',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 6,
]);

Route::any('/about-us', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::6.es',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 6,
]);

Route::any('/knowledge', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::7.ar',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 7,
]);

Route::any('/knowledge', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::7.en',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 7,
]);

Route::any('/knowledge', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::7.de',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 7,
]);

Route::any('/knowledge', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::7.es',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 7,
]);

Route::any('/news', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::8.ar',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 8,
]);

Route::any('/news', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::8.en',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 8,
]);

Route::any('/news', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::8.de',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 8,
]);

Route::any('/news', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::8.es',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 8,
]);

Route::any('/contact', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::9.ar',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 9,
]);

Route::any('/contact', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::9.en',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 9,
]);

Route::any('/contact', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::9.de',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 9,
]);

Route::any('/contact', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::9.es',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 9,
]);

Route::any('/careers', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::10.ar',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 10,
]);

Route::any('/careers', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::10.en',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 10,
]);

Route::any('/careers', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::10.de',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 10,
]);

Route::any('/careers', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::10.es',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 10,
]);

Route::any('/services', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::11.ar',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 11,
]);

Route::any('/services', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::11.en',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 11,
]);

Route::any('/services', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::11.de',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 11,
]);

Route::any('/services', [
    'uses'                       => 'Anomaly\PagesModule\Http\Controller\PagesController@view',
    'as'                         => 'pages::11.es',
    'streams::addon'             => 'anomaly.module.pages',
    'anomaly.module.pages::page' => 11,
]);