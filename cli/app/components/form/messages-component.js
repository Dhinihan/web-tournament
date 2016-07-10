function MessagesController($scope, $element, $attrs) {

  var ctrl = this;

}

angular.module('wtApp.form.messages', [])

.component('wtMessages', {
  require:{
    form: '^form'
  },
  templateUrl: 'components/form/messages.html',
  controller: MessagesController,
  bindings: {
    field: '@',
    description: '@'
  }
});