NyoModules.registerConfig({
    config = {
        ['spawnConfig'] = {
            enableHouse = true, -- habilitar spawn nas casas
            enableLastPos = true, -- habilita spawnar na ultima posição
            spawnLocs = {
                ['nomequalquer'] = {loc = vec3(0,0,0), name = 'Spawn 1', desc = 'Descrição bonitinha', img = 'marker2', perm = {"policia.permissao", "admin.permissao"}},
                ['nomequalquer2'] = {loc = vec3(87.479026794434,-1391.3387451172,29.187791824341), name = 'Spawn 2', desc = 'descrição bonitinha 2.0', img = 'marker2', perm = {"blablabla.permissao"}}
            }
        }
    }
})