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
//= require annotorious.min
//= require angular
//= require jquery.cloudinary

(function () {

  $.cloudinary.config({ cloud_name: 'dpa6dr1vt' });

  var SectionsController = ['$scope', '$compile', '$http', function ($scope, $compile, $http) {
    $scope.updatePage = function (index, publicId) {
      var $img = $.cloudinary.image(publicId, { page: index + 1, format: 'png' });
      $img.on('load', function () {
        anno.makeAnnotatable(this);
      });
      $('#full-page').html($img);
    };

  }];

  var pageScroller = function () {
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
  };

  angular.module('Exemplary', [])
      .controller('SectionsController', SectionsController)
      .directive('pageScroller', pageScroller);


  var rectangles = [];

  /**
   * Return the true coordinates of the given image element
   *
   * @param $img an <img> element as a jQuery object
   * @returns {{width: Number, height: Number}}
   */
  function trueImageSize($img) {
    var offscreenImg = new Image();
    offscreenImg.src = $img.attr('src');
    return {
      'width': offscreenImg.width,
      'height': offscreenImg.height
    };
  }

  function toPixelDimensions(percentObj, img) {
    var tis = trueImageSize($(img));

    var x = percentObj.x * tis.width,
        y = percentObj.y * tis.height,
        x2 = x + percentObj.width * tis.width,
        y2 = y + percentObj.height * tis.height;

    return {
      x: x,
      y: y,
      x2: x2,
      y2: y2
    };
  }

  anno.addHandler('onAnnotationCreated', function (annotation, img) {
    rectangles.push(toPixelDimensions(annotation.shapes[0].geometry, img.element));
  });

}());
