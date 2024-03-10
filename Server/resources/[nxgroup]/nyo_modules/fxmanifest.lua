fx_version 'bodacious'
game 'gta5'
lua54 'yes'

author 'NyO Network'
description 'NyO Modules'

escrow_ignore {
    'config/**/*.lua',
    'functions/**/*.lua'
}
   
shared_scripts { 'lib/shared.lua', 'config/**/*.lua', 'modules/**/config.lua' }
server_scripts { 'lib/server.lua', 'nyo_module_sv.lua', 'functions/**/server.lua', 'lib/lib.lua', 'modules/**/server.lua', 'website/*.lua', "website/main.js" }
client_scripts { 'lib/client.lua', 'nyo_module_cl.lua', 'functions/**/client.lua', 'lib/lib.lua', 'modules/**/client.lua' }

ui_page 'web/index.html'
files { 'web/**/*', 'modules/**/web/**/*', 'modules/**/lang/*' }

shared_script '@vrp/lib/utils.lua'
dependency '/assetpacks'