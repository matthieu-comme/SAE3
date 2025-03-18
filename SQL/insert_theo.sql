insert_theo.sql

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
