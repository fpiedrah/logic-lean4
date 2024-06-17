# Lean Logic Proofs

**SOURCE:** https://hrmacbeth.github.io/math2001/05_Logic.html

This repository contains a series of logical proofs written in Lean 4. Each proof demonstrates fundamental concepts in propositional logic and predicate logic. The proofs use various Lean tactics to establish equivalences, implications, and other logical relationships.

## Proofs Included

### 1. Disjunction from Conjunction
Given hypotheses $P$ and $Q$, the proof shows that $P \lor Q$ holds.

### 2. Conjunction from Implications
This proof demonstrates that if $P \to Q$ and $P \to R$, and $P$ holds, then $Q \land R$ both hold.

### 3. Negation of a Conjunction
The proof shows that $\neg (P \land \neg P)$ holds, which is a demonstration of the law of non-contradiction.

### 4. Negation of an Implication
Given that $P \leftrightarrow \neg Q$ and $Q$ holds, the proof shows that $\neg P$ must hold.

### 5. Deriving a Proposition from a Disjunction
The proof demonstrates that if $P \lor Q$ holds and $Q \to P$, then $P$ holds.

### 6. Conjunction with an Equivalence
This proof shows that $(P \land R) \leftrightarrow (Q \land R)$ given that $P \leftrightarrow Q$.

### 7. Idempotence of Conjunction
The proof demonstrates that $P \land P \leftrightarrow P$.

### 8. Commutativity of Disjunction
This proof establishes that $P \lor Q \leftrightarrow Q \lor P$.

### 9. De Morgan's Law for Disjunction
The proof shows that $\neg (P \lor Q) \leftrightarrow (\neg P \land \neg Q)$.

### 10. Double Negation
This proof demonstrates that $\neg (\neg P) \leftrightarrow P$.

### 11. Negation of an Implication
The proof shows that $\neg (P \to Q) \leftrightarrow (P \land \neg Q)$.

### 12. Universal Quantifier and Implication
The proof demonstrates that if $\forall x, (P x \to Q x)$ and $\forall x, P x$, then $\forall x, Q x$.

### 13. Equivalence with Existential Quantifier
The proof establishes that $(\exists x, P x) \leftrightarrow (\exists x, Q x)$ given that $\forall x, (P x \leftrightarrow Q x)$.

### 14. Swapping Existential Quantifiers
The proof shows that $(\exists x y, P x y) \leftrightarrow (\exists y x, P x y)$.

### 15. Swapping Universal Quantifiers
This proof demonstrates that $(\forall x y, P x y) \leftrightarrow (\forall y x, P x y)$.

### 16. Existential Quantifier and Conjunction
The proof shows that $(\exists x, P x) \land Q \leftrightarrow \exists x, (P x \land Q)$.

### 17. Negation of a Universal Quantifier
The proof establishes that $\neg (\forall x, P x) \leftrightarrow \exists x, \neg P x$.