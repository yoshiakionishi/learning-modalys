;header
(new)

;make reed
(setq myReed (make-object 'mono-two-mass
                          (small-mass 0.000002)
                          (large-mass 0.000002)
                          (stiffness0 200)
                          (freq-loss0 260)
                          (const-loss0 60)))

;make tube
(setq myTube (make-object 'closed-open-tube
                          (modes 100)
                          (length 1)
                          (air-elasticity 0.000007)
                          (air-density 1.79)
                          (radius0 0.01)
                          (radius1 0.015)
                          (freq-loss 1)
                          (const-loss 1)))
(set-pitch myTube 'length 39.4)

;make accesses
(setq myReedBase (make-access myReed (const 0) 'trans0))
(setq myReedTip (make-access myReed (const 1) 'trans0))

(setq myTubeBlownIn (make-access myTube 0 'length))
(setq myTubeListener (make-access myTube 0.8 'length))

;make connections
(make-connection 'position myReedBase (const 0))
(setq breathEnv (make-controller 'envelope 1
                                 '((0 0)
                                   (0.5 100)
                                   (2.5 1000)
                                   (3.0 400)
                                   (3.5 1000)
                                   (4.0 400)
                                   (4.5 1000)
                                   (5.0 400)
                                   (5.5 1000)
                                   (6.0 400)
                                   (6.5 1000)
                                   (7.0 400)
                                   (7.5 1000)
                                   (8.0 400)
                                   (8.5 1000)
                                   (9.0 400)
                                   (9.5 1000)
                                   (10 0))))

(make-connection 'reed myTubeBlownIn myReedTip 0.001 breathEnv (const 2.76e-4))


;output and synthesize
(make-point-output myTubeListener)

(run 12)
(play)
