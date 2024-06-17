import Mathlib.Init.Data.Nat.Notation
import Mathlib.Data.Real.Basic


example {P Q : Prop} (hypothesis : P ∧ Q) : P ∨ Q := by
  obtain ⟨p, _⟩ := hypothesis
  left
  exact p

example {P Q R : Prop}
        (hypothesis_1 : P → Q)
        (hypothesis_2 : P → R)
        (hypothesis_3 : P) :
        Q ∧ R := by
  constructor
  { apply hypothesis_1
    exact hypothesis_3 }
  { apply hypothesis_2
    exact hypothesis_3 }

example (P : Prop) : ¬(P ∧ ¬ P) := by
  intro p_and_not_p
  obtain ⟨p, not_p⟩ := p_and_not_p
  apply not_p
  exact p

example {P Q : Prop}
        (hypothesis_1 : P ↔ ¬ Q)
        (hypothesis_2 : Q) :
        ¬ P := by
  intro p
  have not_p := hypothesis_1.mp p
  contradiction

example {P Q : Prop}
        (hypothesis_1 : P ∨ Q)
        (hypothesis_2 : Q → P) :
        P := by
  cases hypothesis_1 with
  | inl p => { exact p }
  | inr q => { apply hypothesis_2
               exact q }

example {P Q R : Prop}
        (hypothesis_1 : P ↔ Q) :
        (P ∧ R) ↔ (Q ∧ R) := by
  constructor
  { intro p_and_r
    obtain ⟨p, r⟩ := p_and_r
    have q := hypothesis_1.mp p
    constructor
    { exact q }
    { exact r } }
  { intro q_and_r
    obtain ⟨q, r⟩ := q_and_r
    have p := hypothesis_1.mpr q
    constructor
    { exact p }
    { exact r} }

example (P : Prop) : (P ∧ P) ↔ P := by
  constructor
  { intro p_and_p
    obtain ⟨p, _⟩ := p_and_p
    exact p }
  { intro p
    constructor
    { exact p }
    { exact p } }

example (P Q : Prop) : (P ∨ Q) ↔ (Q ∨ P) := by
  constructor
  { intro p_or_q
    cases p_or_q with
    | inl p => { right
                 exact p }
    | inr q => { left
                 exact q } }
  { intro q_or_p
    cases q_or_p with
    | inl q => { right
                 exact q }
    | inr p => { left
                 exact p } }

example (P Q : Prop) : ¬(P ∨ Q) ↔ (¬P ∧ ¬Q) := by
  constructor
  { intro not_p_or_q
    constructor
    { intro p
      apply not_p_or_q
      left
      exact p }
    { intro q
      apply not_p_or_q
      right
      exact q } }
  { intro not_p_and_not_q
    obtain ⟨not_p, not_q⟩ := not_p_and_not_q
    intro p_or_q
    cases p_or_q with
    | inl p => { apply not_p
                 exact p }
    | inr q => { apply not_q
                 exact q} }

example (P : Prop) :
        ¬ (¬ P) ↔ P := by
  constructor
  { intro not_not_p
    by_cases hyp: P
    { exact hyp }
    { contradiction } }
  { intro p
    intro not_p
    apply not_p
    exact p }

example (P Q : Prop) :
        ¬ (P → Q) ↔ (P ∧ ¬ Q) := by
  constructor
  { intro not_p_imp_q
    constructor
    { by_cases hyp: P
      { exact hyp }
      { exfalso
        apply not_p_imp_q
        intro p
        contradiction } }
    { intro q
      apply not_p_imp_q
      intro _
      exact q } }
  { intro p_and_not_q
    intro p_imp_q
    obtain ⟨p, not_q⟩ := p_and_not_q
    apply not_q
    apply p_imp_q
    exact p }
