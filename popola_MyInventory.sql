-- Inserimento di dati nella tabella UserAccount (Operazione 1)
INSERT INTO UserAccount (username, email, passwrd, punti) VALUES
('utente01', 'utente1@example.com', 'password1', 100),
('utente02', 'utente2@example.com', 'password2', 150),
('utente03', 'utente3@example.com', 'password3', 150),
('utente04', 'utente4@example.com', 'password4', 150),
('utente05', 'utente5@example.com', 'password5', 150),
('utente06', 'utente6@example.com', 'password6', 150),
('utente07', 'utente7@example.com', 'password7', 150),
('utente08', 'utente8@example.com', 'password8', 150),
('utente09', 'utente9@example.com', 'password9', 150),
('utente10', 'utente10@example.com', 'password10', 150),
('utente11', 'utente11@example.com', 'password11', 150),
('utente12', 'utente12@example.com', 'password12', 150);

-- Inserimento dei generi 
INSERT INTO Genere (nome) VALUES
('Azione'),
('Avventura'),
('Guida'),
('Simulazione'),
('Online'),
('Single-Player');

-- Inserimento Videogiochi (Operazione 3)
INSERT INTO Videogioco (nome) VALUES
('Super Mario Bros.'),
('The Legend of Zelda'),
('Final Fantasy XV'),
('Grand Theft Auto V'),
('Dota 2'),
('Counter-Strike');

-- Inserimento della classificazione dei videogiochi nei loro generi
INSERT INTO Classificazione (game_ID, genere) VALUES
('1', 'Avventura'),
('1', 'Single-Player'),
('2', 'Avventura'),
('2', 'Single-Player'),
('3', 'Azione'),
('3', 'Online'),
('4', 'Online'),
('4', 'Single-Player'),
('4', 'Guida'),
('5', 'Online'),
('6', 'Online'),
('6', 'Azione');

-- Creazione dei primi prototipi di Item presenti nel database (Operazione 11)
INSERT INTO Item(nome, descrizione, game_ID, tipo) VALUES
('Cassa Antica (Dota 2)', 'Contiene equipaggiamenti Medievali', '5', 'pacchetto'),
('Cassa Mistica (Dota 2)', 'Contiene equipaggiamenti Magici', '5', 'pacchetto'),
('Mario', 'Carta collezionabile raffigurante Super Mario!', '1', 'carta'),
('Luigi', 'Carta collezionabile raffigurante Luigi!', '1', 'carta'),
('Bowser', 'Carta collezionabile raffigurante Bowser!', '1', 'carta'),
('Peach', 'Carta collezionabile raffigurante Peach!', '1', 'carta'),
('Toad', 'Carta collezionabile raffigurante Toad!', '1', 'carta'),
('Spada di Luce', 'Potente arma', '1', 'equip'),
('Armatura di Cristallo', 'Robusta difesa', '2', 'equip'),
('Bacchetta di Fuoco', 'Potente incantesimo', '3', 'equip'),
('Scudo del Drago', 'Difesa imbattibile', '1', 'equip'),
('Elmo del Destino', 'Protezione magica', '4', 'equip'),
('Guanti del Ladro', 'Furtività migliorata', '5', 'equip'),
('Bastone della Saggezza', 'Potenziamento magico', '3', 'equip'),
('Armatura del Paladino', 'Protezione sacra', '1', 'equip'),
('Arco d\'Argento', 'Precisione letale', '2', 'equip'),
('Amuleto del Potere', 'Forza mistica', '3', 'equip'),
('Lancia Infuocata', 'Arma a distanza', '1', 'equip'),
('Armatura di Diamante', 'Invincibile difesa', '2', 'equip'),
('Bacchetta del Gelido', 'Potere del freddo', '3', 'equip'),
('Elmo dell\'Oscuro', 'Misteriosa protezione', '4', 'equip'),
('Guanti della Tempesta', 'Controllo dell\'elemento', '5', 'equip'),
('Bastone della Natura', 'Forze della terra e del cielo', '3', 'equip'),
('Armatura della Resistenza', 'Resistenza ai danni', '1', 'equip'),
('Arco di Legno', 'Perfetta per l\'addestramento', '2', 'equip'),
('Amuleto della Guarigione', 'Potere curativo', '3', 'equip'),
('Ascia del Guerriero', 'Potenza brutale', '4', 'equip');

-- Creazione della prima collezione di carte
INSERT INTO Collection(collection_ID, nome) VALUES
('mario', 'Collezione di Carte Collezionabili di Super Mario');

-- Collegamento del codice delle carte alla loro collezione
INSERT INTO Proviene(carta_ID, collection_ID) VALUES
('3', 'mario'),
('4', 'mario'),
('5', 'mario'),
('6', 'mario'),
('7', 'mario');

