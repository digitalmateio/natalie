<?php

/* ================== Homepage ================== */
//Route::get('/', 'HomeController@index');
//Route::get('/home', 'HomeController@index');
Route::auth();

/* ================== Access Uploaded Files ================== */
Route::get('files/{hash}/{name}', 'LA\UploadsController@get_file');

/*
|--------------------------------------------------------------------------
| Admin Application Routes
|--------------------------------------------------------------------------
*/

$as = "";
if(\Dwij\Laraadmin\Helpers\LAHelper::laravel_ver() >= 5.3) {
	$as = config('laraadmin.adminRoute').'.';
	
	// Routes for Laravel 5.3
	Route::get('/logout', 'Auth\LoginController@logout');
}

Route::group(['as' => $as, 'middleware' => ['auth', 'permission:ADMIN_PANEL']], function () {
	
	/* ================== Dashboard ================== */
	
	Route::get(config('laraadmin.adminRoute'), 'LA\DashboardController@index');
	Route::get(config('laraadmin.adminRoute'). '/dashboard', 'LA\DashboardController@index');
	
	/* ================== Users ================== */
	Route::resource(config('laraadmin.adminRoute') . '/users', 'LA\UsersController');
	Route::get(config('laraadmin.adminRoute') . '/user_dt_ajax', 'LA\UsersController@dtajax');
	
	/* ================== Uploads ================== */
	Route::resource(config('laraadmin.adminRoute') . '/uploads', 'LA\UploadsController');
	Route::post(config('laraadmin.adminRoute') . '/upload_files', 'LA\UploadsController@upload_files');
	Route::get(config('laraadmin.adminRoute') . '/uploaded_files', 'LA\UploadsController@uploaded_files');
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_caption', 'LA\UploadsController@update_caption');
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_filename', 'LA\UploadsController@update_filename');
	Route::post(config('laraadmin.adminRoute') . '/uploads_update_public', 'LA\UploadsController@update_public');
	Route::post(config('laraadmin.adminRoute') . '/uploads_delete_file', 'LA\UploadsController@delete_file');
	
	/* ================== Roles ================== */
	Route::resource(config('laraadmin.adminRoute') . '/roles', 'LA\RolesController');
	Route::get(config('laraadmin.adminRoute') . '/role_dt_ajax', 'LA\RolesController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/save_module_role_permissions/{id}', 'LA\RolesController@save_module_role_permissions');
	
	/* ================== Permissions ================== */
	Route::resource(config('laraadmin.adminRoute') . '/permissions', 'LA\PermissionsController');
	Route::get(config('laraadmin.adminRoute') . '/permission_dt_ajax', 'LA\PermissionsController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/save_permissions/{id}', 'LA\PermissionsController@save_permissions');
	
	/* ================== Departments ================== */
	Route::resource(config('laraadmin.adminRoute') . '/departments', 'LA\DepartmentsController');
	Route::get(config('laraadmin.adminRoute') . '/department_dt_ajax', 'LA\DepartmentsController@dtajax');
	
	/* ================== Employees ================== */
	Route::resource(config('laraadmin.adminRoute') . '/employees', 'LA\EmployeesController');
	Route::get(config('laraadmin.adminRoute') . '/employee_dt_ajax', 'LA\EmployeesController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/change_password/{id}', 'LA\EmployeesController@change_password');
	
	/* ================== Backups ================== */
	Route::resource(config('laraadmin.adminRoute') . '/backups', 'LA\BackupsController');
	Route::get(config('laraadmin.adminRoute') . '/backup_dt_ajax', 'LA\BackupsController@dtajax');
	Route::post(config('laraadmin.adminRoute') . '/create_backup_ajax', 'LA\BackupsController@create_backup_ajax');
	Route::get(config('laraadmin.adminRoute') . '/downloadBackup/{id}', 'LA\BackupsController@downloadBackup');

	/* ================== Site_categories ================== */
	Route::resource(config('laraadmin.adminRoute') . '/site_categories', 'LA\Site_categoriesController');
	Route::get(config('laraadmin.adminRoute') . '/site_category_dt_ajax', 'LA\Site_categoriesController@dtajax');

	/* ================== Site_pages ================== */
	Route::resource(config('laraadmin.adminRoute') . '/site_pages', 'LA\Site_pagesController');
	Route::get(config('laraadmin.adminRoute') . '/site_page_dt_ajax', 'LA\Site_pagesController@dtajax');

	/* ================== Site_pages ================== */
	Route::resource(config('laraadmin.adminRoute') . '/site_pages', 'LA\Site_pagesController');
	Route::get(config('laraadmin.adminRoute') . '/site_page_dt_ajax', 'LA\Site_pagesController@dtajax');





	/* ================== Page_generators ================== */
	Route::resource(config('laraadmin.adminRoute') . '/page_generators', 'LA\Page_generatorsController');
	Route::get(config('laraadmin.adminRoute') . '/page_generator_dt_ajax', 'LA\Page_generatorsController@dtajax');


	/* ================== AcademyCourses ================== */
	Route::resource(config('laraadmin.adminRoute') . '/academycourses', 'LA\AcademyCoursesController');
	Route::get(config('laraadmin.adminRoute') . '/academycourse_dt_ajax', 'LA\AcademyCoursesController@dtajax');

	/* ================== AcademyTeachers ================== */
	Route::resource(config('laraadmin.adminRoute') . '/academyteachers', 'LA\AcademyTeachersController');
	Route::get(config('laraadmin.adminRoute') . '/academyteacher_dt_ajax', 'LA\AcademyTeachersController@dtajax');

	/* ================== AcademyProgramms ================== */
	Route::resource(config('laraadmin.adminRoute') . '/academyprogramms', 'LA\AcademyProgrammsController');
	Route::get(config('laraadmin.adminRoute') . '/academyprogramm_dt_ajax', 'LA\AcademyProgrammsController@dtajax');



	/* ================== ServiceCategories ================== */
	Route::resource(config('laraadmin.adminRoute') . '/servicecategories', 'LA\ServiceCategoriesController');
	Route::get(config('laraadmin.adminRoute') . '/servicecategory_dt_ajax', 'LA\ServiceCategoriesController@dtajax');

	/* ================== ServiceSubCategories ================== */
	Route::resource(config('laraadmin.adminRoute') . '/servicesubcategories', 'LA\ServiceSubCategoriesController');
	Route::get(config('laraadmin.adminRoute') . '/servicesubcategory_dt_ajax', 'LA\ServiceSubCategoriesController@dtajax');

	/* ================== Services ================== */
	Route::resource(config('laraadmin.adminRoute') . '/services', 'LA\ServicesController');
	Route::get(config('laraadmin.adminRoute') . '/service_dt_ajax', 'LA\ServicesController@dtajax');

	/* ================== Partners ================== */
	Route::resource(config('laraadmin.adminRoute') . '/partners', 'LA\PartnersController');
	Route::get(config('laraadmin.adminRoute') . '/partner_dt_ajax', 'LA\PartnersController@dtajax');

	/* ================== Sliders ================== */
	Route::resource(config('laraadmin.adminRoute') . '/sliders', 'LA\SlidersController');
	Route::get(config('laraadmin.adminRoute') . '/slider_dt_ajax', 'LA\SlidersController@dtajax');

	/* ================== News ================== */
	Route::resource(config('laraadmin.adminRoute') . '/news', 'LA\NewsController');
	Route::get(config('laraadmin.adminRoute') . '/news_dt_ajax', 'LA\NewsController@dtajax');

	/* ================== SpaConceptPartners ================== */
	Route::resource(config('laraadmin.adminRoute') . '/spaconceptpartners', 'LA\SpaConceptPartnersController');
	Route::get(config('laraadmin.adminRoute') . '/spaconceptpartner_dt_ajax', 'LA\SpaConceptPartnersController@dtajax');

	/* ================== SpaConcepTestimonials ================== */
	Route::resource(config('laraadmin.adminRoute') . '/spaconceptestimonials', 'LA\SpaConcepTestimonialsController');
	Route::get(config('laraadmin.adminRoute') . '/spaconceptestimonial_dt_ajax', 'LA\SpaConcepTestimonialsController@dtajax');

	/* ================== SpaConceptGalleries ================== */
	Route::resource(config('laraadmin.adminRoute') . '/spaconceptgalleries', 'LA\SpaConceptGalleriesController');
	Route::get(config('laraadmin.adminRoute') . '/spaconceptgallery_dt_ajax', 'LA\SpaConceptGalleriesController@dtajax');


	/* ================== Contacts ================== */
	Route::resource(config('laraadmin.adminRoute') . '/contacts', 'LA\ContactsController');
	Route::get(config('laraadmin.adminRoute') . '/contact_dt_ajax', 'LA\ContactsController@dtajax');

	/* ================== Adresses ================== */
	Route::resource(config('laraadmin.adminRoute') . '/adresses', 'LA\AdressesController');
	Route::get(config('laraadmin.adminRoute') . '/adress_dt_ajax', 'LA\AdressesController@dtajax');

	/* ================== Abouts ================== */
	Route::resource(config('laraadmin.adminRoute') . '/abouts', 'LA\AboutsController');
	Route::get(config('laraadmin.adminRoute') . '/about_dt_ajax', 'LA\AboutsController@dtajax');


	/* ================== Videos ================== */
	Route::resource(config('laraadmin.adminRoute') . '/videos', 'LA\VideosController');
	Route::get(config('laraadmin.adminRoute') . '/video_dt_ajax', 'LA\VideosController@dtajax');

	/* ================== Stylists ================== */
	Route::resource(config('laraadmin.adminRoute') . '/stylists', 'LA\StylistsController');
	Route::get(config('laraadmin.adminRoute') . '/stylist_dt_ajax', 'LA\StylistsController@dtajax');

	/* ================== Shop_categories ================== */
	Route::resource(config('laraadmin.adminRoute') . '/shop_categories', 'LA\Shop_categoriesController');
	Route::get(config('laraadmin.adminRoute') . '/shop_category_dt_ajax', 'LA\Shop_categoriesController@dtajax');

	/* ================== Shop_subcategories ================== */
	Route::resource(config('laraadmin.adminRoute') . '/shop_subcategories', 'LA\Shop_subcategoriesController');
	Route::get(config('laraadmin.adminRoute') . '/shop_subcategory_dt_ajax', 'LA\Shop_subcategoriesController@dtajax');
});
