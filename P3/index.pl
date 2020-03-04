anak(budi, adi).
anak(budi, ana).
anak(badu, dedi).
anak(badu, deni).
anak(toto, budi).
anak(toto, badu).
anak(ana, siti).
anak(deni, riri).

% fungi tidak boleh menggunakan fungsi lain (By Gasim)
% He said "nanti kalo kita gk butuh fungsi itu gimana?"

ayah(Ayah, OrangIni) :- anak(Ayah, OrangIni).

kakek(Kakek, OrangIni) :-
    anak(Ayah, OrangIni),
    anak(Kakek, Ayah).

cucu(Cucu, Kakek) :-
    anak(Kakek, Ayah),
    anak(Ayah, Cucu).

saudara(Saudara, OrangIni) :-
    anak(Ayah, OrangIni),
    anak(Ayah, Saudara),
    not(OrangIni = Saudara).

sepupu(NamaSepupu, OrangIni) :-
    anak(Ayah, OrangIni),
    anak(Kakek, Ayah),
    anak(Kakek, OrtuSepupu),
    not(OrtuSepupu = Ayah),
    anak(OrtuSepupu, NamaSepupu).

