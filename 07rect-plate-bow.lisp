;header
(new)
(in-package ::mlys)

;create bow
(setq myBow (make-object 'bi-two-mass))

;create plate
(setq myPlate (make-object 'rect-plate
                           (modes 400)
                           (length0 0.5)
                           (length1 0.5)
                           (thickness 0.01)
                           (density 7800)
                           (poisson 0.3)
                           (young 2e11)
                           (freq-loss 0.8)
                           (const-loss 0.8)))

(set-pitch myPlate 'size 60)

;make accesses
;Vertical = TRANS0
;Horizontal = TRANS1

(setq myBowTouchV (make-access myBow (const 1) 'trans0))
(setq myBowTouchH (make-access myBow (const 1) 'trans1))

(setq myBowMoveV (make-access myBow (const 0) 'trans0))
(setq myBowMoveH (make-access myBow (const 0) 'trans1))

(setq myPlateBowedV (make-access myPlate (const 0.3 0.4) 'normal))
(setq myPlateBowedH (make-access myPlate (const 0.3 0.4) 'normal))

(setq myPlateListener (make-access myPlate (const 0.7 0.8) 'normal))

;make connections
;(make-connection 'bow bow_acc_V bow_acc_H bow-posV str_acc_V str_acc_H str-posV 4D_ctl weight)
(make-connection 'bow myBowTouchV myBowTouchH 0.01 myPlateBowedV myPlateBowedH 0 (const 2 10 5 4))

(make-connection 'position myBowMoveV (make-controller 'envelope 1
                                                       '((0 0.01)
                                                         (0.5 -0.001)
                                                         (2 -0.01)
                                                         (4 0.001))))
(make-connection 'speed myBowMoveH (make-controller 'envelope 1
                                                       '((0 1)
                                                         (2 10)
                                                         (4 1))))


;output and synth
(make-point-output myPlateListener)
(run 6)
(play)
