algorithme corriger bataille navale : 

CONST
nb_bateau←2 :ENTIER  // nombre de bateau admissible dans une flotte 
max_case←5: ENTIER // nb de case max pour les bateau 
MIN_L←1:ENTIER
MAX_L←50 : ENTIER
MIN_C←1 : ENTIER
MAX_C←50:ENTIER


//question1
type cellule =enregistrement
        ligne : ENTIER 
        colonne :ENTIER 
FINENREGISTREMENT 

//question2
type bateau = enregistrement
    nCase : tableau [1..max_case] de cellule
Fin enregistrement

//question 3

type flotte =enregistrement
    nBateau: tableau[1..nb_bateau] de bateau 
FINENREGISTREMENT

//question 4

type bool =(vrai, faux) 
    type posBateau =(ligne,colonne,diagonale) 
    type etatBateau )(toucher,couler) 
    type etatFlotte =(flot,assombri) 
    type etatJoueur = ( gagner,perdu) 

//question5
procedure CreaCase (ligne,colonne : ENTIER; var ncel: cellule )
    ncel.ligne←ligne 
    ncel.colonne←colonne 
FINPROCEDURE 

{function CreaCase (ligne,colonne: ENTIER) : cellule
var 
ncel : cellule 

DEBUT 
ncel. ligne ←ligne 
Ncel.colonne ← colonne
creacellule ← ncel 
Fin fonction 
}

Fonction CmpCellule (ncel,tcel:cellule ): Bool 
DEBUT 

    SI ncel.ligne=tcel.ligne ET ncel.colonne=tcel.colonne ALORS 
        cmpCellule ← vrai 
    Sinon
        cmpCellule ← faux 

    FINSI 
FINFONCTION

//question 6
FONCTION creatBateau (nCel:cellule;taille:entier):bateau
var
	tmpBateau:bateau
	pos:entier
	i:entier
	pBateau:posBateau
DEBUT
	pos ← aleatoire (1..3)
	pBateau ← posBateau (pos)
FINFONCTION