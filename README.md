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
    1> c(allotrope).
    {ok,allotrope}
    2> allotrope:ennead(n0).
    {"____ FePb HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ",
     "PbFe ____ AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ CuHg ",
     "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb ",
     "AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ CuHg PbFe ____ ",
     "SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb HgCu ____ ",
     "AgAu ____ FePb HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ ",
     "CuHg PbFe ____ AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ ",
     "FePb HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ ",
     "____ AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ CuHg PbFe "}
    3> element(3, allotrope:ennead(n0)).
    "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb "
    4> orddict:fetch(n0, allotrope:datastore()).
    "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb "
    5> allotrope:obtain(n0).
    ["HgCu","SnSn","CuHg","PbFe","AuAg","AgAu","FePb"]
    6> allotrope:keylist().
    [j136y7,j167y2,j17,j17y2,j2,j23,j236,j23k6,j246y3,j25,j256,
     j25y6,j26,j26y3,j26y34,j2k34,j2k5,j2k56,j2k56x4,j2k6,j2k6x5,
     j2k6y3,j2y3,j3,j346y5,j34k6,j36,j3k5,j3k56x4|...]
    7> 

---

### Distribution
MIT License

