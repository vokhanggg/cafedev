var cafedevApp = angular.module('cafedevApp', [ 
	'ngRoute',
	'ui.bootstrap'
]);

cafedevApp.config([ '$routeProvider', function($routeProvider) {
	$routeProvider.when('/', {
		templateUrl : 'views/home.html',
		controller : 'HomeCtrl'
	}).when('/forum', {
		templateUrl : 'views/forum.html',
		controller : 'ForumCtrl'
	}).when('/topic/:id', {
		templateUrl : 'views/topic.html',
		controller : 'TopicCtrl'
	}).when('/sub-topic/:id', {
		templateUrl : 'views/sub-topic.html',
		controller : 'SubTopicCtrl'
	}).when('/assignment/:id', {
		templateUrl : 'views/assignment.html',
		controller : 'AssignmentCtrl'
	}).when('/examination/:id', {
		templateUrl : 'views/examination.html',
		controller : 'ExaminationCtrl'
	}).when('/chart', {
		templateUrl : 'views/chart.html',
		controller : 'ChartCtrl'
	}).when('/setting', {
		templateUrl : 'views/setting.html',
		controller : 'SettingCtrl'
	}).when('/programmes', {
		templateUrl : 'views/programmes.html',
		controller : 'ProgrammesCtrl'
	}).when('/notify', {
		templateUrl : 'views/notify.html',
		controller : 'NotifyCtrl'
	}).when('/about', {
		templateUrl : 'views/about.html',
		controller : 'AboutCtrl'
	}).when('/test', {
		templateUrl : 'views/test.html',
		controller : 'TestCtrl'
			
	}).otherwise({
		redirectTo : '/'
	});
} ]);