# GAP code, see https://www.gap-system.org/
# Finite quotient of an NEC group with signature (0;+;[-];{(2,3,15)})
# acting on a compact Riemann surface with said signature.


# Base group.
f := FreeGroup( "a", "b", "c");;
a := f.1;; b := f.2;; c := f.3;;

# Presentation for the group.
G := f / [ a^2, b^2, c^2, (a*b)^2, (b*c)^3, (c*a)^15, ((c*a)^5*b)^2 ];;
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
    " o(ca) = ", Order(c*a), "\n ",
    "Structure: ", StructureDescription(G), "\n "
);;

# Orientation preserving automorphism subgroup.
K := Subgroup(G, [a*b, b*c]);;
i := Index(G, K);;
Print("\nIs K=<ab,bc> a proper subgroup of G? ", i > 1, "\n");
Print("Index [G,K]: ", i, "\n");
