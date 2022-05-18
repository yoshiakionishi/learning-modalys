;header
(in-package ::mlys)
(new)

;make bow
(setq myBow (make-object 'bi-two-mass))

;make string
(setq myString (make-object 'bi-string
                            (modes 80)
                            (length 1)
                            (tension 100)
                            (density 1000)
                            (radius .001)
                            (young 1e9)
                            (freq-loss 1)
                            (const-loss 1)))
(set-pitch myString 'length 440)

;make accesses for bow 
;Vertical is TRANS0
;Horizontal is TRANS1
(setq myBowVTouching (make-access myBow (const 1) 'trans0))
(setq myBowHTouching (make-access myBow (const 1) 'trans1))

(setq myBowVMoving (make-access myBow (const 0) 'trans0))
(setq myBowHMoving (make-access myBow (const 0) 'trans1))

;make accesses for string
(setq myStringVBowed (make-access myString (const 0.7) 'trans0))
(setq myStringHBowed (make-access myString (const 0.7) 'trans1))

(setq myStringHListener1 (make-access myString (const 0.2) 'trans1))
(setq myStringHListener2 (make-access myString (const 0.3) 'trans1)) 

;make bow connection
(make-connection 'bow myBowVtouching myBowHtouching 0.1 myStringVBowed myStringHBowed 0 (const 2 10 5 4))

;move the bow
;vertical movement
(make-connection 'position myBowVMoving (make-controller 'envelope 1
                                                         '((0 0.1) ;second, vertical movement by meter (how much to push down)
                                                           (0.3 -0.0001)
                                                           (1.3 -0.05)
                                                           (1.8 0.1))))

;move the bow
;horizontal
(make-connection 'speed myBowHMoving (make-controller 'envelope 1
                                                      '((0 1) ;second, meter
                                                        (0.9 4)
                                                        (1.8 1))))

;make output
(make-point-output myStringHListener1 1)
(make-point-output myStringHListener2 2)

;synthesize
(run 4)
(play)

