;header
(in-package ::mlys)
(new)

;create finger
(setq myFinger (make-object 'bi-two-mass))

;create string
(setq myString (make-object 'bi-string
                            (modes 80)
                            (length 1)
                            (tension 100)
                            (density 875)
                            (radius 0.001)
                            (young 5.5e5)
                            (freq-loss 0.5)
                            (const-loss 0.5)))
(set-pitch myString 'tension 60)

;make accesses
(setq myFingerTouches (make-access myFinger (const 0) 'trans0))
(setq myFingerMoves (make-access myFinger (const 0) 'trans0))

(setq myStringPlucked (make-access myString 0.6 'trans0))
(setq myStringListener (make-access myString 0.2 'trans0))

;make connections
(make-connection 'pluck myFingertouches 0.1 myStringPlucked 0 (const 50))

(make-connection 'position myFingerMoves (make-controller 'envelope 1 
                                                          '((0 0.1)
                                                            (0.1 -0.1)
                                                            (0.2 0.05)
                                                            (0.3 -0.15))))
;make output and synthesize
(make-point-output myStringListener)
(run 3)
(play)
