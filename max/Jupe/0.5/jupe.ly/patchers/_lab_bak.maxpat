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
		"rect" : [ 8.0, 50.0, 1920.0, 1092.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 12.0, 12.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1404.0, 504.0, 49.0, 20.0 ],
					"text" : "filepath"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1201.5, 202.0, 56.0, 18.0 ],
					"text" : "get hello"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 1500.0, 336.0, 67.0, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0
					}
,
					"text" : "dict mydict"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-14",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 708.0, 156.0, 48.0 ],
					"text" : "NOTE: always create imprint fildes (even if there are sub branchs)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x64"
						}
,
						"rect" : [ 0.0, 26.0, 1920.0, 1066.0 ],
						"bgcolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
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
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"bgcolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
									"bgoncolor" : [ 0.466667, 0.466667, 0.682353, 1.0 ],
									"bgovercolor" : [ 0.756863, 0.647059, 0.623529, 1.0 ],
									"bgoveroncolor" : [ 0.756863, 0.647059, 0.623529, 1.0 ],
									"bordercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"borderoncolor" : [ 0.466667, 0.466667, 0.682353, 1.0 ],
									"fontface" : 1,
									"fontname" : "PT Sans",
									"fontsize" : 14.0,
									"id" : "obj-18",
									"maxclass" : "textbutton",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 408.0, 180.0, 24.0, 24.0 ],
									"rounded" : 99.0,
									"text" : "",
									"textcolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"texton" : "",
									"textoncolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
									"textovercolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fadetime" : 666.0,
									"fadeunselect" : 1,
									"fontface" : 1,
									"fontname" : "PT Sans",
									"fontsize" : 12.0,
									"hovertabcolor" : [ 0.756863, 0.647059, 0.623529, 1.0 ],
									"id" : "obj-43",
									"maxclass" : "tab",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 6.0, 12.0, 156.0, 972.0 ],
									"rounded" : 22.0,
									"tabcolor" : [ 0.505882, 0.45098, 0.529412, 1.0 ],
									"tabs" : [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1", "2", "3", "4", "5", "6", "7", "78", "89", "0" ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.203922, 0.196078, 0.258824, 1.0 ],
									"bordercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"fontface" : 1,
									"fontname" : "PT Sans",
									"fontsize" : 14.0,
									"frgb" : 0.0,
									"id" : "obj-39",
									"maxclass" : "textedit",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1174.0, 210.0, 240.0, 24.0 ],
									"tabmode" : 0,
									"text" : "yesBooBoo",
									"textcolor" : [ 0.756863, 0.647059, 0.623529, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
									"bgoncolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"bgovercolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
									"bgoveroncolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"bordercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"borderoncolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"fontname" : "PT Sans",
									"fontsize" : 14.0,
									"id" : "obj-37",
									"maxclass" : "textbutton",
									"mode" : 1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 402.0, 174.0, 204.0, 36.0 ],
									"rounded" : 43.95,
									"textcolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"texton" : "Button",
									"textoncolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
									"textovercolor" : [ 0.756863, 0.647059, 0.623529, 1.0 ],
									"textoveroncolor" : [ 0.756863, 0.647059, 0.623529, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1164.0, 444.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-28",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1236.0, 450.0, 90.0, 18.0 ],
									"text" : "symbol Default"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.988235, 0.921569, 1.0, 0.0 ],
									"fontface" : 1,
									"fontname" : "PT Sans",
									"fontsize" : 13.6,
									"frgb" : 0.0,
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 678.0, 486.0, 150.0, 24.0 ],
									"text" : "yoMamaMama",
									"textcolor" : [ 0.505882, 0.45098, 0.529412, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 1230.0, 516.0, 192.0, 20.0 ],
									"text" : "dialog Really rename this branch?"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.203922, 0.196078, 0.258824, 1.0 ],
									"bordercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"fontface" : 1,
									"fontname" : "PT Sans",
									"fontsize" : 14.0,
									"frgb" : 0.0,
									"id" : "obj-21",
									"maxclass" : "textedit",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 928.0, 210.0, 238.0, 24.0 ],
									"tabmode" : 0,
									"text" : "sdsdfadf",
									"textcolor" : [ 0.756863, 0.647059, 0.623529, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1056.0, 900.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
									"bgoncolor" : [ 0.505882, 0.45098, 0.529412, 1.0 ],
									"bgovercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"bordercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"borderoncolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
									"fontface" : 1,
									"fontname" : "PT Sans",
									"fontsize" : 14.0,
									"id" : "obj-15",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1188.0, 732.0, 48.0, 48.0 ],
									"rounded" : 99.0,
									"text" : "Go",
									"textcolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"textoncolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
									"textovercolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"align" : 0,
									"bgcolor" : [ 0.168627, 0.156863, 0.227451, 1.0 ],
									"bgoncolor" : [ 0.168627, 0.156863, 0.227451, 1.0 ],
									"bgovercolor" : [ 0.168627, 0.156863, 0.227451, 1.0 ],
									"border" : 0,
									"bordercolor" : [ 0.984314, 0.94902, 1.0, 0.215686 ],
									"fontname" : "PT Sans",
									"fontsize" : 13.6,
									"id" : "obj-14",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 468.0, 342.0, 150.0, 24.0 ],
									"rounded" : 4.0,
									"text" : "fireBreatherSectionOneTwoThree",
									"textcolor" : [ 0.505882, 0.45098, 0.529412, 1.0 ],
									"textoncolor" : [ 0.984314, 0.94902, 1.0, 1.0 ],
									"textovercolor" : [ 0.756863, 0.647059, 0.623529, 1.0 ],
									"textoveroncolor" : [ 0.984314, 0.94902, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
									"bgoncolor" : [ 0.505882, 0.45098, 0.529412, 1.0 ],
									"bgovercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"bordercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"borderoncolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
									"fontface" : 1,
									"fontname" : "PT Sans",
									"fontsize" : 14.0,
									"id" : "obj-13",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 942.0, 702.0, 60.0, 60.0 ],
									"rounded" : 99.0,
									"text" : "Render",
									"textcolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"textoncolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ],
									"textovercolor" : [ 0.141176, 0.129412, 0.196078, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 984.0, 456.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 852.0, 504.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"angle" : 99.0,
									"bgcolor" : [ 0.168627, 0.156863, 0.227451, 1.0 ],
									"border" : 1,
									"bordercolor" : [ 0.364706, 0.341176, 0.407843, 1.0 ],
									"grad1" : [ 0.984314, 0.94902, 1.0, 0.0 ],
									"grad2" : [ 0.415686, 0.392157, 0.529412, 0.117647 ],
									"id" : "obj-6",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 438.0, 336.0, 192.0, 36.0 ],
									"rounded" : 39
								}

							}
