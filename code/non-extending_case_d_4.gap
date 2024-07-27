# GAP code, see https://www.gap-system.org/
# Finite quotient of an NEC group with signature (0;+;[-];{(2,t,2t)})
# acting on a compact Riemann surface with said signature.
# Case d, the action does not extend.
# Finitely presented group on three generators.


# Base group.
f := FreeGroup( "a", "b", "c");;
a := f.1;; b := f.2;; c := f.3;;

# Fp quotient.
G := f / [ a^2, b^2, c^2, (a*b)^2, (b*c)^4, (c*a)^8, (c*b*c*a)^2 ];;
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

# core in G' (if it extends)
K := Subgroup(G, [b, c, a*c*a]);;
Print("\nIndex of K in G = ", Index(G,F), "\n");

isom := GroupGeneralMappingByImages(K, K, [K.1,K.2,K.3], [K.2,K.1,K.3]);;
Print("\nDoes the action of G admit an extension? ", IsMapping(isom), " \n");
