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
    3> io:format("~p~n",[synapticula:keylist()]).
    [j136y7,j167y2,j17,j17y2,j2,j23,j236,j23k6,j246y3,j25,j256,j25y6,j26,j26y3,
    j26y34,j2k34,j2k5,j2k56,j2k56x4,j2k6,j2k6x5,j2k6y3,j2y3,j3,j346y5,j34k6,j36,
    j3k5,j3k56x4,j3k5x4,j3k6,j5,j56,j56y7,j5y6,j6,k1,k12,k125,k12j5,k135x4,k15,
    k157x6,k17j5,k1j5,k1j56y7,k1j6,k1j6y7,k2,k25,k256,k257x1,k25x1,k25x17,k26,
    k26x5,k2j17,k2j5,k2j56,k2j56y7,k2j5x1,k2j5y6,k2j6,k2x1,k34,k345x2,k34x2,k5,
    k56,k56x4,k6,k6x5,n0,n167,n167x4,n25x6,n26y5,n345,n345y7,n45y2,n5y2,n67x2,
    n6x2]
    ok
    4>

---

### Distribution
MIT License

