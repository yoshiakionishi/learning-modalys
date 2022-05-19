;mix-hybrid objects

;header
(new)
(in-package ::mlys)

;make hammer
(setq myHammer (make-object 'mono-two-mass))

;make object 1 (string)
(setq myString (make-object 'mono-string
                            (modes 300)
                            (length 1)
                            (tension 100)
                            (density 1300)
                            (radius 0.01)
                            (young 5e9)
                            (freq-loss 0.6)
                            (const-loss 0.4)))
(set-pitch myString 'length 80)

;make object 2 (plate)
(setq myPlate (make-object 'rect-plate
                           (modes 300)
                           (length0 0.5)
                           (length1 0.5)
                           (thickness 0.01)
                           (density 19100)
                           (young 2.08e11)
                           (poisson 0.23)
                           (freq-loss 0.5)
                           (const-loss 0.6)))
(set-pitch myPlate 'size 80)

;make hybrid object out of the two objects
(setq myHybridController (make-controller 'envelope 1
                                          '((0. 0.
                                            (2. 1.)))))
(setq myHybrid (make-object 'melt-hybrid myString myPlate myHybridController))


;make accesses
;- Accesses 
;- A 'mono-two-mass can be accessed only in its sole vibrational direction: trans0.
;-   (make-access my-mono-two-mass my-controller 'trans0)
;- If the value of my-controller is 1, the access is on the small mass. If my-controller is 0, the access is on the large mass. (A value in-between takes a weighted combination of the two points.)
(setq myHammerHitting (make-access myHammer (const 1) 'trans0))
(setq myHammerMoving (make-access myHammer (const 0) 'trans0))

(setq myStringHit (make-access myString (const 0.3) 'trans0))
(setq myStringListener (make-access myString (const 0.8) 'trans0))

(setq myPlateHit (make-access myPlate (const 0.3 0.4) 'normal))
(setq myPlateListener (make-access myPlate (const 0.7 0.8) 'normal))

;make hybrid accesses
(setq myHybridHit (make-access-hybrid myHybrid myStringHit myPlateHit))
(setq myHybridlistener (make-access-hybrid myHybrid myStringListener myPlateListener))

;make connections
;- felt connection
;(make-connection 'felt acc_ref1 init-pos1 acc_ref2 init-pos2
;                 thickness F0 alpha epsilon tau weight)

(make-connection 'felt myHammerHitting 0.1 myHybridHit 0 
                 (const 0.01) 
                 (const 1e2) 
                 (const 6)
                 (const 0.9)
                 (const 1e-5))

(make-connection 'position myHammerMoving (make-constroller 'envelope 1
                                                            '((0 0.1)
                                                              (0.1 -0.1)
                                                              (1 -0.1)
                                                              (1.1 0.1)
                                                              (2 0.1)
                                                              (2.1 -0.1))))

;synthesize
(make-point-ourput myHybridListener)
(run 4)
(play)

