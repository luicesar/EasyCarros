"use strict";

const Model = use("Model");
class Partner extends Model {
  address() {
    return this.belongsTo("App/Models/Address");
  }
}

module.exports = Partner;
