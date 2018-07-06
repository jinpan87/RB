app.directive("datetimepicker",function(){
	var link = function($scope, $element, $attrs){
	      $element.datetimepicker({
	    	  format:"yyyy-mm-dd hh:mm"
	      });
	    };
	    return {
	    	link: link,
	        restrict: 'AE'
	    };
});