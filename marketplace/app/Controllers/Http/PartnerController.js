"use strict";

// CRIAR O CRUD DO PARTNET
const Partner = use("App/Models/Partner");

class PartnerController {
  async index({ params }) {
    const partners = await Partner.query()
      .where("address_id", params.address_id)
      .with("address")
      .fetch();

    return partners;
  }

  async store({ request }) {
    const data = request.only([
      "address_id",
      "availableservices0",
      "availableservices1"
    ]);
    const partner = await Partner.create({ ...data });

    return partner;
  }

  async show({ params }) {
    const partner = await Partner.findOrFail(params.id);

    await partner.load("address");

    return partner;
  }

  async update({ params, request }) {
    const partner = await Partner.findOrFail(params.id);
    const data = request.only([
      "address_id",
      "availableservices0",
      "availableservices1"
    ]);

    partner.merge(data);

    await partner.save();

    return partner;
  }

  async destroy({ params }) {
    const partner = await Partner.findOrFail(params.id);
    await partner.delete();
  }
}

module.exports = PartnerController;
