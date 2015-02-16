{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 2,
			"architecture" : "x64"
		}
,
		"rect" : [ 1200.0, 587.0, 1600.0, 1112.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
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
					"id" : "obj-96",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1230.0, 156.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 1224.0, 198.0, 90.0, 22.0 ],
					"text" : "savedialog json"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-107",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1224.0, 240.0, 165.0, 20.0 ],
					"text" : "beak_saveLastColumnJSON $1"
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
					"id" : "obj-108",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1204.5, 114.0, 144.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1448.0, 990.0, 143.0, 23.0 ],
					"text" : "save JSON last column",
					"textcolor" : [ 0.070588, 0.133333, 0.243137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 612.0, 924.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-83",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 596.5, 978.0, 47.0, 20.0 ],
					"text" : "oxygen"
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
					"id" : "obj-76",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 606.0, 882.0, 103.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 978.0, 102.0, 23.0 ],
					"text" : "MAKE OXYGEN!",
					"textcolor" : [ 0.070588, 0.133333, 0.243137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-128",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 402.0, 978.0, 159.0, 20.0 ],
					"text" : "beak_loadMaxValuesJSON $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 402.0, 894.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 396.0, 936.0, 93.0, 22.0 ],
					"text" : "opendialog json"
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
					"id" : "obj-124",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 306.0, 852.0, 78.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 708.0, 1002.0, 78.0, 23.0 ],
					"text" : "load maxes",
					"textcolor" : [ 0.070588, 0.133333, 0.243137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 371.25, 1056.0, 82.0, 22.0 ],
					"text" : "s _beak_boom"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-115",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 222.0, 978.0, 157.0, 20.0 ],
					"text" : "beak_loadMinValuesJSON $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 222.0, 894.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-122",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 216.0, 936.0, 93.0, 22.0 ],
					"text" : "opendialog json"
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
					"patching_rect" : [ 222.0, 852.0, 69.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 792.0, 1002.0, 72.0, 23.0 ],
					"text" : "load mins",
					"textcolor" : [ 0.070588, 0.133333, 0.243137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-86",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 828.0, 938.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 528.0, 1002.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-87",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 882.0, 938.0, 78.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 444.0, 1002.0, 78.0, 25.0 ],
					"text" : "# to add"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-93",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.5, 980.0, 32.5, 20.0 ],
					"text" : "$1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 867.0, 896.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-104",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 846.0, 1016.0, 183.0, 20.0 ],
					"text" : "beak_propogateColumnsAtEnd $1"
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
					"id" : "obj-105",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.5, 846.0, 145.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 288.0, 1002.0, 150.0, 23.0 ],
					"text" : "propogate last column",
					"textcolor" : [ 0.070588, 0.133333, 0.243137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-85",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1350.0, 912.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 702.0, 930.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-82",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1404.0, 912.0, 78.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 618.0, 930.0, 78.0, 25.0 ],
					"text" : "start index"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-72",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1331.5, 954.0, 32.5, 20.0 ],
					"text" : "$1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1266.0, 980.5, 52.0, 22.0 ],
					"text" : "pack s 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1321.0, 864.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1251.0, 910.0, 93.0, 22.0 ],
					"text" : "opendialog json"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-79",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1290.0, 1014.0, 164.0, 20.0 ],
					"text" : "beak_appendLinesJSON $1 $2"
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
					"id" : "obj-81",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1360.0, 828.0, 110.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 510.0, 930.0, 104.0, 23.0 ],
					"text" : "load line at end",
					"textcolor" : [ 0.070588, 0.133333, 0.243137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1074.0, 1074.0, 82.0, 22.0 ],
					"text" : "s _beak_boom"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1050.75, 1002.0, 164.0, 20.0 ],
					"text" : "beak_appendColumnsJSON $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1044.75, 912.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1038.75, 954.0, 93.0, 22.0 ],
					"text" : "opendialog json"
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
					"id" : "obj-68",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1038.75, 858.0, 142.25, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 324.0, 930.0, 131.0, 23.0 ],
					"text" : "load columns at end",
					"textcolor" : [ 0.070588, 0.133333, 0.243137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 1014.0, 82.0, 22.0 ],
					"text" : "s _beak_boom"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 46.5, 894.0, 20.0, 20.0 ]
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
					"id" : "obj-59",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 42.0, 852.0, 157.5, 23.0 ],
					"text" : "Create Oxygen Narrator",
					"textcolor" : [ 0.070588, 0.133333, 0.243137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.5, 924.0, 187.0, 18.0 ],
					"text" : "beak_oxygen_createnarrator 816"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-57",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1134.0, 30.0, 62.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 948.0, 930.0, 48.0, 25.0 ],
					"text" : "ly var:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-51",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 975.5, 252.0, 32.5, 20.0 ],
					"text" : "$2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 925.25, 282.0, 50.0, 22.0 ],
					"text" : "pack s s"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-40",
					"linecount" : 2,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 997.5, 216.0, 70.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1002.0, 930.0, 137.0, 23.0 ],
					"text" : "lineHarmonyI"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 964.0, 144.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 894.0, 190.0, 78.0, 22.0 ],
					"text" : "savedialog ly"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 997.5, 318.0, 106.0, 20.0 ],
					"text" : "beak_saveLY $1 $2"
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
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 964.0, 90.0, 54.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1146.0, 930.0, 87.0, 23.0 ],
					"text" : "save LY",
					"textcolor" : [ 0.070588, 0.133333, 0.243137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 684.0, 82.0, 22.0 ],
					"text" : "s _beak_boom"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-102",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 72.0, 648.0, 107.0, 20.0 ],
					"text" : "beak_setsize $1 $2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 72.0, 618.0, 48.0, 22.0 ],
					"text" : "pak 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-99",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 216.0, 510.0, 42.0, 20.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-98",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 108.0, 510.0, 42.0, 20.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1398.0, 732.0, 63.0, 22.0 ],
					"text" : "pack 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-94",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1398.0, 762.0, 132.0, 20.0 ],
					"text" : "beak_setvalue $1 $2 $3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1344.0, 642.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1250.0, 642.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1250.0, 672.0, 87.0, 22.0 ],
					"text" : "pv col_position"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1344.0, 672.0, 91.0, 22.0 ],
					"text" : "pv row_position"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1428.0, 600.0, 33.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 1415.0, 528.0, 46.0, 22.0 ],
					"text" : "notein"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 907.5, 456.0, 60.0, 22.0 ],
					"text" : "route 108"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 907.5, 420.0, 59.5, 22.0 ],
					"text" : "key"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 901.5, 516.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 874.0, 588.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 768.0, 588.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-67",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 702.0, 516.0, 42.0, 20.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1134.0, 804.0, 82.0, 22.0 ],
					"text" : "s _beak_boom"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 972.0, 659.0, 63.0, 22.0 ],
					"text" : "pack 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 768.0, 618.0, 87.0, 22.0 ],
					"text" : "pv col_position"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 874.0, 618.0, 91.0, 22.0 ],
					"text" : "pv row_position"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-52",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 972.0, 684.0, 109.0, 20.0 ],
					"text" : "beak_lock $1 $2 $3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "" ],
					"patching_rect" : [ 702.0, 763.0, 75.0, 22.0 ],
					"text" : "unpack 0 0 s"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 708.0, 811.0, 87.0, 22.0 ],
					"text" : "pv col_position"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 832.0, 811.0, 91.0, 22.0 ],
					"text" : "pv row_position"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 516.0, 781.0, 133.0, 20.0 ],
					"text" : "beak_cellselected $1 $2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 541.5, 829.0, 82.0, 22.0 ],
					"text" : "s _beak_boom"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1097.5, 156.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 1091.5, 198.0, 90.0, 22.0 ],
					"text" : "savedialog json"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1091.5, 240.0, 105.0, 20.0 ],
					"text" : "beak_saveJSON $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 2,
							"architecture" : "x64"
						}
