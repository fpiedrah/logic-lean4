example {P Q : α → Prop}
        (hypothesis_1 : ∀ x, P x → Q x)
        (hypothesis_2 : ∀ x, P x) :
        ∀ x, Q x := by
  intro x
  apply hypothesis_1
  apply hypothesis_2

example {P Q : α → Prop}
        (hypothesis_1 : ∀ x, P x ↔ Q x) :
        (∃ x, P x) ↔ (∃ x, Q x) := by
  constructor
  { intro exis_x_p_x
    cases exis_x_p_x with
    | intro x p_x => { exists x
                       apply (hypothesis_1 x).mp
                       exact p_x } }
  { intro exis_x_q_x
    cases exis_x_q_x with
    | intro x q_x => { exists x
                       apply (hypothesis_1 x).mpr
                       exact q_x } }

example (P : α → β → Prop) :
        (∃ x y, P x y) ↔ (∃ y x, P x y) := by
  constructor
  { intro exis_x_y_p_x_y
    cases exis_x_y_p_x_y with
    | intro x exis_y_p_x_y => {
      cases exis_y_p_x_y with
      | intro y p_x_y => { exists y
                           exists x }
    } }
  { intro exis_y_x_p_x_y
    cases exis_y_x_p_x_y with
    | intro y exis_x_p_x_q => {
      cases exis_x_p_x_q with
      | intro x p_x_q => { exists x
                           exists y }
    } }

example (P : α → β → Prop) :
        (∀ x y, P x y) ↔ ∀ y x, P x y := by
  constructor
  { intro foal_x_y_p_x_y
    intro y
    intro x
    specialize foal_x_y_p_x_y x y
    exact foal_x_y_p_x_y }
  { intro foal_y_x_p_x_y
    intro x
    intro y
    specialize foal_y_x_p_x_y y x
    exact foal_y_x_p_x_y }

example (P : α → Prop) (Q : Prop) :
        ((∃ x, P x) ∧ Q) ↔ ∃ x, (P x ∧ Q) := by
  constructor
  { intro exis_px_and_q
    obtain ⟨exis_p_x, q⟩ := exis_px_and_q
    cases exis_p_x with
    | intro x p_x => { exists x } }
  { intro exis_px_and_q
    cases exis_px_and_q with
    | intro x p_x_and_q => {
      constructor
      { exists x
        obtain ⟨p_x, _⟩ := p_x_and_q
        exact p_x }
      { obtain ⟨_, q⟩ := p_x_and_q
        exact q }
    } }
