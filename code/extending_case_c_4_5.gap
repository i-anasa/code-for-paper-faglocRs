# GAP code, see https://www.gap-system.org/
# Finite quotient of an NEC group with signature (0;+;[2,t,u];{-})
# acting on a compact Riemann surface with said signature.
# Case c, the action extends.
# Finitely presented group on two generators.


# Free group.
f := FreeGroup( "a", "b");;
a := f.1;; b := f.2;;

# Fp quotient.
G := f / [ a^2, b^4, (a*b)^5, (a^-1*b^-1*a*b)^3 ];;
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
