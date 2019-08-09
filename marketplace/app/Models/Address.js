"use strict";

const Model = use("Model");

class Address extends Model {
  partners() {
    return this.hasMany("App/Models/Partner");
  }
}

module.exports = Address;
