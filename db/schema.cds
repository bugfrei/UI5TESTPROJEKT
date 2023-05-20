namespace meineapp.db;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Abteilungen {
    key id   : Integer;
        name : String(100);
        max  : Integer;
}

entity Personal {
    key id          : Integer;
        secLevel    : Integer;
        firstName   : String(100);
        lastName    : String(100);
        toAbteilung : Association to one Abteilungen;
};

entity LevelDesc : managed {
    secLevel : Integer;
    description: String;
}

