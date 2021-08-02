extends Node
var icons = {
	"kenney":"1f3ae",
	"kylan":"1f3ba",
	"openpath1":"1f941"}
var audiopacks = {"kenney":{
	"a":"res://addons/kenney_interface_sounds/back_001.wav",
	"s":"res://addons/kenney_interface_sounds/back_002.wav",
	"d":"res://addons/kenney_interface_sounds/back_003.wav",
	"f":"res://addons/kenney_interface_sounds/back_004.wav",
	"g":"res://addons/kenney_interface_sounds/bong_001.wav",
	"h":"res://addons/kenney_interface_sounds/click_001.wav",
	"j":"res://addons/kenney_interface_sounds/click_002.wav",
	"k":"res://addons/kenney_interface_sounds/click_003.wav",
	"l":"res://addons/kenney_interface_sounds/click_004.wav",
	"z":"res://addons/kenney_interface_sounds/click_005.wav",
	"x":"res://addons/kenney_interface_sounds/close_001.wav",
	"c":"res://addons/kenney_interface_sounds/close_002.wav",
	"v":"res://addons/kenney_interface_sounds/close_003.wav",
	"b":"res://addons/kenney_interface_sounds/close_004.wav",
	"n":"res://addons/kenney_interface_sounds/drop_001.wav",
	"m":"res://addons/kenney_interface_sounds/drop_002.wav",
	",":"res://addons/kenney_interface_sounds/drop_003.wav",
	".":"res://addons/kenney_interface_sounds/drop_004.wav",
	"q":"res://addons/kenney_interface_sounds/scratch_001.wav",
	"w":"res://addons/kenney_interface_sounds/scratch_002.wav",
	"e":"res://addons/kenney_interface_sounds/scratch_003.wav",
	"r":"res://addons/kenney_interface_sounds/scratch_004.wav",
	"t":"res://addons/kenney_interface_sounds/scratch_005.wav",
	"y":"res://addons/kenney_interface_sounds/question_001.wav",
	"u":"res://addons/kenney_interface_sounds/question_002.wav",
	"i":"res://addons/kenney_interface_sounds/question_003.wav",
	"o":"res://addons/kenney_interface_sounds/question_004.wav",
	"1":"res://addons/kenney_interface_sounds/select_001.wav",
	"2":"res://addons/kenney_interface_sounds/select_002.wav",
	"3":"res://addons/kenney_interface_sounds/select_003.wav",
	"4":"res://addons/kenney_interface_sounds/select_004.wav",
	"5":"res://addons/kenney_interface_sounds/select_005.wav",
	"6":"res://addons/kenney_interface_sounds/select_006.wav",
	"7":"res://addons/kenney_interface_sounds/select_007.wav",
	"8":"res://addons/kenney_interface_sounds/select_008.wav",
	"9":"res://addons/kenney_interface_sounds/switch_001.wav",
	"0":"res://addons/kenney_interface_sounds/switch_002.wav",
	"-":"res://addons/kenney_interface_sounds/switch_003.wav",
	"=":"res://addons/kenney_interface_sounds/switch_004.wav",
	"p":"res://addons/kenney_interface_sounds/switch_005.wav",
	";":"res://addons/kenney_interface_sounds/switch_006.wav",
	"/":"res://addons/kenney_interface_sounds/switch_007.wav",
	"ç":"res://addons/kenney_interface_sounds/tick_001.wav",
	"!":"res://addons/kenney_interface_sounds/tick_002.wav",
	"@":"res://addons/kenney_interface_sounds/tick_004.wav",
	"$":"res://addons/kenney_interface_sounds/toggle_001.wav",
	"%":"res://addons/kenney_interface_sounds/toggle_002.wav",
	"&":"res://addons/kenney_interface_sounds/toggle_003.wav",
	"*":"res://addons/kenney_interface_sounds/toggle_004.wav",
	},"kylan":{
	"Q":"res://addons/Funk-Kylan-130BPM/Batida #1 - 130 BPM.wav",
	"W":"res://addons/Funk-Kylan-130BPM/Batida #2 - 130 BPM.wav",
	"E":"res://addons/Funk-Kylan-130BPM/Batida #3 - 130 BPM.wav",
	"R":"res://addons/Funk-Kylan-130BPM/Batida #4 - 130 BPM.wav",
	"T":"res://addons/Funk-Kylan-130BPM/Batida #5 - 130 BPM.wav",
	"Y":"res://addons/Funk-Kylan-130BPM/Batida #6 - 130 BPM (Beatbox).wav",
	"U":"res://addons/Funk-Kylan-130BPM/Batida #7 - 130 BPM (Pandeiro).wav",
	"I":"res://addons/Funk-Kylan-130BPM/Batida #8 - 130 BPM (Panela).wav",
	"O":"res://addons/Funk-Kylan-130BPM/Batida #9 - 130 BPM (Grave).wav",
	"P":"res://addons/Funk-Kylan-130BPM/Batida #10 - 130 BPM (Palmas).wav",
	"A":"res://addons/Funk-Kylan-130BPM/Batida #11 - 130 BPM.wav",
	"S":"res://addons/Funk-Kylan-130BPM/Batida #12 - 130 BPM (Beatbox).wav",
	"D":"res://addons/Funk-Kylan-130BPM/Batida #13 - 130 BPM.wav",
	"F":"res://addons/Funk-Kylan-130BPM/Batida #14 - 130 BPM (Palmas).wav",
	"G":"res://addons/Funk-Kylan-130BPM/Batida #15 - 130 BPM.wav",
	"H":"res://addons/Funk-Kylan-130BPM/Batida #16 - 130 BPM.wav",
	"J":"res://addons/Funk-Kylan-130BPM/Batida #17 - 130 BPM (Tamborzão).wav",
	"K":"res://addons/Funk-Kylan-130BPM/Batida #18 - 130 BPM.wav",
	"L":"res://addons/Funk-Kylan-130BPM/Caixa #1.wav",
	"~":"res://addons/Funk-Kylan-130BPM/beat olodum djluisinho.com - Part_1.wav",
	"Ç":"res://addons/Funk-Kylan-130BPM/Percussão #1 - Bongô Grave.wav",
	"Z":"res://addons/Funk-Kylan-130BPM/Percussão #2 - Bongô Agudo.wav",
	"X":"res://addons/Funk-Kylan-130BPM/Saxofone #1 - 130 BPM (E).wav",
	"V":"res://addons/Funk-Kylan-130BPM/Saxofone #2 - 130 BPM.wav",
	"B":"res://addons/Funk-Kylan-130BPM/SFX Caixa Registradora.wav",
	"N":"res://addons/Funk-Kylan-130BPM/Synth #1 - Sanfoninha (#A).wav",
	"M":"res://addons/Funk-Kylan-130BPM/Synth #2 - Sanfoninha (#A).wav",
	"<":"res://addons/Funk-Kylan-130BPM/Synth #3 - Rocinha (G).wav",
	">":"res://addons/Funk-Kylan-130BPM/Synth #4 - Rocinha (#G).wav",
	":":"res://addons/Funk-Kylan-130BPM/Synth #5 - Rocinha (F).wav",
	"?":"res://addons/Funk-Kylan-130BPM/Synth #6 - Terra (#D).wav",
	"{":"res://addons/Funk-Kylan-130BPM/Synth #7 - Terra (G).wav",
	"}":"res://addons/Funk-Kylan-130BPM/Synth #8 - Namorado Otário (D).wav",
	"ü":"res://addons/Funk-Kylan-130BPM/Synth #9 - Namorado Otário (D).wav",
	"|":"res://addons/Funk-Kylan-130BPM/Trompete #1 - 130 BPM.wav",
	"^":"res://addons/Funk-Kylan-130BPM/Virada #1 - 130 BPM (Tamborzão).wav",
	"ã":"res://addons/Funk-Kylan-130BPM/Voz #1 - Ahn.wav"
	}, "openpath1":{
	"1":"res://addons/OpenPathMusic44v1/afuche-long.wav",
	"2":"res://addons/OpenPathMusic44v1/afuche.wav",
	"3":"res://addons/OpenPathMusic44v1/bell-octave0.wav",
	"4":"res://addons/OpenPathMusic44v1/bell-octave1.wav",
	"5":"res://addons/OpenPathMusic44v1/bell-octave2.wav",
	"6":"res://addons/OpenPathMusic44v1/woodblock.wav",
	"7":"res://addons/OpenPathMusic44v1/conga-lick.wav",
	"8":"res://addons/OpenPathMusic44v1/conga-muffled-1.wav",
	"9":"res://addons/OpenPathMusic44v1/conga-muffled-2.wav",
	"0":"res://addons/OpenPathMusic44v1/conga-open-1.wav",
	"-":"res://addons/OpenPathMusic44v1/conga-open-2.wav",
	"=":"res://addons/OpenPathMusic44v1/conga-slap-1.wav",
	"!":"res://addons/OpenPathMusic44v1/conga-slap-2.wav",
	"@":"res://addons/OpenPathMusic44v1/cowbell-large-closed.wav",
	"$":"res://addons/OpenPathMusic44v1/cowbell-large-open.wav",
	"%":"res://addons/OpenPathMusic44v1/cowbell-small-closed.wav",
	"&":"res://addons/OpenPathMusic44v1/cowbell-small-open.wav",
	"*":"res://addons/OpenPathMusic44v1/cymbal-china-mallet.wav",
	"(":"res://addons/OpenPathMusic44v1/cymbal-china-stick.wav",
	")":"res://addons/OpenPathMusic44v1/cymbal-hihat-foot-1.wav",
	"`":"res://addons/OpenPathMusic44v1/cymbal-hihat-foot-2.wav",
	"+":"res://addons/OpenPathMusic44v1/cymbal-hihat-foot-open.wav",
	"q":"res://addons/OpenPathMusic44v1/cymbal-hihat-lick.wav",
	"w":"res://addons/OpenPathMusic44v1/cymbal-hihat-open-stick-1.wav",
	"e":"res://addons/OpenPathMusic44v1/cymbal-hihat-open-stick-2.wav",
	"r":"res://addons/OpenPathMusic44v1/cymbal-hihat-openclose-stick.wav",
	"t":"res://addons/OpenPathMusic44v1/cymbal-hihat-stick.wav",
	"y":"res://addons/OpenPathMusic44v1/cymbal-ride-bell-short.wav",
	"u":"res://addons/OpenPathMusic44v1/cymbal-ride-bell.wav",
	"i":"res://addons/OpenPathMusic44v1/cymbal-sizzle-stick.wav",
	"o":"res://addons/OpenPathMusic44v1/cymbal-ride-roll-short.wav",
	"p":"res://addons/OpenPathMusic44v1/cymbal-ride-stick.wav",
	"[":"res://addons/OpenPathMusic44v1/whistle-owl.wav",
	"]":"res://addons/OpenPathMusic44v1/whistle-slide.wav",
	"a":"res://addons/OpenPathMusic44v1/drum-bass-hi-1.wav",
	"s":"res://addons/OpenPathMusic44v1/drum-bass-hi-2.wav",
	"d":"res://addons/OpenPathMusic44v1/drum-bass-lo-1.wav",
	"f":"res://addons/OpenPathMusic44v1/drum-bass-lo-2.wav",
	"g":"res://addons/OpenPathMusic44v1/drum-snare-brush-long.wav",
	"h":"res://addons/OpenPathMusic44v1/drum-snare-brush-tap.wav",
	"j":"res://addons/OpenPathMusic44v1/drum-snare-drag.wav",
	"k":"res://addons/OpenPathMusic44v1/drum-snare-flam.wav",
	"l":"res://addons/OpenPathMusic44v1/drum-snare-rim.wav",
	"ç":"res://addons/OpenPathMusic44v1/drum-snare-roll-long.wav",
	"z":"res://addons/OpenPathMusic44v1/drum-snare-roll-short.wav",
	"x":"res://addons/OpenPathMusic44v1/drum-snare-sidestick.wav",
	"c":"res://addons/OpenPathMusic44v1/drum-snare-tap.wav",
	"v":"res://addons/OpenPathMusic44v1/drum-surdo-large-closed-short.wav",
	"b":"res://addons/OpenPathMusic44v1/drum-surdo-large-closed.wav",
	"n":"res://addons/OpenPathMusic44v1/tumba-muffled-1.wav",
	"m":"res://addons/OpenPathMusic44v1/tumba-muffled-2.wav",
	",":"res://addons/OpenPathMusic44v1/drum-tom-hi-brush.wav",
	".":"res://addons/OpenPathMusic44v1/drum-tom-hi-mallet.wav",
	";":"res://addons/OpenPathMusic44v1/drum-tom-hi-tap.wav",
	"/":"res://addons/OpenPathMusic44v1/fingercymbals-large.wav",
	"|":"res://addons/OpenPathMusic44v1/fingercymbals.wav",
	"Q":"res://addons/OpenPathMusic44v1/flexatone.wav",
	"W":"res://addons/OpenPathMusic44v1/goatbells.wav",
	"E":"res://addons/OpenPathMusic44v1/maracas-dbl.wav",
	"R":"res://addons/OpenPathMusic44v1/maracas-roll.wav",
	"T":"res://addons/OpenPathMusic44v1/metal tray hit with medium tail.wav",
	"Y":"res://addons/OpenPathMusic44v1/tumba-open-1.wav",
	"U":"res://addons/OpenPathMusic44v1/tumba-open-2.wav",
	"I":"res://addons/OpenPathMusic44v1/tumba-slap-1.wav",
	"O":"res://addons/OpenPathMusic44v1/tumba-slap-2.wav",
	"P":"res://addons/OpenPathMusic44v1/shaker child voice.wav",
	"{":"res://addons/OpenPathMusic44v1/shaker-hi-down.wav",
	"}":"res://addons/OpenPathMusic44v1/shaker-hi-up.wav",
	"A":"res://addons/OpenPathMusic44v1/shaker-lo-down.wav",
	"S":"res://addons/OpenPathMusic44v1/shaker-lo-up.wav",
	"D":"res://addons/OpenPathMusic44v1/shaker.wav",
	"F":"res://addons/OpenPathMusic44v1/sleighbells.wav",
	"G":"res://addons/OpenPathMusic44v1/tabla-hi-na.wav",
	"H":"res://addons/OpenPathMusic44v1/tabla-hi-tin.wav",
	"J":"res://addons/OpenPathMusic44v1/tabla-hi-tuh.wav",
	"K":"res://addons/OpenPathMusic44v1/tabla-hi-tun.wav",
	"L":"res://addons/OpenPathMusic44v1/tabla-hi-tuut.wav",
	"Ç":"res://addons/OpenPathMusic44v1/tabla-lick-voiceanddrums.wav",
	"Z":"res://addons/OpenPathMusic44v1/tabla-lick.wav",
	"X":"res://addons/OpenPathMusic44v1/tabla-lo-geh-gliss.wav",
	"C":"res://addons/OpenPathMusic44v1/tabla-lo-geh.wav",
	"V":"res://addons/OpenPathMusic44v1/tabla-lo-keh.wav",
	"B":"res://addons/OpenPathMusic44v1/tambourine-classical-loud.wav",
	"N":"res://addons/OpenPathMusic44v1/tambourine-classical-shake.wav",
	"M":"res://addons/OpenPathMusic44v1/tambourine-classical-tap.wav",
	"<":"res://addons/OpenPathMusic44v1/tambourine-classical-thumbroll.wav",
	">":"res://addons/OpenPathMusic44v1/tambourine-rock-single.wav",
	"â":"res://addons/OpenPathMusic44v1/ratchet.wav",
	"á":"res://addons/OpenPathMusic44v1/triangle.wav",
	"é":"res://addons/OpenPathMusic44v1/triangle-classical.wav",
	"í":"res://addons/OpenPathMusic44v1/triangle-classical-roll.wav",
	"ó":"res://addons/OpenPathMusic44v1/timbale-hi-crosstick-1.wav",
	"ú":"res://addons/OpenPathMusic44v1/timbale-hi-crosstick-2.wav",
	"ä":"res://addons/OpenPathMusic44v1/timbale-hi-open-1.wav",
	"ë":"res://addons/OpenPathMusic44v1/timbale-hi-open-2.wav",
	"ï":"res://addons/OpenPathMusic44v1/timbale-hi-rim-1.wav",
	"ö":"res://addons/OpenPathMusic44v1/timbale-hi-rim-2.wav",
	"ü":"res://addons/OpenPathMusic44v1/timbale-lick.wav",
	"ê":"res://addons/OpenPathMusic44v1/timbale-lo-open-1.wav",
	"î":"res://addons/OpenPathMusic44v1/timbale-lo-open-2.wav",
	"ô":"res://addons/OpenPathMusic44v1/timbale-side-1.wav",
	"û":"res://addons/OpenPathMusic44v1/timbale-side-2.wav",
	"ã":"res://addons/OpenPathMusic44v1/timbaleloi-rim-1.wav",
	"ẽ":"res://addons/OpenPathMusic44v1/timbaleloi-rim-2.wav"
	}
}
var user = {}
