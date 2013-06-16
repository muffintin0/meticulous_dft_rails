
angular.module("gsfcServices",["ngResource"]).factory('Gsfc',function($resource){
	return $resource('/jaguar/ground-state-forced-convergence/:id',{id: "@id"},
			{update:{method:"PUT"}});
});
