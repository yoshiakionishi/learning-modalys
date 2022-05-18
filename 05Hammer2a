;Based on 05Hammer2. Trying another object to hit
;header

(new)
(in-package ::mlys)


;make drum
(setq myDrum (make-object 'clamped-circ-plate
                          (modes 80)
                          (radius .5)
                          (thickness 0.01)
                          (density 1000)
                          (young 2e11)
                          (poisson 0.3)
                          (freq-loss 1)
                          (const-loss 1)))

;(set-pitch myDrum 'radius 70)

;make accesses
(setq myDrumHit (make-access myDrum (const 0.25 0) 'normal))
(setq myDrumListener (make-access myDrum (const 0.75 90) 'normal))

;make connections
(make-connection 'force myDrumHit (make-controller 'envelope 1
                                                   '((0 0)
                                                     (0.001 100))))

;synthesize
(make-point-output myDrumListener)
(run 4)
(play)
