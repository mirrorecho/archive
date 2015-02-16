{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x64"
		}
,
		"rect" : [ 88.0, 220.0, 1077.0, 1386.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "PT Sans",
		"gridonopen" : 0,
		"gridsize" : [ 6.0, 6.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"showontab" : 1,
		"title" : "Jupe Settings",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-9",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 318.0, 12.0, 324.0, 38.0 ],
					"text" : "NEXT STEPS:\n - auto add jupe.gizmo.value objects and adjust dimensions"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 342.0, 210.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 1122.0, 193.0, 20.0 ],
					"text" : "init eco juperoot display \"Jupe Root\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "bpatcher",
					"name" : "jupe.gizmo.value.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 1164.0, 528.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 432.0, 528.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 834.0, 276.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 1020.0, 199.0, 20.0 ],
					"text" : "init eco workroot display \"Work Root\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "bpatcher",
					"name" : "jupe.gizmo.value.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 1062.0, 528.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 402.0, 528.0, 24.0 ]
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
					"patching_rect" : [ 204.0, 918.0, 168.0, 20.0 ],
					"text" : "init eco version display Version"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "bpatcher",
					"name" : "jupe.gizmo.value.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 960.0, 528.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 372.0, 528.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 282.0, 630.0, 199.0, 20.0 ],
					"text" : "init work composer button Composer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "bpatcher",
					"name" : "jupe.gizmo.value.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 282.0, 672.0, 528.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 174.0, 528.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 282.0, 534.0, 143.0, 20.0 ],
					"text" : "init work title button Title"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "bpatcher",
					"name" : "jupe.gizmo.value.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 282.0, 576.0, 528.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 144.0, 528.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.0, 762.0, 222.0, 20.0 ],
					"text" : "init ego texteditor filebutton \"Text Editor\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "bpatcher",
					"name" : "jupe.gizmo.value.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.0, 804.0, 528.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 252.0, 528.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 168.0, 186.0, 55.0, 20.0 ],
					"text" : "save ego"
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
					"patching_rect" : [ 282.0, 432.0, 159.0, 20.0 ],
					"text" : "init work name display Name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "bpatcher",
					"name" : "jupe.gizmo.value.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 282.0, 474.0, 528.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 114.0, 528.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6.0, 186.0, 61.0, 20.0 ],
					"text" : "save work"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 876.0, 276.0, 96.0, 22.0 ],
					"text" : "just to be safe..."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 978.0, 276.0, 34.0, 20.0 ],
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
					"bgoncolor" : [ 0.756863, 0.647059, 0.623529, 1.0 ],
					"bgovercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
					"bordercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
					"borderoncolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"id" : "obj-7",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 168.0, 108.0, 60.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 546.0, 252.0, 60.0, 60.0 ],
					"rounded" : 99.0,
					"text" : "Save",
					"textcolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
					"textoncolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
					"textovercolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
					"bgoncolor" : [ 0.756863, 0.647059, 0.623529, 1.0 ],
					"bgovercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
					"bordercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
					"borderoncolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"id" : "obj-2",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 6.0, 108.0, 60.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 546.0, 114.0, 60.0, 60.0 ],
					"rounded" : 99.0,
					"text" : "Save",
					"textcolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
					"textoncolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
					"textovercolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 66.0, 426.0, 53.0, 22.0 ],
					"text" : "jupe.eco"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.988235, 0.921569, 1.0, 0.0 ],
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-49",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 72.0, 158.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 84.0, 127.0, 25.0 ],
					"text" : "Work Settings",
					"textcolor" : [ 0.505882, 0.45098, 0.529412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.988235, 0.921569, 1.0, 0.0 ],
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 174.0, 72.0, 158.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 222.0, 127.0, 25.0 ],
					"text" : "Ego Settings (user)",
					"textcolor" : [ 0.505882, 0.45098, 0.529412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.988235, 0.921569, 1.0, 0.0 ],
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 342.0, 72.0, 158.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 342.0, 127.0, 25.0 ],
					"text" : "Ecosystem Settings",
					"textcolor" : [ 0.505882, 0.45098, 0.529412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.988235, 0.921569, 1.0, 0.0 ],
					"fontname" : "PT Sans",
					"fontsize" : 36.0,
					"frgb" : 0.0,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 6.0, 96.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 6.0, 201.0, 53.0 ],
					"text" : "Jupe!",
					"textcolor" : [ 0.505882, 0.45098, 0.529412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
					"bgoncolor" : [ 0.756863, 0.647059, 0.623529, 1.0 ],
					"bgovercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
					"bordercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
					"borderoncolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
					"fontface" : 1,
					"fontname" : "PT Sans",
					"fontsize" : 14.0,
					"id" : "obj-25",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 342.0, 108.0, 60.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 546.0, 372.0, 60.0, 60.0 ],
					"rounded" : 99.0,
					"text" : "Restart",
					"textcolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
					"textoncolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
					"textovercolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "PT Sans",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 408.0, 210.0, 44.0, 20.0 ],
					"text" : "restart"
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
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 978.0, 66.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"angle" : 99.0,
					"bgcolor" : [ 0.345098, 0.321569, 0.454902, 0.090196 ],
					"border" : 1,
					"bordercolor" : [ 0.984314, 0.94902, 1.0, 0.223529 ],
					"grad1" : [ 0.984314, 0.94902, 1.0, 0.0 ],
					"grad2" : [ 0.415686, 0.392157, 0.529412, 0.117647 ],
					"id" : "obj-32",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 558.0, 120.0, 156.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 366.0, 600.0, 96.0 ],
					"rounded" : 4
				}

			}