-- Creazione della "pool" dei due pacchetti implementati in precedenza (Operazione 11)
INSERT INTO Racchiude(pacchetto_ID, equip_ID, rarità) VALUES
('1', '13', 'comune'),
('1', '16', 'comune'),
('1', '18', 'comune'),
('1', '19', 'raro'),
('1', '24', 'epico'),
('1', '27', 'leggendario'),
('2', '8', 'comune'),
('2', '10', 'comune'),
('2', '12', 'comune'),
('2', '20', 'comune'),
('2', '21', 'comune'),
('2', '14', 'raro'),
('2', '23', 'raro'),
('2', '15', 'epico'),
('2', '16', 'leggendario');

-- Creazione delle istanze di oggetti per gli utenti
INSERT INTO ItemInstance (usura, item_ID, username) VALUES
(NULL, 1, 'utente01'),
(NULL, 1, 'utente03'),
(NULL, 1, 'utente04'),
(NULL, 1, 'utente05'),
(NULL, 1, 'utente01'),
(NULL, 1, 'utente06'),
(NULL, 1, 'utente10'),
(NULL, 1, 'utente12'),
(NULL, 1, 'utente01'),
(NULL, 1, 'utente01'),
(NULL, 1, 'utente01'),
(RAND(), 4, 'utente01'),
(NULL, 2, 'utente02'),
(RAND(), 3, 'utente03'),
(RAND(), 4, 'utente04'),
(RAND(), 5, 'utente05'),
(RAND(), 6, 'utente06'),
(RAND(), 7, 'utente07'),
(RAND(), 8, 'utente08'),
(RAND(), 9, 'utente09'),
(RAND(), 10, 'utente10'),
(RAND(), 11, 'utente01'),
(RAND(), 12, 'utente02'),
(RAND(), 13, 'utente03'),
(RAND(), 14, 'utente04'),
(RAND(), 15, 'utente05'),
(RAND(), 16, 'utente06'),
(RAND(), 17, 'utente07'),
(RAND(), 18, 'utente08'),
(RAND(), 19, 'utente09'),
(RAND(), 3, 'utente10'),
(NULL, 2, 'utente01'),
(RAND(), 3, 'utente02'),
(RAND(), 4, 'utente03'),
(RAND(), 5, 'utente04'),
(RAND(), 6, 'utente05'),
(RAND(), 7, 'utente06'),
(RAND(), 8, 'utente07'),
(RAND(), 9, 'utente08'),
(RAND(), 10, 'utente09'),
(RAND(), 11, 'utente10'),
(RAND(), 12, 'utente01'),
(RAND(), 13, 'utente02'),
(RAND(), 14, 'utente03'),
(RAND(), 15, 'utente04'),
(RAND(), 16, 'utente05'),
(RAND(), 17, 'utente06'),
(RAND(), 18, 'utente07'),
(RAND(), 19, 'utente08'),
(RAND(), 6, 'utente09'),
(RAND(), 2, 'utente10'),
(RAND(), 3, 'utente10'),
(RAND(), 4, 'utente10'),
(RAND(), 5, 'utente10'),
(RAND(), 6, 'utente10'),
(RAND(), 27, 'utente01'),
(RAND(), 7, 'utente10');

-- (Operazione 2) Utente gioca ad un videogioco, vengono aggiornate le ore e i punti
INSERT INTO Gioca(username, game_ID, totale_ore) VALUES
('utente01', '1', '10') ON DUPLICATE KEY UPDATE totale_ore = totale_ore + 10;
UPDATE UserAccount
SET punti = punti + (10 * 10)
WHERE username = 'utente01';

INSERT INTO Gioca(username, game_ID, totale_ore) VALUES
('utente01', '5', '20') ON DUPLICATE KEY UPDATE totale_ore = totale_ore + 10;
UPDATE UserAccount
SET punti = punti + (20 * 10)
WHERE username = 'utente01';

-- Creazione di un'inserzione (Operazione 4)
INSERT INTO Inserzione(prezzo, username, itemInstance_ID) VALUES
('10.50', 'utente02', '10');

-- Apertura di un pacchetto (Operazione 5)
INSERT INTO ItemInstance (usura, item_ID, username)
SELECT RAND(), racchiude.equip_ID, 'utente01'
FROM Racchiude
WHERE pacchetto_ID = 1  								-- ID del pacchetto aperto
ORDER BY RAND()  										-- Ordina casualmente i risultati
LIMIT 1;  												-- Seleziona solo un equipaggiamento casuale
DELETE FROM ItemInstance WHERE ItemInstance_ID = 1;  	-- eliminazione del pacchetto aperto tramite ID