, 							{
								"box" : 								{
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
									"patching_rect" : [ 336.0, 600.0, 528.0, 192.0 ],
									"rounded" : 4
								}

							}
, 							{
								"box" : 								{
									"angle" : 99.0,
									"bgcolor" : [ 0.345098, 0.321569, 0.454902, 0.090196 ],
									"border" : 1,
									"bordercolor" : [ 0.984314, 0.94902, 1.0, 0.223529 ],
									"grad1" : [ 0.984314, 0.94902, 1.0, 0.0 ],
									"grad2" : [ 0.415686, 0.392157, 0.529412, 0.117647 ],
									"id" : "obj-2",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 900.0, 204.0, 498.0, 204.0 ],
									"rounded" : 4
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 660.0, 36.0, 74.0, 20.0 ],
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
					"text" : "patcher boo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 984.0, 600.0, 35.0, 18.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 984.0, 649.0, 336.0, 259.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-57",
					"items" : "<empty>",
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 638.0, 622.0, 100.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1176.0, 360.0, 34.0, 20.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1176.0, 312.0, 87.0, 20.0 ],
					"text" : "dict.iter mydict"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1236.0, 255.0, 163.0, 18.0 ],
					"text" : "set BOBO fa sdf sdf gos dgd"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"patching_rect" : [ 816.0, 312.0, 200.0, 200.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1092.0, 202.0, 85.0, 18.0 ],
					"text" : "set hello 1 2 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1032.0, 228.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 1032.0, 276.0, 67.0, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0
					}
