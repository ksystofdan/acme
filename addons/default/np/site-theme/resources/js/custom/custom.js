$('.ind-select-input input').on('change', function() {
	var dataItem = $(this).attr('data-item');
	var dataLink = $(this).attr('data-link');
	var dataImage = $(this).attr('data-image');
	var dataImageFlat = $(this).attr('data-image-flat');

	$('.home-section-industries-desktop-middle-item').fadeOut(300);
	setTimeout(function() {
		$('#industry-item .home-section-industries-desktop-middle-img-hold-static').attr('src', dataImageFlat);
		$('#industry-item .home-section-industries-desktop-middle-img-hold-hover').attr('src', dataImage);
		$('#industry-item .home-section-industries-desktop-middle-title').html(dataItem);
		$('#industry-item .btn-border-dashed-toblack').attr('href', dataLink);
		$('#industry-item ').fadeIn();
	}, 300)
});

$('.ind-m-select-input input').on('change', function() {
	var dataItem = $(this).attr('data-item');
	var dataLink = $(this).attr('data-link');
	var dataImage = $(this).attr('data-image');

	$('.home-section-industries-desktop-middle-item').fadeOut(300);
	setTimeout(function() {
		$('#industry-m-item .home-section-industries-mobile-middle-img').attr('src', dataImage);
		$('#industry-m-item .home-section-industries-desktop-middle-title').html(dataItem);
		$('#industry-m-item .btn-border-dashed-toblack').attr('href', dataLink);
		$('#industry-m-item ').fadeIn();
	}, 300)
});


$('.solutions-inner-solutions-step-1 input').on('click', function() {
	var ajax_url = $('.solutions-inner-solutions-step-1').attr('data-ajax');
	var need = $(this).val();
	var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
	$.ajax({
		url: ajax_url,
		method:'GET',
		data: { _token: CSRF_TOKEN, needs: need },
		beforeSend: function() {
			// $('.solutions-inner-solutions-step-2 .solutions-inner-solutions-step-select').fadeOut(300).delay(300);
			$('.solutions-inner-solutions-step-2 .solutions-inner-solutions-step-select').remove();
		  },
		success: function(response) {
			if(response.components.length){
				$.each(response.components, function( index, value ) {
					$('.step-2-list').append('<div class="solutions-inner-solutions-step-select"><input id="step-2-'+index+'" type="radio" name="components" value="'+value.id+'"><label for="step-2-'+index+'">'+value.title+'</label></div>').slideDown();
				});
			}
			get_products_func();
			refresh_sulotion_scripts();
		},
		complete: function () {
			
		}
	});
});
function get_products_func(){
	$('.step-2-list input').on('click', function() {
		var comp = $(this).val();
		var ajax_url = $('.solutions-inner-solutions-step-2').attr('data-ajax');
		var view_btn_text = $('.solutions-inner-solutions-step-2').attr('data-view-btn');
		var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
		$.ajax({
			url: ajax_url,
			method:'GET',
			data: { _token: CSRF_TOKEN, components: comp },
			beforeSend: function() {
				$('.solutions-inner-solutions-step-rez .solutions-inner-solutions-step-prod a').remove();
			  },
			success: function(response) {
				if(response.products.length){
					$.each(response.products, function( index, value ) {
						$('.step-rez-list').append('<a href="/product/'+value.slug+'-'+value.id+'"><div class="solutions-inner-solutions-step-prod-image-hold"><div class="solutions-inner-solutions-step-prod-image img-object-fit"><img src="'+value.image+'"> </div></div> <div class="solutions-inner-solutions-step-prod-textbox"><div class="products-filter-content-list-brand">'+value.brand+' </div><div class="products-filter-content-list-title-hold"><div class="products-filter-content-list-title">'+value.title+'</div><span>'+view_btn_text+'</span> </div></div></a>').slideDown();
					});
					$('.solutions-inner-solutions-step-text').html(response.comp_desc);
					$('.comp-learn-more').attr('href' ,response.comp_slug);
				}
			}
		});
	});
}

