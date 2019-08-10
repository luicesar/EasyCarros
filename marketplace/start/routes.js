"use strict";

const Route = use("Route");

Route.post("users", "UserController.store").validator("User");
Route.post("sessions", "SessionController.store").validator("Session");
Route.post("passwords", "ForgotPasswordController.store").validator(
  "ForgotPassword"
);
Route.put("passwords", "ForgotPasswordController.update").validator(
  "ResetPassword"
);

// Route.group => Rotinas especificas para usuarios que estao logados
Route.group(() => {
  Route.get("services/:lat/:long", "RequestServiceController.show");
  Route.resource("partners", "PartnerController")
    .apiOnly()
    .validator(
      new Map([
        [["partners.store"], ["Partner"]],
        [["partners.update"], ["Partner"]]
      ])
    );
}).middleware(["auth"]);
