% Family Relationship in prolog
/*
dominio
	% nome - definidos pelo programador; symbol - textos or strings
	nome=simbolo
predicates
	gerou(nome, nome).
	feminino(nome).
	masculino(nome).
	pai(nome, nome).
	mae(nome, nome).
	temfilho(nome).
	irma(nome, nome).
	irmao(nome, nome).

clauses 
*/
	feminino(pam).
	feminino(liz).
	feminino(pat).
	feminino(ann).

	masculino(jim).
	masculino(tom).
	masculino(bob).
	masculino(petter).

	gerou(pam, bob).
	gerou(tom, bob).
	gerou(tom, liz).
	gerou(bob, ann).
	gerou(bob, pat).
	gerou(pat, jim).
	gerou(bob, petter).
	gerou(petter, jim).

	mae(X,Y) :- gerou(X,Y), feminino(X).
	pai(X,Y) :- gerou(X,Y), masculino(X).
	irma(X,Y) :- gerou(Z,X), gerou(Z,Y), feminino(X),X\==Y.
	temFilho(X):- gerou(X,_).
	% _ variavel anonima
	irmao(X,Y) :- gerou(Z,X), gerou(Z,Y), masculino(X),X\==Y.