function refresh_sulotion_scripts(){
	$('.solutions-inner-solutions-steps input[type="radio"]').change(function(){ 
		  if ( $('.solutions-inner-solutions-step-1 input[type="radio"]:checked').length ) {
				$('.solutions-inner-solutions-step-2 > span').addClass('is-active');
				$('.solutions-inner-solutions-step-2-hold').slideDown(300);
		  } else {
				$('.solutions-inner-solutions-step-2 > span').removeClass('is-active');
				$('.solutions-inner-solutions-step-2-hold').slideUp(300);
				$('.solutions-inner-solutions-step-2 input[type="radio"]').prop('checked', false);
		  }
	
		  if ( $('.solutions-inner-solutions-step-2 input[type="radio"]:checked').length ) {
				$('.solutions-inner-solutions-step-rez > span').addClass('is-active');
				$('.solutions-inner-solutions-step-rez-hold').slideDown(300);
		  } else {
				$('.solutions-inner-solutions-step-rez > span').removeClass('is-active');
				$('.solutions-inner-solutions-step-rez-hold').slideUp(300);
		  }
	 });  
}

$('a.download_all_pdf').on('click', function(e) {
	  e.preventDefault();
	$( "a.download_pdf" ).each(function( index ) {
		window.open( $( this ).attr('href') );
	});	
});

$('#product-filter input').on('change', function() {
	component_products_scripts();
});
$('#product-filter .pfcrfcb-clear-js').on('click', function() {
	setTimeout(component_products_scripts, 200);
});
$('#product-filter .filter-dropdown-trigger-clear').on('click', function() {
	setTimeout(component_products_scripts, 200);
});
$('#product-filter .pfcrfcb-count-js').on('click', function() {
	component_products_scripts();
});

