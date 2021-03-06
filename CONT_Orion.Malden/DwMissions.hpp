class DwMissions {
	class MainMissions {
		class LolisseLegacy {
			name="Batterie AA";
			description="Nos aéronefs ne peuvent pas approcher l'île tant que la batterie AA de Lolisse est active. Faites le nécessaire pour la rendre inopérante.";
			type="destroy";
			location="getArray(configFile >> 'CfgWorlds' >> worldName >> 'Names' >> 'Malden_V_Lolisse' >> 'position')";
			playable=1;
			path="missions\lolisse\lolisse1.sqf";
			requires[]={};
		};
		class LarcheLegacy {
			name="Noeud de télécommunications";
			description="Il semble que le CSAT emploie la région de Larche comme noeud central pour les communications courte-portée de ses troupes sur l'île. Perturbez les opérations ennemies en détruisant l'équipement adéquat.";
			type="destroy";
			location="getArray(configFile >> 'CfgWorlds' >> worldName >> 'Names' >> 'Malden_C_Larche' >> 'position')";
			playable=1;
			path="missions\larche\larche_legacy.sqf";
			requires[]={};
		};
		class ArudyLegacy {
			name="Fichier d'inventaire";
			description="Un officier du CSAT est en ce moment déployé sur Malden pour effectuer un inventaire de tout le matériel militaire présent sur l'île. Il s'agit du genre d'informations qui nous serait très utile. La dernière localisation connue de cet officier est Arudy, trouvez son ordinateur et dérobez l'inventaire qui doit y être stocké.";
			type="download";
			location="getArray(configFile >> 'CfgWorlds' >> worldName >> 'Names' >> 'Malden_V_Arudy' >> 'position')";
			playable=1;
			path="missions\arudy\arudy_legacy.sqf";
			requires[]={};
		};
		class LaRiviereVLS {
			name="Frappe Venator";
			description="La haute hiérarchie exige une démonstration des capacités opérationnelles et de l'efficacité du missile de croisière Venator. Nous avons choisi une cible stratégique d'actualité : le port de La Rivière. Il a été réquisitionné par le CSAT il y a deux semaines et est depuis lors aménagé en site de test d'un nouveau modèle de missile anti-navire. Démontrez les capacités du Venator en détruisant ce missile depuis la FREMM Normandie.";
			type="destroy";
			location="getArray(configFile >> 'CfgWorlds' >> worldName >> 'Names' >> 'Malden_L_LaRiviereH' >> 'position')";
			playable=1;
			path="missions\riviere_vls\riviere_vls.sqf";
			requires[]={};
		};
		class CanconLegacy {
			name="Journaliste prisonnier";
			description="Un journaliste britannique un peu trop zélé est retenu prisonnier par le CSAT dans la ville de Cancon, dans l'attente d'un transfert vers les prisons du continent. Le Royaume-Uni nous demande d'engager nos moyens à proximité afin de récupérer cet homme et de le ramener auprès du commandant, à bord de la FREMM Normandie.";
			type="takeoff";
			location="getArray(configFile >> 'CfgWorlds' >> worldName >> 'Names' >> 'Malden_V_Cancon' >> 'position')";
			playable=1;
			path="missions\cancon\cancon_legacy.sqf";
			requires[]={};
		};
		class OrNoir {
			name="Opération Or Noir";
			description="Suite à des problèmes d'approvisionnement, le CSAT semble être en pénurie de carburant pour ses véhicules. La seule réserve restante à l'heure actuelle est stockée dans les réservoirs de l'ancienne centrale électrique du Port. Détruire ces réservoirs mettrait sérieusement en difficulté le CSAT, l'obligeant à restreindre encore davantage ses mouvements.";
			type="destroy";
			location="getArray(configFile >> 'CfgWorlds' >> worldName >> 'Names' >> 'Malden_L_powerplant' >> 'position')";
			playable=1;
			path="missions\ornoir\ornoir.sqf";
			requires[]={};
		};
	};
};