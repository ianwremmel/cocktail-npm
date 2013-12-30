/* global describe */
/* global it  */

'use strict';

var chai = require('chai');
var assert = chai.assert;

describe('cocktail npm', function() {
  var cocktail;
  it('loads', function() {
    assert.doesNotThrow(function() {
      cocktail = require('../dist/cocktail-npm');
    });

    assert.isDefined(cocktail);
    assert.isNotNull(cocktail);
  });
});
