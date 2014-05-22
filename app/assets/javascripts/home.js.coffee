# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ -> 
  $("#logout").on "click", ->
    console.log('logout');
    promise = $.ajax({url: '/v1/sessions/1', type: 'DELETE'
      }).success ->
        window.location.pathname = '/'