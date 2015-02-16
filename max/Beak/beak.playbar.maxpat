{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 8
		}
,
		"rect" : [ 0.0, 42.0, 1600.0, 1072.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "PT Sans",
		"gridonopen" : 0,
		"gridsize" : [ 6.0, 6.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 342.0, 210.0, 149.0, 22.0 ],
					"text" : "if $i1 > 24 then 24 else $i1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 306.0, 270.0, 76.0, 22.0 ],
					"text" : "expr 60 * $i1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 282.0, 330.0, 158.0, 20.0 ],
					"text" : "presentation_rect 66 6 $1 24"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 132.0, 426.0, 117.0, 22.0 ],
					"text" : "loadmess 66 6 60 24"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 25,
					"numoutlets" : 25,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 96.0, 582.0, 1014.0, 22.0 ],
					"text" : "route 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 174.0, 384.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 288.0, 156.0, 61.0, 22.0 ],
					"text" : "route cols"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 480.0, 147.0, 22.0 ],
					"text" : "beak.columns.presentation"
				}

			}
, 			{
				"box" : 				{
					"comment" : "msgs to player",
					"id" : "obj-5",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 438.0, 48.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-105",
					"knobcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"orientation" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 282.0, 372.0, 138.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 66.0, 6.0, 60.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-259",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1386.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1446.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-252",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1326.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1386.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-253",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1266.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1326.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-254",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1206.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1266.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-255",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1146.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1206.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-256",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1086.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1146.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-257",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1026.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1086.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-258",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 966.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1026.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.909804, 1.0, 1.0 ],
					"bgcolor2" : [ 0.666667, 0.909804, 1.0, 0.658824 ],
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"gradient" : 1,
					"id" : "obj-123",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1290.0, 174.0, 52.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 6.0, 52.0, 23.0 ],
					"text" : "PLAY >",
					"textcolor" : [ 0.070588, 0.133333, 0.243137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-32",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 66.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-47",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 906.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 966.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-48",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 846.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 906.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-49",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 786.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 846.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-42",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 726.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 786.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-43",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 666.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 726.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-44",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 606.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 666.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-45",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 546.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 606.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-38",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 486.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 546.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-39",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 426.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 486.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-40",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 366.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 426.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-41",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 306.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 366.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-37",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 246.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 306.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-36",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 186.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 246.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-35",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 126.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 186.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ],
					"border" : 1,
					"bordercolor" : [ 0.258824, 0.247059, 0.286275, 1.0 ],
					"grad1" : [ 0.921569, 0.941176, 1.0, 0.878431 ],
					"grad2" : [ 0.682353, 0.682353, 0.682353, 0.878431 ],
					"id" : "obj-34",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 66.0, 654.0, 60.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 126.0, 6.0, 60.0, 24.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.258824, 0.247059, 0.286275, 0.501961 ],
					"id" : "obj-122",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1530.0, 114.0, 24.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 1512.0, 36.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-252", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-253", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-254", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-255", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-256", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-257", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-258", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "beak.columns.presentation.maxpat",
				"bootpath" : "\\Ran\\Google Drive\\Mirror\\Max\\Beak",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
