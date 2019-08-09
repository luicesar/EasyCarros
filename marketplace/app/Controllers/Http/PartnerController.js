"use strict";

// https://blog.rocketseat.com.br/adonis-upload-geolocalizacao/
// https://github.com/Rocketseat/youtube-live-geolocation-e-mapas-backend/blob/master/src/app/controllers/PointController.js

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
}

module.exports = PartnerController;
