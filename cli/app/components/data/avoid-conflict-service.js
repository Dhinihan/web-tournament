angular.module('wtApp.data.avoidConflict', [])

.factory('avoidConflict', function() {

  var addFunction = function(container, element) {
    new_element = generateUniqueElement(container, element)
    container.push(new_element);
    return new_element;
  };

  function generateUniqueElement(container, element) {
    if (container.indexOf(element) == -1) {
      return element;
    }

    index = getNext(container, element);

    return element + ' (' + index + ')';

  }

  function getNext(container, element) {
    var bigger = 1;
    var regex = new RegExp(escapeRegExp(element) + '\\s[(](\\d+)[)]$', 'g')

    angular.forEach(container, function(value) {
      regex.lastIndex = 0;
      var match = regex.exec(value);
      if (match != null) {
        var intMatch = parseInt(match[1]);
        if (intMatch > bigger) {
          bigger = intMatch;
        }
      }
    });

    return bigger + 1;
  }

  function escapeRegExp(str) {
    return str.replace(/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g, "\\$&");
  }

  return {
    add: addFunction
  }
});