,
						"rect" : [ 33.0, 75.0, 928.0, 597.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 12.0, 12.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 440.75, 348.0, 32.5, 20.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 396.0, 348.0, 32.5, 20.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 336.0, 348.0, 32.5, 20.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 291.25, 348.0, 32.5, 20.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "PT Sans",
									"fontsize" : 12.0,
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 288.0, 438.0, 171.0, 20.0 ],
									"text" : "beak_swap2values $1 $2 $3 $4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "PT Sans",
									"fontsize" : 12.0,
									"id" : "obj-107",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 288.0, 468.0, 82.0, 22.0 ],
									"text" : "s _beak_boom"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "PT Sans",
									"fontsize" : 12.0,
									"id" : "obj-106",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 291.25, 312.0, 47.0, 22.0 ],
									"text" : "unpack"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "PT Sans",
									"fontsize" : 12.0,
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 396.0, 312.0, 47.0, 22.0 ],
									"text" : "unpack"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "PT Sans",
									"fontsize" : 12.0,
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 288.0, 408.0, 73.0, 22.0 ],
									"text" : "pack 0 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-103",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 190.0, 234.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 172.0, 196.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "PT Sans",
									"fontsize" : 12.0,
									"id" : "obj-97",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.25, 162.0, 32.5, 20.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "PT Sans",
									"fontsize" : 12.0,
									"id" : "obj-93",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 264.0, 119.0, 48.0, 22.0 ],
									"text" : "change"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "gswitch2",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 228.0, 264.0, 39.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "PT Sans",
									"fontsize" : 12.0,
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 62.0, 402.0, 77.0, 22.0 ],
									"text" : "s _beak_pops"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "PT Sans",
									"fontsize" : 12.0,
									"id" : "obj-42",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 96.0, 348.0, 134.0, 20.0 ],
									"text" : "swap $1 $2 ( $3 ) with..."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "PT Sans",
									"fontsize" : 12.0,
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 204.0, 162.0, 33.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "PT Sans",
									"fontsize" : 12.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "int", "int", "int", "int", "int" ],
									"patching_rect" : [ 264.0, 84.0, 81.0, 22.0 ],
									"text" : "modifiers 100"
								}

							}
