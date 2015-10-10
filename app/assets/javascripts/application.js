// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

// /* activate scrollspy menu */
// $('body').scrollspy({
//   target: '#navbar-collapsible',
//   offset: 52
// });
//
// /* smooth scrolling sections */
// $('a[href*=#]:not([href=#])').click(function() {
//     if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
//       var target = $(this.hash);
//       target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
//       if (target.length) {
//         $('html,body').animate({
//           scrollTop: target.offset().top - 50
//         }, 800);
//
//         if (this.hash=="#section1") {
//             $('.scroll-up').hide();
//         }
//         else {
//             $('.scroll-up').show();
//         }
//
//
//         // activte animations in this section
//         target.find('.animate').delay(1200).addClass("animated");
//         setTimeout(function(){
//             target.find('.animated').removeClass("animated");
//         },2000);
//
//         return false;
//       }
//     }
// });
