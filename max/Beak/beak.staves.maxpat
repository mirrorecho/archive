{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 8
		}
,
		"rect" : [ 8.0, 50.0, 1600.0, 1072.0 ],
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
					"id" : "obj-8",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 79.5, 240.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 79.5, 276.0, 125.0, 22.0 ],
					"text" : "loadmess 6. 6. 60. 156."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 342.0, 147.0, 22.0 ],
					"text" : "beak.columns.presentation"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 25,
					"numoutlets" : 25,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 108.0, 684.0, 756.0, 22.0 ],
					"text" : "route 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 25,
					"numoutlets" : 25,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 312.0, 378.0, 756.0, 22.0 ],
					"text" : "route 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 319.5, 210.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 319.5, 240.0, 125.0, 22.0 ],
					"text" : "loadmess 6. 6. 60. 158."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 40.5, 90.0, 61.0, 22.0 ],
					"text" : "route cols"
				}

			}
, 			{
				"box" : 				{
					"comment" : "msgs to staves",
					"id" : "obj-2",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.5, 48.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 264.0, 288.0, 147.0, 22.0 ],
					"text" : "beak.columns.presentation"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-260",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1524.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 1386.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-261",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1464.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 1326.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-262",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1404.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 1266.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-263",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1344.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 1206.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-264",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1284.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 1146.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-265",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1224.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 1086.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-266",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1164.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 1026.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-267",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1104.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 966.0, 6.0, 60.0, 158.399994 ],
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
					"id" : "obj-274",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1452.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1386.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-275",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1386.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1326.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-276",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1188.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1266.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-277",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1056.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1206.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-273",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1320.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1146.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-272",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1254.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1086.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-271",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1122.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1026.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-270",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 990.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 966.0, 6.0, 60.0, 156.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-172",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1044.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 906.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-173",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 984.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 846.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-174",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 924.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 786.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-175",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 864.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 726.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-164",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 804.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 666.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-165",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 744.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 606.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-166",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 684.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 546.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-167",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 624.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 486.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-168",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 564.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 426.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-169",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 504.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 366.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-163",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 444.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 306.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-162",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 384.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 246.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-161",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 324.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 186.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-160",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 264.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 126.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.945098, 0.945098, 0.658824 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-159",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 204.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 66.0, 6.0, 60.0, 158.399994 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.894118, 0.756863, 0.678431, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"id" : "obj-30",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 144.0, 468.0, 60.0, 158.399994 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 6.0, 60.0, 158.0 ],
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
					"id" : "obj-60",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-107",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 924.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 906.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-108",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 864.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 846.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-109",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 804.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 786.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-111",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 744.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 726.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-112",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 684.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 666.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-113",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 624.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 606.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-115",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 564.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 546.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-119",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 504.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 486.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-129",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 444.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 426.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-153",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 384.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 366.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-154",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 324.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 306.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-155",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 264.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 246.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-156",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 204.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 186.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-157",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 144.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 126.0, 6.0, 60.0, 156.0 ],
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
					"id" : "obj-158",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 84.0, 774.0, 66.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 66.0, 6.0, 60.0, 156.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.258824, 0.247059, 0.286275, 0.501961 ],
					"id" : "obj-128",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1518.0, 12.0, 36.0, 174.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 1452.0, 168.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
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
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-160", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-162", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-260", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-262", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-266", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-267", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
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
					"destination" : [ "obj-107", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-270", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 20 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-273", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 21 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-274", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 23 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-275", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 22 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-276", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-277", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
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
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
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
