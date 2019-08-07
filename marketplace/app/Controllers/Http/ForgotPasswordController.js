"use strict";

const moment = require("moment");
const crypto = require("crypto");
const User = use("App/Models/User");

class ForgotPasswordController {
  async store({ request, response }) {
    try {
      const email = request.input("email");
      const user = await User.findByOrFail("email", email);

      user.token = crypto.randomBytes(10).toString("hex");
      user.token_created_at = new Date();

      await user.save(user);
    } catch (error) {
      return response
        .status(error.status)
        .send({ error: { message: "O E-mail existe ?" } });
    }
  }

  async update({ request, response }) {
    try {
      const { token, password } = request.all();

      const user = await User.findByOrFail("token", token);

      const tokenExpired = moment()
        .subtract("2", "days")
        .isAfter(user.token_created_at);

      if (tokenExpired) {
        return response.status(401).send({
          error: { message: "Token de recuperação está expirado." }
        });
      }

      user.token = null;
      user.token_created_at = null;
      user.password = password;

      await user.save();
    } catch (error) {
      return response.status(error.status).send({
        error: { message: "Algo deu errado ao resetar a sua senha." }
      });
    }
  }
}

module.exports = ForgotPasswordController;
