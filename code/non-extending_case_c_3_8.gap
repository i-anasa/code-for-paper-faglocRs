# GAP code, see https://www.gap-system.org/
# Finite quotient of an NEC group with signature (0;+;[2,t,u];{-})
# acting on a compact Riemann surface with said signature.
# Case c, the action does not extend.
# Permutation group on two generators.

# generators
a := (3,9)(5,6)(4,7);;
b := (1,2,3)(4,5,6)(7,8,9);;

# Permutation group.
G := Group([a,b]);;
a := G.1;; b := G.2;;

# Show properties and orders:
Print (
    "\n  Properties of the quotient:\n-------------------------------------",
    "\n Size: ", Size(G),
    "\n Orders of the elements: \n ", 
    " o(a) = ", Order(a), " | ",
    " o(b) = ", Order(b), " | ",
    " o(ab) = ", Order(a*b), "\n "
);;

isom := GroupGeneralMappingByImages(G, G, [a,b], [a^-1,b^-1]);;
Print("\nDoes the action of G admit an extension? ", IsMapping(isom), " \n");
