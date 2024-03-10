fx_version "adamant"
game "gta5"

ui_page "nui/index.html"

client_scripts {
	"@vrp/lib/utils.lua",
	"client_config.lua",
	"conce_client.lua"
} 

server_script {
	"@vrp/lib/utils.lua",
	"config.lua",
	"conce_server.lua"
}

files {
	"nui/index.html",
	"nui/script.js",
	"nui/style.css",
	"nui/images/*.png",
	"nui/fonts/*.ttf",
	"nui/fonts/*.otf"
}                                          