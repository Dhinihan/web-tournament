function MenuToggleButtonController($scope, $element, $attrs) {
  
  var ctrl = this;

  ctrl.onToggle = function(){
    ctrl.toggle();
  }

}

angular.module('wtApp.menu.toggleButton', []).component('wtMenuToggleButton', {
  templateUrl: 'components/menu/menu-toggle-button.html',
  controller: MenuToggleButtonController,
  bindings: {
    toggle: '&'
  }
});