--Storde Procedures
-- we use procedures for reusability
-- instead of rewriting the query everwhere, we write it once and use ut so many times. 
-- This matters when query is long.
--In fact, we just use EXEC top_players;
--That's why we do not use where.
USE SP
GO

SELECT * FROM players;
GO

CREATE PROCEDURE top_players
AS
BEGIN
    SELECT name, country, goals
    FROM players
    WHERE goals > 6;
END
GO

EXEC top_players
