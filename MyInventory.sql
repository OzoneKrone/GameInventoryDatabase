drop database if exists MyInventory;
create schema MyInventory;
use MyInventory;

create table UserAccount 
(
	username varchar(50) PRIMARY KEY NOT NULL,
    email varchar(50) UNIQUE NOT NULL,
    passwrd varchar(50) NOT NULL,
    punti INT
);

create table Transazione
(
	username varchar(50),
    data_ora DATETIME,
    prezzo INT NOT NULL,
    itemInstance_ID varchar(50) NOT NULL,
    username_partec varchar(50) NOT NULL,
    PRIMARY KEY (username, data_ora),
    FOREIGN KEY (username) REFERENCES UserAccount(username) ON UPDATE cascade ON DELETE cascade,
    FOREIGN KEY (username_partec) REFERENCES UserAccount(username) ON UPDATE cascade ON DELETE cascade
);

create table Genere
(
	nome varchar(50) PRIMARY KEY NOT NULL
);

create table Videogioco
(
	game_ID int (50) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(50) NOT NULL
)	AUTO_INCREMENT=1;

create table Classificazione
(
	game_ID int NOT NULL,
    genere varchar(50) NOT NULL,
    PRIMARY KEY(game_ID, genere),
    FOREIGN KEY (game_ID) REFERENCES Videogioco(game_ID) ON UPDATE cascade ON DELETE cascade,
    FOREIGN KEY (genere) REFERENCES Genere(nome) ON UPDATE cascade ON DELETE cascade
);

create table Item
(
	item_ID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(50) NOT NULL,
    descrizione varchar(50) NOT NULL,
    game_ID int NOT NULL,
    tipo ENUM('carta', 'pacchetto', 'equip'),
    FOREIGN KEY(game_ID) REFERENCES Videogioco(game_ID) ON UPDATE cascade ON DELETE cascade
) AUTO_INCREMENT=1;

create table ItemInstance
(
	itemInstance_ID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    usura float(10,9),
    inVendita bool DEFAULT false,
    item_ID int,
    username varchar(50),
    FOREIGN KEY(username) REFERENCES UserAccount(username) ON UPDATE cascade ON DELETE cascade,
    FOREIGN KEY(item_ID) REFERENCES Item(item_ID) ON UPDATE cascade ON DELETE cascade
) AUTO_INCREMENT=1;

create table Inserzione
(
	inserzione_ID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    prezzo float(6,2),
    username varchar(50),
    itemInstance_ID int,
    FOREIGN KEY(username) REFERENCES UserAccount(username) ON UPDATE cascade ON DELETE cascade,
    FOREIGN KEY(itemInstance_ID) REFERENCES ItemInstance(itemInstance_ID) ON UPDATE cascade ON DELETE cascade
) AUTO_INCREMENT=1;

create table Collection
(
	collection_ID varchar(50) PRIMARY KEY NOT NULL,
    nome varchar(50) NOT NULL
);

create table Proviene
(
	carta_ID int NOT NULL,
    collection_ID varchar(50) NOT NULL,
    PRIMARY KEY(carta_ID, collection_ID),
    FOREIGN KEY(carta_ID) REFERENCES Item(item_ID) ON UPDATE cascade ON DELETE cascade,
    FOREIGN KEY(collection_ID) REFERENCES Collection(collection_ID) ON UPDATE cascade ON DELETE cascade
);

create table Racchiude
(
	pacchetto_ID int,
    equip_ID int,
    rarità enum('comune', 'raro', 'epico', 'leggendario'),
    PRIMARY KEY(pacchetto_ID, equip_ID),
    FOREIGN KEY(equip_ID) REFERENCES Item(item_ID) ON UPDATE cascade ON DELETE cascade,
    FOREIGN KEY(pacchetto_ID) REFERENCES Item(item_ID) ON UPDATE cascade ON DELETE cascade
);

create table Gioca
(
	username varchar(50) NOT NULL,
    game_ID int NOT NULL,
    totale_ore INT,
    PRIMARY KEY(username, game_ID),
    FOREIGN KEY(username) REFERENCES UserAccount(username) ON UPDATE cascade ON DELETE cascade,
    FOREIGN KEY(game_ID) REFERENCES Videogioco(game_ID) ON UPDATE cascade ON DELETE cascade
);