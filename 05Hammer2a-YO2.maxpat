{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 3,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 911.0, 181.0, 969.0, 756.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "Default Max 7",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 156.0, 219.0, 195.0, 22.0 ],
					"saved_object_attributes" : 					{
						"initial-position-in" : 1.0,
						"initial-position-out" : 0.0,
						"name" : "strikecommand",
						"weight" : 1.0
					}
,
					"text" : "mlys.strike @name strikecommand"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 156.0, 144.0, 272.0, 22.0 ],
					"saved_object_attributes" : 					{
						"name" : "hammerHitting",
						"position" : 1.0,
						"weight" : 1.0
					}
,
					"text" : "mlys.position @name hammerHitting @position 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 156.0, 184.0, 122.0, 22.0 ],
					"saved_object_attributes" : 					{
						"access-in-initial-position" : [ 1.0 ],
						"access-out-initial-position" : [ 0.0 ],
						"const-loss0" : 0.0,
						"freq-loss0" : 100.0,
						"large-mass" : 0.400000005960464,
						"name" : "MonoTwoMass",
						"pitch" : 0.0,
						"pitch-parameter" : "mass",
						"small-mass" : 0.910000026226044,
						"stiffness0" : 50000.0
					}
,
					"text" : "mlys.mono-two-mass"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 156.0, 254.0, 208.0, 22.0 ],
					"saved_object_attributes" : 					{
						"access-in-initial-position-x" : [ 0.600000023841858 ],
						"access-in-initial-position-y" : [ 0.400000005960464 ],
						"access-out-initial-position-x" : [ 0.5 ],
						"access-out-initial-position-y" : [ 0.5 ],
						"const-loss" : 10.0,
						"density" : 750.0,
						"freq-loss" : 10.0,
						"length0" : 4.300000190734863,
						"length1" : 4.5,
						"modes" : 80,
						"name" : "myDrumBonk",
						"pitch" : 0.0,
						"pitch-parameter" : "size",
						"poisson" : 0.300000011920929,
						"thickness" : 0.050000000745058,
						"young" : [ 1.100000023841858, 10.0 ]
					}
,
					"text" : "mlys.rect-plate @name myDrumBonk"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 156.0, 291.0, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"channel" : 1,
						"gain" : 1.0,
						"name" : "PointOutput"
					}
,
					"text" : "mlys.point-output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 156.0, 442.0, 88.0, 22.0 ],
					"text" : "normalize~ 0.9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 558.0, 350.0, 105.0, 22.0 ],
					"text" : "1., 1. 5 0. 10 1. 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 558.0, 418.0, 157.0, 22.0 ],
					"text" : "hammerHitting@position $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 558.0, 376.0, 41.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 316.0, 341.0, 39.0, 22.0 ],
					"text" : "ctrllist"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 217.0, 417.0, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 501.0, 237.0, 251.0, 22.0 ],
					"saved_object_attributes" : 					{
						"access-in-initial-position-r" : [ 0.050000000745058 ],
						"access-in-initial-position-theta" : [ 18.0 ],
						"access-out-initial-position-r" : [ 0.100000001490116 ],
						"access-out-initial-position-theta" : [ 36.0 ],
						"const-loss" : 1.0,
						"density" : 7800.0,
						"freq-loss" : 1.0,
						"modes" : 80,
						"name" : "myDrumOrig",
						"pitch" : 0.0,
						"pitch-parameter" : "radius",
						"poisson" : 0.300000011920929,
						"radius" : 0.5,
						"thickness" : 0.009999999776483,
						"young" : [ 1.0, 9.0 ]
					}
,
					"text" : "mlys.clamped-circ-plate @name myDrumOrig"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 145.5, 640.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 156.0, 479.0, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"patching_rect" : [ 156.0, 390.0, 80.0, 22.0 ],
					"saved_object_attributes" : 					{
						"precision" : ""
					}
,
					"text" : "modalys~ 1 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 156.0, 342.0, 65.0, 22.0 ],
					"saved_object_attributes" : 					{
						"angle-mode" : "degree",
						"multi" : 0,
						"precision" : "float"
					}
,
					"text" : "mlys.script"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 156.0, 101.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 156.0, 73.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"order" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-6" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "mlys.clamped-circ-plate.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mlys.mono-two-mass.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mlys.point-output.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mlys.position.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mlys.rect-plate.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mlys.script.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mlys.strike.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "modalys~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
