# GAP code, see https://www.gap-system.org/
# Finite quotient of an NEC group with signature (0;+;[-];{(2,t,2t)})
# acting on a compact Riemann surface with said signature.
# Case d, the action extends.
# Finitely presented family of groups.

# Free group.
f := FreeGroup( "a", "b", "c");;
a := f.1;; b := f.2;; c := f.3;;

# Fp quotient, with the commutator relations.
G := f / [ a^2, b^2, c^2, (a*b)^2, (b*c)^4, (c*a)^8, ((a*c)^2 * b)^4, (a*c*b)^8 ];;
a := G.1;; b := G.2;; c := G.3;;

# conjugated generators for the normal closure of <u>,
# from succesive conjugation by a sequence of elements:
u := (b * (c*a)^3 * b*c*a);;
U := [u];;

seq :=  [ c, a, b ];;
m := Length(seq);;
for k in [1..m] do
    U[k+1] := seq[k]^-1 * U[k] * seq[k];
od;

# subgroup N
N := Subgroup(G, U);;
Print("Is the subgroup N normal? ", IsNormal(G, N), "\n");
Q := G / N;;

Print("Size of the quotient G/N = ", Size(Q), "\n");

Print("---------------------------------------------\n");

Print("Presentation for N:\n");
FpN := Range(IsomorphismFpGroup(N));;
P := PresentationFpGroup(FpN);;
TzOptions( P ).saveLimit := 1;;
TzOptions( P ).searchSimultaneous := 1;;
TzGoGo(P);;
TzPrintRelators(P);

Print("Description of N: ", StructureDescription(FpN), "\n");
