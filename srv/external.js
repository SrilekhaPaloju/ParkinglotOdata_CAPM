const cds = require("@sap/cds");
const { getData, createDate} = require("./src/zparkinglot");

module.exports = cds.service.impl(async function () {
  this.on("READ", "zparkinglot1Set", getData);
  this.on("READ", "ZHISTORYSet", getData);
  this.on("READ", "ZASSIGNEDSet", getData);
  this.on("READ", "ZRESERVESet", getData);
  this.on("CREATE", "zparkinglot1Set", createDate)
});
