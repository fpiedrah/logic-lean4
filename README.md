# Lean Logic Proofs

**SOURCE:** https://hrmacbeth.github.io/math2001/05_Logic.html

This repository contains a series of logical proofs written in Lean 4. Each proof demonstrates fundamental concepts in propositional logic and predicate logic. The proofs use various Lean tactics to establish equivalences, implications, and other logical relationships.

## Proofs Included

### 1. Disjunction from Conjunction
Given hypotheses \( P \) and \( Q \), the proof shows that \( P \) or \( Q \) holds.

### 2. Conjunction from Implications
This proof demonstrates that if \( P \) implies \( Q \) and \( P \) implies \( R \), and \( P \) holds, then \( Q \) and \( R \) both hold.

### 3. Negation of a Conjunction
The proof shows that \( \neg (P \land \neg P) \) holds, which is a demonstration of the law of non-contradiction.

### 4. Negation of an Implication
Given that \( P \) is equivalent to \( \neg Q \) and \( Q \) holds, the proof shows that \( \neg P \) must hold.

### 5. Deriving a Proposition from a Disjunction
The proof demonstrates that if \( P \lor Q \) holds and \( Q \) implies \( P \), then \( P \) holds.

### 6. Conjunction with an Equivalence
This proof shows that \( (P \land R) \) is equivalent to \( (Q \land R) \) given that \( P \) is equivalent to \( Q \).

### 7. Idempotence of Conjunction
The proof demonstrates that \( P \land P \) is equivalent to \( P \).

### 8. Commutativity of Disjunction
This proof establishes that \( P \lor Q \) is equivalent to \( Q \lor P \).

### 9. De Morgan's Law for Disjunction
The proof shows that \( \neg (P \lor Q) \) is equivalent to \( (\neg P \land \neg Q) \).

### 10. Double Negation
This proof demonstrates that \( \neg (\neg P) \) is equivalent to \( P \).

### 11. Negation of an Implication
The proof shows that \( \neg (P \to Q) \) is equivalent to \( (P \land \neg Q) \).

### 12. Universal Quantifier and Implication
The proof demonstrates that if \( \forall x, P x \to Q x \) and \( \forall x, P x \), then \( \forall x, Q x \).

### 13. Equivalence with Existential Quantifier
The proof establishes that \( (\exists x, P x) \) is equivalent to \( (\exists x, Q x) \) given that \( \forall x, P x \leftrightarrow Q x \).

### 14. Swapping Existential Quantifiers
The proof shows that \( (\exists x y, P x y) \) is equivalent to \( (\exists y x, P x y) \).

### 15. Swapping Universal Quantifiers
This proof demonstrates that \( (\forall x y, P x y) \) is equivalent to \( (\forall y x, P x y) \).

### 16. Existential Quantifier and Conjunction
The proof shows that \( (\exists x, P x) \land Q \) is equivalent to \( \exists x, (P x \land Q) \).

### 17. Negation of a Universal Quantifier
The proof establishes that \( \neg (\forall x, P x) \) is equivalent to \( \exists x, \neg P x \).

---

These proofs illustrate the power and flexibility of Lean 4 for formalizing and verifying logical statements. Each example highlights different techniques and tactics used in Lean to manipulate and prove propositions.