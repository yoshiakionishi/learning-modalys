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
                          (modes 100)
                          (length 1)
                          (air-elasticity .00000721)
                          (air-density 1.2)
                          (radius0 0.01)
                          (radius1 0.01)
                          (freq-loss 1)
                          (const-loss 1)))
(set-pitch myTube 'length 70)

;make access (I guess to connect together)
(setq myReedTip (make-access myReed (const .1 .2) 'normal))

(setq myTubeBlowIn (make-access myTube (const 0) 'length))
(setq myTubeListener (make-access myTube 0.8 'length))

;make breath envelope THEN connection
(setq breathEnv (make-controller 'envelope 1
                                 '((0 0)
                                   (0.5 2500)
                                   (7.5 1500)
                                   (8 0))))

(make-connection 'reed myTubeBlowIn myReedTip 0.001 breathEnv 
                 (const 1.2)
                 (const 0.0012)
                 (const 0.01))

;syntesize and output)
(make-point-output myTubeListener)

(run 8.5)
(play)
