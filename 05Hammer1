;header

(new)
(in-package ::mlys)

;make hammer
(setq myHammer (make-object 'mono-two-mass))

;make drum
(setq myDrum (make-object 'circ-membrane
                          (modes 80)
                          (radius .5)
                          (tension 1000)
                          (surface-density 0.25)
                          (freq-loss 1)
                          (const-loss 1)))
(setq pitchenv (make-controller 'envelope 1
                                '((0 70)
                                  (4 220))))
(set-pitch myDrum 'surface-density 70)

;make accesses
(setq myHammerHitting (make-access myHammer (const 1) 'trans0))
(setq myHammerMoving (make-access myHammer (const 0) 'trans0))

(setq myDrumHit (make-access myDrum (const 0.25 0) 'normal))
(setq myDrumListener (make-access myDrum (const 0.75 90) 'normal))

;make connections
(make-connection 'strike myHammerHitting 0.1 myDrumHit 0)

(make-connection 'position myHammerMoving (make-controller 'envelope 1
                                                           '((0 0.1)
                                                             (0.1 -0.1))))


;synthesize
(make-point-output myDrumListener)
(run 4)
(play)