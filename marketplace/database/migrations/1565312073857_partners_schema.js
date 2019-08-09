"use strict";

const Schema = use("Schema");

class PartnersSchema extends Schema {
  up() {
    this.create("partners", table => {
      table.increments();
      table
        .integer("address_id")
        .unsigned()
        .references("id")
        .inTable("addresses")
        .onUpdate("CASCADE")
        .onDelete("SET NULL");
      table.string("availableservices0", 50);
      table.string("availableservices1", 50);
      table.timestamps();
    });
  }

  down() {
    this.drop("partners");
  }
}

module.exports = PartnersSchema;
