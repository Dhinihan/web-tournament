var HasErrorController = ['$element', '$scope', function($element, $scope) {
  var ctrl = this;

  ctrl.valid = true;

  var fieldName = '$ctrl.formCtrl.' + ctrl.wtHasError;

  var isValid = function() {
    if(!ctrl.formCtrl[ctrl.wtHasError])
      return true;

    return !ctrl.formCtrl[ctrl.wtHasError].$invalid ||
      !(ctrl.formCtrl[ctrl.wtHasError].$touched || ctrl.formCtrl.$submitted);
  }

  var changeClass = function() {
    if (isValid())
      $element.removeClass('has-error');
    else
      $element.addClass('has-error');
  }

  $scope.$watch(fieldName + '.$valid', function(value) {
    changeClass();
  });
  $scope.$watch(fieldName + '.$touched', function(value) {
    changeClass();
  });
  $scope.$watch('$ctrl.formCtrl' + '.$submitted', function(value) {
    changeClass();
  });

}]

angular.module('wtApp.form.hasError', [])

.directive('wtHasError', function() {
  return {
    require: {
      formCtrl: '^form'
    },
    restrict: 'A',
    scope: {},
    bindToController: {
      wtHasError: '@'
    },
    controller: HasErrorController,
    controllerAs: '$ctrl'
  }
})
