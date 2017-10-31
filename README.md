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
    2> allotrope:ennead(n0, allotrope:tuplist()). 
    {"____ FePb HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ",
     "PbFe ____ AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ CuHg ",
     "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb ",
     "AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ CuHg PbFe ____ ",
     "SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb HgCu ____ ",
     "AgAu ____ FePb HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ ",
     "CuHg PbFe ____ AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ ",
     "FePb HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ ",
     "____ AuAg ____ AgAu ____ FePb HgCu ____ SnSn ____ CuHg PbFe "}
    3> element(3, allotrope:ennead(n0, allotrope:tuplist())).
    "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb "
    4> allotrope:acquire(n0, allotrope:tuplist()).
    "HgCu ____ SnSn ____ CuHg PbFe ____ AuAg ____ AgAu ____ FePb "
    5> allotrope:obtain(n0, allotrope:tuplist()).
    ["HgCu","SnSn","CuHg","PbFe","AuAg","AgAu","FePb"]
    6>

---

### Distribution
MIT License