, 							{
								"box" : 								{
									"comment" : "input from grid",
									"id" : "obj-1",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 36.0, 24.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-105", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-106", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-67", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-97", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 396.0, 805.0, 98.0, 22.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p beak_swapping"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 222.0, 108.0, 82.0, 22.0 ],
					"text" : "s _beak_boom"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 492.0, 248.5, 82.0, 22.0 ],
					"text" : "s _beak_boom"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1290.0, 378.0, 82.0, 22.0 ],
					"text" : "s _beak_boom"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 342.0, 300.0, 81.0, 22.0 ],
					"text" : "r _beak_boom"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 379.0, 6.0, 76.0, 22.0 ],
					"text" : "r _beak_pops"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 249.0, 12.0, 93.0, 22.0 ],
					"text" : "print @popup 1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 858.0, 12.0, 120.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 162.0, 12.0, 24.0, 25.0 ],
					"text" : ":-)"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.258824, 0.247059, 0.286275, 0.501961 ],
					"id" : "obj-2",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 804.0, 12.0, 36.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 156.0, 6.0, 36.0, 36.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1386.0, 258.0, 87.0, 20.0 ],
					"text" : "beak_saveMIDI"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 8,
					"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int" ],
					"patching_rect" : [ 492.0, 402.0, 113.5, 22.0 ],
					"save" : [ "#N", "detonate", "u332001843", ";", "#X", "setparam", 0, "Time", 0, 0, 999999, 0, 1000, 200, 0, ";", "#X", "setparam", 1, "Pitch", 0, 0, 127, 60, 12, 4, 0, ";", "#X", "setparam", 2, "Vel", 0, 0, 127, 64, 12, 4, 0, ";", "#X", "setparam", 3, "Dur", 0, 1, 99999, 200, 800, 200, 0, ";", "#X", "setparam", 4, "Chan", 0, 1, 16, 1, 8, 1, 0, ";", "#X", "setparam", 5, "Track", 0, 1, 32, 1, 8, 1, 0, ";", "#X", "setparam", 6, "X1", 0, 0, 999, 0, 80, 20, 0, ";", "#X", "setparam", 7, "X2", 0, 0, 999, 0, 80, 20, 0, ";", "#X", "restore", ";", "#X", 0, 71, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 14, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 1, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 2, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 3, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 4, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 5, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 6, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 7, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 8, 0, 0, ";", "#X", 0, 71, 64, 500, 1, 9, 0, 0, ";", "#X", 0, 77, 64, 500, 1, 10, 0, 0, ";", "#X", 0, 83, 64, 500, 1, 11, 0, 0, ";", "#X", 0, 72, 64, 500, 1, 12, 0, 0, ";", "#X", 0, 76, 64, 500, 1, 13, 0, 0, ";", "#X", 0, 79, 64, 500, 1, 14, 0, 0, ";", "#X", "stop", ";" ],
					"text" : "detonate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 300.0, 49.0, 22.0 ],
					"text" : "pipe 90"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 335.5, 447.0, 88.0, 22.0 ],
					"text" : "route cols rows"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1480.5, 258.0, 104.0, 20.0 ],
					"text" : "beak_loadJSON $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1474.5, 168.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1468.5, 210.0, 93.0, 22.0 ],
					"text" : "opendialog json"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 534.0, 480.0, 104.0, 22.0 ],
					"text" : "route score locked"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 528.0, 186.0, 20.0, 20.0 ]
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
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 528.0, 144.0, 87.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1488.0, 12.0, 85.0, 23.0 ],
					"text" : "recompile JS",
					"textcolor" : [ 0.070588, 0.133333, 0.243137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.258824, 0.247059, 0.286275, 0.501961 ],
					"id" : "obj-16",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 342.0, 168.0, 36.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1482.0, 6.0, 96.0, 36.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 492.0, 216.0, 363.0, 18.0 ],
					"text" : "compile C:\\\\Ran\\\\Code\\\\Max\\\\Beak\\\\beak.matrix.js"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 294.0, 348.0, 156.0, 20.0 ],
					"saved_object_attributes" : 					{
						"filename" : "C:\\Ran\\Code\\Max\\Beak\\beak.matrix.js",
						"parameter_enable" : 0
					}
