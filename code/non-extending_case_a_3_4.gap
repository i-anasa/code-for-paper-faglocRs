# GAP code, see https://www.gap-system.org/
# Finite quotient of an NEC group with signature (0;+;[t];{(u)})
# acting on a compact Riemann surface with said signature.
# Case a, the action does not extend.
# Finitely presented group on two generators.

# Free group.
f := FreeGroup( "a", "c");;
a := f.1;; c := f.2;;

# Fp quotient.
G := f / [ a^3, c^2, (a^-1*c*a*c)^4, 
    ((a*c)^2*a^-1*c)^2*(a^-1*c)^2*(a*c)^2*(a*c*(a^-1*c)^2)^2  ];;
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
