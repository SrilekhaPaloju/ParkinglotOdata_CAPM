const { getService } = require("./util");
const cds = require("@sap/cds");

const getData = async (req) => {
  const oSrv = await getService("ZPARKINGLOT_ODATA_SRV");
  return oSrv.tx(req).run(req.query);
};

const createDate = async (req) => {
    const oSrv = await getService("ZPARKINGLOT_ODATA_SRV");
    const oPayload = req.data;
    const oResult = await oSrv.send("POST", "/zparkinglot1Set", oPayload);
    return oResult;
  };

module.exports = {
  getData,
  createDate
};
