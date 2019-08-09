"use strict";

const Schema = use("Schema");

class AddressesSchema extends Schema {
  up() {
    this.create("addresses", table => {
      table.increments();
      table.string("name", 100).notNullable();
      table.string("address", 100).notNullable();
      table.string("city", 100).notNullable();
      table.string("state", 2).notNullable();
      table.string("country", 100).notNullable();
      table.decimal("lat", 11, 7);
      table.decimal("long", 11, 7);
      table.timestamps();
    });
  }

  down() {
    this.drop("addresses");
  }
}

module.exports = AddressesSchema;
