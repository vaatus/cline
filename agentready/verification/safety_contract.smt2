; Aggregated SMT2 source for triggered safety contracts.

; ---- exposure_limit :: VERIFIED ----
(declare-fun exposure () Real)
(declare-fun limit () Real)
(declare-fun blocked () Bool)
(declare-fun new_call () Bool)
(assert (>= exposure 0.0))
(assert (> limit 0.0))
(assert (<= exposure limit))
(assert (=> (and new_call (>= exposure limit)) blocked))
(assert (not (=> (and new_call (>= exposure limit)) blocked)))