function component_products_scripts(){
	var cats = [];
	var brands = [];
	$("#product-filter input:checkbox[name=category]:checked").each(function(){
		 cats.push($(this).val());
	});
	$("#product-filter input:checkbox[name=brand]:checked").each(function(){
		 brands.push($(this).val());
	});
	var search = $("#product-filter .product-filter-search input").val();
	var ajax_url = $('#product-filter').attr('data-ajax');
	var comp_id = $('#product-filter').attr('data-id');
	var view_btn_text = $('#product-filter').attr('data-view-btn');
	var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
	$.ajax({
		url: ajax_url,
		method:'GET',
		data: { _token: CSRF_TOKEN, component: comp_id, categories: cats, brands: brands, search: search },
		beforeSend: function() {
			$('#product-list li').remove();
		  },
		success: function(response) {
			
			if(response.products.length){
				$.each(response.products, function( index, value ) {
					$('#product-list').append('<li> <a href="/product/'+value.slug+'-'+value.id+'"><div class="products-filter-content-list-brand"> '+value.brand+'</div><div class="products-filter-content-list-image-hold"> <div class="products-filter-content-list-image img-object-fit"> <img src="'+value.image+'"> </div></div><div class="products-filter-content-list-title-hold"> <div class="products-filter-content-list-title"> '+value.title+' </div><span>'+view_btn_text+'</span></div></a> </li>').slideDown();
				});
				$('.product-count').html(response.count);
			}
		}
	});
}

 $(".products-filter-content-right-filter-content-btn .btn-black").click(function() {
	  $('.products-filter-content-right-filter-content').slideUp(300);
	  $('body').css('overflow', 'auto');
 });
 
 
  function isEmail(email) {
	 var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	 return regex.test(email);
  }
 
 $('#contact-form button[type="submit"]').on('click', function() {
	$("#contact-form.form .form-element-error").each(function(){
		$(this).removeClass('form-element-error');
	});
	$("#contact-form .form-element-error-text").each(function(){
		$(this).remove();
	});
	var input = [];
	$("#contact-form input").each(function(){
		var required = $(this).attr('required');
		var name = $(this).attr('name');
		var value = $(this).val();
		var error = $(this).attr('data-validation');
		
		input.push( {
			name: name,
			value: value,
			required: required,
			error: error
		} );
	});
	$("#contact-form textarea").each(function(){
		input.push( {
			name: $("#contact-form textarea").attr('name'),
			value: $("#contact-form textarea").val(),
			required: $("#contact-form textarea").attr('required'),
			error: $("#contact-form textarea").attr('data-validation')
		} );
	});
	$("#contact-form select").each(function(){
		input.push( {
			name: $('#contact-form select').attr('name'),
			value: $('#contact-form select').find(":selected").text(),
			required: $('#contact-form select').attr('required'),
			error: $('#contact-form select').attr('data-validation')
		} );
	});
	var error_exist = false;
	$.each(input, function( index, value ) {
		
		if( value.name == 'email' && value.required && ( !isEmail(value.value) || !value.value ) ){
			$('#contact-form [name="'+value.name+'"]').parent().addClass('form-element-error');
			$('#contact-form [name="'+value.name+'"]').parent().append('<div class="form-element-error-text">'+value.error+'</div>');
			error_exist = true;
		}else if(!value.value && value.required){
			$('#contact-form [name="'+value.name+'"]').parent().addClass('form-element-error');
			$('#contact-form [name="'+value.name+'"]').parent().append('<div class="form-element-error-text">'+value.error+'</div>');
			error_exist = true;
		}
	});
	if(error_exist){
		throw new Error("From fields error!");
	}
	var ajax_url = $('#contact-form').attr('data-ajax');
	$.ajax({
		url: ajax_url,
		method:'POST',
		data: { _token: CSRF_TOKEN, data: input },
		success: function(response) {
			$("#contact-form .form-element-success-text").fadeIn();
			setTimeout(function() {
				$("#contact-form .form-element-success-text").fadeOut(300).hide();
			}, 2000);
			clearInputValues();
		},
		error: function(response){
		   alert(response.error);
		}
	});

 });

 $('#opport-form button[type="submit"]').on('click', function() {
	  var form_index = $(this).attr('data-index');
	 // var files = $('#file-upload-'+form_index).prop('files')[0];
	 $(".form-"+form_index+" .form-element-error").each(function(){
		 $(this).removeClass('form-element-error');
	 });
	 $(".form-"+form_index+" .form-element-error-text").each(function(){
		 $(this).remove();
	 });
	 var input = [];
	 $(".form-"+form_index+" input").each(function(){
		 var required = $(this).attr('required');
		 var name = $(this).attr('name');
		 var value = $(this).val();
		 var error = $(this).attr('data-validation');
		 var type = $(this).attr('type');
		 
		 input.push( {
			 name: name,
			 value: value,
			 required: required,
			 error: error,
			 type: type
		 } );
	 });
	 $(".form-"+form_index+" textarea").each(function(){
		 input.push( {
			 name: $(".form-"+form_index+" textarea").attr('name'),
			 value: $(".form-"+form_index+"textarea").val(),
			 required: $(".form-"+form_index+" textarea").attr('required'),
			 error: $(".form-"+form_index+" textarea").attr('data-validation'),
			  type: 'textarea'
		 } );
	 });
	 $(".form-"+form_index+" select").each(function(){
		 input.push( {
			 name: $('.form-'+form_index+' select').attr('name'),
			 value: $('.form-'+form_index+' select').find(":selected").text(),
			 required: $('.form-'+form_index+' select').attr('required'),
			 error: $('.form-'+form_index+' select').attr('data-validation'),
			 type: 'select'
		 } );
	 });
	 var error_exist = false;
	 $.each(input, function( index, value ) {
		 if( value.type == 'email' && value.required && ( !isEmail(value.value) || !value.value ) ){
			 $('.form-'+form_index+' [name="'+value.name+'"]').parent().addClass('form-element-error');
			 $('.form-'+form_index+' [name="'+value.name+'"]').parent().append('<div class="form-element-error-text">'+value.error+'</div>');
			 error_exist = true;
		 }else if(!value.value && value.required){
			 $('.form-'+form_index+' [name="'+value.name+'"]').parent().addClass('form-element-error');
			 $('.form-'+form_index+' [name="'+value.name+'"]').parent().append('<div class="form-element-error-text">'+value.error+'</div>');
			 error_exist = true;
		 }
	 });
	 if(error_exist){
		 throw new Error("From fields error!");
	 }
  });
 $('.form-element-checkbox input').on('click', function() {
	 if ($(this).is(':checked')) {
		var checkbox_id = $(this).attr('id');
		$('.'+checkbox_id).removeClass('readonly-form');
	 }else{
		var checkbox_id = $(this).attr('id');
		$('.'+checkbox_id).addClass('readonly-form');
	 }
 }); 

  
 function clearInputValues(){
	 $("#contact-form input").each(function(){
		$(this).val('');
	 })
	 $("#contact-form textarea").each(function(){
		$(this).val('');
	 })
 }
  
  $('#buyers-guide-form button[type="submit"]').on('click', function() {
	 $("#buyers-guide-form .form-element-error").each(function(){
		 $(this).removeClass('form-element-error');
	 });
	 $("#buyers-guide-form .form-element-error-text").each(function(){
		 $(this).remove();
	 });
	 var input = [];
	 $("#buyers-guide-form input").each(function(){
		 var required = $(this).attr('required');
		 var name = $(this).attr('name');
		 var value = $(this).val();
		 var error = $(this).attr('data-validation');
		 
		 input.push( {
			 name: name,
			 value: value,
			 required: required,
			 error: error
		 } );
	 });
	 
	 var error_exist = false;
	 $.each(input, function( index, value ) {
		 
		 if( value.name == 'email' && value.required && ( !isEmail(value.value) || !value.value ) ){
			 $('#buyers-guide-form [name="'+value.name+'"]').parent().addClass('form-element-error');
			 $('#buyers-guide-form [name="'+value.name+'"]').parent().append('<div class="form-element-error-text">'+value.error+'</div>');
			 error_exist = true;
		 }else if(!value.value && value.required){
			 $('#buyers-guide-form [name="'+value.name+'"]').parent().addClass('form-element-error');
			 $('#buyers-guide-form [name="'+value.name+'"]').parent().append('<div class="form-element-error-text">'+value.error+'</div>');
			 error_exist = true;
		 }
	 });
	 if(error_exist){
		 throw new Error("From fields error!");
	 }
	 var ajax_url = $('#buyers-guide-form').attr('data-ajax');
	 $.ajax({
		 url: ajax_url,
		 method:'POST',
		 data: { _token: CSRF_TOKEN, data: input },
		 success: function(response) {
			 $("#buyers-guide-form .form-element-success-text").fadeIn();
			 
			 setTimeout(function() {
				 $("#buyers-guide-form .form-element-success-text").fadeOut(300).hide();
				 location.reload();
			 }, 2000);
			 $("#buyers-guide-form input").each(function(){
				$(this).val('');
			 })
		 },
		 error: function(response){
			 alert(response.error);
		 }
	 });
 
  });
  
  
 $('#newsletter-form button[type="submit"]').on('click', function() {
	  $("#newsletter-form .form-element-error").each(function(){
		  $(this).removeClass('form-element-error');
	  });
	  $("#newsletter-form .form-element-error-text").each(function(){
		  $(this).remove();
	  });
	  var input = [];
	  $("#newsletter-form input").each(function(){
		  var required = $(this).attr('required');
		  var name = $(this).attr('name');
		  var value = $(this).val();
		  var error = $(this).attr('data-validation');
		  
		  input.push( {
			  name: name,
			  value: value,
			  required: required,
			  error: error
		  } );
	  });
	  
	  var error_exist = false;
	  $.each(input, function( index, value ) {
		  if( value.name == 'email' && value.required && ( !isEmail(value.value) || !value.value ) ){
			  $('#newsletter-form [name="'+value.name+'"]').parent().addClass('form-element-error');
			  $('#newsletter-form [name="'+value.name+'"]').parent().append('<div class="form-element-error-text">'+value.error+'</div>');
			  error_exist = true;
		  }
	  });
	  if(error_exist){
		  throw new Error("From fields error!");
	  }
	  var ajax_url = $('#newsletter-form').attr('data-ajax');
	  $.ajax({
		  url: ajax_url,
		  method:'POST',
		  data: { _token: CSRF_TOKEN, data: input },
		  success: function(response) {
			  $("#newsletter-form .form-element-success-text").fadeIn();
			  
			  setTimeout(function() {
				  $("#newslettere-form .form-element-success-text").fadeOut(300).hide();
				  location.reload();
			  }, 2000);
			  $("#newsletter-form input").each(function(){
				 $(this).val('');
			  })
		  },
		  error: function(response){
			  alert(response.error);
		  }
	  });
  
   });
  
  
  $('.components-page-content-filter-list-hold').on('click', function() {
	  var cat = $(this).find('li .current').data('cat');
	  $('.about-us-page-opportunities-list-item').each(function(){
		if(cat == $(this).data('cat') || cat == undefined){
			$(this).show();
		}else{
			$(this).hide();
		}
	  });
  });
  
  
  $('.search-filter li').on('click', function(){
  	$('.search-filter li').removeClass('current');
  	$(this).addClass('current');
  	var selected = $(this).attr('data-select');
  	if(selected == 'all'){
  		$('.search-results-section').show();
  	}else{
  		$('.search-results-section').each(function(){
  			$('.search-results-section').hide();
  			$('.search-results-section[data-type="'+selected+'"]').show();
  		});
  	}
  });
  
  $('.clearInput').click(function(){
  		$('input.inputTerm').val('');
  });
  
  $('#messages .close').click(function(){ $('#messages').fadeOut(300, function(){ $(this).remove()}) });