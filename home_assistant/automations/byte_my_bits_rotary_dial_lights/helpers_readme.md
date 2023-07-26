These need to be put in to Home Assistant as helpers so the script can both
read the values for calculations and write the new value to them. Then,
these helpers will be used with other automations to control RGBCW lights
separately from the main knob control automation.

I chose to use helpers this way because it allows me to sync other automations
I have and make sure everything is reading the same values, if I want them to.



-----input.number helpers-----

input_number.kitchen_rgb_mode		(set range=0-4)
input_number.kitchen_rgb_temperature	(set range=2000-6500)
input_number.kitchen_rgb_brightness	(set range=0-255)
input_number.kitchen_rgb_track		(set range=0-1530)

------------------------------



------input.text helpers------

input_text.kitchen_rgb_color_value	(will store RGB value like, "255,231,69")

------------------------------
