"use strict";

const Antl = use("Antl");

class Partner {
  get validateAll() {
    return true;
  }

  get rules() {
    return {
      address_id: "required"
    };
  }

  get messages() {
    return Antl.list("validation");
  }
}

module.exports = Partner;
