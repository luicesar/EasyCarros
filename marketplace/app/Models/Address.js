"use strict";

const Model = use("Model");
const Database = use("Database");

class Address extends Model {
  static scopeNearBy(query, latitude, longitude, distance) {
    const haversine = `(6371 * acos(cos(radians(${latitude}))
      * cos(radians(lat))
      * cos(radians(long)
      - radians(${longitude}))
      + sin(radians(${latitude}))
      * sin(radians(lat))))`;

    return query
      .select("*", Database.raw(`round(${haversine}) as distance`))
      .whereRaw(`${haversine} < ${distance}`);
  }

  partners() {
    return this.hasMany("App/Models/Partner");
  }
}

module.exports = Address;
