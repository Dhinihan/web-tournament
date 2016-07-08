function MenuItemsController($scope, $element, $attrs) {
  
  var ctrl = this;

}

angular.module('wtApp.menu.items', []).component('wtMenuItems', {
  templateUrl: 'components/menu/menu-items.html',
  controller: MenuItemsController,
  bindings: {
    collapsed: '<'
  }
});