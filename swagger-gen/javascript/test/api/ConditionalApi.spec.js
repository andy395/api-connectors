/**
 * Bybit API
 * ## REST API for the Bybit Exchange. Base URI: [https://api.bybit.com]  
 *
 * OpenAPI spec version: 0.2.10
 * Contact: support@bybit.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.8
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', '../../src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.BybitApi);
  }
}(this, function(expect, BybitApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new BybitApi.ConditionalApi();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('ConditionalApi', function() {
    describe('conditionalCancel', function() {
      it('should call conditionalCancel successfully', function(done) {
        //uncomment below and update the code to test conditionalCancel
        //instance.conditionalCancel(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('conditionalCancelAll', function() {
      it('should call conditionalCancelAll successfully', function(done) {
        //uncomment below and update the code to test conditionalCancelAll
        //instance.conditionalCancelAll(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('conditionalGetOrders', function() {
      it('should call conditionalGetOrders successfully', function(done) {
        //uncomment below and update the code to test conditionalGetOrders
        //instance.conditionalGetOrders(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('conditionalNew', function() {
      it('should call conditionalNew successfully', function(done) {
        //uncomment below and update the code to test conditionalNew
        //instance.conditionalNew(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('conditionalQuery', function() {
      it('should call conditionalQuery successfully', function(done) {
        //uncomment below and update the code to test conditionalQuery
        //instance.conditionalQuery(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('conditionalReplace', function() {
      it('should call conditionalReplace successfully', function(done) {
        //uncomment below and update the code to test conditionalReplace
        //instance.conditionalReplace(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));
