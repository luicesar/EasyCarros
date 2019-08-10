"use strict";

const Address = use("App/Models/Address");

class RequestServiceController {
  async show({ params }) {
    const properties = Address.query()
      .with("partners")
      .nearBy(params.lat, params.long, 10)
      .fetch();

    return properties;
  }
}

module.exports = RequestServiceController;
