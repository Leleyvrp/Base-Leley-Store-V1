shared_script "@vrp/lib/lib.lua"

fx_version 'bodacious'
game 'gta5'

ui_page 'web/index.html'

client_script{
    '@vrp/lib/utils.lua',
    'client.lua',
    'config.lua'
}

server_script {
    '@vrp/lib/utils.lua',
    "@vrp/cfg/webhook.lua",
	'server.lua',
    'config.lua'
}

files {
  'web/index.html',
  'web/**/*'
}              