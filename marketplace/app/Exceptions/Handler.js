"use strict";

const Env = use("Env");
const Youch = use("Youch"); // é um formatador de erros
const BaseExceptionHandler = use("BaseExceptionHandler");

// Captar todos os erros dos controllers
class ExceptionHandler extends BaseExceptionHandler {
  /**
   * Handle exception thrown during the HTTP lifecycle
   *
   * @method handle
   *
   * @param  {Object} error
   * @param  {Object} options.request
   * @param  {Object} options.response
   *
   * @return {void}
   */
  async handle(error, { request, response }) {
    if (error.name === "ValidationException") {
      return response.status(error.status).send(error.messages);
    }

    if (Env.get("NODE_ENV") === "development") {
      const youch = new Youch(error, request.request);
      const errorJson = await youch.toJSON();
      return response.status(error.status).send(errorJson);
    }

    return response.status(error.status);
  }

  /**
   * Report exception for logging or debugging.
   *
   * @method report
   *
   * @param  {Object} error
   * @param  {Object} options.request
   *
   * @return {void}
   */
  async report(error, { request }) {
    console.log(error);
  }
}

module.exports = ExceptionHandler;
