CREATE TABLE tracker (
    id_tracker NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    id_person NUMBER NOT NULL,
    ito_tracker_code VARCHAR2(36) UNIQUE NOT NULL,
    created_at DATE DEFAULT SYSDATE NOT NULL,
    latitude NUMBER(11,8) NOT NULL,
    longitude NUMBER(11,8) NOT NULL,

    CONSTRAINT tracker_person_fk FOREIGN KEY (id_person)
        REFERENCES person(id_person)
);