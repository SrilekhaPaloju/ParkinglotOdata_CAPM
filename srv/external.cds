
using { onPrem.db as db } from '../db/data-model';
@path: '/OnPremSRV'
service externalSRV {
    entity zparkinglot1Set as projection on db.zparkinglot1Set;
    entity ZHISTORYSet as projection on db.ZHISTORYSet;
    entity ZASSIGNEDSet as projection on db.ZASSIGNEDSet;
    entity ZRESERVESet as projection on db.ZRESERVESet;
}