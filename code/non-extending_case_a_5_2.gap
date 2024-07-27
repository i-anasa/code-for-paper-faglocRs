# GAP code, see https://www.gap-system.org/
# Finite quotient of an NEC group with signature (0;+;[t];{(u)})
# acting on a compact Riemann surface with said signature.
# Case a, the action does not extend.
# Permutation group on two generators.

# generators
a := (1,20,16,12,8)(2,17,13,9,5)(3,18,14,10,6)(4,19,15,11,7);;
c := (3,4)(9,10)(11,12)(15,16) (21,22);;

# Permutation group.
G := Group([a,c]);;
a := G.1;; c := G.2;;

# Show properties and orders:
Print (
    "\n  Properties of the quotient:\n-------------------------------------",
    "\n Size: ", Size(G),
    "\n Orders of the elements: \n ", 
    " o(a) = ", Order(a), " | ",
    " o(c) = ", Order(c), " | ",
    " o([a,c]) = ", Order(a^-1*c*a*c), "\n "
);;

# orientation preserving automorphism group
F := Subgroup(G, [a, c*a*c]);;
Print("\nIndex of G⁺ in G = ", Index(G,F), "\n");

isom := GroupGeneralMappingByImages(G, G, [a,c], [a^-1,c]);;
Print("\nDoes the action of G admit an extension? ", IsMapping(isom), " \n");
