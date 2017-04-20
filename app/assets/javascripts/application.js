// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap 
//= require jquery_ujs
//= require_tree .

$(function(){
    $('[data-toggle="tooltip"]').tooltip();
    $(".side-nav .collapse").on("hide.bs.collapse", function() {                   
        $(this).prev().find(".fa").eq(1).removeClass("fa-angle-right").addClass("fa-angle-down");
    });
    $('.side-nav .collapse').on("show.bs.collapse", function() {                        
        $(this).prev().find(".fa").eq(1).removeClass("fa-angle-down").addClass("fa-angle-right");        
    });
})    

!function ($) {
    
    // Le left-menu sign
    /* for older jquery version
    $('#left ul.nav li.parent > a > span.sign').click(function () {
        $(this).find('i:first').toggleClass("icon-minus");
    }); */
    
    $(document).on("click","#left ul.nav li.parent > a > span.sign", function(){          
        $(this).find('i:first').toggleClass("icon-minus");      
    }); 
    
    // Open Le current menu
    $("#left ul.nav li.parent.active > a > span.sign").find('i:first').addClass("icon-minus");
    $("#left ul.nav li.current").parents('ul.children').addClass("in");

}(window.jQuery);

// for seach form, not work
// $(document).ready( function() {

//     var base_url = window.location.protocol + "//" + window.location.host;

//     $('#search-bar-custom').searchbox({
//         url: base_url + '/search/',
//         param: 'search',
//         dom_id: '#livesearch',
//         loading_css: '#livesearch_loading'
//     })      
// });

$(function() {
    $('#products th a').live("click", function(){
        $.getScript(this.href);
        return false;
    });
    $('inventory_search input').keyup(function(){
        $.get($("#inventory_search)").attr("action"), $("#inventory_search").serialize(), null, "script");
        return false;
    });

});
// for qr code

function myfunc()
{
    $('#code_input').change(function(){
     $('#form_qr').submit(); 
    }); 
}
    

    $.ajax({
           type: "POST",
           url: '',
           data: $("#idForm").serialize(), // serializes the form's elements.
           success: function(data)
           {
               // alert(data); // show response from the php script.
           }
         });
    
     $('#form_qr').submit();

function myfunc2(){
  var ip = $('#code_input').val().trim();
  $.ajax({
  type: "POST",
  url: "/qrcodes",  
  data: {text: ip}
  return false;
 });
}
function myfunc3() {
   alert("hhesl");
}