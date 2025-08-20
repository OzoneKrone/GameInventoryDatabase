-- (Operazione 7) Utente scambia 5 carte collezionabili per un pacchetto

SELECT nome, UserAccount.username, ItemInstance_ID 
FROM ItemInstance, Item, UserAccount 
WHERE ItemInstance.username=UserAccount.username and Item.item_ID=ItemInstance.item_ID and ItemInstance.username='utente10'
ORDER BY UserAccount.username, ItemInstance_ID;

INSERT INTO ItemInstance (usura, item_ID, username)
SELECT NULL, item_ID, 'utente10' 					-- ? = username dell'utente che effettua l'operazione 
FROM item
WHERE item.tipo = 'pacchetto' 				-- ? = item_ID del pacchetto aperto
ORDER BY RAND()  							-- Ordina casualmente i risultati
LIMIT 1;  									-- Seleziona solo un equipaggiamento casuale

DELETE FROM ItemInstance 					-- Eliminazione delle carte selezionate
WHERE ItemInstance_ID = 52  OR  ItemInstance_ID = 53  OR  ItemInstance_ID =  54  OR  ItemInstance_ID = 55  OR  ItemInstance_ID = 56;

SELECT nome, UserAccount.username, ItemInstance_ID 
FROM ItemInstance, Item, UserAccount 
WHERE ItemInstance.username=UserAccount.username and Item.item_ID=ItemInstance.item_ID and ItemInstance.username='utente10'
ORDER BY UserAccount.username, ItemInstance_ID;