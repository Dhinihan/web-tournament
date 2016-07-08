function MenuController($scope, $element, $attrs) {

  var ctrl = this;
  ctrl.navCollapsed = false;

  ctrl.toggle = function(){
    ctrl.navCollapsed = !ctrl.navCollapsed;
  }

}

angular.module('wtApp.menu', [
  'wtApp.menu.titulo',
  'wtApp.menu.toggleButton',
  'wtApp.menu.items'
])

.component('wtMenu', {
  templateUrl: 'components/menu/menu.html',
  controller: MenuController
});