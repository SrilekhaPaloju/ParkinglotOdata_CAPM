namespace onPrem.db;
using {ZPARKINGLOT_ODATA_SRV } from '../srv/external/ZPARKINGLOT_ODATA_SRV';

entity zparkinglot1Set as projection on ZPARKINGLOT_ODATA_SRV.zparkinglot1Set{
  ParkinglotNumber,
  Status,
  TransportType,
};
entity ZASSIGNEDSet @cds.persistence.skip as projection on ZPARKINGLOT_ODATA_SRV.ZASSIGNEDSet{
  Id,
  ParkinglotNumber,
  Drivername,
  Phonenumber,
  VehicleNumber,
  Intime,
  TransportType,
}
entity ZHISTORYSet @cds.persistence.skip as projection on ZPARKINGLOT_ODATA_SRV.ZHISTORYSet{
  Id,
  ParkinglotNumber,
  Drivername,
  Phonenumber,
  VehicleNumber,
  Intime,
  Outtime,
  TransportType,
}
entity ZRESERVESet @cds.persistence.skip as projection on ZPARKINGLOT_ODATA_SRV.ZRESERVESet{
  Id,
  ParkinglotNumber,
  Drivername,
  Phonenumber,
  VehicleNumber,
  ReserveTime,
  TransportType,
}


