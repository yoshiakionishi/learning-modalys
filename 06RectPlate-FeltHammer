;Based on Tutorial 6...using rectangular plate (fixed) and felt hammer
;header
(new)
(in-package ::mlys)

;make hammer
(setq myHammer (make-object 'mono-two-mass
                            (small-mass .01)
                            (large-mass .01)
                            (stiffness0 15000)
                            (freq-loss0 100)
                            (const-loss0 0)))

;make a plate
(setq myPlate (make-object 'rect-plate
                           (modes 100)
                           (length0 0.5)
                           (length1 0.5)
                           (thickness 0.005)
                           (density 3980)
                           (poisson 0.265)
                           (young 3.45e11)
                           (freq-loss 1)
                           (const-loss 1)))


;make accesses
(setq myHammerHitting (make-access myHammer (const 1) 'trans0))
(setq myHammerMoving (make-access myHammer (const 0) 'trans0))

(setq myPlateHit (make-access myPlate (const 0.2 0.7) 'normal))
(setq myPlateListener (make-access myPlate (const 0.7 0.1) 'normal))

;make connections
;-felt hammer connection
;(make-connection 'felt acc_ref1 init-pos1 acc_ref2 init-pos2 thickness F0 alpha epsilon tau weight)
(make-connection 'felt myHammerHitting 0.1 myPlateHit 0
                 (const 0.001) ;thickness
                 (const 1e15) ;F0
                 (const 10) ;alpha
                 (const 0.1) ;epsilon
                 (const 1e-6)) ;tau

(make-connection 'position myHammerMoving (make-controller 'envelope 1
                                                           '((0. 0.1)
                                                             (0.1 -0.1))))

;synthesize and output
(make-point-output myPlateListener)
(run 4)
(play)                                                       