, 			{
				"box" : 				{
					"angle" : 99.0,
					"bgcolor" : [ 0.345098, 0.321569, 0.454902, 0.090196 ],
					"border" : 1,
					"bordercolor" : [ 0.984314, 0.94902, 1.0, 0.223529 ],
					"grad1" : [ 0.984314, 0.94902, 1.0, 0.0 ],
					"grad2" : [ 0.415686, 0.392157, 0.529412, 0.117647 ],
					"id" : "obj-3",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 558.0, 72.0, 156.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 108.0, 600.0, 96.0 ],
					"rounded" : 4
				}

			}
, 			{
				"box" : 				{
					"angle" : 99.0,
					"bgcolor" : [ 0.345098, 0.321569, 0.454902, 0.090196 ],
					"border" : 1,
					"bordercolor" : [ 0.984314, 0.94902, 1.0, 0.223529 ],
					"grad1" : [ 0.984314, 0.94902, 1.0, 0.0 ],
					"grad2" : [ 0.415686, 0.392157, 0.529412, 0.117647 ],
					"id" : "obj-5",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 558.0, 168.0, 156.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 246.0, 600.0, 72.0 ],
					"rounded" : 4
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 109.5, 460.5, 291.5, 460.5 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 109.5, 791.5, 255.5, 791.5 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 109.5, 562.5, 291.5, 562.5 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 109.5, 657.5, 291.5, 657.5 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 109.5, 944.5, 213.5, 944.5 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 109.5, 1046.5, 213.5, 1046.5 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 109.5, 1149.5, 213.5, 1149.5 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 291.5, 514.0, 184.0, 514.0, 184.0, 406.0, 75.5, 406.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 987.5, 390.5, 75.5, 390.5 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 417.5, 357.5, 75.5, 357.5 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 15.5, 357.5, 75.5, 357.5 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 177.5, 357.5, 75.5, 357.5 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 351.5, 188.5, 417.5, 188.5 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
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
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 255.5, 842.0, 147.0, 842.0, 147.0, 409.0, 75.5, 409.0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 291.5, 613.0, 152.0, 613.0, 152.0, 409.0, 75.5, 409.0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 291.5, 712.0, 161.0, 712.0, 161.0, 410.0, 75.5, 410.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 213.5, 1000.0, 155.0, 1000.0, 155.0, 409.0, 75.5, 409.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 213.5, 1096.0, 147.0, 1096.0, 147.0, 406.0, 75.5, 406.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 987.5, 172.5, 843.5, 172.5 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 843.5, 417.5, 291.5, 417.5 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 843.5, 752.5, 255.5, 752.5 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 843.5, 522.5, 291.5, 522.5 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 843.5, 621.5, 291.5, 621.5 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 843.5, 903.5, 213.5, 903.5 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 843.5, 1009.5, 213.5, 1009.5 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 843.5, 1109.5, 213.5, 1109.5 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 213.5, 1197.0, 144.5, 1197.0, 144.5, 416.0, 75.5, 416.0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 351.5, 246.5, 843.5, 246.5 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "jupe.eco.maxpat",
				"bootpath" : "/Ran/Code/Treasure/Jupe/0.5/jupe/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jupe.eco.js",
				"bootpath" : "/Ran/Code/Treasure/Jupe/0.5/jupe/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "jupe.gizmo.value.maxpat",
				"bootpath" : "/Ran/Code/Treasure/Jupe/0.5/jupe/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