,
					"text" : "dict mydict"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1320.0, 360.0, 276.0, 222.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 828.0, 600.0, 35.0, 18.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 905.0, 564.0, 338.0, 18.0 ],
					"text" : "editwith \"C:\\\\Program Files\\\\Sublime Text 3\\\\sublime_text.exe\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "bang", "int" ],
					"patching_rect" : [ 840.0, 636.0, 46.0, 20.0 ],
					"text" : "text"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 396.0, 708.0, 128.0, 20.0 ],
					"text" : "jupe.ly.branch buildUp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 240.0, 708.0, 128.0, 20.0 ],
					"text" : "jupe.ly.branch buildUp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 372.0, 624.0, 128.0, 20.0 ],
					"text" : "jupe.ly.branch buildUp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 96.0, 624.0, 111.0, 20.0 ],
					"text" : "jupe.ly.branch intro"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 588.0, 540.0, 157.0, 20.0 ],
					"text" : "jupe.ly.branch sectionThree"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 540.0, 148.0, 20.0 ],
					"text" : "jupe.ly.branch sectionTwo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.0, 540.0, 148.0, 20.0 ],
					"text" : "jupe.ly.branch sectionOne"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 469.5, 456.0, 117.0, 20.0 ],
					"text" : "jupe.ly.branch score"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 708.0, 340.0, 84.0, 18.0 ],
					"text" : "projectroot $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 708.0, 384.0, 67.0, 20.0 ],
					"text" : "jupe.ly.eco"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1008.0, 148.5, 259.0, 32.0 ],
					"text" : "\"C://Ran/Code/LilyPond/Works-LilyPond/Dead Reckoning2/\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 732.0, 148.5, 259.0, 32.0 ],
					"text" : "\"C://Ran/Code/LilyPond/Works-LilyPond/Dead Reckoning/\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 216.0, 876.0, 534.0, 32.0 ],
					"text" : ";\r\nmax openfile ta \"C://Ran/Code/LilyPond/Works-LilyPond/Dead Reckoning/music.deadreckoning.ly\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-1",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 24.0, 192.0, 48.0 ],
					"text" : "TO DO:\nlibrary to manage lilypond file output (general stuff)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 432.0, 324.0, 192.0, 34.0 ],
					"text" : "TO DO:\nauto-generate lilypond files"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-7",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 180.0, 192.0, 62.0 ],
					"text" : "TO DO:\nmanage instruments\n - presets\n - how to deal with percussion?"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-6",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 432.0, 240.0, 192.0, 48.0 ],
					"text" : "TO DO:\ncreate bubble for combinations of sections "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-5",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 432.0, 120.0, 192.0, 89.0 ],
					"text" : "TO DO:\ncreate bubble for section of music for all instruments at once, with time signature + measures (e.g. a section could be 4 measures of 7/8)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-4",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 348.0, 192.0, 62.0 ],
					"text" : "TO DO:\npatcher kick off lilypnd rendering engine and display results. WOULD BE REALLY GREAT!"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-3",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 228.0, 120.0, 192.0, 34.0 ],
					"text" : "TO DO:\nmanage staves"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-2",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 120.0, 192.0, 34.0 ],
					"text" : "TO DO:\nmanage book output"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "jupe.ly.eco.maxpat",
				"bootpath" : "/Ran/Code/Treasure/Jupe/jupe.0.4/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jupe.ly.branch.maxpat",
				"bootpath" : "/Ran/Code/Treasure/Jupe/jupe.0.4/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dict.iter.mxe64",
				"type" : "mx64"
			}
 ]
	}

}
