app.factory("indexService",function(){
    var getUser = function(){
		var json = [{name:"lcy",country:"China"},{name:"gwp",country:"China"}];
		return json;
	};
	return {
		getUser : function(){
			return getUser();
		}
	};
});
