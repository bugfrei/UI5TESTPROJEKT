using {meineapp.db as db} from '../db/schema';

service mainService {
    entity Abteilungen     as projection on db.Abteilungen;

    view MaxAbteilungID as
        select from Abteilungen {
            max(id) as maxID : Integer
        };

    entity Personal        as projection on db.Personal;
}

