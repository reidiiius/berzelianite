# Berzelianite
Septachords

---

### Download

    git clone https://github.com/reidiiius/berzelianite.git

---

### Usage
command line

    user@multivac2:~$ cd berzelianite/
    user@multivac2:~/berzelianite$ erl
    Eshell V5.9.1
    1> c(synapticula).
    {ok,synapticula}
    2> synapticula:ennead(n0).
    {"__ qw vr __ tt __ rv wq __ us __ su ",
     "wq __ us __ su __ qw vr __ tt __ rv ",
     "vr __ tt __ rv wq __ us __ su __ qw ",
     "us __ su __ qw vr __ tt __ rv wq __ ",
     "tt __ rv wq __ us __ su __ qw vr __ ",
     "su __ qw vr __ tt __ rv wq __ us __ ",
     "rv wq __ us __ su __ qw vr __ tt __ ",
     "qw vr __ tt __ rv wq __ us __ su __ ",
     "__ us __ su __ qw vr __ tt __ rv wq "}
    3> element(3, synapticula:ennead(n0)).
    "vr __ tt __ rv wq __ us __ su __ qw "
    4> orddict:fetch(n0, synapticula:datastore()).
    <<"vr dd tt dd rv wq dd us dd su dd qw ">>
    5> synapticula:obtain(n0).
    ["vr","tt","rv","wq","us","su","qw"]
    6> synapticula:keylist().
    [j136y7,j167y2,j17,j17y2,j2,j23,j236,j23k6,j246y3,j25,j256,
     j25y6,j26,j26y3,j26y34,j2k34,j2k5,j2k56,j2k56x4,j2k6,j2k6x5,
     j2k6y3,j2y3,j3,j346y5,j34k6,j36,j3k5,j3k56x4|...]
    7> 

---

### Distribution
MIT License

