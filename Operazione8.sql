SELECT *
FROM UserAccount
WHERE username='utente01';

SELECT nome, UserAccount.username, ItemInstance_ID 
FROM ItemInstance, Item, UserAccount 
WHERE ItemInstance.username=UserAccount.username and Item.item_ID=ItemInstance.item_ID and ItemInstance.username='utente01'
ORDER BY UserAccount.username, ItemInstance_ID;

INSERT INTO ItemInstance (usura, item_ID, username) 
SELECT RAND(), item_ID, 'utente01' 							-- ? = username dell'utente che effettua l'operazione 
FROM item
WHERE item.tipo = 'carta' 									-- ? = item_ID del pacchetto aperto
ORDER BY RAND()
LIMIT 1;

UPDATE UserAccount
SET punti = punti-20
WHERE username = 'utente01';

SELECT *
FROM UserAccount
WHERE username='utente01';

SELECT nome, UserAccount.username, ItemInstance_ID 
FROM ItemInstance, Item, UserAccount 
WHERE ItemInstance.username=UserAccount.username and Item.item_ID=ItemInstance.item_ID and ItemInstance.username='utente01'
ORDER BY UserAccount.username, ItemInstance_ID;