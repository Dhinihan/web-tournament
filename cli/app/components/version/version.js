'use strict';

angular.module('wtApp.version', [
  'wtApp.version.interpolate-filter',
  'wtApp.version.version-directive'
])

.value('version', '0.1');
