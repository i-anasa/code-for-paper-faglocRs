# GAP code, see https://www.gap-system.org/
# Finite quotient of an NEC group with signature (0;+;[t];{(u)})
# acting on a compact Riemann surface with said signature.
# Case a, the action extends.
# Finitely presented family of groups.

# Free group.
f := FreeGroup( "a", "c");;
a := f.1;; c := f.2;;

# Fp quotient, with the commutator relations.
G := f / [ a^3, c^2, (a^-1*c*a*c)^4, (c*a)^12, ((a*c)^2*(a^-1*c)^2)^4 ];;
a := G.1;; c := G.2;;

# conjugated generators for the normal closure of <u>,
# from succesive conjugation by a sequence of elements:
u := (c*a)^3 * (c*a^(-1))^3;;
U := [u];;

seq :=  [ a, c, a ];;
m := Length(seq);;
for k in [1..m] do
    U[k+1] := seq[k]^-1 * U[k] * seq[k];
od;

# subgroup N
N := Subgroup(G, U);;
Print("Is the subgroup N normal? ", IsNormal(G, N), "\n");
Q := G / U;;

Print("Size of the quotient G/U = ", Size(Q), "\n");

Print("---------------------------------------------\n");

FpN := Range(IsomorphismFpGroup(N));;
P := PresentationFpGroup(FpN);;
TzOptions( P ).saveLimit := 1;;
TzOptions( P ).searchSimultaneous := 1;;
TzGoGo(P);;
TzPrintRelators(P);

Print("Description of N: ", StructureDescription(FpN), "\n");
