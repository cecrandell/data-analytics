DROP TABLE IF EXISTS players;

CREATE TABLE players (
    id INT,
    player VARCHAR,
    height INT,
    weight INT,
    college VARCHAR,
    born INT,
    birth_city VARCHAR,
    birth_state VARCHAR
);

-- SELECT * FROM players;
DROP TABLE IF EXISTS seasons_stats;

CREATE TABLE seasons_stats (
    player_id INT,
    year DEC,
    position VARCHAR,
    age DEC,
    Tm VARCHAR,
    G VARCHAR,
    TS_Percentage DEC,
    FTr DEC,
    OWS DEC,
    DWS DEC,
    WS DEC,
    FG DEC,
    FGA DEC,
    FG_Percentage DEC,
    Two_Points DEC,
    Two_PA DEC,
    Two_Point_Percentage DEC,
    eFG_Percentage DEC,
    FT DEC,
    FTA DEC,
    FT_Percentage DEC,
    AST DEC,
    PF DEC,
    PTS DEC
);

-- SELECT * FROM seasons_stats;