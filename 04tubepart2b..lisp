; Extending the idea to part 2b, namely to create two toneholes instead of one. Using envelope, the tube shrinks and expands beyond human capacityies, as well.

;header
(new)
(in-package ::mlys)

;make reed
(setq myReed (make-object 'rect-plate
                          (modes 4)
                          (length0  .7e-2)
                          (length1 2e-2)
                          (thickness 2e-5)
                          (density 700)
                          (freq-loss 400)
                          (const-loss 200)))

;make closed-open tube 
(setq myTube (make-object 'closed-open-tube
                          (modes 30) ;MODES HAS TO BE SET LOW, TO 30 INSTEAD OF 100 (because of the tube shrinking and expanding) otherwise it will take forever! It results in low-res sound realization but whatever
                          (length 1)
                          (air-elasticity .00000721)
                          (air-density 1.2)
                          (radius0 0.01)
                          (radius1 0.01)
                          (freq-loss 1)
                          (const-loss 1)))

;NOTE: in this version the tube will shrink and expand!!
(setq glissandoUpDown (make-controller 'envelope 1
                                     '((0. 70.)
                                       (1.5 20.)
                                       (3. 100.)
                                       (4.5 50.)
                                       (6.0 250.))))
(set-pitch myTube 'length glissandoUpDown)


;make holes
;-define the hole1
(setq myHole1 (make-object 'closed-open-tube
                          (modes 4)
                          (length 6.5e-3)
                          (radius0 5e-3)
                          (radius1 5e-3)
                          (freq-loss 10)))
;-accesses for the hole1
(setq hole1PositionOnTube (make-access myTube 0.75 'length))
(setq myHoleBase1 (make-access myHole1 (const 0) 'length))

;-attach the hole1 to the tube
(setq openCloseHoleEnv1 (make-controller 'envelope 1
                                         '((0. 1.)
                                          (0.32 1.)
                                          (0.33 0.)
                                          (0.65 0.)
                                          (0.66 1.)
                                          (0.99 1.)
                                          (1. 0.)
                                          (1.32 0.)
                                          (1.33 1.)
                                          (1.65 1.)
                                          (1.66 0.)
                                          (1.99 0.)
                                          (2. 1.)
                                          (2.32 1.)
                                          (2.33 0.)
                                          (2.65 0.)
                                          (2.66 1.)
                                          (2.99 1.)
                                          (3. 0.)
                                          (3.32 0.)
                                          (3.33 1.)
                                          (3.65 1.)
                                          (3.66 0.)
                                          (3.99 0.)
                                          (4. 1.)
                                          (4.32 1.)
                                          (4.33 0.)
                                          (4.65 0.)
                                          (4.66 1.)
                                          (4.99 1.)
                                          (5. 0.)
                                          (5.32 0.)
                                          (5.33 1.)
                                          (5.65 1.)
                                          (5.66 0.)
                                          (5.99 0.) 
                                          (6. 1.))))
(make-connection 'adhere hole1PositionOnTube myHoleBase1 openCloseHoleEnv1) ;openCloseholeEnv controls the opening and closing of the tonehole!

;-define the hole2
(setq myHole2 (make-object 'closed-open-tube
                          (modes 4)
                          (length 2e-3)
                          (radius0 5e-3)
                          (radius1 5e-3)
                          (freq-loss 10)))
;-accesses for the hole2
(setq hole2PositionOnTube (make-access myTube 0.25 'length))
(setq myHoleBase2 (make-access myHole1 (const 0) 'length))

;-attach the hole1 to the tube
(setq openCloseHoleEnv2 (make-controller 'envelope 1
                                        '((0. 1.)
                                          (0.49 1.)
                                          (0.5 0.)
                                          (0.99 0.)
                                          (1. 1.)
                                          (1.49 1.)
                                          (1.5 0.)
                                          (1.99 0.)
                                          (2. 1.)
                                          (2.49 1.)
                                          (2.5 0.)
                                          (2.99 0.)
                                          (3. 1.)
                                          (3.49 1.)
                                          (3.5 0.)
                                          (3.99 0.)
                                          (4. 1.)
                                          (4.49 1.)
                                          (4.5 0.)
                                          (4.99 0.)
                                          (5. 1.)
                                          (5.49 1.)
                                          (5.5 0.)
                                          (5.99 0.)
                                          (6. 1.))))
(make-connection 'adhere hole2PositionOnTube myHoleBase2 openCloseHoleEnv2) ;openCloseholeEnv2 controls the opening and closing of the tonehole2!



;make access 
(setq myReedTip (make-access myReed (const .1 .2) 'normal))

(setq myTubeBlowIn (make-access myTube (const 0) 'length))
(setq myTubeListener (make-access myTube 0.8 'length))

;make breath envelope THEN connection
(setq breathEnv (make-controller 'envelope 1
                                 '((0 0)
                                   (0.5 2500)
                                   (5.99 2500)
                                   (6.5 0))))

(make-connection 'reed myTubeBlowIn myReedTip 0.001 breathEnv 
                 (const 1.2)
                 (const 0.0012)
                 (const 0.01))

;syntesize and output)
(make-point-output myTubeListener)

(run 6.7)
(play)
