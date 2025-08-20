-- (Operazione 6) Stampa gli oggetti posseduti da ogni utente
SELECT nome, UserAccount.username, ItemInstance_ID 
FROM ItemInstance, Item, UserAccount 
WHERE ItemInstance.username=UserAccount.username and Item.item_ID=ItemInstance.item_ID
ORDER BY UserAccount.username, ItemInstance_ID;

-- (Operazione 9) Stampare tutti gli oggetti di un utente con rarità "leggendaria"
SELECT nome, UserAccount.username, ItemInstance_ID, rarità 
FROM ItemInstance, Item, UserAccount, Racchiude
WHERE ItemInstance.username= 'utente05' and Racchiude.rarità = 'leggendario'
		and Item.item_ID=ItemInstance.item_ID and UserAccount.username = ItemInstance.username and Racchiude.equip_ID = Item.item_ID
ORDER BY UserAccount.username;

-- (Operazione 10) Cerca gli utenti che channo giocato ad almeno 5 videogiochi
SELECT username
FROM Gioca
GROUP BY username
HAVING COUNT(DISTINCT game_ID) >= 5;

-- (Operazione 13) Cercare tutte le inserzioni per un determinato Item
SELECT nome, prezzo
FROM Inserzione, ItemInstance, Item
WHERE Inserzione.ItemInstance_ID = ItemInstance.itemInstance_ID and ItemInstance.item_ID = Item.Item_ID and nome='Cassa Antica (Dota 2)';

-- (Operazione 14) Stampare la lista e il numero di videogiochi giocati di tutti gli utenti in ordine crescente di videogiochi giocati
SELECT UA.username, COUNT(G.game_ID) AS num_videogiochi_giocati
FROM UserAccount UA
LEFT JOIN Gioca G ON UA.username = G.username
GROUP BY UA.username
ORDER BY num_videogiochi_giocati DESC;

-- (Operazione 15) Stampare la lista e il numero di ore totali di tutti gli utenti in ordine crescente di ore di gioco totali
SELECT UA.username, SUM(g.totale_ore) AS ore_totali
FROM UserAccount UA
LEFT JOIN Gioca g ON UA.username = G.username
GROUP BY UA.username
ORDER BY ore_totali DESC;

-- (Operazione 16) Cercare l’utente con il maggior numero di Item nel proprio inventario
SELECT username, COUNT(*) AS num_items
FROM ItemInstance
GROUP BY username
ORDER BY num_items DESC
LIMIT 1;


-- Seleziona gli utenti che hanno almeno 5 oggetti ed hanno almeno una transazione. (Operazione 18)
SELECT username
FROM UserAccount
WHERE (
    SELECT COUNT(*)
    FROM ItemInstance
    WHERE ItemInstance.username = UserAccount.username
) >= 5
AND EXISTS (
    SELECT *
    FROM Transazione
    WHERE Transazione.username = UserAccount.username
);


-- Seleziona gli utenti che giocano a "Dota 2" e possiedono oggetti di rarità "Leggendaria" (Operazione 19)
SELECT II.*
FROM ItemInstance II
WHERE II.username IN (
    SELECT G.username
    FROM Gioca G
    WHERE G.game_ID = (
        SELECT game_ID
        FROM Videogioco
        WHERE nome = 'Dota 2'
    )
) AND II.item_ID IN (
    SELECT R.equip_ID
    FROM Racchiude R
    JOIN Item I ON R.equip_ID = I.item_ID
    WHERE R.rarità = 'leggendario'
);