,
					"text" : "js"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 558.0, 8.5, 105.0, 20.0 ],
					"text" : "loadmess set 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "bpatcher",
					"name" : "beak.playbar.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 95.0, 762.0, 138.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 66.0, 48.0, 1512.0, 36.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "bpatcher",
					"name" : "beak.staves.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 274.0, 672.0, 72.0, 168.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 126.0, 90.0, 1452.0, 168.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 294.0, 588.0, 47.0, 20.0 ],
					"text" : "cols $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 354.0, 588.0, 51.0, 20.0 ],
					"text" : "rows $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "bpatcher",
					"name" : "beak.gid.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 438.0, 630.0, 190.0, 108.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 264.0, 1590.0, 654.0 ]
				}

			}
, 			{
				"box" : 				{
					"clicktabcolor" : [ 0.415686, 0.839216, 1.0, 1.0 ],
					"clicktextcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"hovertabcolor" : [ 0.678431, 0.835294, 0.894118, 1.0 ],
					"htabcolor" : [ 0.894118, 0.756863, 0.678431, 1.0 ],
					"id" : "obj-231",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 54.0, 42.0, 102.0, 54.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 96.0, 102.0, 54.0 ],
					"tabs" : [ "staves", "keyboard" ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-218",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 624.0, 56.5, 120.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 576.0, 12.0, 120.0, 25.0 ],
					"text" : "ms between notes"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"id" : "obj-217",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 558.0, 56.5, 60.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 510.0, 12.0, 60.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.258824, 0.247059, 0.286275, 0.501961 ],
					"id" : "obj-216",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 510.0, 50.5, 36.0, 30.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 507.0, 6.0, 198.0, 36.0 ]
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
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1091.5, 114.0, 71.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1428.0, 930.0, 78.0, 23.0 ],
					"text" : "save JSON",
					"textcolor" : [ 0.070588, 0.133333, 0.243137, 1.0 ]
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
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1372.5, 114.0, 69.0, 23.0 ],
					"text" : "save MIDI",
					"textcolor" : [ 0.070588, 0.133333, 0.243137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 937.5, 546.0, 72.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 42.0, 168.0, 72.0, 25.0 ],
					"text" : "LOCKED"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 907.5, 546.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 168.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"id" : "obj-23",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 529.0, 552.0, 114.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 930.0, 114.0, 25.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 655.0, 552.0, 55.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 132.0, 930.0, 55.0, 25.0 ],
					"text" : "SCORE!"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 252.0, 72.0, 38.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 102.0, 12.0, 38.0, 25.0 ],
					"text" : "GO!"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 222.0, 72.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 72.0, 12.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.258824, 0.247059, 0.286275, 0.501961 ],
					"id" : "obj-9",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 505.0, 546.0, 18.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 924.0, 186.0, 36.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-127",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1500.0, 528.0, 72.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 42.0, 198.0, 72.0, 25.0 ],
					"text" : "LIVE EDIT"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"id" : "obj-125",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 216.0, 534.0, 42.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 834.0, 12.0, 42.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-126",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 264.0, 534.0, 42.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 882.0, 12.0, 54.0, 25.0 ],
					"text" : "lines"
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
					"id" : "obj-121",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1468.5, 114.0, 71.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1519.0, 930.0, 72.0, 23.0 ],
					"text" : "load JSON",
					"textcolor" : [ 0.070588, 0.133333, 0.243137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"id" : "obj-120",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 108.0, 534.0, 42.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 714.0, 12.0, 42.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-117",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1068.75, 486.0, 72.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 42.0, 228.0, 72.0, 25.0 ],
					"text" : "all lines"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1038.75, 486.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 228.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-116",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 156.0, 534.0, 54.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 762.0, 12.0, 54.0, 25.0 ],
					"text" : "colums"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1470.0, 528.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 198.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.258824, 0.247059, 0.286275, 0.501961 ],
					"id" : "obj-110",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 540.0, 24.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 708.0, 6.0, 234.0, 36.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.258824, 0.247059, 0.286275, 0.501961 ],
					"id" : "obj-1",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 192.0, 66.0, 24.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 66.0, 6.0, 84.0, 36.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.258824, 0.247059, 0.286275, 0.501961 ],
					"id" : "obj-209",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1537.0, 30.0, 24.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 942.0, 924.0, 654.0, 36.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.258824, 0.247059, 0.286275, 0.501961 ],
					"id" : "obj-219",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 246.0, 30.0, 90.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 162.0, 114.0, 96.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.258824, 0.247059, 0.286275, 0.501961 ],
					"id" : "obj-232",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 36.0, 18.0, 66.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 90.0, 114.0, 66.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-217", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 440.5, 414.0, 167.0, 414.0, 167.0, 274.0, 213.5, 274.0 ],
					"source" : [ "obj-13", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 388.5, 41.0, 357.0, 41.0, 357.0, 4.0, 258.5, 4.0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "beak.gid.maxpat",
				"bootpath" : "/Ran/Code/Max/Beak",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "beak.columns.presentation.maxpat",
				"bootpath" : "/Ran/Code/Max/Beak",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "beak.rows.presentation.maxpat",
				"bootpath" : "/Ran/Code/Max/Beak",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "beak.staves.maxpat",
				"bootpath" : "/Ran/Code/Max/Beak",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "beak.playbar.maxpat",
				"bootpath" : "/Ran/Code/Max/Beak",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "beak.matrix.js",
				"bootpath" : "/Ran/Code/Max/Beak",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ]
	}

}
