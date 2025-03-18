INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (1, 'Pipotin');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (2, 'Fidou');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (3, 'Brindille');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (4, 'Lustrine');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (5, 'Moussu');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (6, 'Tibiscuit');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (7, 'Ribouldingue');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (8, 'Tourneboule');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (9, 'Zéphirin');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (10, 'Faribol');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (11, 'Bourrondelle');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (12, 'Gribouille');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (13, 'Toupillon');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (14, 'Zibeline');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (15, 'Chiffonnette');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (16, 'Biscotin');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (17, 'Niflette');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (18, 'Chantibule');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (19, 'Tirlipot');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (20, 'Patachon');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (21, 'Gribouille');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (22, 'Asticot');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (23, 'Chiffonnette');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (24, 'Savonnette');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (25, 'Brillolin');
INSERT INTO Elfe (id_elfe, nom_elfe) VALUES (26, 'Raoul');

 
INSERT INTO Specialite (id_spe, nom_spe) VALUES ('MEN', 'Menuiserie');
INSERT INTO Specialite (id_spe, nom_spe) VALUES ('EMB', 'Emballage');
INSERT INTO Specialite (id_spe, nom_spe) VALUES ('PEI', 'Peinture');
INSERT INTO Specialite (id_spe, nom_spe) VALUES ('SOU', 'Soudure');
INSERT INTO Specialite (id_spe, nom_spe) VALUES ('COU', 'Couture');
INSERT INTO Specialite (id_spe, nom_spe) VALUES ('MEC', 'Mécanique');
INSERT INTO Specialite (id_spe, nom_spe) VALUES ('ELE', 'Électronique');
INSERT INTO Specialite (id_spe, nom_spe) VALUES ('TST', 'Test de jouets');
INSERT INTO Specialite (id_spe, nom_spe) VALUES ('ASB', 'Assemblage de jouets');
INSERT INTO Specialite (id_spe, nom_spe) VALUES ('ENT', 'Entretien');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (1, 'MEN', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (1, 'SOU', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (2, 'EMB', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (2, 'TST', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (3, 'PEI', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (3, 'MEN', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (4, 'SOU', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (4, 'MEC', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (5, 'COU', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (5, 'EMB', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (6, 'MEC', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (6, 'ELE', 'S');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (6, 'TST', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (7, 'ELE', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (7, 'TST', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (8, 'TST', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (8, 'ASB', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (9, 'ASB', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (9, 'PEI', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (10, 'MEN', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (10, 'MEC', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (11, 'EMB', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (11, 'COU', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (12, 'PEI', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (12, 'ASB', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (13, 'MEC', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (13, 'SOU', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (14, 'ELE', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (14, 'TST', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (15, 'TST', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (15, 'MEN', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (16, 'ASB', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (16, 'EMB', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (17, 'MEN', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (17, 'PEI', 'S');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (17, 'ELE', 'S');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (17, 'ASB', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (18, 'COU', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (18, 'SOU', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (19, 'SOU', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (19, 'ELE', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (20, 'MEC', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (20, 'TST', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (21, 'ENT', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (21, 'MEN', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (22, 'ENT', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (22, 'EMB', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (23, 'ENT', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (23, 'PEI', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (24, 'ENT', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (24, 'MEC', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (25, 'ENT', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (25, 'ASB', 'S');

INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (26, 'ENT', 'P');
INSERT INTO Elfe_Spe (id_elfe, id_spe, type_spe) VALUES (26, 'COU', 'S');

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (1, 10);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (1, 17);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (1, 4);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (2, 11);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (2, 20);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (3, 12);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (3, 17);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (4, 13); 
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (4, 19); 

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (5, 18);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (5, 11);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (6, 20);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (6, 13);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (7, 14);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (7, 19);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (8, 15);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (8, 16);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (9, 16);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (9, 12);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (10, 1);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (10, 20);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (11, 2);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (11, 16);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (11, 5);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (11, 18);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (12, 3);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (12, 17);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (12, 9);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (12, 16);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (13, 4); 
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (13, 19);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (13, 6);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (13, 20);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (14, 7); 
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (14, 19);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (15, 8);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (15, 17);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (16, 9);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (16, 12);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (16, 2);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (16, 11);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (17, 1);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (17, 10);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (17, 3); 
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (17, 12);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (18, 5);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (18, 13);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (19, 4); 
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (19, 13);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (19, 7);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (19, 14);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (20, 6); 
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (20, 13);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (20, 8);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (20, 15);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (21, 22);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (21, 1);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (22, 24);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (22, 2);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (23, 21);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (23, 3);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (24, 22);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (24, 6);

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (25, 23);
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (25, 9); 

INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (26, 25); 
INSERT INTO Elfe_Remplace (id_absent, id_remplacant) VALUES (26, 11); 

INSERT INTO Atelier (id_atelier, nom_atelier, adr_atelier) VALUES (1, 'Bois Magique', '12 Rue des Lutins, 59000 Lille'); 
INSERT INTO Atelier (id_atelier, nom_atelier, adr_atelier) VALUES (2, 'Papier Cadeau', '45 Avenue des Étoiles, 62000 Arras');
INSERT INTO Atelier (id_atelier, nom_atelier, adr_atelier) VALUES (3, 'Couleurs Féeriques', '78 Rue des Pinceaux, 80000 Amiens');
INSERT INTO Atelier (id_atelier, nom_atelier, adr_atelier) VALUES (4, 'Métaux Enchantés', '23 Boulevard des Forges, 02100 Saint-Quentin');
INSERT INTO Atelier (id_atelier, nom_atelier, adr_atelier) VALUES (5, 'Fil Magique', '5 Place des Elfes, 60200 Compiègne');
INSERT INTO Atelier (id_atelier, nom_atelier, adr_atelier) VALUES (6, 'Rouages Mystiques', '14 Impasse des Lutins, 59200 Tourcoing');  
INSERT INTO Atelier (id_atelier, nom_atelier, adr_atelier) VALUES (7, 'Circuits Magiques', '32 Route des Énergies, 62500 Saint-Omer');
INSERT INTO Atelier (id_atelier, nom_atelier, adr_atelier) VALUES (8, 'Grand Test', '9 Allée du Père Noël, 59300 Valenciennes'); 
INSERT INTO Atelier (id_atelier, nom_atelier, adr_atelier) VALUES (9, 'Mains Habiles', '67 Rue des Jouets, 60280 Senlis');

INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (1, 500, 'R'); 
INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (2, 600, 'V'); 
INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (3, 550, 'M');  
INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (4, 700, 'R'); 
INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (5, 800, 'V'); 
INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (6, 650, 'M'); 
INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (7, 750, 'R'); 
INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (8, 850, 'V');  
INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (9, 900, 'M'); 
INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (10, 1000, 'R');  
INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (11, 1100, 'V'); 
INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (12, 950, 'M'); 
INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (13, 1200, 'R'); 
INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (14, 1300, 'V'); 
INSERT INTO Traineau (id_tr, volume_tr, couleur_tr) VALUES (15, 1400, 'M'); 

INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (1, 'Rudolphe', 1500, 13, 1, 'OUI');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (2, 'Comète', 1200, 13, 2, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (3, 'Étoile', 1100, 13, 3, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (4, 'Frimas', 1350, 13, 4, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (5, 'Pluie', 1450, 13, 5, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (6, 'Lutin', 1300, 13, 6, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (7, 'Glace', 1400, 13, 7, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (8, 'Neige', 1250, 13, 8, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (9, 'Frost', 1550, 14, 1, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (10, 'Hiver', 1600, 14, 2, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (11, 'Givre', 1500, 14, 3, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (12, 'Soleil', 1700, 14, 4, 'OUI');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (13, 'Tempête', 1800, 14, 5, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (14, 'Avalanche', 1900, 14, 6, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (15, 'Mistral', 2000, 14, 7, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (16, 'Boreal', 1400, 14, 8, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (17, 'Vent', 1350, 15, 1, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (18, 'Blizzard', 1450, 15, 2, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (19, 'Aurore', 1600, 15, 3, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (20, 'Neptune', 1500, 15, 4, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (21, 'Solstice', 1550, 15, 5, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (22, 'Odyssée', 1700, 15, 6, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (23, 'Nebula', 1650, 15, 7, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (24, 'Polaris', 1500, 15, 8, 'OUI');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (25, 'Stella', 1600, null, 0, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (26, 'Chimère', 1400, null, 0, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (27, 'Orion', 1750, null, 0, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (28, 'Nébuleuse', 1450, null, 0, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (29, 'Phoenix', 1850, null, 0, 'NON');  
INSERT INTO Renne (id_renne, nom_renne, capac_renne, id_tr, position_tr, capitaine) VALUES (30, 'Galaxie', 1900, null, 0, 'NON');

INSERT INTO Entrepot (region, nom_region, ville, capac_ent, id_tr) VALUES ('NA', 'Amérique du Nord', 'Québec', 10000, 1);  
INSERT INTO Entrepot (region, nom_region, ville, capac_ent, id_tr) VALUES ('SA', 'Amérique du Sud', 'La Paz', 8000, 2);  
INSERT INTO Entrepot (region, nom_region, ville, capac_ent, id_tr) VALUES ('EUW', 'Europe de l''Ouest', 'Paris', 15000, 3);  
INSERT INTO Entrepot (region, nom_region, ville, capac_ent, id_tr) VALUES ('EUE', 'Europe de l''Est', 'Moscou', 12000, 4);  
INSERT INTO Entrepot (region, nom_region, ville, capac_ent, id_tr) VALUES ('AFN', 'Afrique du Nord', 'Marrakech', 9000, 5);  
INSERT INTO Entrepot (region, nom_region, ville, capac_ent, id_tr) VALUES ('AFS', 'Afrique du Sud', 'Dakar', 11000, 6);  
INSERT INTO Entrepot (region, nom_region, ville, capac_ent, id_tr) VALUES ('ASE', 'Asie du Sud-Est', 'Singapour', 9500, 7);  
INSERT INTO Entrepot (region, nom_region, ville, capac_ent, id_tr) VALUES ('AE', 'Asie de l''Est', 'Pékin', 13500, 8);  
INSERT INTO Entrepot (region, nom_region, ville, capac_ent, id_tr) VALUES ('AC', 'Asie Centrale', 'Almaty', 8500, 9);  
INSERT INTO Entrepot (region, nom_region, ville, capac_ent, id_tr) VALUES ('OCE', 'Océanie', 'Sydney', 7000, 10);  
INSERT INTO Entrepot (region, nom_region, ville, capac_ent, id_tr) VALUES ('ANT', 'Antarctique', 'Station Polaire', 6000, 11);  
INSERT INTO Entrepot (region, nom_region, ville, capac_ent, id_tr) VALUES ('MO', 'Moyen-Orient', 'Dubaï', 10500, 12);  

INSERT INTO Equipe (id_equipe, nom_equipe, id_spe, id_chef, id_atelier, region) VALUES (1, 'Les Menuisiers', 'MEN', 1, 1, null);
INSERT INTO Equipe (id_equipe, nom_equipe, id_spe, id_chef, id_atelier, region) VALUES (2, 'Les Emballeurs', 'EMB', 2, 2, null);
INSERT INTO Equipe (id_equipe, nom_equipe, id_spe, id_chef, id_atelier, region) VALUES (3, 'Les Artistes', 'PEI', 3, 3, null);
INSERT INTO Equipe (id_equipe, nom_equipe, id_spe, id_chef, id_atelier, region) VALUES (4, 'Les Étincelles', 'SOU', 4, 4, null);
INSERT INTO Equipe (id_equipe, nom_equipe, id_spe, id_chef, id_atelier, region) VALUES (5, 'Les Aiguilles', 'COU', 5, 5, null);
INSERT INTO Equipe (id_equipe, nom_equipe, id_spe, id_chef, id_atelier, region) VALUES (6, 'Les Mécanos', 'MEC', 6, 6, null);
INSERT INTO Equipe (id_equipe, nom_equipe, id_spe, id_chef, id_atelier, region) VALUES (7, 'Les Nerds', 'ELE', 7, 7, null);
INSERT INTO Equipe (id_equipe, nom_equipe, id_spe, id_chef, id_atelier, region) VALUES (8, 'Les Petits Testeurs', 'TST', 8, 8, null);
INSERT INTO Equipe (id_equipe, nom_equipe, id_spe, id_chef, id_atelier, region) VALUES (9, 'Les Assembleurs', 'ASB', 9, 9, null);
INSERT INTO Equipe (id_equipe, nom_equipe, id_spe, id_chef, id_atelier, region) VALUES (10, 'The Cleaners', 'ENT', 21, null, 'NA');
INSERT INTO Equipe (id_equipe, nom_equipe, id_spe, id_chef, id_atelier, region) VALUES (11, 'Los Limpiadores', 'ENT', 22, null, 'SA');
INSERT INTO Equipe (id_equipe, nom_equipe, id_spe, id_chef, id_atelier, region) VALUES (12, 'Les Nettoyeurs', 'ENT', 23, null, 'EUW');

INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (1, 1);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (10, 1);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (17, 1);

INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (2, 2);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (11, 2);

INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (3, 3);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (12, 3);

INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (4, 4);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (19, 4);

INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (5, 5);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (18, 5);

INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (6, 6);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (13, 6);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (20, 6);

INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (7, 7);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (14, 7);

INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (8, 8);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (15, 8);

INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (9, 9);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (16, 9);

INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (21, 10);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (22, 10);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (23, 11);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (24, 11);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (25, 12);
INSERT INTO Elfe_Equipe (id_elfe, id_equipe) VALUES (26, 12);


INSERT INTO Fournisseur (id_fo, nom_fo, tel_go, email_fo, adr_fo) 
VALUES (1, 'JouetMaster', '0123456789', 'contact@jouetmaster.com', '10 Rue des Jouets, Paris, France');

INSERT INTO Fournisseur (id_fo, nom_fo, tel_go, email_fo, adr_fo) 
VALUES (2, 'FabriToy', '0234567890', 'info@fabritoy.com', '25 Avenue des Enfants, Lyon, France');

INSERT INTO Fournisseur (id_fo, nom_fo, tel_go, email_fo, adr_fo) 
VALUES (3, 'ToyMat', '0345678901', 'support@toymat.com', '5 Boulevard des Créateurs, Marseille, France');

INSERT INTO Fournisseur (id_fo, nom_fo, tel_go, email_fo, adr_fo) 
VALUES (4, 'LudikPlast', '0456789012', 'contact@ludikplast.com', '12 Impasse du Jeu, Toulouse, France');

INSERT INTO Fournisseur (id_fo, nom_fo, tel_go, email_fo, adr_fo) 
VALUES (5, 'WoodToy', '0567890123', 'info@woodtoy.com', '30 Rue du Bois, Nantes, France');

INSERT INTO Fournisseur (id_fo, nom_fo, tel_go, email_fo, adr_fo) 
VALUES (6, 'Metallik', '0678901234', 'service@metallik.com', '8 Rue des Métaux, Lille, France');

INSERT INTO Fournisseur (id_fo, nom_fo, tel_go, email_fo, adr_fo) 
VALUES (7, 'EcoJouet', '0789012345', 'contact@ecojouet.com', '45 Avenue Durable, Bordeaux, France');

INSERT INTO Fournisseur (id_fo, nom_fo, tel_go, email_fo, adr_fo) 
VALUES (8, 'SoftToy', '0890123456', 'info@softtoy.com', '20 Rue du Textile, Strasbourg, France');

INSERT INTO Fournisseur (id_fo, nom_fo, tel_go, email_fo, adr_fo) 
VALUES (9, 'ColorPlast', '0901234567', 'service@colorplast.com', '33 Chemin des Couleurs, Montpellier, France');

INSERT INTO Fournisseur (id_fo, nom_fo, tel_go, email_fo, adr_fo) 
VALUES (10, 'ResiTech', '0912345678', 'support@resitech.com', '18 Boulevard des Polymères, Rennes, France');



INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (1, 'Plastique ABS', 12.500, 1);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (2, 'Bois de hêtre', 25.750, 5);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (3, 'Métal léger', 30.200, 6);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (4, 'Tissu en coton', 15.300, 8);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (5, 'Caoutchouc naturel', 18.600, 7);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (6, 'Peinture non toxique', 9.850, 9);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (7, 'Plastique recyclé', 11.200, 7);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (8, 'Bois de chêne', 28.900, 5);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (9, 'Aluminium', 32.500, 6);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (10, 'Tissu en laine', 22.750, 8);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (11, 'Silicone alimentaire', 20.400, 3);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (12, 'Mousse EVA', 13.650, 4);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (13, 'Résine époxy', 27.900, 10);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (14, 'Cuir synthétique', 19.500, 8);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (15, 'Plastique PVC', 10.800, 1);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (16, 'Bois de pin', 23.100, 5);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (17, 'Acier inoxydable', 35.750, 6);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (18, 'Feutre coloré', 14.900, 9);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (19, 'Latex naturel', 17.300, 7);

INSERT INTO Matiere_Premiere (id_mat, nom_mat, cout_mat, id_fo) 
VALUES (20, 'Polycarbonate', 26.450, 3);



INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (1, 'Voiture en bois');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (2, 'Poupée en tissu');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (3, 'Train miniature');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (4, 'Puzzle en carton');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (5, 'Jeu de construction');

INSERT INTO Jouet (id_jouet, nom_jouet)
VALUES (6, 'Toupie métallique');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (7, 'Camion en plastique');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (8, 'Peluche éléphant');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (9, 'Marionnette en laine');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (10, 'Bateau en bois');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (11, 'Dinosaure plastique');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (12, 'Cubes éducatifs');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (13, 'Maison de poupée');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (14, 'Jeu de société');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (15, 'Avion en plastique');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (16, 'Traineau en bois');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (17, 'Peluche ourson');

INSERT INTO Jouet (id_jouet, nom_jouet)
VALUES (18, 'Jeu de quilles');

INSERT INTO Jouet (id_jouet, nom_jouet)
VALUES (19, 'Robot articulé');

INSERT INTO Jouet (id_jouet, nom_jouet) 
VALUES (20, 'Boîte à musique');

INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (2, 1, 0.500);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (4, 2, 0.300);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (9, 3, 0.700);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (6, 4, 0.150);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (1, 5, 1.000);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (3, 6, 0.200);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (15, 7, 1.500);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (10, 8, 0.800);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (14, 9, 0.500);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (8, 10, 1.200);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (11, 11, 0.900);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (12, 12, 1.500);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (7, 13, 2.000);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (13, 14, 1.000);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (20, 15, 1.100);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (16, 16, 1.800);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (10, 17, 0.700);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (5, 18, 2.200);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (19, 19, 1.300);
INSERT INTO Est_compose (id_mat, id_jouet, quantite) VALUES (17, 20, 1.600);

INSERT INTO Sous_traitant (id_st, nom_st, tel_st, email_st, adr_st) 
VALUES (1, 'FabriToys', '0123456789', 'contact@fabritoys.com', '12 Rue des Jouets, Paris, France');

INSERT INTO Sous_traitant (id_st, nom_st, tel_st, email_st, adr_st) 
VALUES (2, 'JouetExpress', '0987654321', 'info@jouetexpress.com', '45 Avenue du Bois, Lyon, France');

INSERT INTO Sous_traitant (id_st, nom_st, tel_st, email_st, adr_st) 
VALUES (3, 'LudoFactory', '0654321987', 'support@ludofactory.com', '78 Boulevard des Enfants, Marseille, France');

INSERT INTO Sous_traitant (id_st, nom_st, tel_st, email_st, adr_st) 
VALUES (4, 'PetitGénie', '0777888999', 'service@petitgenie.com', '5 Impasse des Créateurs, Toulouse, France');

INSERT INTO Sous_traitant (id_st, nom_st, tel_st, email_st, adr_st) 
VALUES (5, 'ToyMakers', '0666777888', 'hello@toymakers.com', '99 Route des Artisans, Bordeaux, France');

INSERT INTO Sous_traite (id_st, id_jouet) 
VALUES (1, 1);

INSERT INTO Sous_traite (id_st, id_jouet) 
VALUES (1, 5);

INSERT INTO Sous_traite (id_st, id_jouet) 
VALUES (2, 2);

INSERT INTO Sous_traite (id_st, id_jouet) 
VALUES (2, 6);

INSERT INTO Sous_traite (id_st, id_jouet) 
VALUES (3, 3);

INSERT INTO Sous_traite (id_st, id_jouet) 
VALUES (3, 7);

INSERT INTO Sous_traite (id_st, id_jouet) 
VALUES (4, 4);

INSERT INTO Sous_traite (id_st, id_jouet) 
VALUES (4, 8);

INSERT INTO Sous_traite (id_st, id_jouet) 
VALUES (5, 9);

INSERT INTO Sous_traite (id_st, id_jouet) 
VALUES (5, 10);


INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (1, 2);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (2, 3);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (3, 4);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (4, 5);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (5, 6);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (6, 7);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (7, 8);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (8, 9);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (9, 10);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (10, 11);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (11, 12);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (12, 13);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (13, 14);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (14, 15);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (15, 16);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (16, 17);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (17, 18);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (18, 19);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (19, 20);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (20, 1);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (20, 3);

INSERT INTO Substitue (id_substitue, id_substituant) 
VALUES (7, 9);


INSERT INTO Tournee (id_to, date_to) 
VALUES (1, TO_DATE('2025-12-24-21-53', 'YYYY-MM-DD-HH24-MI'));

INSERT INTO Tournee (id_to, date_to) 
VALUES (2, TO_DATE('2025-12-24-23-34', 'YYYY-MM-DD-HH24-MI'));

INSERT INTO Tournee (id_to, date_to) 
VALUES (3, TO_DATE('2025-12-24-22-10', 'YYYY-MM-DD-HH24-MI'));

INSERT INTO Tournee (id_to, date_to) 
VALUES (4, TO_DATE('2025-12-24-22-42', 'YYYY-MM-DD-HH24-MI'));

INSERT INTO Tournee (id_to, date_to) 
VALUES (5, TO_DATE('2025-12-24-21-46', 'YYYY-MM-DD-HH24-MI'));



INSERT INTO Intermittent (id_int, nom_int, id_to, region) 
VALUES (1, 'Pierre Dupont', 1, 'SA');

INSERT INTO Intermittent (id_int, nom_int, id_to, region) 
VALUES (2, 'Sophie Martin', 1, 'SA');

INSERT INTO Intermittent (id_int, nom_int, id_to, region)  
VALUES (3, 'Jacques Durand', 2, 'SA');

INSERT INTO Intermittent (id_int, nom_int, id_to, region) 
VALUES (4, 'Claire Lemoine', 2, 'SA');

INSERT INTO Intermittent (id_int, nom_int, id_to, region) 
VALUES (5, 'Lucie Bernard', 3, 'NA');

INSERT INTO Intermittent (id_int, nom_int, id_to, region) 
VALUES (6, 'Marc Lefevre', 3, 'NA');

INSERT INTO Intermittent (id_int, nom_int, id_to, region)  
VALUES (7, 'Émilie Petit', 4, 'NA');

INSERT INTO Intermittent (id_int, nom_int, id_to, region) 
VALUES (8, 'François Dupuis', 4, 'NA');

INSERT INTO Intermittent (id_int, nom_int, id_to, region) 
VALUES (9, 'David Moreau', 5, 'EUW');

INSERT INTO Intermittent (id_int, nom_int, id_to, region) 
VALUES (10, 'Isabelle Lefevre', 5, 'EUW');


INSERT INTO Enfant (id_enfant, nom_enfant, prenom_enfant, adr_enfant, date_enfant, id_to) 
VALUES (1, 'Dupont', 'Lucas', '15 Rue des Érables, Montréal, Canada', TO_DATE('2016-05-12', 'YYYY-MM-DD'), 1);
INSERT INTO Enfant (id_enfant, nom_enfant, prenom_enfant, adr_enfant, date_enfant, id_to) 
VALUES (2, 'Smith', 'Emma', '2305 Maple Street, New York, USA', TO_DATE('2018-11-22', 'YYYY-MM-DD'), 5);
INSERT INTO Enfant (id_enfant, nom_enfant, prenom_enfant, adr_enfant, date_enfant, id_to) 
VALUES (3, 'García', 'Mateo', 'Avenida Libertador 450, Buenos Aires, Argentine', TO_DATE('2017-07-04', 'YYYY-MM-DD'), 1);
INSERT INTO Enfant (id_enfant, nom_enfant, prenom_enfant, adr_enfant, date_enfant, id_to) 
VALUES (4, 'Silva', 'Gabriela', 'Rua das Flores 123, São Paulo, Brésil', TO_DATE('2019-02-15', 'YYYY-MM-DD'), 2);
INSERT INTO Enfant (id_enfant, nom_enfant, prenom_enfant, adr_enfant, date_enfant, id_to) 
VALUES (5, 'Martinez', 'Santiago', 'Calle Mayor 56, Madrid, Espagne', TO_DATE('2015-09-30', 'YYYY-MM-DD'), 5);
INSERT INTO Enfant (id_enfant, nom_enfant, prenom_enfant, adr_enfant, date_enfant, id_to) 
VALUES (6, 'Lefebvre', 'Chloé', '28 Avenue des Champs, Paris, France', TO_DATE('2017-12-05', 'YYYY-MM-DD'), 5);
INSERT INTO Enfant (id_enfant, nom_enfant, prenom_enfant, adr_enfant, date_enfant, id_to) 
VALUES (7, 'Andersen', 'Oliver', '10 Rosenkrantz Gate, Oslo, Norvège', TO_DATE('2016-06-18', 'YYYY-MM-DD'), 5);
INSERT INTO Enfant (id_enfant, nom_enfant, prenom_enfant, adr_enfant, date_enfant, id_to) 
VALUES (8, 'Moretti', 'Giulia', 'Via Roma 88, Rome, Italie', TO_DATE('2019-08-27', 'YYYY-MM-DD'), 5);
INSERT INTO Enfant (id_enfant, nom_enfant, prenom_enfant, adr_enfant, date_enfant, id_to) 
VALUES (9, 'Fernandez', 'Lucas', 'Avenida Paulista 765, Lima, Pérou', TO_DATE('2015-03-10', 'YYYY-MM-DD'), 2);
INSERT INTO Enfant (id_enfant, nom_enfant, prenom_enfant, adr_enfant, date_enfant, id_to) 
VALUES (10, 'O’Connor', 'Liam', '5 St Patrick Street, Dublin, Irlande', TO_DATE('2018-10-01', 'YYYY-MM-DD'), 5);

INSERT INTO Distribue (id_enfant, id_jouet, id_to) 
VALUES (1, 1, 1);

INSERT INTO Distribue (id_enfant, id_jouet, id_to) 
VALUES (2, 2, 2);

INSERT INTO Distribue (id_enfant, id_jouet, id_to) 
VALUES (3, 3, 2);

INSERT INTO Distribue (id_enfant, id_jouet, id_to) 
VALUES (4, 4, 3);

INSERT INTO Distribue (id_enfant, id_jouet, id_to) 
VALUES (5, 5, 3);

INSERT INTO Distribue (id_enfant, id_jouet, id_to) 
VALUES (6, 6, 4);

INSERT INTO Distribue (id_enfant, id_jouet, id_to) 
VALUES (7, 7, 4);

INSERT INTO Distribue (id_enfant, id_jouet, id_to) 
VALUES (8, 8, 5);

INSERT INTO Distribue (id_enfant, id_jouet, id_to) 
VALUES (9, 9, 5);

INSERT INTO Distribue (id_enfant, id_jouet, id_to) 
VALUES (10, 10, 1);

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (1, 1, 'V');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (1, 2, 'F');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (2, 3, 'V');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (2, 4, 'F');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (3, 5, 'V');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (3, 6, 'F');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (4, 7, 'V');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (4, 8, 'F');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (5, 9, 'V');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (5, 10, 'F');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (6, 11, 'V');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (6, 12, 'F');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (7, 13, 'V');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (7, 14, 'F');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (8, 15, 'V');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (8, 16, 'F');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (9, 17, 'V');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (9, 18, 'F');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) 
VALUES (10, 19, 'V');

INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (2, 2, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (3, 2, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (4, 2, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (5, 2, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (6, 2, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (7, 2, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (8, 2, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (9, 2, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (10, 2, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (1, 3, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (3, 3, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (4, 3, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (5, 3, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (6, 3, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (7, 3, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (8, 3, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (9, 3, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (10, 3, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (6, 4, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (7, 4, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (8, 4, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (9, 4, 'F');
INSERT INTO Demande (id_enfant, id_jouet, jouet_choisi) VALUES (10, 4, 'F');

INSERT INTO Est_stocke (id_jouet, region, quantite) VALUES (1, 'NA', 2);
INSERT INTO Est_stocke (id_jouet, region, quantite) VALUES (3, 'NA', 1);
INSERT INTO Est_stocke (id_jouet, region, quantite) VALUES (5, 'SA', 3);
INSERT INTO Est_stocke (id_jouet, region, quantite) VALUES (7, 'SA', 1);
INSERT INTO Est_stocke (id_jouet, region, quantite) VALUES (9, 'EUW', 1);
INSERT INTO Est_stocke (id_jouet, region, quantite) VALUES (11, 'EUW', 5);
INSERT INTO Est_stocke (id_jouet, region, quantite) VALUES (13, 'EUW', 1);
INSERT INTO Est_stocke (id_jouet, region, quantite) VALUES (15, 'EUW', 10);
INSERT INTO Est_stocke (id_jouet, region, quantite) VALUES (17, 'SA', 1);
INSERT INTO Est_stocke (id_jouet, region, quantite) VALUES (19, 'EUW', 1);
INSERT INTO Est_stocke (id_jouet, region, quantite) VALUES (17, 'EUW', 9);

INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (1, 1);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (2, 5);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (3, 6);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (4, 3);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (5, 2);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (6, 4);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (7, 7);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (8, 5);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (9, 1);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (10, 1);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (11, 7);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (12, 3);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (13, 2);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (14, 6);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (15, 7);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (16, 1);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (17, 5);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (18, 6);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (19, 4);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (20, 8);
INSERT INTO Fabrique (id_jouet, id_atelier) VALUES (1, 2);

