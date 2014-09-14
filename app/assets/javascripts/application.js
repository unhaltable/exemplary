// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.Jcrop
//= require angular
//= require jquery.cloudinary

(function () {

  $.cloudinary.config({ cloud_name: 'dpa6dr1vt' });

  var SectionsController = ['$scope', function ($scope) {
    $scope.updatePage = function (index, publicId) {
      $('#full-page').html($.cloudinary.image(publicId, { page: index + 1, format: 'png' }));
    };
  }];

  function PageScroller() {
    return {
      link: function ($scope, $element, $attrs) {
        var $thumbnails = $element.find('img');
        $thumbnails.click(function () {
          $scope.updatePage($thumbnails.index(this), this.getAttribute('alt'));
        });

        if ($thumbnails.length) {
          $scope.updatePage(0, $thumbnails.attr('alt'));
        }
      }
    };
  }

  angular.module('Exemplary', [])
      .controller('SectionsController', SectionsController)
      .directive('pageScroller', PageScroller);

}());
