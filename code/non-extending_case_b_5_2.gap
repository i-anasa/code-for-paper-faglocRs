# GAP code, see https://www.gap-system.org/
# Finite quotient of an NEC group with signature (0;+;[-];{(t,t,u)})
# acting on a compact Riemann surface with said signature.
# Case b, the action does not extend.
# Permutation group on three generators.

# generators
a := (1,2)(3,4)(5,6)(7,8)(9,10)(11,12)(13,14)(15,16)
    (17,18)(19,20)(21,22)(23,24)(25,26)(27,28)(29,30)
    (31,32)(33,34)(36,37)(38,39);;
b := (1,10)(2,3)(4,5)(6,7)(8,9)(11,20)(12,13)(14,15)
    (16,17)(18,19)(21,30)(22,23)(24,25)(26,27)(28,29)
    (32,33)(34,35)(37,38)(39,40);;
c := (1,10)(2,9)(3,11)(4,12)(5,37)(6,36)(7,34)(8,33)
    (13,21)(14,22)(15,31)(16,32)(17,20)(19,18)(27,30)(28,29)
    (25,39)(26,38)(40,41);;

# Permutation group.
G := Group([a,b,c]);;
a := G.1;; b := G.2;; c := G.3;;

# Show properties and orders:
Print (
    "\n  Properties of the quotient:\n-------------------------------------",
    "\n Size: ", Size(G),
    "\n Orders of the elements: \n ", 
    " o(a) = ", Order(a), " | ",
    " o(b) = ", Order(b), " | ",
    " o(c) = ", Order(c), " | ",
    " o(ab) = ", Order(a*b)," | ",
    " o(bc) = ", Order(b*c)," | ",
    " o(ca) = ", Order(a*c), "\n "
);;

# orientation preserving automorphism group
F := Subgroup(G, [a*b, b*c]);;
Print("\nIndex of G⁺ in G = ", Index(G,F), "\n");

isom := GroupGeneralMappingByImages(G, G, [a,b,c], [c,b,a]);;
Print("\nDoes the action of G admit an extension? ", IsMapping(isom), " \n");
