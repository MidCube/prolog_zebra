exists(A,(A,_,_)).
exists(A,(_,A,_)).
exists(A,(_,_,A)).


rightNextdoor(A,B,(B,A,_)).
rightNextdoor(A,B,(_,B,A)).

:-  exists(college(john,magdalene,_),Colleges),
	exists(college(andy,_,green),Colleges),
	rightNextdoor(college(_,magdalene,_),college(_,sidney,_),Colleges),
	exists(college(_,sidney,white),Colleges),
	exists(college(_,LilacCollege,lilac),Colleges),
    exists(college(matthew,MatthewCollege,_),Colleges),
	exists(college(QueensDos,queens,_),Colleges),
    format('The lilac college is ~w college~n', LilacCollege),
	format('Matthew is the dos of ~w college~n', MatthewCollege),
    format('The dos of Queens is ~w ~n', QueensDos).