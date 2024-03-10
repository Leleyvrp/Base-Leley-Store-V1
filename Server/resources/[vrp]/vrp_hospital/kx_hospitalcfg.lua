local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

Config              = {}
Config.OpenMenuSpawn= {x = -800.75, y = -1247.79, z = 7.34}

Config.Hash = {
	{hash = "paramedicoambu", detection = 4.0, depth = -2.5, height = 0.5},
}

Config.Press = {
	open_menu = Keys["Y"],
	take_bed = Keys["Y"],
	do_action = Keys["E"],
	do_action2 = Keys["Z"],
	out_vehicle_bed = Keys["Y"],
	release_bed = Keys["Y"],
	erase_bed = Keys["G"],
	in_vehicle_bed = Keys["Z"],
	go_out_bed = Keys["Y"],
}

Config.Language = {
	name_hospital = 'Hospital',
	open_menu = 'Pressione ~g~E~w~ para abrir o menu',
	do_action = '~r~E~w~  DEITAR / LEVANTAR    ~g~Z~w~  TRATAMENTO',--'Pressione ~g~E~w~ para usar a maca',
	take_bed = "Pressione ~g~Y~w~ para pegar a maca",
	release_bed = "<b>Y</b> Soltar / Pegar Maca<br><b>G</b> Apagar",
	in_vehicle_bed = "Pressione ~g~Z~w~ para guardar a maca ou ~g~G~w~ para apagar",
	out_vehicle_bed = "Pressione ~g~Y~w~ para tirar a maca",
	go_out_bed = "Sair da maca",
	delete_bed = "Apagar maca",
	tratament = '~g~Em tratamento!',
	lit_1 = "Maca sem colchão",
	lit_2 = "Maca com colchão verde",
	lit_4 = "Macas Cirurgicas",
	anim = {
		lie_back = "Deitar de costas",
		sit_right = "Sentar-se a direita",
		sit_left = "Sentar-se a esquerda",
		convulse = "Convulsionar",
		pls = "Deitar de concha",
	}
}