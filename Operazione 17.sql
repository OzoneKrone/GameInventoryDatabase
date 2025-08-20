-- Operazione 17 Utente effettua un acquisto di un Item

SELECT *
FROM Inserzione;

SELECT *
FROM ItemInstance
WHERE itemInstance_ID = '10';

-- Eliminazione dell'inserzione
DELETE FROM Inserzione
WHERE inserzione_ID = '1';

-- Modifica dell'username nell'ItemInstance per l'acquirente
UPDATE ItemInstance
SET username = 'utente12'
WHERE itemInstance_ID = '10';

-- Memorizzazione della transazione
INSERT INTO Transazione (username, data_ora, prezzo, itemInstance_ID, username_partec)
VALUES ('utente02', NOW(), '10.50', '10', 'utente12');

SELECT *
FROM Inserzione;

SELECT *
FROM ItemInstance
WHERE itemInstance_ID = '10';