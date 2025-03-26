COLUMN NOM FORMAT A20;
COLUMN NOM_ELFE FORMAT A20;
COLUMN NOM_JOUET FORMAT A20;

-- Les noms portés par plusieurs elfes
SELECT DISTINCT nom_elfe AS NOM FROM Elfe e1 WHERE nom_elfe IN (SELECT nom_elfe FROM Elfe e2 WHERE e1.id_elfe <> e2.id_elfe);


-- Elfes qui ont pour spécialité ‘Couture’ ou ‘Emballage’
SELECT DISTINCT e.id_elfe, nom_elfe from Elfe e, Elfe_Spe es, Specialite s 
WHERE e.id_elfe = es.id_elfe AND es.id_spe = s.id_spe
AND (nom_spe = 'Couture' OR nom_spe = 'Emballage') ORDER BY e.id_elfe;

-- Elfes qui ont pour spécialité ‘Couture’ et ‘Emballage’
SELECT DISTINCT e.id_elfe, nom_elfe from Elfe e, Elfe_Spe es, Specialite s 
WHERE e.id_elfe = es.id_elfe AND es.id_spe = s.id_spe AND nom_spe = 'Couture' 
INTERSECT (
	SELECT DISTINCT e.id_elfe, nom_elfe from Elfe e, Elfe_Spe es, Specialite s 
	WHERE e.id_elfe = es.id_elfe AND es.id_spe = s.id_spe AND nom_spe = 'Emballage' 
);

-- Les elfes ayant plus de 2 spécialités

SELECT es.id_elfe AS ID, nom_elfe AS NOM, COUNT(id_spe) AS "Nombre de spe" FROM Elfe_Spe es, Elfe e WHERE es.id_elfe = e.id_elfe GROUP BY es.id_elfe, nom_elfe HAVING(COUNT(id_spe)) > 2;

-- La somme des volumes des traineaux par couleur
SELECT couleur_tr, SUM(volume_tr) AS SOMME FROM Traineau GROUP BY couleur_tr;

-- La capacité de chaque traineau
SELECT t.id_tr, SUM(capac_renne) AS CAPACITE FROM Traineau t, Renne r WHERE t.id_tr = r.id_tr GROUP BY t.id_tr ORDER BY t.id_tr;


-- Quels jouets sont demandés par tous les enfants ?

-- Double négation : Soit j € J
-- 	Pour tout e€E, (j,e) € D
-- -> 	Il n'existe pas e€E, (j,e) €/D
SELECT id_jouet, nom_jouet FROM Jouet j WHERE NOT EXISTS (
SELECT id_enfant FROM Enfant e WHERE NOT EXISTS (
SELECT * FROM Demande d WHERE d.id_enfant = e.id_enfant AND j.id_jouet = d.id_jouet)); 
-- Dénombrement

SELECT d.id_jouet, nom_jouet FROM Demande d, Jouet j WHERE d.id_jouet = j.id_jouet GROUP BY d.id_jouet, nom_jouet HAVING COUNT(id_enfant) = (SELECT COUNT(*) FROM Enfant); 

-- Ensembliste

SELECT DISTINCT d1.id_jouet, nom_jouet FROM Demande d1, Jouet j WHERE d1.id_jouet = j.id_jouet AND NOT EXISTS (
SELECT id_enfant FROM Enfant e 
MINUS (
SELECT id_enfant FROM Demande d2 WHERE d2.id_jouet = d1.id_jouet));

-- Pour chaque elfe, afficher ses remplaçants
SELECT id_absent, e1.nom_elfe, id_remplacant, e2.nom_elfe FROM Elfe_Remplace er, Elfe e1, Elfe e2 WHERE id_absent = e1.id_elfe AND id_remplacant = e2.id_elfe ORDER BY id_absent, id_remplacant;

-- Les elfes remplacés par l'elfe 13
SELECT id_absent, e.nom_elfe FROM Elfe_Remplace er, Elfe e WHERE id_absent = e.id_elfe AND id_remplacant = 13 ORDER BY id_absent;

-- Les jouets demandés par les enfants qui ont moins de 8 ans.
SELECT DISTINCT nom_jouet AS "AGE" FROM Enfant e, Demande d, Jouet j 
WHERE e.id_enfant = d.id_enfant AND d.id_jouet = j.id_jouet 
AND (SYSDATE-date_enfant)/365.25 < 8; 


-- Quels sont les jouets produits par les ateliers qui ont fabriqué une voiture en bois ?
SELECT J1.nom_jouet FROM jouet J1 WHERE J1.id_jouet IN(
SELECT F1.id_jouet FROM Fabrique F1 WHERE F1.id_atelier IN(
SELECT F2.id_atelier FROM Fabrique F2 WHERE F2.id_jouet IN(
SELECT J2.id_jouet FROM Jouet J2 WHERE J2.nom_jouet = 'Voiture en bois')));


-- Calculer la charge réelle de chaque traineau en service
SELECT id_tr, SUM(EC.quantite*ES.quantite) AS CHARGE FROM Matiere_premiere MP,Jouet J,Entrepot E,Est_compose EC,Est_stocke ES 
WHERE MP.id_mat=EC.id_mat AND EC.id_jouet=J.id_jouet AND J.id_jouet=ES.id_jouet AND ES.region=E.region GROUP BY id_tr
UNION ( 
SELECT id_tr, 0 FROM Entrepot WHERE region NOT IN (SELECT region FROM Est_Stocke)) ;

-- Trouver le jouet plus produit (avec les ex-aequo)
SELECT nom_jouet, SUM(quantite) AS QUANTITE FROM Jouet J,Est_stocke ES WHERE J.id_jouet=ES.id_jouet GROUP BY nom_jouet,J.id_jouet HAVING SUM(quantite)=(
SELECT MAX(SUM(quantite)) FROM Jouet J2,Est_stocke ES2 WHERE J2.id_jouet=ES2.id_jouet GROUP BY J2.id_jouet);

-- Quels sont les jouets pouvant substituer le camion en plastique ?
SELECT J1.nom_jouet FROM Jouet J1,Jouet J2,Substitue S WHERE J1.id_jouet=id_substituant AND J2.id_jouet = id_substitue AND J2.nom_jouet='Camion en plastique';

-- Qui sont les elfes qui entretiennent le traineau 2 ?
SELECT E.id_elfe, nom_elfe FROM Elfe E,Elfe_equipe EE, Equipe Eq, Entrepot Ent
WHERE E.id_elfe=EE.id_elfe AND EE.id_equipe=Eq.id_equipe AND Eq.region=Ent.region AND id_tr = 2;
