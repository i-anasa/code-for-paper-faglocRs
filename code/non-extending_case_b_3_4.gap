# GAP code, see https://www.gap-system.org/
# Finite quotient of an NEC group with signature (0;+;[-];{(t,t,u)})
# acting on a compact Riemann surface with said signature.
# Case b, the action does not extend.
# Finitely presented group on three generators.


# Base group.
f := FreeGroup( "a", "b", "c");;
a := f.1;; b := f.2;; c := f.3;;

# Fp quotient.
G := f / [ a^2, b^2, c^2, (a*b)^3, (b*c)^3, (c*a)^4, (c*a*c*b*c*a*c*a*b)^2];;
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
