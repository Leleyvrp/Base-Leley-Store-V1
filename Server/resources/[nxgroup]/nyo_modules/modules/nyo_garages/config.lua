
NyoModules.registerConfig({
    config = {
  
        ['garagesGeneralConfig'] = {
            taxTime = 15,
            taxPrice = 0.01,
            insuranceTax = 0.05,
            detentionTax = 0.10,
            paymentType = 2,
            sellVehicleCommand = 'vehs',
            vehicleList = {
                  
          [GetHashKey('blista')] = { modelname = 'blista', name = 'Blista', price = 60000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('paramedicocharger2014')] = { modelname = 'paramedicocharger2014', name = 'Dodge Charger 2014', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('WRgiuliagta')] = { modelname = 'WRgiuliagta', name = 'WRgiuliagta', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('vectre')] = { modelname = 'vectre', name = 'vectre', price = 1303000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('brioso')] = { modelname = 'brioso', name = 'Brioso', price = 35000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('dilettante')] = { modelname = 'dilettante', name = 'Dilettante', price = 60000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('f4rr')] = { modelname = 'f4rr', name = 'Agusta F4RR', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('dm1200_02')] = { modelname = 'dm1200_02', name = 'DM 1200', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('nxchuteira')] = { modelname = 'nxchuteira', name = 'Base Leley Store V1 World Cup', price = 800000, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('cbb')] = { modelname = 'cbb', name = 'CBB', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('africa')] = { modelname = 'africa', name = 'Africat2', price = 800000, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('R1200GS')] = { modelname = 'R1200GS', name = 'R1200GS', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('sr1')] = { modelname = 'sr1', name = 'SR1', price = 1300100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('tiger1200')] = { modelname = 'tiger1200', name = 'Tiger 1200', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('s1000docandidato')] = { modelname = 's1000docandidato', name = 'BMWS DOCANDIDATO', price = 1300100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('xt660vip')] = { modelname = 'xt660vip', name = 'XT 660', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('rmodmi8lb')] = { modelname = 'rmodmi8lb', name = 'Agusta F4RR', price = 1300100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('dm1200')] = { modelname = 'dm1200', name = 'Ducati dm1200', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('cb500x')] = { modelname = 'cb500x', name = 'Honda CB500', price = 1100100, trunk = 15, type = 'exclusive', banned = false },
          [GetHashKey('hcbr17')] = { modelname = 'hcbr17', name = 'Honda CBR17', price = 800000, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('saveiro')] = { modelname = 'saveiro', name = 'Saveiro', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('ahksv')] = { modelname = 'ahksv', name = 'Lamborghini Ahk', price = 1300100, trunk = 80, type = 'exclusive', banned = false },
          [GetHashKey('weevil')] = { modelname = 'weevil', name = 'Fusca', price = 1300100, trunk = 80, type = 'exclusive', banned = false },
          [GetHashKey('xj6')] = { modelname = 'xj6', name = 'XJ6', price = 1300100, trunk = 80, type = 'exclusive', banned = false },
          [GetHashKey('718b')] = { modelname = '718b', name = 'Porsche 718', price = 1300100, trunk = 80, type = 'exclusive', banned = false },
          [GetHashKey('africat')] = { modelname = 'africat', name = 'Honda CRF 1000', price = 1100100, trunk = 15, type = 'exclusive', banned = false },
          [GetHashKey('mercedescls')] = { modelname = 'mercedescls', name = 'mercedescls', price = 800000, trunk = 15, type = 'work', banned = false },
          [GetHashKey('fbi2')] = { modelname = 'fbi2', name = 'fbi2', price = 800000, trunk = 15, type = 'work', banned = false },
          [GetHashKey('police4')] = { modelname = 'police4', name = 'police4', price = 800000, trunk = 15, type = 'work', banned = false },
          [GetHashKey('mercxclass')] = { modelname = 'mercxclass', name = 'mercxclass', price = 800000, trunk = 15, type = 'work', banned = false },
          [GetHashKey('wra45')] = { modelname = 'wra45', name = 'wra45', price = 800000, trunk = 15, type = 'work', banned = false },
          [GetHashKey('wrpolmav')] = { modelname = 'wrpolmav', name = 'wrpolmav', price = 800000, trunk = 15, type = 'work', banned = false },
          [GetHashKey('18tahoew')] = { modelname = '18tahoew', name = '18tahoew', price = 800000, trunk = 15, type = 'work', banned = false },
          [GetHashKey('issi2')] = { modelname = 'issi2', name = 'Issi2', price = 90000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('panto')] = { modelname = 'panto', name = 'Panto', price = 20000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('prairie')] = { modelname = 'prairie', name = 'Prairie', price = 10000, trunk = 25, type = 'carros', banned = false },
          [GetHashKey('rhapsody')] = { modelname = 'rhapsody', name = 'Rhapsody', price = 25000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('cogcabrio')] = { modelname = 'cogcabrio', name = 'Cogcabrio', price = 130000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('emperor')] = { modelname = 'emperor', name = 'Emperor', price = 50000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('emperor2')] = { modelname = 'emperor2', name = 'Emperor 2', price = 50000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('phoenix')] = { modelname = 'phoenix', name = 'Phoenix', price = 120000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('premier')] = { modelname = 'premier', name = 'Premier', price = 35000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('glendale')] = { modelname = 'glendale', name = 'Glendale', price = 70000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('intruder')] = { modelname = 'intruder', name = 'Intruder', price = 60000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('exemplar')] = { modelname = 'exemplar', name = 'Exemplar', price = 80000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('levantecoter')] = { modelname = 'levantecoter', name = 'levantecoter', price = 80000, trunk = 20, type = 'work', banned = false },
          [GetHashKey('chevypolicia')] = { modelname = 'chevypolicia', name = 'chevypolicia', price = 80000, trunk = 20, type = 'work', banned = false },
          [GetHashKey('tdmerry')] = { modelname = 'tdmerry', name = 'tdmerry', price = 80000, trunk = 20, type = 'work', banned = false },
          [GetHashKey('tdmerry2')] = { modelname = 'tdmerry2', name = 'tdmerry2', price = 80000, trunk = 20, type = 'work', banned = false },
          [GetHashKey('nvsubaru')] = { modelname = 'nvsubaru', name = 'nvsubaru', price = 80000, trunk = 20, type = 'work', banned = false },
          [GetHashKey('benson')] = { modelname = 'benson', name = 'benson', price = 80000, trunk = 2000, type = 'carros', banned = false },

          [GetHashKey('nxchuteira')] = { modelname = 'nxchuteira', name = 'Nexus World Cup', price = 800000, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('PCX')] = { modelname = 'PCX', name = 'PCX', price = 800000, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('rmodg65')] = { modelname = 'rmodg65', name = 'rmodg65', price = 800000, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('rmodp1gtr')] = { modelname = 'rmodp1gtr', name = 'rmodp1gtr', price = 800000, trunk = 50, type = 'exclusive', banned = false },
    
          [GetHashKey('pdfocus')] = { modelname = 'pdfocus', name = 'pdfocus', price = 80000, trunk = 20, type = 'work', banned = false },
          [GetHashKey('ambulance')] = { modelname = 'ambulance', name = 'ambulance', price = 80000, trunk = 20, type = 'work', banned = false },
          [GetHashKey('cb500coter')] = { modelname = 'cb500coter', name = 'cb500coter', price = 80000, trunk = 20, type = 'work', banned = false },
          [GetHashKey('polsilvia')] = { modelname = 'polsilvia', name = 'polsilvia', price = 80000, trunk = 20, type = 'work', banned = false },
          [GetHashKey('gotcar')] = { modelname = 'gotcar', name = 'gotcar', price = 80000, trunk = 20, type = 'work', banned = false },
          
          [GetHashKey('pd_bmw')] = { modelname = 'pd_bmw', name = 'pd_bmw', price = 80000, trunk = 20, type = 'work', banned = false },
          [GetHashKey('nc750x')] = { modelname = 'nc750x', name = 'nc750x', price = 80000, trunk = 20, type = 'work', banned = false },
          [GetHashKey('mercedescls')] = { modelname = 'mercedescls', name = 'mercedescls', price = 80000, trunk = 20, type = 'work', banned = false },
          [GetHashKey('cotermercedes')] = { modelname = 'cotermercedes', name = 'cotermercedes', price = 80000, trunk = 20, type = 'work', banned = false },
          [GetHashKey('f620')] = { modelname = 'f620', name = 'F620', price = 55000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('felon')] = { modelname = 'felon', name = 'Felon', price = 70000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('ingot')] = { modelname = 'ingot', name = 'Ingot', price = 160000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('jackal')] = { modelname = 'jackal', name = 'Jackal', price = 60000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('oracle')] = { modelname = 'oracle', name = 'Oracle', price = 60000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('oracle2')] = { modelname = 'oracle2', name = 'Oracle2', price = 80000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('openwheel1')] = { modelname = 'openwheel1', name = 'Openwheel1', price = 80000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('sentinel')] = { modelname = 'sentinel', name = 'Sentinel', price = 50000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('sentinel2')] = { modelname = 'sentinel2', name = 'Sentinel2', price = 60000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('windsor')] = { modelname = 'windsor', name = 'Windsor', price = 150000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('windsor2')] = { modelname = 'windsor2', name = 'Windsor2', price = 170000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('zion')] = { modelname = 'zion', name = 'Zion', price = 50000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('zion2')] = { modelname = 'zion2', name = 'Zion2', price = 60000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('blade')] = { modelname = 'blade', name = 'Blade', price = 110000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('buccaneer')] = { modelname = 'buccaneer', name = 'Buccaneer', price = 130000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('buccaneer2')] = { modelname = 'buccaneer2', name = 'Buccaneer2', price = 260000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('primo')] = { modelname = 'primo', name = 'Primo', price = 130000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('primo2')] = { modelname = 'primo2', name = 'Primo2', price = 200000, trunk = 60, type = 'work', banned = false },
          [GetHashKey('rise-mclassx')] = { modelname = 'rise-mclassx', name = 'Mclassx', price = 200000, trunk = 60, type = 'work', banned = false },
          [GetHashKey('dodgeems')] = { modelname = 'dodgeems', name = 'Dodgeems', price = 200000, trunk = 60, type = 'work', banned = false },
          [GetHashKey('Wrasprinter')] = { modelname = 'Wrasprinter', name = 'Wrasprinter', price = 200000, trunk = 60, type = 'work', banned = false },
          [GetHashKey('WRr1200')] = { modelname = 'WRr1200', name = 'WRr1200', price = 200000, trunk = 60, type = 'work', banned = false },
          [GetHashKey('chino')] = { modelname = 'chino', name = 'Chino', price = 130000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('chino2')] = { modelname = 'chino2', name = 'Chino2', price = 200000, trunk = 60, type = 'work', banned = false },
          [GetHashKey('coquette3')] = { modelname = 'coquette3', name = 'Coquette3', price = 195000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('dominator')] = { modelname = 'dominator', name = 'Dominator', price = 230000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('dominator2')] = { modelname = 'dominator2', name = 'Dominator2', price = 230000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('dukes')] = { modelname = 'dukes', name = 'Dukes', price = 150000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('faction')] = { modelname = 'faction', name = 'Faction', price = 150000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('faction2')] = { modelname = 'faction2', name = 'Faction2', price = 200000, trunk = 40, type = 'work', banned = false },
          [GetHashKey('c8z06')] = { modelname = 'c8z06', name = 'c8z06', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('wrx15')] = { modelname = 'wrx15', name = 'wrx15', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('f822')] = { modelname = 'f822', name = 'f822', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('faction3')] = { modelname = 'faction3', name = 'Faction3', price = 350000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('gauntlet')] = { modelname = 'gauntlet', name = 'Gauntlet', price = 165000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('gauntlet2')] = { modelname = 'gauntlet2', name = 'Gauntlet2', price = 165000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('hermes')] = { modelname = 'hermes', name = 'Hermes', price = 280000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('hotknife')] = { modelname = 'hotknife', name = 'Hotknife', price = 180000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('moonbeam')] = { modelname = 'moonbeam', name = 'Moonbeam', price = 220000, trunk = 80, type = 'carros', banned = false },
          [GetHashKey('moonbeam2')] = { modelname = 'moonbeam2', name = 'Moonbeam2', price = 250000, trunk = 70, type = 'carros', banned = false },
          [GetHashKey('nightshade')] = { modelname = 'nightshade', name = 'Nightshade', price = 270000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('picador')] = { modelname = 'picador', name = 'Picador', price = 150000, trunk = 90, type = 'carros', banned = false },
          [GetHashKey('ruiner')] = { modelname = 'ruiner', name = 'Ruiner', price = 150000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('sabregt')] = { modelname = 'sabregt', name = 'Sabregt', price = 260000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('sabregt2')] = { modelname = 'sabregt2', name = 'Sabregt2', price = 150000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('gburrito')] = { modelname = 'gburrito', name = 'GBurrito', price = 200000, trunk = 100, type = 'work', banned = false },
          [GetHashKey('slamvan')] = { modelname = 'slamvan', name = 'Slamvan', price = 180000, trunk = 80, type = 'carros', banned = false },
          [GetHashKey('slamvan2')] = { modelname = 'slamvan2', name = 'Slamvan2', price = 200000, trunk = 50, type = 'work', banned = false },
          [GetHashKey('slamvan3')] = { modelname = 'slamvan3', name = 'Slamvan3', price = 230000, trunk = 80, type = 'carros', banned = false },
          [GetHashKey('stalion')] = { modelname = 'stalion', name = 'Stalion', price = 150000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('stalion2')] = { modelname = 'stalion2', name = 'Stalion2', price = 150000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('tampa')] = { modelname = 'tampa', name = 'Tampa', price = 170000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('vigero')] = { modelname = 'vigero', name = 'Vigero', price = 170000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('virgo')] = { modelname = 'virgo', name = 'Virgo', price = 150000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('virgo2')] = { modelname = 'virgo2', name = 'Virgo2', price = 250000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('virgo3')] = { modelname = 'virgo3', name = 'Virgo3', price = 180000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('voodoo')] = { modelname = 'voodoo', name = 'Voodoo', price = 220000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('voodoo2')] = { modelname = 'voodoo2', name = 'Voodoo2', price = 220000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('yosemite')] = { modelname = 'yosemite', name = 'Yosemite', price = 350000, trunk = 130, type = 'carros', banned = false },
          [GetHashKey('bfinjection')] = { modelname = 'bfinjection', name = 'Bfinjection', price = 80000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('bifta')] = { modelname = 'bifta', name = 'Bifta', price = 190000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('bodhi2')] = { modelname = 'bodhi2', name = 'Bodhi2', price = 170000, trunk = 90, type = 'carros', banned = false },
          [GetHashKey('brawler')] = { modelname = 'brawler', name = 'Brawler', price = 250000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('trophytruck')] = { modelname = 'trophytruck', name = 'Trophytruck', price = 400000, trunk = 15, type = 'carros', banned = false },
          [GetHashKey('trophytruck2')] = { modelname = 'trophytruck2', name = 'Trophytruck2', price = 400000, trunk = 15, type = 'carros', banned = false },
          [GetHashKey('dubsta3')] = { modelname = 'dubsta3', name = 'Dubsta3', price = 300000, trunk = 90, type = 'carros', banned = false },
          [GetHashKey('mesa3')] = { modelname = 'mesa3', name = 'Mesa3', price = 200000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('rancherxl')] = { modelname = 'rancherxl', name = 'Rancherxl', price = 220000, trunk = 70, type = 'carros', banned = false },
          [GetHashKey('rebel')] = { modelname = 'rebel', name = 'Rebel', price = 50000, trunk = 80, type = 'work', banned = false },
          [GetHashKey('rebel2')] = { modelname = 'rebel2', name = 'Rebel2', price = 250000, trunk = 100, type = 'carros', banned = false },
          [GetHashKey('riata')] = { modelname = 'riata', name = 'Riata', price = 250000, trunk = 80, type = 'carros', banned = false },
          [GetHashKey('dloader')] = { modelname = 'dloader', name = 'Dloader', price = 150000, trunk = 80, type = 'carros', banned = false },
          [GetHashKey('ratloader')] = { modelname = 'ratloader', name = 'ratloader', price = 1000, trunk = 80, type = 'carros', banned = false },
          [GetHashKey('ratloader2')] = { modelname = 'ratloader2', name = 'Ratloader2', price = 1000, trunk = 70, type = 'work', banned = false },
          [GetHashKey('sandking')] = { modelname = 'sandking', name = 'Sandking', price = 400000, trunk = 120, type = 'carros', banned = false },
          [GetHashKey('sandking2')] = { modelname = 'sandking2', name = 'Sandking2', price = 370000, trunk = 120, type = 'carros', banned = false },
          [GetHashKey('rmodsianr')] = { modelname = 'rmodsianr', name = 'RmodSianR', price = 1300000, trunk = 120, type = 'carros', banned = false },
          [GetHashKey('baller')] = { modelname = 'baller', name = 'Baller', price = 150000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('baller2')] = { modelname = 'baller2', name = 'Baller2', price = 160000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('baller3')] = { modelname = 'baller3', name = 'Baller3', price = 175000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('baller4')] = { modelname = 'baller4', name = 'Baller4', price = 185000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('baller5')] = { modelname = 'baller5', name = 'Baller5', price = 270000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('baller6')] = { modelname = 'baller6', name = 'Baller6', price = 1000000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('bjxl')] = { modelname = 'bjxl', name = 'Bjxl', price = 110000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('cavalcade')] = { modelname = 'cavalcade', name = 'Cavalcade', price = 110000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('cavalcade2')] = { modelname = 'cavalcade2', name = 'Cavalcade2', price = 130000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('contender')] = { modelname = 'contender', name = 'Contender', price = 300000, trunk = 80, type = 'carros', banned = false },
          [GetHashKey('dubsta')] = { modelname = 'dubsta', name = 'Dubsta', price = 210000, trunk = 70, type = 'carros', banned = false },
          [GetHashKey('dubsta2')] = { modelname = 'dubsta2', name = 'Dubsta2', price = 240000, trunk = 70, type = 'carros', banned = false },
          [GetHashKey('fq2')] = { modelname = 'fq2', name = 'Fq2', price = 110000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('granger')] = { modelname = 'granger', name = 'Granger', price = 345000, trunk = 100, type = 'carros', banned = false },
          [GetHashKey('gresley')] = { modelname = 'gresley', name = 'Gresley', price = 150000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('habanero')] = { modelname = 'habanero', name = 'Habanero', price = 110000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('seminole')] = { modelname = 'seminole', name = 'Seminole', price = 110000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('serrano')] = { modelname = 'serrano', name = 'Serrano', price = 150000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('xls')] = { modelname = 'xls', name = 'Xls', price = 150000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('xls2')] = { modelname = 'xls2', name = 'Xls2', price = 1000000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('asea')] = { modelname = 'asea', name = 'Asea', price = 55000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('asterope')] = { modelname = 'asterope', name = 'Asterope', price = 65000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('cog55')] = { modelname = 'cog55', name = 'Cog55', price = 200000, trunk = 50, type = 'work', banned = false },
          [GetHashKey('cog552')] = { modelname = 'cog552', name = 'Cog552', price = 400000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('cognoscenti')] = { modelname = 'cognoscenti', name = 'Cognoscenti', price = 280000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('cognoscenti2')] = { modelname = 'cognoscenti2', name = 'Cognoscenti2', price = 400000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('stanier')] = { modelname = 'stanier', name = 'Stanier', price = 60000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('stratum')] = { modelname = 'stratum', name = 'Stratum', price = 90000, trunk = 70, type = 'carros', banned = false },
          [GetHashKey('superd')] = { modelname = 'superd', name = 'Superd', price = 200000, trunk = 50, type = 'work', banned = false },
          [GetHashKey('surge')] = { modelname = 'surge', name = 'Surge', price = 110000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('tailgater')] = { modelname = 'tailgater', name = 'Tailgater', price = 110000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('warrener')] = { modelname = 'warrener', name = 'Warrener', price = 90000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('washington')] = { modelname = 'washington', name = 'Washington', price = 130000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('alpha')] = { modelname = 'alpha', name = 'Alpha', price = 230000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('banshee')] = { modelname = 'banshee', name = 'Banshee', price = 300000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('bestiagts')] = { modelname = 'bestiagts', name = 'Bestiagts', price = 290000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('blista2')] = { modelname = 'blista2', name = 'Blista2', price = 55000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('blista3')] = { modelname = 'blista3', name = 'Blista3', price = 80000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('buffalo')] = { modelname = 'buffalo', name = 'Buffalo', price = 300000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('buffalo2')] = { modelname = 'buffalo2', name = 'Buffalo2', price = 300000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('buffalo3')] = { modelname = 'buffalo3', name = 'Buffalo3', price = 300000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('carbonizzare')] = { modelname = 'carbonizzare', name = 'Carbonizzare', price = 290000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('comet2')] = { modelname = 'comet2', name = 'Comet2', price = 250000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('comet3')] = { modelname = 'comet3', name = 'Comet3', price = 290000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('comet5')] = { modelname = 'comet5', name = 'Comet5', price = 300000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('coquette')] = { modelname = 'coquette', name = 'Coquette', price = 250000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('elegy')] = { modelname = 'elegy', name = 'Elegy', price = 350000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('elegy2')] = { modelname = 'elegy2', name = 'Elegy2', price = 355000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('feltzer2')] = { modelname = 'feltzer2', name = 'Feltzer2', price = 255000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('furoregt')] = { modelname = 'furoregt', name = 'Furoregt', price = 290000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('fusilade')] = { modelname = 'fusilade', name = 'Fusilade', price = 210000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('futo')] = { modelname = 'futo', name = 'Futo', price = 170000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('jester')] = { modelname = 'jester', name = 'Jester', price = 150000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('khamelion')] = { modelname = 'khamelion', name = 'Khamelion', price = 210000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('kuruma')] = { modelname = 'kuruma', name = 'Kuruma', price = 330000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('massacro')] = { modelname = 'massacro', name = 'Massacro', price = 330000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('massacro2')] = { modelname = 'massacro2', name = 'Massacro2', price = 330000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('ninef')] = { modelname = 'ninef', name = 'Ninef', price = 290000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('ninef2')] = { modelname = 'ninef2', name = 'Ninef2', price = 290000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('omnis')] = { modelname = 'omnis', name = 'Omnis', price = 240000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('pariah')] = { modelname = 'pariah', name = 'Pariah', price = 500000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('penumbra')] = { modelname = 'penumbra', name = 'Penumbra', price = 150000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('raiden')] = { modelname = 'raiden', name = 'Raiden', price = 240000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('rapidgt')] = { modelname = 'rapidgt', name = 'Rapidgt', price = 250000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('rapidgt2')] = { modelname = 'rapidgt2', name = 'Rapidgt2', price = 300000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('ruston')] = { modelname = 'ruston', name = 'Ruston', price = 370000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('schafter3')] = { modelname = 'schafter3', name = 'Schafter3', price = 275000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('schafter4')] = { modelname = 'schafter4', name = 'Schafter4', price = 275000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('schafter5')] = { modelname = 'schafter5', name = 'Schafter5', price = 275000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('schwarzer')] = { modelname = 'schwarzer', name = 'Schwarzer', price = 170000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('sentinel3')] = { modelname = 'sentinel3', name = 'Sentinel3', price = 170000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('seven70')] = { modelname = 'seven70', name = 'Seven70', price = 370000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('specter')] = { modelname = 'specter', name = 'Specter', price = 320000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('specter2')] = { modelname = 'specter2', name = 'Specter2', price = 355000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('mansm8')] = { modelname = 'mansm8', name = 'mansm8', price = 111111111, trunk = 20, type = 'work', banned = false },
          [GetHashKey('streiter')] = { modelname = 'streiter', name = 'Streiter', price = 250000, trunk = 70, type = 'carros', banned = false },
          [GetHashKey('sultan')] = { modelname = 'sultan', name = 'Sultan', price = 210000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('surano')] = { modelname = 'surano', name = 'Surano', price = 310000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('tampa2')] = { modelname = 'tampa2', name = 'Tampa2', price = 200000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('tropos')] = { modelname = 'tropos', name = 'Tropos', price = 170000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('verlierer2')] = { modelname = 'verlierer2', name = 'Verlierer2', price = 380000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('btype')] = { modelname = 'btype', name = 'Btype', price = 200000, trunk = 40, type = 'work', banned = false },
          [GetHashKey('btype2')] = { modelname = 'btype2', name = 'Btype2', price = 460000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('btype3')] = { modelname = 'btype3', name = 'Btype3', price = 390000, trunk = 40, type = 'work', banned = false },
          [GetHashKey('casco')] = { modelname = 'casco', name = 'Casco', price = 355000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('cheetah')] = { modelname = 'cheetah', name = 'Cheetah', price = 425000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('coquette2')] = { modelname = 'coquette2', name = 'Coquette2', price = 285000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('feltzer3')] = { modelname = 'feltzer3', name = 'Feltzer3', price = 220000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('gt500')] = { modelname = 'gt500', name = 'Gt500', price = 250000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('infernus2')] = { modelname = 'infernus2', name = 'Infernus2', price = 250000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('jb700')] = { modelname = 'jb700', name = 'Jb700', price = 220000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('mamba')] = { modelname = 'mamba', name = 'Mamba', price = 300000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('manana')] = { modelname = 'manana', name = 'Manana', price = 130000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('monroe')] = { modelname = 'monroe', name = 'Monroe', price = 260000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('peyote')] = { modelname = 'peyote', name = 'Peyote', price = 150000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('pigalle')] = { modelname = 'pigalle', name = 'Pigalle', price = 250000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('rapidgt3')] = { modelname = 'rapidgt3', name = 'Rapidgt3', price = 220000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('retinue')] = { modelname = 'retinue', name = 'Retinue', price = 150000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('stinger')] = { modelname = 'stinger', name = 'Stinger', price = 220000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('stingergt')] = { modelname = 'stingergt', name = 'Stingergt', price = 230000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('torero')] = { modelname = 'torero', name = 'Torero', price = 160000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('tornado')] = { modelname = 'tornado', name = 'Tornado', price = 150000, trunk = 70, type = 'carros', banned = false },
          [GetHashKey('tornado2')] = { modelname = 'tornado2', name = 'Tornado2', price = 160000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('tornado5')] = { modelname = 'tornado5', name = 'Tornado5', price = 200000, trunk = 60, type = 'work', banned = false },
          [GetHashKey('tornado6')] = { modelname = 'tornado6', name = 'Tornado6', price = 250000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('turismo2')] = { modelname = 'turismo2', name = 'Turismo2', price = 250000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('ztype')] = { modelname = 'ztype', name = 'Ztype', price = 400000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('adder')] = { modelname = 'adder', name = 'Adder', price = 620000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('autarch')] = { modelname = 'autarch', name = 'Autarch', price = 760000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('banshee2')] = { modelname = 'banshee2', name = 'Banshee2', price = 370000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('bullet')] = { modelname = 'bullet', name = 'Bullet', price = 400000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('cheetah2')] = { modelname = 'cheetah2', name = 'Cheetah2', price = 240000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('entityxf')] = { modelname = 'entityxf', name = 'Entityxf', price = 460000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('rmodrover')] = { modelname = 'rmodrover', name = 'RMOD Rover', price = 1200100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('hilux2016')] = { modelname = 'hilux2016', name = 'Hilux 2016', price = 1200100, trunk = 70, type = 'exclusive', banned = false },
          [GetHashKey('golf7gti')] = { modelname = 'golf7gti', name = 'Golf', price = 1100100, trunk = 70, type = 'exclusive', banned = false },
          [GetHashKey('evoque')] = { modelname = 'evoque', name = 'Ranger Rover Evoque', price = 1200100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('jettagli')] = { modelname = 'jettagli', name = 'jettagli', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('microlight')] = { modelname = 'microlight', name = 'microlight', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('F25')] = { modelname = 'F25', name = 'F25', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('carreta')] = { modelname = 'carreta', name = 'carreta', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('carretajetski')] = { modelname = 'carretajetski', name = 'carretajetski', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('xxxxx')] = { modelname = 'xxxxx', name = 'xxxxx', price = 1300100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('velociraptor')] = { modelname = 'velociraptor', name = 'velociraptor', price = 1300100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('rmodgtr50')] = { modelname = 'rmodgtr50', name = 'rmodgtr50', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('fmj')] = { modelname = 'fmj', name = 'Fmj', price = 520000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('gp1')] = { modelname = 'gp1', name = 'Gp1', price = 495000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('infernus')] = { modelname = 'infernus', name = 'Infernus', price = 470000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('nero')] = { modelname = 'nero', name = 'Nero', price = 450000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('nero2')] = { modelname = 'nero2', name = 'Nero2', price = 480000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('osiris')] = { modelname = 'osiris', name = 'Osiris', price = 460000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('penetrator')] = { modelname = 'penetrator', name = 'Penetrator', price = 480000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('pfister811')] = { modelname = 'pfister811', name = 'Pfister811', price = 530000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('reaper')] = { modelname = 'reaper', name = 'Reaper', price = 620000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('sc1')] = { modelname = 'sc1', name = 'Sc1', price = 495000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('sultanrs')] = { modelname = 'sultanrs', name = 'Sultan RS', price = 450000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('t20')] = { modelname = 't20', name = 'T20', price = 670000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('tempesta')] = { modelname = 'tempesta', name = 'Tempesta', price = 600000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('turismor')] = { modelname = 'turismor', name = 'Turismor', price = 620000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('tyrus')] = { modelname = 'tyrus', name = 'Tyrus', price = 620000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('vacca')] = { modelname = 'vacca', name = 'Vacca', price = 620000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('visione')] = { modelname = 'visione', name = 'Visione', price = 690000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('voltic')] = { modelname = 'voltic', name = 'Voltic', price = 440000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('zentorno')] = { modelname = 'zentorno', name = 'Zentorno', price = 920000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('sadler')] = { modelname = 'sadler', name = 'Sadler', price = 180000, trunk = 70, type = 'carros', banned = false },
          [GetHashKey('bison')] = { modelname = 'bison', name = 'Bison', price = 220000, trunk = 70, type = 'carros', banned = false },
          [GetHashKey('bison2')] = { modelname = 'bison2', name = 'Bison2', price = 180000, trunk = 70, type = 'carros', banned = false },
          [GetHashKey('bobcatxl')] = { modelname = 'bobcatxl', name = 'Bobcatxl', price = 260000, trunk = 100, type = 'carros', banned = false },
          [GetHashKey('burrito')] = { modelname = 'burrito', name = 'Burrito', price = 260000, trunk = 120, type = 'carros', banned = false },
          [GetHashKey('burrito2')] = { modelname = 'burrito2', name = 'Burrito2', price = 260000, trunk = 120, type = 'carros', banned = false },
          [GetHashKey('burrito3')] = { modelname = 'burrito3', name = 'Burrito3', price = 260000, trunk = 120, type = 'carros', banned = false },
          [GetHashKey('burrito4')] = { modelname = 'burrito4', name = 'Burrito4', price = 260000, trunk = 120, type = 'carros', banned = false },
          [GetHashKey('minivan')] = { modelname = 'minivan', name = 'Minivan', price = 110000, trunk = 70, type = 'carros', banned = false },
          [GetHashKey('minivan2')] = { modelname = 'minivan2', name = 'Minivan2', price = 220000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('paradise')] = { modelname = 'paradise', name = 'Paradise', price = 260000, trunk = 120, type = 'carros', banned = false },
          [GetHashKey('pony')] = { modelname = 'pony', name = 'Pony', price = 260000, trunk = 120, type = 'carros', banned = false },
          [GetHashKey('pony2')] = { modelname = 'pony2', name = 'Pony2', price = 260000, trunk = 120, type = 'carros', banned = false },
          [GetHashKey('rumpo')] = { modelname = 'rumpo', name = 'Rumpo', price = 260000, trunk = 120, type = 'carros', banned = false },
          [GetHashKey('rumpo2')] = { modelname = 'rumpo2', name = 'Rumpo2', price = 260000, trunk = 120, type = 'carros', banned = false },
          [GetHashKey('rumpo3')] = { modelname = 'rumpo3', name = 'Rumpo3', price = 350000, trunk = 120, type = 'carros', banned = false },
          [GetHashKey('speedo')] = { modelname = 'speedo', name = 'Speedo', price = 200000, trunk = 120, type = 'work', banned = false },
          [GetHashKey('surfer')] = { modelname = 'surfer', name = 'Surfer', price = 55000, trunk = 80, type = 'carros', banned = false },
          [GetHashKey('youga')] = { modelname = 'youga', name = 'Youga', price = 260000, trunk = 120, type = 'carros', banned = false },
          [GetHashKey('rebel')] = { modelname = 'rebel', name = 'Rebel', price = 1000, trunk = 80, type = 'work', banned = false },
          [GetHashKey('tractor2')] = { modelname = 'tractor2', name = 'Tractor2', price = 1000, trunk = 80, type = 'work', banned = false },
          [GetHashKey('huntley')] = { modelname = 'huntley', name = 'Huntley', price = 110000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('landstalker')] = { modelname = 'landstalker', name = 'Landstalker', price = 130000, trunk = 70, type = 'carros', banned = false },
          [GetHashKey('mesa')] = { modelname = 'mesa', name = 'Mesa', price = 90000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('patriot')] = { modelname = 'patriot', name = 'Patriot', price = 250000, trunk = 70, type = 'carros', banned = false },
          [GetHashKey('radi')] = { modelname = 'radi', name = 'Radi', price = 110000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('rocoto')] = { modelname = 'rocoto', name = 'Rocoto', price = 110000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('tyrant')] = { modelname = 'tyrant', name = 'Tyrant', price = 690000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('entity2')] = { modelname = 'entity2', name = 'Entity2', price = 550000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('cheburek')] = { modelname = 'cheburek', name = 'Cheburek', price = 170000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('hotring')] = { modelname = 'hotring', name = 'Hotring', price = 300000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('jester3')] = { modelname = 'jester3', name = 'Jester3', price = 345000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('flashgt')] = { modelname = 'flashgt', name = 'Flashgt', price = 370000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('ellie')] = { modelname = 'ellie', name = 'Ellie', price = 135000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('penumbra2')] = { modelname = 'penumbra2', name = 'Penumbra2', price = 200000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('remus')] = { modelname = 'remus', name = 'Remus', price = 110000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('gauntlet5')] = { modelname = 'gauntlet5', name = 'Gauntlet5', price = 140000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('yosemite2')] = { modelname = 'yosemite2', name = 'Yosemite2', price = 170000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('240sxhr')] = { modelname = '240sxhr', name = 'Nissan 240SX Trendsetter', price = 1100000, trunk = 70, type = 'exclusive', banned = false },
          [GetHashKey('a90e')] = { modelname = 'a90e', name = 'Toyota Supra A90', price = 1100000, trunk = 70, type = 'exclusive', banned = false },
          [GetHashKey('evox')] = { modelname = 'evox', name = 'Mitsubishi Lancer Evolution X Varis', price = 1100000, trunk = 70, type = 'exclusive', banned = false },
          [GetHashKey('r34g')] = { modelname = 'r34g', name = 'Nissan Skyline GTR R34 Garson', price = 1100000, trunk = 70, type = 'exclusive', banned = false },
          [GetHashKey('s1hr')] = { modelname = 's1hr', name = 'Audi S1', price = 1100000, trunk = 70, type = 'exclusive', banned = false },
          [GetHashKey('s15varietta')] = { modelname = 's15varietta', name = 'Nissan Silvia S15 Varietta', price = 1100000, trunk = 70, type = 'exclusive', banned = false },
          [GetHashKey('titanh')] = { modelname = 'titanh', name = 'Nissan Titan Warrior Trendsetter', price = 1100000, trunk = 150, type = 'exclusive', banned = false },
          [GetHashKey('vette')] = { modelname = 'vette', name = 'Chevrolet Corvette ZR1', price = 1100000, trunk = 70, type = 'exclusive', banned = false },
          [GetHashKey('wrx')] = { modelname = 'wrx', name = 'Subaru WRX STI', price = 1100000, trunk = 70, type = 'exclusive', banned = false },
          [GetHashKey('s14hachi')] = { modelname = 's14hachi', name = 'Nissan Silvia S14 Zenki', price = 1100000, trunk = 70, type = 'exclusive', banned = false },

           [GetHashKey('futo')] = { modelname = 'futo', name = 'futo', price = 140000, trunk = 50, type = 'carros', banned = false },
           [GetHashKey('zr350')] = { modelname = 'zr350', name = 'zr350', price = 160000, trunk = 50, type = 'carros', banned = false },
           [GetHashKey('calico')] = { modelname = 'calico', name = 'calico', price = 90000, trunk = 50, type = 'carros', banned = false },
           [GetHashKey('futo2')] = { modelname = 'futo2', name = 'futo2', price = 115000, trunk = 50, type = 'carros', banned = false },
           [GetHashKey('euros')] = { modelname = 'euros', name = 'euros', price = 210000, trunk = 50, type = 'carros', banned = false },
           [GetHashKey('jester4')] = { modelname = 'jester4', name = 'jester4', price = 165000, trunk = 50, type = 'carros', banned = false },
           [GetHashKey('comet6')] = { modelname = 'comet6', name = 'comet6', price = 450000, trunk = 50, type = 'carros', banned = false },
           [GetHashKey('growler')] = { modelname = 'growler', name = 'growler', price = 400000, trunk = 50, type = 'carros', banned = false },
           [GetHashKey('cypher')] = { modelname = 'cypher', name = 'cypher', price = 120000, trunk = 50, type = 'carros', banned = false },
           [GetHashKey('rt3000')] = { modelname = 'rt3000', name = 'rt3000', price = 250000, trunk = 50, type = 'carros', banned = false },
           [GetHashKey('speed500g')] = { modelname = 'speed500g', name = 'speed500g', price = 250000, trunk = 50, type = 'carros', banned = false },
             
          [GetHashKey('michelli')] = { modelname = 'michelli', name = 'Michelli', price = 160000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('fagaloa')] = { modelname = 'fagaloa', name = 'Fagaloa', price = 320000, trunk = 80, type = 'carros', banned = false },
          [GetHashKey('dominator2')] = { modelname = 'dominator2', name = 'Dominator2', price = 230000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('dominator3')] = { modelname = 'dominator3', name = 'Dominator3', price = 870000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('issi3')] = { modelname = 'issi3', name = 'Issi3', price = 190000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('taipan')] = { modelname = 'taipan', name = 'Taipan', price = 620000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('gb200')] = { modelname = 'gb200', name = 'Gb200', price = 195000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('stretch')] = { modelname = 'stretch', name = 'Stretch', price = 520000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('guardian')] = { modelname = 'guardian', name = 'Guardian', price = 540000, trunk = 150, type = 'carros', banned = false },
          [GetHashKey('kamacho')] = { modelname = 'kamacho', name = 'Kamacho', price = 460000, trunk = 90, type = 'carros', banned = false },
          [GetHashKey('neon')] = { modelname = 'neon', name = 'Neon', price = 370000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('cyclone')] = { modelname = 'cyclone', name = 'Cyclone', price = 920000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('italigtb')] = { modelname = 'italigtb', name = 'Italigtb', price = 600000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('italigtb2')] = { modelname = 'italigtb2', name = 'Italigtb2', price = 610000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('vagner')] = { modelname = 'vagner', name = 'Vagner', price = 680000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('xa21')] = { modelname = 'xa21', name = 'Xa21', price = 630000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('tezeract')] = { modelname = 'tezeract', name = 'Tezeract', price = 920000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('prototipo')] = { modelname = 'prototipo', name = 'Prototipo', price = 1030000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('patriot2')] = { modelname = 'patriot2', name = 'Patriot2', price = 550000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('stafford')] = { modelname = 'stafford', name = 'Stafford', price = 200000, trunk = 40, type = 'work', banned = false },
          [GetHashKey('swinger')] = { modelname = 'swinger', name = 'Swinger', price = 250000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('clique')] = { modelname = 'clique', name = 'Clique', price = 360000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('deveste')] = { modelname = 'deveste', name = 'Deveste', price = 920000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('deviant')] = { modelname = 'deviant', name = 'Deviant', price = 370000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('everon')] = { modelname = 'everon', name = 'Everon', price = 375000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('impaler')] = { modelname = 'impaler', name = 'Impaler', price = 320000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('italigto')] = { modelname = 'italigto', name = 'Italigto', price = 800000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('schlagen')] = { modelname = 'schlagen', name = 'Schlagen', price = 690000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('toros')] = { modelname = 'toros', name = 'Toros', price = 520000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('tulip')] = { modelname = 'tulip', name = 'Tulip', price = 320000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('vamos')] = { modelname = 'vamos', name = 'Vamos', price = 320000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('freecrawler')] = { modelname = 'freecrawler', name = 'Freecrawler', price = 350000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('fugitive')] = { modelname = 'fugitive', name = 'Fugitive', price = 50000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('le7b')] = { modelname = 'le7b', name = 'Le7b', price = 700000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('lurcher')] = { modelname = 'lurcher', name = 'Lurcher', price = 150000, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('lynx')] = { modelname = 'lynx', name = 'Lynx', price = 370000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('raptor')] = { modelname = 'raptor', name = 'Raptor', price = 300000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('sheava')] = { modelname = 'sheava', name = 'Sheava', price = 700000, trunk = 20, type = 'carros', banned = false },
          [GetHashKey('z190')] = { modelname = 'z190', name = 'Z190', price = 350000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('akuma')] = { modelname = 'akuma', name = 'Akuma', price = 500000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('avarus')] = { modelname = 'avarus', name = 'Avarus', price = 440000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('bagger')] = { modelname = 'bagger', name = 'Bagger', price = 300000, trunk = 40, type = 'motos', banned = false },
          [GetHashKey('bati')] = { modelname = 'bati', name = 'Bati', price = 370000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('bati2')] = { modelname = 'bati2', name = 'Bati2', price = 300000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('bf400')] = { modelname = 'bf400', name = 'Bf400', price = 450000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('carbonrs')] = { modelname = 'carbonrs', name = 'Carbonrs', price = 370000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('chimera')] = { modelname = 'chimera', name = 'Chimera', price = 345000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('cliffhanger')] = { modelname = 'cliffhanger', name = 'Cliffhanger', price = 310000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('daemon')] = { modelname = 'daemon', name = 'Daemon', price = 200000, trunk = 15, type = 'work', banned = false },
          [GetHashKey('daemon2')] = { modelname = 'daemon2', name = 'Daemon2', price = 240000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('defiler')] = { modelname = 'defiler', name = 'Defiler', price = 460000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('diablous')] = { modelname = 'diablous', name = 'Diablous', price = 430000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('diablous2')] = { modelname = 'diablous2', name = 'Diablous2', price = 460000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('double')] = { modelname = 'double', name = 'Double', price = 370000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('enduro')] = { modelname = 'enduro', name = 'Enduro', price = 195000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('esskey')] = { modelname = 'esskey', name = 'Esskey', price = 320000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('faggio')] = { modelname = 'faggio', name = 'Faggio', price = 15000, trunk = 30, type = 'motos', banned = false },
          [GetHashKey('faggio2')] = { modelname = 'faggio2', name = 'Faggio2', price = 5000, trunk = 30, type = 'motos', banned = false },
          [GetHashKey('faggio3')] = { modelname = 'faggio3', name = 'Faggio3', price = 15000, trunk = 30, type = 'motos', banned = false },
          [GetHashKey('fcr')] = { modelname = 'fcr', name = 'Fcr', price = 390000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('fcr2')] = { modelname = 'fcr2', name = 'Fcr2', price = 390000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('gargoyle')] = { modelname = 'gargoyle', name = 'Gargoyle', price = 345000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('hakuchou')] = { modelname = 'hakuchou', name = 'Hakuchou', price = 380000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('hakuchou2')] = { modelname = 'hakuchou2', name = 'Hakuchou2', price = 550000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('hexer')] = { modelname = 'hexer', name = 'Hexer', price = 250000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('innovation')] = { modelname = 'innovation', name = 'Innovation', price = 250000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('lectro')] = { modelname = 'lectro', name = 'Lectro', price = 380000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('manchez')] = { modelname = 'manchez', name = 'Manchez', price = 355000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('nemesis')] = { modelname = 'nemesis', name = 'Nemesis', price = 345000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('nightblade')] = { modelname = 'nightblade', name = 'Nightblade', price = 415000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('pcj')] = { modelname = 'pcj', name = 'Pcj', price = 230000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('ruffian')] = { modelname = 'ruffian', name = 'Ruffian', price = 345000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('sanchez')] = { modelname = 'sanchez', name = 'Sanchez', price = 185000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('fk8')] = { modelname = 'fk8', name = 'fk8', price = 1, trunk = 100, type = 'exclusive', banned = false },
          [GetHashKey('sanchez2')] = { modelname = 'sanchez2', name = 'Sanchez2', price = 185000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('sanctus')] = { modelname = 'sanctus', name = 'Sanctus', price = 200000, trunk = 15, type = 'work', banned = false },
          [GetHashKey('sovereign')] = { modelname = 'sovereign', name = 'Sovereign', price = 285000, trunk = 50, type = 'motos', banned = false },
          [GetHashKey('thrust')] = { modelname = 'thrust', name = 'Thrust', price = 375000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('vader')] = { modelname = 'vader', name = 'Vader', price = 345000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('vindicator')] = { modelname = 'vindicator', name = 'Vindicator', price = 340000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('vortex')] = { modelname = 'vortex', name = 'Vortex', price = 375000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('wolfsbane')] = { modelname = 'wolfsbane', name = 'Wolfsbane', price = 290000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('zombiea')] = { modelname = 'zombiea', name = 'Zombiea', price = 290000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('zombieb')] = { modelname = 'zombieb', name = 'Zombieb', price = 300000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('blazer')] = { modelname = 'blazer', name = 'Blazer', price = 230000, trunk = 15, type = 'motos', banned = true },
          [GetHashKey('blazer4')] = { modelname = 'blazer4', name = 'Blazer4', price = 370000, trunk = 15, type = 'motos', banned = true },
          [GetHashKey('shotaro')] = { modelname = 'shotaro', name = 'Shotaro', price = 800000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('ratbike')] = { modelname = 'ratbike', name = 'Ratbike', price = 230000, trunk = 15, type = 'motos', banned = false },
          [GetHashKey('maseraticooter')] = { modelname = 'maseraticooter', name = 'Maserati Cooter', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('VRA4')] = { modelname = 'VRA4', name = 'VRA4', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('rover')] = { modelname = 'rover', name = 'rover', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('rover')] = { modelname = 'rover', name = 'rover', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('mercedesgt')] = { modelname = 'mercedesgt', name = 'mercedesgt', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('CAVEIRAOBOPE')] = { modelname = 'CAVEIRAOBOPE', name = 'CAVEIRAOBOPE', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('POL718NOVA')] = { modelname = 'POL718NOVA', name = 'POL718NOVA', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('17SILVERB')] = { modelname = '17SILVERB', name = '17SILVERB', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('RAPTORTRUCK')] = { modelname = 'RAPTORTRUCK', name = 'RAPTORTRUCK', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('nvskyline')] = { modelname = 'nvskyline', name = 'nvskyline', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('policiacharger2018')] = { modelname = 'policiacharger2018', name = 'Dodge Charger 2018', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('i8')] = { modelname = 'i8', name = 'i8', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('aeroxdrag')] = { modelname = 'aeroxdrag', name = 'aeroxdrag', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('project8')] = { modelname = 'project8', name = 'project8', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('stryder')] = { modelname = 'stryder', name = 'Stryder', price = 170000, trunk = 50, type = 'motos', banned = false },
          [GetHashKey('verus')] = { modelname = 'verus', name = 'Verus', price = 150000, trunk = 50, type = 'motos', banned = false },
          [GetHashKey('blazer3')] = { modelname = 'blazer3', name = 'Blazer3', price = 170000, trunk = 50, type = 'motos', banned = false },
          [GetHashKey('blazer2')] = { modelname = 'blazer2', name = 'Blazer2', price = 160000, trunk = 50, type = 'motos', banned = false },
          [GetHashKey('asbo')] = { modelname = 'asbo', name = 'Asbo', price = 30000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('vstr')] = { modelname = 'vstr', name = 'Vstr', price = 250000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('brawler')] = { modelname = 'brawler', name = 'Brawler', price = 200000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('freecrawler')] = { modelname = 'freecrawler', name = 'Freecrawler', price = 200000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('squaddie')] = { modelname = 'squaddie', name = 'Squaddie', price = 200000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('sultan3')] = { modelname = 'sultan3', name = 'Sultan3', price = 200000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('issi7')] = { modelname = 'issi7', name = 'Issi7', price = 300000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('gb200')] = { modelname = 'gb200', name = 'Gb200', price = 300000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('nvgolf')] = { modelname = 'nvgolf', name = 'nvgolf', price = 300000, trunk = 50, type = 'work', banned = false },
          [GetHashKey('wrcb500x')] = { modelname = 'wrcb500x', name = 'wrcb500x', price = 300000, trunk = 50, type = 'work', banned = false },

          [GetHashKey('WRford2cooter')] = { modelname = 'WRford2cooter', name = 'WRford2cooter', price = 300000, trunk = 50, type = 'work', banned = false },
          [GetHashKey('WRgiuliagtact')] = { modelname = 'WRgiuliagtact', name = 'WRgiuliagtact', price = 300000, trunk = 50, type = 'work', banned = false },

          [GetHashKey('VRraptor')] = { modelname = 'VRraptor', name = 'VRraptor', price = 300000, trunk = 50, type = 'work', banned = false },
          [GetHashKey('INVESTIGACIVIL')] = { modelname = 'INVESTIGACIVIL', name = 'INVESTIGACIVIL', price = 300000, trunk = 50, type = 'work', banned = false },
          [GetHashKey('1200civil')] = { modelname = '1200civil', name = '1200civil', price = 300000, trunk = 50, type = 'work', banned = false },
          
          [GetHashKey('insurgent2')] = { modelname = 'insurgent2', name = 'insurgent2', price = 300000, trunk = 50, type = 'work', banned = false },

          [GetHashKey('dominator7')] = { modelname = 'dominator7', name = 'Dominator7', price = 250000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('yosemite3')] = { modelname = 'yosemite3', name = 'Yosemite3', price = 200000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('mesa3')] = { modelname = 'mesa3', name = 'Mesa3', price = 300000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('kamacho')] = { modelname = 'kamacho', name = 'Kamacho', price = 200000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('bifta')] = { modelname = 'bifta', name = 'Bifta', price = 30000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('club')] = { modelname = 'club', name = 'Club', price = 80000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('brioso2')] = { modelname = 'brioso2', name = 'Brioso2', price = 30000, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('havok')] = { modelname = 'havok', name = 'Havok', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('suppressor')] = { modelname = 'suppressor', name = 'Blindado GOT', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('riot')] = { modelname = 'riot', name = 'Riot', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('WRBmwg20')] = { modelname = 'WRBmwg20', name = 'WRBmwg20', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('WRBmwm1')] = { modelname = 'WRBmwm1', name = 'WRBmwm1', price = 1100100, trunk = 50, type = 'work', banned = false },

          [GetHashKey('HellcatRed')] = { modelname = 'HellcatRed', name = 'HellcatRed', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('mercedespolicia')] = { modelname = 'mercedespolicia', name = 'mercedespolicia', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('traildope3')] = { modelname = 'traildope3', name = 'traildope3', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('xre19rpm')] = { modelname = 'xre19rpm', name = 'xre19rpm', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('xre2019')] = { modelname = 'xre2019', name = 'xre2019', price = 1100100, trunk = 50, type = 'work', banned = false },

          [GetHashKey('VRq8')] = { modelname = 'VRq8', name = 'VRq8', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('VRrs5')] = { modelname = 'VRrs5', name = 'VRrs5', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('VRrs6')] = { modelname = 'VRrs6', name = 'VRrs6', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('VRtahoe')] = { modelname = 'VRtahoe', name = 'VRtahoe', price = 1100100, trunk = 50, type = 'work', banned = false },


          [GetHashKey('BARATINHACORE')] = { modelname = 'BARATINHACORE', name = 'BARATINHACORE', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('fvgtr')] = { modelname = 'fvgtr', name = 'fvgtr', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('amarokcivil')] = { modelname = 'amarokcivil', name = 'amarokcivil', price = 1100100, trunk = 50, type = 'work', banned = false },

          [GetHashKey('19ranger')] = { modelname = '19ranger', name = '19ranger', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('WRBmwm8')] = { modelname = 'WRBmwm8', name = 'WRBmwm8', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('WRclassxv2')] = { modelname = 'WRclassxv2', name = 'WRclassxv2', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('WRpanamera')] = { modelname = 'WRpanamera', name = 'WRpanamera', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('WRraptor')] = { modelname = 'WRraptor', name = 'WRraptor', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('WRsxr')] = { modelname = 'WRsxr', name = 'WRsxr', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('WRgiuliagta')] = { modelname = 'WRgiuliagta', name = 'WRgiuliagta', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('WRStrx')] = { modelname = 'WRStrx', name = 'WRStrx', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('WRBmwx7')] = { modelname = 'WRBmwx7', name = 'WRBmwx7', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('helibpm')] = { modelname = 'helibpm', name = 'Heli BPM', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('policeb')] = { modelname = 'policeb', name = 'policeb', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('frontier17pol')] = { modelname = 'frontier17pol', name = 'frontier17pol', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('nm_corvette')] = { modelname = 'nm_corvette', name = 'Corvete Cooter', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('cotercaminhonete')] = { modelname = 'cotercaminhonete', name = 'Policia Ranger ', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('policiaranger')] = { modelname = 'policiaranger', name = 'Policia Ranger ', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('polmp4')] = { modelname = 'polmp4', name = 'Mc Laren Cooter', price = 1100100, trunk = 50, type = 'work', banned = false },
        
          [GetHashKey('nvcamaro')] = { modelname = 'nvcamaro', name = 'nvcamaro', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('lspdtru')] = { modelname = 'lspdtru', name = 'Granger', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('bmwg20pol')] = { modelname = 'bmwg20pol', name = 'BMW 20', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('susucoter')] = { modelname = 'susucoter', name = 'Subaru Cooter', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('seashark3')] = { modelname = 'seashark3', name = 'seashark3', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('seashark')] = { modelname = 'seashark', name = 'seashark', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('jetmax')] = { modelname = 'jetmax', name = 'jetmax', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('gmcat4')] = { modelname = 'gmcat4', name = 'gmcat4', price = 500, trunk = 50, type = 'work', banned = false },
          [GetHashKey('Eliteclassx')] = { modelname = 'Eliteclassx', name = 'Eliteclassx', price = 500, trunk = 50, type = 'work', banned = false },
          [GetHashKey('nvbmw')] = { modelname = 'nvbmw', name = 'nvbmw', price = 500, trunk = 50, type = 'work', banned = false },
          [GetHashKey('bison3')] = { modelname = 'bison3', name = 'bison3', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('r8ppi')] = { modelname = 'r8ppi', name = 'Audi R8', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('18jeep')] = { modelname = '18jeep', name = 'Jeep', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('raptorpupu')] = { modelname = 'raptorpupu', name = 'Raptor Policia', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('policiacorvette')] = { modelname = 'policiacorvette', name = 'Corvette Policia', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('rise-mclassx2')] = { modelname = 'rise-mclassx2', name = 'Rise Policia', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('susupupu')] = { modelname = 'susupupu', name = 'Subaru Policia', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('cad')] = { modelname = 'cad', name = 'Cadilac Policia', price = 1100100, trunk = 50, type = 'work', banned = false },
          [GetHashKey('risefrontier')] = { modelname = 'risefrontier', name = 'Caminhonete Cooter', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('rmodx6')] = { modelname = 'rmodx6', name = 'BMW X6', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('topcar911')] = { modelname = 'topcar911', name = 'Porsche 911 stinger', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('z4bmw')] = { modelname = 'z4bmw', name = 'BMW Z4', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('360modenalb')] = { modelname = '360modenalb', name = '360modenalb', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('420x')] = { modelname = '420x', name = '420x', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('ar8lb')] = { modelname = 'ar8lb', name = 'ar8lb', price = 1300100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('polestar1')] = { modelname = 'polestar1', name = 'polestar1', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('hustler')] = { modelname = 'hustler', name = 'hustler', price = 500100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('rrs08')] = { modelname = 'rrs08', name = 'Lange Rover', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('polestar1')] = { modelname = 'polestar1', name = 'polestar1', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('lbe92')] = { modelname = 'lbe92', name = 'lbe92', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('LBM4')] = { modelname = 'LBM4', name = 'LBM4', price = 1300100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('lw458s')] = { modelname = 'lw458s', name = 'lw458s', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('lwgtr')] = { modelname = 'lwgtr', name = 'lwgtr', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('RC350')] = { modelname = 'RC350', name = 'RC350', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('fd')] = { modelname = 'fd', name = 'fd', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('italirsx')] = { modelname = 'italirsx', name = 'italirsx', price = 650000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('krieger')] = { modelname = 'krieger', name = 'krieger', price = 700100, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('romero')] = { modelname = 'romero', name = 'romero', price = 600100, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('gauntlet4')] = { modelname = 'gauntlet4', name = 'gauntlet4', price = 805100, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('rebla')] = { modelname = 'rebla', name = 'rebla', price = 100100, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('sugoi')] = { modelname = 'sugoi', name = 'sugoi', price = 900100, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('vagrant')] = { modelname = 'vagrant', name = 'vagrant', price = 990100, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('rmodsuprapandem')] = { modelname = 'rmodsuprapandem', name = 'Toyota Supra 2020', price = 1300100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('fnfrx7')] = { modelname = 'fnfrx7', name = 'Mazda RX7', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('rx7twerk')] = { modelname = 'rx7twerk', name = 'rx7twerk', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('amels200')] = { modelname = 'amels200', name = 'amels200', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('tropic2')] = { modelname = 'tropic2', name = 'tropic2', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('yacht2')] = { modelname = 'yacht2', name = 'yacht2', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('luxor')] = { modelname = 'luxor', name = 'luxor', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('sr650fly')] = { modelname = 'sr650fly', name = 'sr650fly', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('frauscher16')] = { modelname = 'frauscher16', name = 'frauscher16', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('yacht3b')] = { modelname = 'yacht3b', name = 'yacht3b', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('coquette4')] = { modelname = 'coquette4', name = 'coquette4', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('yacht3a')] = { modelname = 'yacht3a', name = 'yacht3a', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('bmwboltz')] = { modelname = 'bmwboltz', name = 'BMW', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('bananao')] = { modelname = 'bananao', name = 'Jet Ski Banana', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('bacalar')] = { modelname = 'bacalar', name = 'Bacalar', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('bmwm8')] = { modelname = 'bmwm8', name = 'Bmw M8', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('jeepgladiator')] = { modelname = 'jeepgladiator', name = 'Jeep Gladiator', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('auditt')] = { modelname = 'auditt', name = 'Audi TT', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('bmwm135i')] = { modelname = 'bmwm135i', name = 'Bmw M135i', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('bmwm8gte')] = { modelname = 'bmwm8gte', name = 'Bmw M8 GTE', price = 1300100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('m2')] = { modelname = 'm2', name = 'Bmw M2', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('c7')] = { modelname = 'c7', name = 'Corvette C7', price = 1300100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('yamahar1')] = { modelname = 'yamahar1', name = 'Yamaha R1', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('rs7c8')] = { modelname = 'rs7c8', name = 'rs7c8', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('mercedespol')] = { modelname = 'mercedespol', name = 'mercedespol', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('bmcipol')] = { modelname = 'bmcipol', name = 'bmcipol', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('mbsprinter')] = { modelname = 'mbsprinter', name = 'mbsprinter', price = 1100100, trunk = 200, type = 'work', banned = false },
          [GetHashKey('mercedesgle')] = { modelname = 'mercedesgle', name = 'mercedesgle', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('modelsleo')] = { modelname = 'modelsleo', name = 'modelsleo', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('pitbullbb')] = { modelname = 'pitbullbb', name = 'pitbullbb', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('rfw_ninja')] = { modelname = 'rfw_ninja', name = 'rfw_ninja', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('r820p')] = { modelname = 'r820p', name = 'r820p', price = 1100100, trunk = 40, type = 'work', banned = false },
       
          [GetHashKey('tigerpolicia')] = { modelname = 'tigerpolicia', name = 'tigerpolicia', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('firetruk')] = { modelname = 'firetruk', name = 'firetruk', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('VRdm1200')] = { modelname = 'VRdm1200', name = 'VRdm1200', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('911turboleo')] = { modelname = '911turboleo', name = '911turboleo', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('marquis')] = { modelname = 'marquis', name = 'marquis', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('jeepag')] = { modelname = 'jeepag', name = 'Mini Jeep', price = 500, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('porscheag')] = { modelname = 'porscheag', name = 'Mini Porsche', price = 500, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('ocnetrongt')] = { modelname = 'ocnetrongt', name = 'ocnetrongt', price = 1300000, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('m3e46')] = { modelname = 'm3e46', name = 'm3e46', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('599gto')] = { modelname = '599gto', name = '599gto', price = 1300000, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('f812')] = { modelname = 'f812', name = 'f812', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('tdf')] = { modelname = 'tdf', name = 'tdf', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('hayabusa')] = { modelname = 'hayabusa', name = 'hayabusa', price = 1300000, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('zx10r')] = { modelname = 'zx10r', name = 'zx10r', price = 1300000, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('km1000rr')] = { modelname = 'km1000rr', name = 'km1000rr', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('mbc63')] = { modelname = 'mbc63', name = 'mbc63', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('rsv4')] = { modelname = 'rsv4', name = 'rsv4', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('sportrs')] = { modelname = 'sportrs', name = 'sportrs', price = 1300000, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('a80')] = { modelname = 'a80', name = 'Toyota Supra MK4', price = 1300000, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('yzrm19')] = { modelname = 'yzrm19', name = 'yzrm19', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('mustang19')] = { modelname = 'mustang19', name = 'Mustang', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('pdfocus')] = { modelname = 'pdfocus', name = 'PDFOCUS', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('pol718')] = { modelname = 'pol718', name = 'Pol718', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('jeep')] = { modelname = 'jeep', name = 'Jeep', price = 1000, trunk = 0, type = 'work', banned = false },
          [GetHashKey('policiatahoe')] = { modelname = 'policiatahoe', name = 'Chevrolet Tahoe', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('policiamustanggt')] = { modelname = 'policiamustanggt', name = 'Mustang GT', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('policiataurus')] = { modelname = 'policiataurus', name = 'Ford Taurus', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('policiabmwr1200')] = { modelname = 'policiabmwr1200', name = 'BMW R1200', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('policiaheli')] = { modelname = 'policiaheli', name = 'Delta', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('m5speed')] = { modelname = 'm5speed', name = 'm5', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('m8comando')] = { modelname = 'm8comando', name = 'm8', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('policiabearcat')] = { modelname = 'policiabearcat', name = 'Bravo', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('paramedicoambu')] = { modelname = 'paramedicoambu', name = 'Ambulância', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('paramedicoheli')] = { modelname = 'paramedicoheli', name = 'Paramédico Helicóptero', price = 1000, trunk = 0, type = 'work', banned = true },


          [GetHashKey('nddbxpol')] = { modelname = 'nddbxpol', name = 'nddbxpol', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('as350')] = { modelname = 'as350', name = 'as350', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('lancerger')] = { modelname = 'lancerger', name = 'lancerger', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('r1250policia')] = { modelname = 'r1250policia', name = 'r1250policia', price = 1000, trunk = 0, type = 'work', banned = true },



          [GetHashKey('polmav')] = { modelname = 'polmav', name = 'POLMAV', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('frogger2 ')] = { modelname = 'frogger2 ', name = 'FROGGER ', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('pbus')] = { modelname = 'pbus', name = 'Echo', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('pbus2')] = { modelname = 'pbus2', name = 'pbus2', price = 260000, trunk = 0, type = 'exclusive', banned = true },
          [GetHashKey('mule4')] = { modelname = 'mule4', name = 'Mule4', price = 800000, trunk = 400, type = 'carros', banned = false },
          [GetHashKey('rallytruck')] = { modelname = 'rallytruck', name = 'Burrito4', price = 260000, trunk = 400, type = 'carros', banned = false },
          [GetHashKey('coach')] = { modelname = 'coach', name = 'Coach', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('bus')] = { modelname = 'bus', name = 'Ônibus', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('flatbed')] = { modelname = 'flatbed', name = 'Reboque', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('f450c')] = { modelname = 'f450c', name = 'f450c', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('f550rbc')] = { modelname = 'f550rbc', name = 'f550rbc', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('flatbed3')] = { modelname = 'flatbed3', name = 'flatbed3', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('cdaraptor')] = { modelname = 'cdaraptor', name = 'cdaraptor', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('6x6psp')] = { modelname = '6x6psp', name = '6x6psp', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('flatbed3')] = { modelname = 'flatbed3', name = 'Reboque', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('towtruck')] = { modelname = 'towtruck', name = 'Towtruck', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('towtruck2')] = { modelname = 'towtruck2', name = 'Towtruck2', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('ratloader')] = { modelname = 'ratloader', name = 'Rat Loader', price = 1000, trunk = 80, type = 'work', banned = false },
          [GetHashKey('ratloader2')] = { modelname = 'ratloader2', name = 'Rat loader2', price = 1000, trunk = 70, type = 'work', banned = false },
          [GetHashKey('rubble')] = { modelname = 'rubble', name = 'rubble', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('taxi')] = { modelname = 'taxi', name = 'Taxi', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('boxville4')] = { modelname = 'boxville4', name = 'boxville4', price = 1000, trunk = 70, type = 'work', banned = false },
          [GetHashKey('trash2')] = { modelname = 'trash2', name = 'trash2', price = 1000, trunk = 80, type = 'work', banned = false },
          [GetHashKey('tiptruck')] = { modelname = 'tiptruck', name = 'Tiptruck', price = 1000, trunk = 70, type = 'work', banned = true },
          [GetHashKey('coquette4')] = { modelname = 'coquette4', name = 'Coquette', price = 650000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('tiptruck2')] = { modelname = 'tiptruck2', name = 'Tiptruck2', price = 1000, trunk = 70, type = 'work', banned = true },
          [GetHashKey('scorcher')] = { modelname = 'scorcher', name = 'Scorcher', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('tribike')] = { modelname = 'tribike', name = 'Tribike', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('tribike2')] = { modelname = 'tribike2', name = 'Tribike2', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('tribike3')] = { modelname = 'tribike3', name = 'Tribike3', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('fixter')] = { modelname = 'fixter', name = 'Fixter', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('cruiser')] = { modelname = 'cruiser', name = 'Cruiser', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('bmx')] = { modelname = 'bmx', name = 'Bmx', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('dinghy')] = { modelname = 'dinghy', name = 'Dinghy', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('speeder')] = { modelname = 'speeder', name = 'Speeder', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('speeder2')] = { modelname = 'speeder2', name = 'Speeder2', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('squalo')] = { modelname = 'squalo', name = 'Squalo', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('suntrap')] = { modelname = 'suntrap', name = 'Suntrap', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('toro')] = { modelname = 'toro', name = 'Toro', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('toro2')] = { modelname = 'toro2', name = 'Toro2', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('tropic')] = { modelname = 'tropic', name = 'Tropic', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('tropic2')] = { modelname = 'tropic2', name = 'Tropic2', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('veto')] = { modelname = 'veto', name = 'Kart', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('veto2')] = { modelname = 'veto2', name = 'Kart 2', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('phantom')] = { modelname = 'phantom', name = 'Phantom', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('packer')] = { modelname = 'packer', name = 'Packer', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('emsjeep')] = { modelname = 'emsjeep', name = 'emsjeep', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('VRrs6av')] = { modelname = 'VRrs6av', name = 'VRrs6av', price = 1000, trunk = 0, type = 'work', banned = true },

          [GetHashKey('supervolito')] = { modelname = 'supervolito', name = 'Supervolito', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('supervolito2')] = { modelname = 'supervolito2', name = 'Supervolito2', price = 1000, trunk = 50, type = 'work', banned = true },
          [GetHashKey('cuban800')] = { modelname = 'cuban800', name = 'Cuban800', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('mammatus')] = { modelname = 'mammatus', name = 'Mammatus', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('vestra')] = { modelname = 'vestra', name = 'Vestra', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('velum2')] = { modelname = 'velum2', name = 'Velum2', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('buzzard2')] = { modelname = 'buzzard2', name = 'Buzzard2', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('frogger')] = { modelname = 'frogger', name = 'Frogger', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('maverick')] = { modelname = 'maverick', name = 'Maverick', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('tanker2')] = { modelname = 'tanker2', name = 'Gas', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('armytanker')] = { modelname = 'armytanker', name = 'Diesel', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('tvtrailer')] = { modelname = 'tvtrailer', name = 'Show', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('trailerlogs')] = { modelname = 'trailerlogs', name = 'Woods', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('tr4')] = { modelname = 'tr4', name = 'Cars', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('tigerpolicia')] = { modelname = 'tigerpolicia', name = 'Bike', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('nvafricat')] = { modelname = 'nvafricat', name = 'nvafricat', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('nvc7')] = { modelname = 'nvc7', name = 'nvc7', price = 1000, trunk = 0, type = 'work', banned = true },
          [GetHashKey('nvpolmav')] = { modelname = 'nvpolmav', name = 'nvpolmav', price = 1000, trunk = 0, type = 'work', banned = true },

          [GetHashKey('nissangtr')] = { modelname = 'nissangtr', name = 'Nissan GTR', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('nissan370z')] = { modelname = 'nissan370z', name = 'Nissan 370Z', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('dodgechargersrt')] = { modelname = 'dodgechargersrt', name = 'Dodge Charger SRT', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('ferrariitalia')] = { modelname = 'ferrariitalia', name = 'Ferrari Italia 478', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('918')] = { modelname = '918', name = '918', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('audirs6')] = { modelname = 'audirs6', name = 'Audi RS6', price = 1100100, trunk = 60, type = 'exclusive', banned = false },
          [GetHashKey('bmwm3f80')] = { modelname = 'bmwm3f80', name = 'BMW M3 F80', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('bmwm4gts')] = { modelname = 'bmwm4gts', name = 'BMW M4 GTS', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('fordmustang')] = { modelname = 'fordmustang', name = 'Ford Mustang', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('lamborghinihuracan')] = { modelname = 'lamborghinihuracan', name = 'Lamborghini Huracan', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('lancerevolutionx')] = { modelname = 'lancerevolutionx', name = 'Lancer Evolution X', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('mazdarx7')] = { modelname = 'mazdarx7', name = 'Mazda RX7', price = 1100100, trunk = 40, type = 'import', banned = false },
          [GetHashKey('nissangtrnismo')] = { modelname = 'nissangtrnismo', name = 'Nissan GTR Nismo', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('nissanskyliner34')] = { modelname = 'nissanskyliner34', name = 'Nissan Skyline R34', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('rmodskyline34')] = { modelname = 'rmodskyline34', name = 'Nissan Skyline R34 EDiCAO ESPECIAL', price = 1300100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('rmodescort')] = { modelname = 'rmodescort', name = 'Escorte', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('rmodescort')] = { modelname = 'rmodescort', name = 'Escorte', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('rmodm5e34')] = { modelname = 'rmodm5e34', name = 'BMW M5E34', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('teslaprior')] = { modelname = 'teslaprior', name = 'Tesla Prior', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('toyotasupra')] = { modelname = 'toyotasupra', name = 'Toyota Supra', price = 1100100, trunk = 35, type = 'exclusive', banned = false },
          [GetHashKey('ghispo2')] = { modelname = 'ghispo2', name = 'Masserati Policia', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('20stinger')] = { modelname = '20stinger', name = '20stinger', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('m5speed')] = { modelname = 'm5speed', name = 'BmwM5 Policia', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('m8coter')] = { modelname = 'm8coter', name = 'BmwM8 Policia', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('pd_bmwr')] = { modelname = 'pd_bmwr', name = 'BmwR Policia', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('bmwg20pol')] = { modelname = 'bmwg20pol', name = 'BmwG20 Policia', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('polraptor')] = { modelname = 'polraptor', name = 'Ranger Policia', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('13capricenf')] = { modelname = '13capricenf', name = 'Chevi Policia', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('tug')] = { modelname = 'tug', name = 'tug', price = 1100100, trunk = 40, type = 'work', banned = false },
          [GetHashKey('emsnspeedo')] = { modelname = 'emsnspeedo', name = 'emsnspeedo', price = 1, trunk = 40, type = 'work', banned = false },
          [GetHashKey('mercedestactical')] = { modelname = 'mercedestactical', name = 'Mercedes Tactical', price = 1, trunk = 40, type = 'work', banned = false },
          [GetHashKey('m8comando')] = { modelname = 'm8comando', name = 'm8comando', price = 1, trunk = 40, type = 'work', banned = false },
          [GetHashKey('focusrs')] = { modelname = 'focusrs', name = 'Focus RS', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('lancerevolution9')] = { modelname = 'lancerevolution9', name = 'Lancer Evolution 9', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('ninjah2')] = { modelname = 'ninjah2', name = 'Ninja H2', price = 1100100, trunk = 15, type = 'exclusive', banned = false },
          [GetHashKey('trr')] = { modelname = 'trr', name = 'KTM TRR', price = 1100100, trunk = 15, type = 'exclusive', banned = false },
          [GetHashKey('p1')] = { modelname = 'p1', name = 'Mclaren P1', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('i8')] = { modelname = 'i8', name = 'BMW i8', price = 1100100, trunk = 35, type = 'exclusive', banned = false },
          [GetHashKey('bme6tun')] = { modelname = 'bme6tun', name = 'BMW M5', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('aperta')] = { modelname = 'aperta', name = 'La Ferrari', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('bettle')] = { modelname = 'bettle', name = 'New Bettle', price = 1100100, trunk = 35, type = 'exclusive', banned = false },
          [GetHashKey('senna')] = { modelname = 'senna', name = 'Mclaren Senna', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('devil')] = { modelname = 'devil', name = 'Dodge Demon', price = 1300000, trunk = 20, type = 'exclusive', banned = false },
    
          [GetHashKey('dog_R1250baby')] = { modelname = 'dog_R1250baby', name = 'dog_R1250baby', price = 1300000, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('minibronco')] = { modelname = 'minibronco', name = 'minibronco', price = 1300000, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('minibolide')] = { modelname = 'minibolide', name = 'minibolide', price = 1300000, trunk = 20, type = 'exclusive', banned = false },
    
          [GetHashKey('cyrus')] = { modelname = 'cyrus', name = 'CYRUS', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('srt10')] = { modelname = 'srt10', name = 'DODGE VIPER', price = 900100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('golf4')] = { modelname = 'golf4', name = 'GOLF', price = 900100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('h2carb')] = { modelname = 'h2carb', name = 'H2', price = 1300100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('stradale18')] = { modelname = 'stradale18', name = 'MASERATI', price = 1300100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('nissanr33tbk')] = { modelname = 'nissanr33tbk', name = 'NISSAN R33', price = 1300100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('wey300')] = { modelname = 'wey300', name = 'WEY300', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
    
          [GetHashKey('rmodx6')] = { modelname = 'rmodx6', name = 'BMW X6', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('bnteam')] = { modelname = 'bnteam', name = 'Bentley', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('rmodlp770')] = { modelname = 'rmodlp770', name = 'Lamborghini Centenario', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('divo')] = { modelname = 'divo', name = 'Buggati Divo', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('s15')] = { modelname = 's15', name = 'Nissan Silvia S15', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('amggtr')] = { modelname = 'amggtr', name = 'Mercedes AMG', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('lamtmc')] = { modelname = 'lamtmc', name = 'Lamborghini Terzo', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('vantage')] = { modelname = 'vantage', name = 'Aston Martin Vantage', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('urus')] = { modelname = 'urus', name = 'Lamborghini Urus', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('stockade')] = { modelname = 'stockade', name = 'Stockade', price = 1100100, trunk = 900, type = 'work', banned = false },
          [GetHashKey('amarok')] = { modelname = 'amarok', name = 'VW Amarok', price = 1100100, trunk = 150, type = 'carros', banned = false },
          [GetHashKey('slsamg')] = { modelname = 'slsamg', name = 'Mercedes SLS', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('g65amg')] = { modelname = 'g65amg', name = 'Mercedes G65', price = 900100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('celta')] = { modelname = 'celta', name = 'Celta Paredão', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('eleanor')] = { modelname = 'eleanor', name = 'Mustang Eleanor', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('rmodamgc63')] = { modelname = 'rmodamgc63', name = 'Mercedes AMG C63', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('rmodjeep')] = { modelname = 'rmodjeep', name = 'JEEP', price = 1300100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('palameila')] = { modelname = 'palameila', name = 'Porsche Panamera', price = 1100100, trunk = 50, type = 'carros', banned = false },
          [GetHashKey('bmws')] = { modelname = 'bmws', name = 'BMW S1000', price = 1100100, trunk = 15, type = 'exclusive', banned = false },
          [GetHashKey('gsxr')] = { modelname = 'gsxr', name = 'GSXR', price = 1300100, trunk = 15, type = 'exclusive', banned = false },
          [GetHashKey('cb500x')] = { modelname = 'cb500x', name = 'Honda CB500', price = 1100100, trunk = 15, type = 'exclusive', banned = false },
          [GetHashKey('rsvr16')] = { modelname = 'rsvr16', name = 'Ranger Rover', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('veneno')] = { modelname = 'veneno', name = 'Lamborghini Veneno', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('19ramdonk')] = { modelname = '19ramdonk', name = 'Dodge Ram Donk', price = 1100100, trunk = 80, type = 'exclusive', banned = false },
          [GetHashKey('silv86')] = { modelname = 'silv86', name = 'Silverado Donk', price = 1100100, trunk = 80, type = 'exclusive', banned = false },
          [GetHashKey('bc')] = { modelname = 'bc', name = 'Pagani Huayra', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('amarokreb')] = { modelname = 'amarokreb', name = 'Amarok Rebaixada', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('70camarofn')] = { modelname = '70camarofn', name = 'camaro Z28 1970', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('agerars')] = { modelname = 'agerars', name = 'Koenigsegg Agera RS', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('fc15')] = { modelname = 'fc15', name = 'Ferrari California', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('bbentayga')] = { modelname = 'bbentayga', name = 'Bentley Bentayga', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('nissantitan17')] = { modelname = 'nissantitan17', name = 'Nissan Titan 2017', price = 800100, trunk = 120, type = 'carro', banned = false },
          [GetHashKey('regera')] = { modelname = 'regera', name = 'Koenigsegg Regera', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('911r')] = { modelname = '911r', name = 'Porsche 911R', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('africat')] = { modelname = 'africat', name = 'Honda CRF 1000', price = 1100100, trunk = 15, type = 'exclusive', banned = false },
          [GetHashKey('msohs')] = { modelname = 'msohs', name = 'Mclaren 688 HS', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('gt17')] = { modelname = 'gt17', name = 'Ford GT 17', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('19ftype')] = { modelname = '19ftype', name = 'Jaguar F-Type', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('488gtb')] = { modelname = '488gtb', name = 'Ferrari 488 GTB', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('fxxkevo')] = { modelname = 'fxxkevo', name = 'Ferrari FXXK Evo', price = 1300100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('m2')] = { modelname = 'm2', name = 'BMW M2', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('defiant')] = { modelname = 'defiant', name = 'AMC Javelin 72', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('f12tdf')] = { modelname = 'f12tdf', name = 'Ferrari F12 TDF', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('71gtx')] = { modelname = '71gtx', name = 'Plymouth 71 GTX', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('porsche992')] = { modelname = 'porsche992', name = 'Porsche 992', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('18macan')] = { modelname = '18macan', name = 'Porsche Macan', price = 1100100, trunk = 60, type = 'carros', banned = false },
          [GetHashKey('m6e63')] = { modelname = 'm6e63', name = 'BMW M6 E63', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('180sx')] = { modelname = '180sx', name = 'Nissan 180SX', price = 1100100, trunk = 10, type = 'exclusive', banned = false },
          [GetHashKey('audirs7')] = { modelname = 'audirs7', name = 'Audi RS7', price = 1100100, trunk = 60, type = 'exclusive', banned = false },
          [GetHashKey('hondafk8')] = { modelname = 'hondafk8', name = 'hondafk8', price = 1100100, trunk = 40, type = 'carros', banned = false },
          [GetHashKey('rmodskyline34')] = { modelname = 'rmodskyline34', name = 'Nissan SkyLineR4 ', price = 1300100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('mustangmach1')] = { modelname = 'mustangmach1', name = 'Mustang Mach 1', price = 1100100, trunk = 40, type = 'import', banned = false },
          [GetHashKey('porsche930')] = { modelname = 'porsche930', name = 'Porsche 930', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('raptor2017')] = { modelname = 'raptor2017', name = 'Ford Raptor 2017', price = 1100100, trunk = 150, type = 'exclusive', banned = false },
          [GetHashKey('filthynsx')] = { modelname = 'filthynsx', name = 'Honda NSX', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('2018zl1')] = { modelname = '2018zl1', name = 'Camaro ZL1', price = 1300100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('eclipse')] = { modelname = 'eclipse', name = 'Mitsubishi Eclipse', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('lp700r')] = { modelname = 'lp700r', name = 'Lamborghini LP700R', price = 1300100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('db11')] = { modelname = 'db11', name = 'Aston Martin DB11', price = 1100100, trunk = 0, type = 'exclusive', banned = false },
          [GetHashKey('beetle74')] = { modelname = 'beetle74', name = 'Fusca 74', price = 1100100, trunk = 40, type = 'import', banned = false },
          [GetHashKey('fe86')] = { modelname = 'fe86', name = 'Escorte', price = 1100100, trunk = 40, type = 'import', banned = false },
          [GetHashKey('type263')] = { modelname = 'type263', name = 'Kombi 63', price = 1100100, trunk = 60, type = 'import', banned = false },
          [GetHashKey('pistas')] = { modelname = 'pistas', name = 'Ferrari Pista', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('yzfr125')] = { modelname = 'yzfr125', name = 'Yamaha YZF R125', price = 800000, trunk = 10, type = 'exclusive', banned = false },
          [GetHashKey('submersible2')] = { modelname = 'submersible2', name = 'Submersible2', price = 8000, trunk = 10, type = 'carros', banned = false },
          [GetHashKey('avisa')] = { modelname = 'avisa', name = 'Avisa', price = 8000, trunk = 10, type = 'exclusive', banned = false },
          [GetHashKey('mt03')] = { modelname = 'mt03', name = 'Yamaha MT 03', price = 800000, trunk = 10, type = 'exclusive', banned = false },
          [GetHashKey('flatbed3')] = { modelname = 'flatbed3', name = 'flatbed3', price = 1000, trunk = 0, type = 'work', banned = false },
          [GetHashKey('20r1')] = { modelname = '20r1', name = 'Yamaha YZF R1', price = 1100100, trunk = 10, type = 'exclusive', banned = false },
          [GetHashKey('SVR14')] = { modelname = 'SVR14', name = 'Ranger Rover', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('evoque')] = { modelname = 'evoque', name = 'Ranger Rover Evoque', price = 1200100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('Bimota')] = { modelname = 'Bimota', name = 'Ducati Bimota', price = 1100100, trunk = 10, type = 'exclusive', banned = false },
          [GetHashKey('r8ppi')] = { modelname = 'r8ppi', name = 'Audi R8 PPI Razor', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('bobbes2')] = { modelname = 'bobbes2', name = 'Harley D. Bobber S', price = 1100100, trunk = 15, type = 'exclusive', banned = false },
          [GetHashKey('bobber')] = { modelname = 'bobber', name = 'Harley D. Bobber ', price = 1100100, trunk = 15, type = 'exclusive', banned = false },
          [GetHashKey('911tbs')] = { modelname = '911tbs', name = 'Porsche 911S', price = 1100100, trunk = 25, type = 'exclusive', banned = false },
          [GetHashKey('volatus')] = { modelname = 'volatus', name = 'Volatus', price = 800000, trunk = 45, type = 'exclusive', banned = false },
          [GetHashKey('swift2')] = { modelname = 'swift2', name = 'Swift 2', price = 800000, trunk = 45, type = 'exclusive', banned = false },
          [GetHashKey('Terbyte')] = { modelname = 'Terbyte', name = 'Terbyte', price = 1300100, trunk = 1300, type = 'exclusive', banned = false },
          [GetHashKey('seasparrow2')] = { modelname = 'seasparrow2', name = 'Seas Parrow2', price = 800000, trunk = 45, type = 'exclusive', banned = false },
          [GetHashKey('seasparrow')] = { modelname = 'seasparrow', name = 'Seas Parrow', price = 800000, trunk = 45, type = 'exclusive', banned = false },
          [GetHashKey('rc')] = { modelname = 'rc', name = 'KTM RC', price = 1100100, trunk = 15, type = 'exclusive', banned = false },
          [GetHashKey('cargobob2')] = { modelname = 'cargobob2', name = 'Cargo Bob', price = 800000, trunk = 0, type = 'work', banned = false },
          [GetHashKey('pd20cts')] = { modelname = 'pd20cts', name = 'Cadilac COD', price = 1, trunk = 0, type = 'work', banned = false },
          [GetHashKey('fox600lt')] = { modelname = 'fox600lt', name = 'McLaren 600LT', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('foxbent1')] = { modelname = 'foxbent1', name = 'Bentley Liter 1931', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('foxevo')] = { modelname = 'foxevo', name = 'Lamborghini EVO', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('foxharley1')] = { modelname = 'foxharley1', name = 'Harley-Davidson Softail F.B.', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('foxharley2')] = { modelname = 'foxharley2', name = '2016 Harley-Davidson Road Glide', price = 1100100, trunk = 20, type = 'exclusive', banned = false },
          [GetHashKey('foxleggera')] = { modelname = 'foxleggera', name = 'Aston Martin Leggera', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('foxrossa')] = { modelname = 'foxrossa', name = 'Ferrari Rossa', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('foxshelby')] = { modelname = 'foxshelby', name = 'Ford Shelby GT500', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('foxsian')] = { modelname = 'foxsian', name = 'Lamborghini Sian', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('foxsterrato')] = { modelname = 'foxsterrato', name = 'Lamborghini Sterrato', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('foxsupra')] = { modelname = 'foxsupra', name = 'Toyota Supra', price = 1100100, trunk = 50, type = 'exclusive', banned = false },
          [GetHashKey('m6x6')] = { modelname = 'm6x6', name = 'Mercedes Benz 6x6', price = 1100100, trunk = 90, type = 'exclusive', banned = false },
          [GetHashKey('m6gt3')] = { modelname = 'm6gt3', name = 'BMW M6 GT3', price = 1100100, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('w900')] = { modelname = 'w900', name = 'Kenworth W900', price = 800000, trunk = 130, type = 'exclusive', banned = false },
          [GetHashKey('pounder')] = { modelname = 'pounder', name = 'Pounder', price = 1100100, trunk = 600, type = 'exclusive', banned = false },
          [GetHashKey('mule3')] = { modelname = 'mule3', name = 'Mule3', price = 800000, trunk = 450, type = 'carros', banned = false },
          [GetHashKey('pounder2')] = { modelname = 'pounder2', name = 'Pounder2', price = 1100100, trunk = 1000, type = 'exclusive', banned = false },
          [GetHashKey('r1250')] = { modelname = 'r1250', name = 'R1250', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('z1000')] = { modelname = 'z1000', name = 'z1000', price = 1300100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('r1')] = { modelname = 'r1', name = 'R1', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('r6')] = { modelname = 'r6', name = 'R6', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('bmws')] = { modelname = 'bmws', name = 'BMWS', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('cbrr')] = { modelname = 'cbrr', name = 'CBRR', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('xt66')] = { modelname = 'xt66', name = 'XT66', price = 1100100, trunk = 30, type = 'exclusive', banned = false },
          [GetHashKey('r12500')] = { modelname = 'r12500', name = 'r12500', price = 800000, trunk = 30, type = 'work', banned = false },
          [GetHashKey('tigerpolicia')] = { modelname = 'tigerpolicia', name = 'tigerpolicia', price = 800000, trunk = 130, type = 'exclusive', banned = false },
          [GetHashKey('policiaamarok')] = { modelname = 'policiaamarok', name = 'policiaamarok', price = 800000, trunk = 130, type = 'exclusive', banned = false },
          [GetHashKey('av-amarok')] = { modelname = 'av-amarok', name = 'av-amarok', price = 800000, trunk = 130, type = 'exclusive', banned = false },
          [GetHashKey('youge3')] = { modelname = 'youge3', name = 'youge3', price = 800000, trunk = 130, type = 'work', banned = false },
          [GetHashKey('deathbike')] = { modelname = 'deathbike', name = 'deathbike', price = 800000, trunk = 30, type = 'work', banned = false },
          [GetHashKey('outlaw')] = { modelname = 'outlaw', name = 'outlaw', price = 500000, trunk = 30, type = 'carros', banned = false },
          [GetHashKey('neo')] = { modelname = 'neo', name = 'neo', price = 500000, trunk = 40, type = 'exclusive', banned = false },
          [GetHashKey('stryder')] = { modelname = 'stryder', name = 'stryder', price = 500000, trunk = 20, type = 'exclusive', banned = false },
              }
          },
  
      -- ['taxTime'] = 15, -- Intervalo de dias que vai ser cobrado ipva do veículo
      -- ['taxPrice'] = 0.01, -- Porcentagem do preço total do veículo que é cobrado de ipva
  
  
  
          ['public'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
                marker = { -- set custom marker if the type is marker
                    id = 36, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                    color = {0, 255, 0, 75}, -- marker color (R,G,B,A)
                    scale = vec3(1.0, 1.0, 1.0),
                    rotacao = vec3(0.0, 0.0, 130.0), -- marker Rotation (x,y,z)
                    bobUpAndDown = false, -- marker bopUpAndDown
                    faceCamera = false, -- marker faceCamera
                    rotation = true, -- marker rotation
                    custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                    }
                },
              actionKey = 38,
              -- Map Configuration
              blip = {
                name = 'Garagem', -- Name to display on the map!
                blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 38, -- color id
                blipScale = 0.5, -- scale for blip
                },  
  
              -- General Settings
              perm = "", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = { }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_16'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "policia.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
             --     useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                    --  {vehicle = '19ranger', extras = {}, livery = 0},
                      {vehicle = 'WRgiuliagta', extras = {}, livery = 0},
                      {vehicle = 'pd_bmw', extras = {}, livery = 0},
                      {vehicle = 'fk8', extras = {}, livery = 0},
                      {vehicle = '18jeep', extras = {}, livery = 0},  
                      {vehicle = 'VRdm1200', extras = {}, livery = 0},
                    
                      {vehicle = 'cb500coter', extras = {}, livery = 0},
                      {vehicle = 'WRraptor', extras = {}, livery = 0},
                  --    {vehicle = 'frontier17pol', extras = {}, livery = 0},
                      {vehicle = 'nvcamaro', extras = {}, livery = 0},
                     
                      {vehicle = 'nc750x', extras = {}, livery = 0},
                      {vehicle = 'gotcar', extras = {}, livery = 0},
                      {vehicle = 'mercedesgt', extras = {}, livery = 0},
                      {vehicle = 'pbus', extras = {}, livery = 0},
                    --   {vehicle = 'nvbmw', extras = {}, livery = 0},
                      {vehicle = 'Eliteclassx', extras = {}, livery = 0},
                      {vehicle = 'nvafricat', extras = {}, livery = 0},
                      {vehicle = 'nvc7', extras = {}, livery = 0},
                      {vehicle = 'r820p', extras = {}, livery = 0},
                      {vehicle = 'polsilvia', extras = {}, livery = 0},
                      {vehicle = 'nvsubaru', extras = {}, livery = 0},
                      {vehicle = 'ghispo2', extras = {}, livery = 0},
                      {vehicle = '20stinger', extras = {}, livery = 0},

                      {vehicle = 'rfw_ninja', extras = {}, livery = 0},
                      {vehicle = 'wrbmwg20', extras = {}, livery = 0},
             --         {vehicle = 'wrbmwm1', extras = {}, livery = 0},
                      {vehicle = 'wrclassxv2', extras = {}, livery = 0},
                      {vehicle = 'nvgolf', extras = {}, livery = 0},
                --      {vehicle = 'wrcb500x', extras = {}, livery = 0},

                      {vehicle = 'WRgiuliagtact', extras = {}, livery = 0},
                      {vehicle = 'WRford2cooter', extras = {}, livery = 0},

                      {vehicle = 'WRBmwm8', extras = {}, livery = 0},
                      {vehicle = 'WRBMWX7', extras = {}, livery = 0},

                      
                      {vehicle = 'maseraticooter', extras = {}, livery = 0},
                      {vehicle = 'polsilvia', extras = {}, livery = 0},

                   }, -- caso for work, definir os veiculos aqui
              }
          },

          ['service_civil'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "policia.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
               --   useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   --  {vehicle = 'VRq8', extras = {}, livery = 0},
                     {vehicle = 'VRrs5', extras = {}, livery = 0},
                     {vehicle = 'VRrs6', extras = {}, livery = 0},
                     {vehicle = 'VRtahoe', extras = {}, livery = 0}, 
                      {vehicle = 'xre2019', extras = {}, livery = 0}, 

                      {vehicle = 'fvgtr', extras = {}, livery = 0}, 
                      {vehicle = 'mercedesgt', extras = {}, livery = 0}, 
                      {vehicle = 'ghispo2', extras = {}, livery = 0}, 
                        
                      {vehicle = 'VRraptor', extras = {}, livery = 0}, 
                      {vehicle = 'INVESTIGACIVIL', extras = {}, livery = 0}, 
                      {vehicle = '1200civil', extras = {}, livery = 0},   
                      {vehicle = 'insurgent2', extras = {}, livery = 0},
                      {vehicle = 'BARATINHACORE', extras = {}, livery = 0},
                      
                      {vehicle = 'lancerger', extras = {}, livery = 0}, 
                      {vehicle = 'as350', extras = {}, livery = 0}, 
                      {vehicle = 'r1250policia', extras = {}, livery = 0},    

                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_20'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'phantom', extras = {}, livery = 0},
                      {vehicle = 'packer', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_23'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'tractor2', extras = {}, livery = 0},
                      {vehicle = 'rebel', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_24'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           

                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'trash2', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_27'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "paramedico.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
          
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = false, -- veículos terrestres
                      helicoptero = true, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'paramedicoheli', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['public_areo'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                name = 'Helicoptero', -- Name to display on the map!
                blipId = 64, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 47, -- color id
                blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = false, -- veículos terrestres
                      helicoptero = true, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                     -- {vehicle = 'volatus', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_41'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'trailerlogs', extras = {}, livery = 0},
                      {vehicle = 'tr4', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_42'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'trailerlogs', extras = {}, livery = 0},
                      {vehicle = 'tr4', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_43'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'trailerlogs', extras = {}, livery = 0},
                      {vehicle = 'tr4', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_56'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                name = 'Barcos', -- Name to display on the map!
                blipId = 427, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 47, -- color id
                blipScale = 0.5, -- scale for blip
              }, 
  
              -- General Settings
              perm = "", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = false, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = true, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'seashark', extras = {}, livery = 0},
                      {vehicle = 'jetmax', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },

          ['service_seashark'] = {
            type = 'garagem', -- não alterar
            input = 'garagem', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                scale = vec3(1.0, 1.0, 1.0),
                rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                  active = false,
                  dict = '',
                  name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
              name = 'Barcos', -- Name to display on the map!
              blipId = 427, -- blip id = https://docs.fivem.net/docs/game-references/blips/
              blipColor = 47, -- color id
              blipScale = 0.5, -- scale for blip
            }, 

            -- General Settings
            perm = "", -- permissao para acessar o blip               
            garagemConfig = {
                payment = false,
                paymentType = 1, -- 1 predefinido, 2 porcentagem
                paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
         
                useDB = true,
              garagemType = 'work', -- tipo de gargem (public, home, work)
                garagemMenu = {
                    carro = false, -- veículos terrestres
                    helicoptero = false, -- veículos aéreos
                    barco = true, -- veículos áquaticos
                },
                vehicles = {
                    {vehicle = 'seashark', extras = {}, livery = 0},
                 }, -- caso for work, definir os veiculos aqui
            }
        },

  
          ['service_59'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "pb.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_73'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                name = 'Barcos', -- Name to display on the map!
                blipId = 427, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 47, -- color id
                blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "yacht2.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = false, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = true, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'yacht2', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_78'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "policia.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
         --        useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = '19ranger', extras = {}, livery = 0},
                      {vehicle = 'WRgiuliagta', extras = {}, livery = 0},
                      {vehicle = 'fk8', extras = {}, livery = 0},
                      {vehicle = 'mercedesgt', extras = {}, livery = 0},
                      {vehicle = 'tdmerry', extras = {}, livery = 0},
                      {vehicle = 'tdmerry2', extras = {}, livery = 0},
                      {vehicle = 'VRa4', extras = {}, livery = 0},
                      {vehicle = 'VRrs6av', extras = {}, livery = 0},
           
                      {vehicle = 'VRdm1200', extras = {}, livery = 0},
               
                      {vehicle = 'cb500coter', extras = {}, livery = 0},
                      {vehicle = '17silvrb', extras = {}, livery = 0},
                      {vehicle = 'RAPTORTRUCK', extras = {}, livery = 0},
                      {vehicle = 'cad', extras = {}, livery = 0},
                      {vehicle = 'nvskyline', extras = {}, livery = 0},
                     
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_81'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "policia.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
            --      useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = '19ranger', extras = {}, livery = 0},
                      {vehicle = 'WRgiuliagta', extras = {}, livery = 0},
                      {vehicle = 'fk8', extras = {}, livery = 0},
                      {vehicle = 'mercedesgt', extras = {}, livery = 0},
                      {vehicle = 'tdmerry', extras = {}, livery = 0},
                      {vehicle = 'tdmerry2', extras = {}, livery = 0},
                      {vehicle = 'VRa4', extras = {}, livery = 0},
                
                      {vehicle = 'VRdm1200', extras = {}, livery = 0},
          
                      {vehicle = 'cb500coter', extras = {}, livery = 0},
                      {vehicle = '17silvrb', extras = {}, livery = 0},
                      {vehicle = 'RAPTORTRUCK', extras = {}, livery = 0},
            
                      {vehicle = 'eliteclassx', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          }, 
  
          
          ['service_WRpanamera'] = {
            type = 'garagem', -- não alterar
            input = 'garagem', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                scale = vec3(1.0, 1.0, 1.0),
                rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                  active = false,
                  dict = '',
                  name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Garagem', -- Name to display on the map!
                blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 0, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "juiz.permissao", -- permissao para acessar o blip               
            garagemConfig = {
                payment = false,
                paymentType = 1, -- 1 predefinido, 2 porcentagem
                paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
         
                useDB = true,
              garagemType = 'work', -- tipo de gargem (public, home, work)
                garagemMenu = {
                    carro = true, -- veículos terrestres
                    helicoptero = false, -- veículos aéreos
                    barco = false, -- veículos áquaticos
                },
                vehicles = {
                    {vehicle = 'WRpanamera', extras = {}, livery = 0},
                 }, -- caso for work, definir os veiculos aqui
            }
          },
          ['service_87'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'bmx', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_90'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "mecanico.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                     -- {vehicle = 'flatbed', extras = {}, livery = 0},
                  --    {vehicle = 'towtruck', extras = {}, livery = 0},
                    {vehicle = '6x6psp', extras = {}, livery = 0},
                   --   {vehicle = 'f450c', extras = {}, livery = 0},
                   --   {vehicle = 'f550rbc', extras = {}, livery = 0},
                      {vehicle = 'r12500', extras = {}, livery = 0},
                      {vehicle = 'slamvan3', extras = {}, livery = 0},
                      {vehicle = 'gmcat4', extras = {}, livery = 0},
                      {vehicle = 'flatbed3', extras = {}, livery = 0},
                      {vehicle = 'cdaraptor', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_94'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'coach', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_99'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "vagos.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_104'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "sinaloa.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_105'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "cartel.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_108'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "azul.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_110'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "hospital.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'Wrasprinter', extras = {}, livery = 0},
                      {vehicle = 'WRr1200', extras = {}, livery = 0},
                      {vehicle = 'dodgeems', extras = {}, livery = 0},
                      {vehicle = 'm8comando', extras = {}, livery = 0},
                      {vehicle = 'paramedicocharger2014', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_113'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "casalago2.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_114'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "hospital.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = false, -- veículos terrestres
                      helicoptero = true, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'polmav', extras = {}, livery = 0},
                      {vehicle = 'frogger', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_115'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "casavermelha.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_116'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "casavermelha2.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = false, -- veículos terrestres
                      helicoptero = true, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      --{vehicle = 'volatus', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_117'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "hothouse.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = false, -- veículos terrestres
                      helicoptero = true, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                    --  {vehicle = 'volatus', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_118'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "hothouse.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_120'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "swift2.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = false, -- veículos terrestres
                      helicoptero = true, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'swift2', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_121'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "policia.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
             --     useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = false, -- veículos terrestres
                      helicoptero = true, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'cargobob4', extras = {}, livery = 0},
                      {vehicle = 'polmav', extras = {}, livery = 0},
                      {vehicle = 'wrpolmav', extras = {}, livery = 0},
                      {vehicle = 'frogger2', extras = {}, livery = 0},
                      {vehicle = 'nvpolmav', extras = {}, livery = 0},
                      {vehicle = 'as350', extras = {}, livery = 0},


                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_122'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                name = 'Helicoptero', -- Name to display on the map!
                blipId = 64, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 47, -- color id
                blipScale = 0.5, -- scale for blip
              }, 
  
              -- General Settings
              perm = "", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = false, -- veículos terrestres
                      helicoptero = true, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   --   {vehicle = 'volatus', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_123'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "playboy.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_126'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "casavermelha2.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_127'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "aztecas.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_128'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "advogado.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'bmwrjuridico', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_129'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "casalago2.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_134'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                name = 'Barcos', -- Name to display on the map!
                blipId = 427, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 47, -- color id
                blipScale = 0.5, -- scale for blip
              }, 
  
              -- General Settings
              perm = "yacht2.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = false, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = true, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'yacht2', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_137'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "hothouse.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_138'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "swift2.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = false, -- veículos terrestres
                      helicoptero = true, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'swift2', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },

          ['service_sr650fly'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "sr650fly.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = true, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'sr650fly', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },

          ['service_yacht3a'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "yacht3a.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = true, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'yacht3a', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },

          ['service_yacht3b'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "yacht3b.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = true, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'yacht3b', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_139'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                name = 'Helicoptero', -- Name to display on the map!
                blipId = 64, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 47, -- color id
                blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "swift2.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = false, -- veículos terrestres
                      helicoptero = true, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'swift2', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_140'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "casarichman.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_142'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "arranhaceu.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_144'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "yakuza.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  garagemType = 'public', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_146'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                name = 'Barcos', -- Name to display on the map!
                blipId = 427, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 47, -- color id
                blipScale = 0.5, -- scale for blip
              }, 
  
              -- General Settings
              perm = "yacht2.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
                  useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = false, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = true, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'yacht2', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_151'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "policia.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
            --      useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = '19ranger', extras = {}, livery = 0},
                      {vehicle = 'WRgiuliagta', extras = {}, livery = 0},
                      {vehicle = 'mansm8', extras = {}, livery = 0},
                      {vehicle = 'fk8', extras = {}, livery = 0},
                      {vehicle = 'VRa4', extras = {}, livery = 0},
           
                      {vehicle = 'VRdm1200', extras = {}, livery = 0},
    
                      {vehicle = 'cb500coter', extras = {}, livery = 0},
     
                      {vehicle = 'mercedesgt', extras = {}, livery = 0},
                      {vehicle = 'tdmerry', extras = {}, livery = 0},
                      {vehicle = 'tdmerry2', extras = {}, livery = 0},
                      {vehicle = 'pbus', extras = {}, livery = 0},
                      {vehicle = 'nvbmw', extras = {}, livery = 0},
                      {vehicle = 'nvafricat', extras = {}, livery = 0},
                      {vehicle = 'nvc7', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },
  
          ['service_153'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "paramedico.permissao", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
           
        
                garagemType = 'work', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {
                      {vehicle = 'paramedicoambu', extras = {}, livery = 0},
                      {vehicle = 'mercedestactical', extras = {}, livery = 0},
                      {vehicle = 'm8comando', extras = {}, livery = 0},
                      {vehicle = 'firetruk', extras = {}, livery = 0},
                      {vehicle = 'dodgeEMS', extras = {}, livery = 0},
                      {vehicle = 'emsjeep', extras = {}, livery = 0},
                      {vehicle = 'emsrobozao', extras = {}, livery = 0},
                      {vehicle = 'WRr1200', extras = {}, livery = 0},
                      {vehicle = 'WRsxr', extras = {}, livery = 0},
                      {vehicle = 'emsjeep', extras = {}, livery = 0},
                      {vehicle = 'VRrs6av', extras = {}, livery = 0},
                   }, -- caso for work, definir os veiculos aqui
              }
          },

          ['service_154'] = {
            type = 'garagem', -- não alterar
            input = 'garagem', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                scale = vec3(1.0, 1.0, 1.0),
                rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                  active = false,
                  dict = '',
                  name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
              name = 'Helicoptero', -- Name to display on the map!
              blipId = 64, -- blip id = https://docs.fivem.net/docs/game-references/blips/
              blipColor = 47, -- color id
              blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "moderador.permissao", -- permissao para acessar o blip               
            garagemConfig = {
                payment = false,
                paymentType = 1, -- 1 predefinido, 2 porcentagem
                paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
         
                useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work)
                garagemMenu = {
                    carro = false, -- veículos terrestres
                    helicoptero = true, -- veículos aéreos
                    barco = false, -- veículos áquaticos
                },
                vehicles = {
                   {vehicle = 'volatus', extras = {}, livery = 0},
                 }, -- caso for work, definir os veiculos aqui
            }
         },

           ['service_44'] = {
            type = 'garagem', -- não alterar
            input = 'garagem', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                scale = vec3(1.0, 1.0, 1.0),
                rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                  active = false,
                  dict = '',
                  name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Garagem', -- Name to display on the map!
                blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 0, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip               
            garagemConfig = {
                payment = false,
                paymentType = 1, -- 1 predefinido, 2 porcentagem
                paymentPrefix = 1, -- Caso Type = 1 define valor para retirar o veiculo
                paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo     
         
                useDB = true,
                useDB = true,
                garagemType = 'work', -- tipo de gargem (public, home, work) -- tipo de gargem (public, home, work)
                garagemMenu = {
                    carro = false, -- veículos terrestres
                    helicoptero = false, -- veículos aéreos
                    barco = true, -- veículos áquaticos
                },
                vehicles = {
					{vehicle = 'avisa', extras = {}, livery = 0},
					{vehicle = 'submersible2', extras = {}, livery = 0},
				 }, -- caso for work, definir os veiculos aqui
            }
          }, 
  
          ['home'] = {
              type = 'garagem', -- não alterar
              input = 'garagem', -- não alterar
              -- Input configuration
              marker = { -- set custom marker if the type is marker
                  id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                  color = {255, 255, 255, 75}, -- marker color (R,G,B,A)
                  scale = vec3(1.0, 1.0, 1.0),
                  rotacao = vec3(0.0, 180.0, 130.0), -- marker Rotation (x,y,z)
                  bobUpAndDown = false, -- marker bopUpAndDown
                  faceCamera = false, -- marker faceCamera
                  rotation = true, -- marker rotation
                  custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                  }
              },
              actionKey = 38,
              -- Map Configuration
              blip = {
                  name = 'Garagem', -- Name to display on the map!
                  blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                  blipColor = 0, -- color id
                  blipScale = 0.5, -- scale for blip
              },  
  
              -- General Settings
              perm = "", -- permissao para acessar o blip               
              garagemConfig = {
                  payment = false,
                  paymentType = 1, -- 1 predefinido, 2 porcentagem
                  paymentPrefix = 100, -- Caso Type = 1 define valor para retirar o veiculo
                  paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo   
  
                  garagemType = 'home', -- tipo de gargem (public, home, work)
                  garagemMenu = {
                      carro = true, -- veículos terrestres
                      helicoptero = false, -- veículos aéreos
                      barco = false, -- veículos áquaticos
                  },
                  vehicles = {}, -- caso for work, definir os veiculos aqui
              }
          },
      },
  
      locs = {-- Garagens Publicas
          -- Garagens Publicas
             
          {
          showBlip = true, 
          coord = vector3(55.43000030517578, -876.1900024414062, 30.65999984741211), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(50.65999984741211, -873.02001953125, 30.450000762939453, 159.65),
              vector4(47.34000015258789, -871.8099975585938, 30.450000762939453, 159.65),
              vector4(44.16999816894531, -870.5, 30.450000762939453, 159.65),}
          },
          {
          showBlip = true, 
          coord = vector3(596.4000244140625, 90.6500015258789, 93.12000274658203), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(607.0399780273438, 93.87000274658203, 92.62999725341797, 251.25),
              vector4(608.47998046875, 98.62999725341797, 92.7300033569336, 255.07),}
          },
          {
          showBlip = true, 
          coord = vector3(-340.760009765625, 265.9700012207031, 85.66999816894531), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(-329.739990234375, 274.20001220703125, 85.44000244140625, 93.8),
              vector4(-329.8800048828125, 277.6300048828125, 85.43000030517578, 93.8),}
          },
          {
          showBlip = true, 
          coord = vector3(-2030.010009765625, -465.9700012207031, 11.600000381469727), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(-2024.27001953125, -471.92999267578125, 11.399999618530273, 140),
              vector4(-2021.9000244140625, -474.1700134277344, 11.399999618530273, 140),}
          },
          {
          showBlip = true, 
          coord = vector3(-1184.9200439453125, -1510, 4.639999866485596), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(-1183.489990234375, -1495.9200439453125, 4.369999885559082, 125),
              vector4(-1186.699951171875, -1490.5400390625, 4.369999885559082, 125),}
          },
          {
          showBlip = true, 
          coord = vector3(-73.44000244140625, -2004.989990234375, 18.270000457763672), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(-84.95999908447266, -2004.219970703125, 18.010000228881836, 352),}
          },
          {
          showBlip = true, 
          coord = vector3(-348.8800048828125, -874.02001953125, 31.309999465942383), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(-337.07000732421875, -884.030029296875, 31.079999923706055, 167.89),
              vector4(-323.8399963378906, -889.3900146484375, 31.079999923706055, 166.64),
              vector4(-343.5899963378906, -874.6799926757812, 31.079999923706055, 171.27),}
          },
          {
          showBlip = true, 
          coord = vector3(67.73999786376953, 12.270000457763672, 69.20999908447266), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(64.16999816894531, 17.219999313354492, 68.37000274658203, 339.38),
              vector4(61.16999816894531, 18.399999618530273, 68.41999816894531, 339.38),}
          },
          {
          showBlip = true, 
          coord = vector3(361.8999938964844, 297.80999755859375, 103.87999725341797), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(366.1199951171875, 287.05999755859375, 103.37000274658203, 255.08),
              vector4(362.8500061035156, 292.8800048828125, 103.4800033569336, 254.7),
              vector4(374.57000732421875, 292.7699890136719, 103.2699966430664, 162.9),}
          },
          {
          showBlip = true, 
          coord = vector3(-773.3400268554688, 5598.14990234375, 33.599998474121094), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(-778.1799926757812, 5578.009765625, 33.4900016784668, 94.28),
              vector4(-778.2100219726562, 5573.10986328125, 33.4900016784668, 91.44),}
          },
          {
          showBlip = true, 
          coord = vector3(323.5, -203.07000732421875, 54.08000183105469), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(318.07000732421875, -203.27999877929688, 53.2400016784668, 249.14),
              vector4(316.7099914550781, -206.49000549316406, 53.2400016784668, 249.14),
              vector4(315.57000732421875, -209.74000549316406, 53.2400016784668, 249.14),}
          },
          {
          showBlip = true, 
          coord = vector3(317.25, 2623.139892578125, 44.459999084472656), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(334.5199890136719, 2623.090087890625, 44.4900016784668, 20),}
          },

          {
          showBlip = true, 
          coord = vector3(-102.20999908447266, 6345.18017578125, 31.56999969482422), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(-91.87000274658203, 6339.9501953125, 31.5, 229.28),
              vector4(-88.83000183105469, 6342.39990234375, 31.5, 231.51),
              vector4(-85.98999786376953, 6345.22021484375, 31.5, 220.62),
              vector4(-83.47000122070312, 6347.669921875, 31.5, 224.69),}
          },
          {
          showBlip = false, 
          coord = vector3(-2309.8,281.73,169.46), 
          heading = 0.0, 
          config = 'service_16', 
          homeName = '', 
          spawn = {
              vector4(-2319.73,290.79,169.46, 139.91),}
          },

          {
            showBlip = false, 
            coord = vector3(318.0,2829.0,43.49), 
            heading = 0.0, 
            config = 'service_24', 
            homeName = '', 
            spawn = {
                vector4(306.89,2833.17,43.44, 89.43),}
            },

          {
          showBlip = false, 
          coord = vector3(1196.800048828125, -3253.679931640625, 7.090000152587891), 
          heading = 0.0, 
          config = 'service_20', 
          homeName = '', 
          spawn = {
              vector4(1185.199951171875, -3251.39990234375, 6.019999980926514, 91.07),}
          },
          {
          showBlip = false, 
          coord = vector3(448.1499938964844, 6462.43017578125, 28.989999771118164), 
          heading = 0.0, 
          config = 'service_23', 
          homeName = '', 
          spawn = {
              vector4(454.3299865722656, 6457.56982421875, 29.81999969482422, 256.29),}
          },
         
          {
          showBlip = true, 
          coord = vector3(-1026.56005859375, -3018.8798828125, 13.949999809265137), 
          heading = 0.0, 
          config = 'public_areo', 
          homeName = '', 
          spawn = {
              vector4(-1014.4099731445312, -3005.780029296875, 13.949999809265137, 75.5),}
          },
          {
          showBlip = false, 
          coord = vector3(1271.25, -3245.56005859375, 5.909999847412109), 
          heading = 0.0, 
          config = 'service_41', 
          homeName = '', 
          spawn = {
              vector4(1271.6800537109375, -3237.3701171875, 5.909999847412109, 88.72),}
          },
          {
          showBlip = false, 
          coord = vector3(1267.010009765625, -3182.090087890625, 5.909999847412109), 
          heading = 0.0, 
          config = 'service_42', 
          homeName = '', 
          spawn = {
              vector4(1274.6099853515625, -3185.840087890625, 5.909999847412109, 88.72),}
          },
          {
          showBlip = false, 
          coord = vector3(1271.5999755859375, -3227.550048828125, 5.909999847412109), 
          heading = 0.0, 
          config = 'service_43', 
          homeName = '', 
          spawn = {
              vector4(1272.4599609375, -3223.340087890625, 5.909999847412109, 88.72),}
          },
          {
            showBlip = false, 
            coord = vector3(-1800.300048828125, -1226.8900146484375, 1.600000023841858), 
            heading = 0.0, 
            config = 'service_44', 
            homeName = '', 
            spawn = {
                vector4(-1796.8399658203125, -1230.699951171875, -0.44999998807907104, 197.97),
                vector4(-1793.1199951171875, -1220.47998046875, -0.5799999833106995, 315.38),}
          },
          {
          showBlip = true, 
          coord = vector3(1204.3699951171875, -3179.639892578125, 5.619999885559082), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(1201.6300048828125, -3191.85009765625, 6.03000020980835, 180.91),}
          },
          {
          showBlip = true, 
          coord = vector3(275.4100036621094, -345.0799865722656, 45.18000030517578), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(277.3800048828125, -340.0400085449219, 44.91999816894531, 74.13),
              vector4(278.75, -336.8500061035156, 44.91999816894531, 64.11),}
          },
          {
          showBlip = true, 
          coord = vector3(-1600.2099609375, -1170.81005859375, 1.6200000047683716), 
          heading = 0.0, 
          config = 'service_56', 
          homeName = '', 
          spawn = {
              vector4(-1622.219970703125, -1174.510009765625, 0.15000000596046448, 101.67),}
          },
        
          {
          showBlip = false, 
          coord = vector3(1416.6800537109375, 1114.550048828125, 114.83999633789062), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(1415.7900390625, 1118.8900146484375, 114.83999633789062, 89.34),}
          },
          {
          showBlip = false, 
          coord = vector3(-1536.94,83.45,56.77), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(-1524.18,93.64,56.56, 41.29),}
          },
         
          {
          showBlip = false, 
          coord = vector3(448.55999755859375, 6465.1298828125, 28.90999984741211), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(450.94000244140625, 6469.43017578125, 29.639999389648438, 47.32),}
          },

          {
          showBlip = false, 
          coord = vector3(-1528.550048828125, 891.260009765625, 181.91000366210938), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(-1541.780029296875, 886.8900146484375, 181.5, 20.611),}
          },

          {
          showBlip = false, 
          coord = vector3(-446.989990234375, 6024.14990234375, 31.5), 
          heading = 0.0, 
          config = 'service_81', 
          homeName = '', 
          spawn = {
              vector4(-461.6199951171875, 6009.2998046875, 31.350000381469727, 79.09422),}
          },
         
          {
          showBlip = false, 
          coord = vector3(1958.8900146484375, 4628.1298828125, 41.06999969482422), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(1949.81005859375, 4638.66015625, 40.58000183105469, 92.69),}
          },
          {
          showBlip = false, 
          coord = vector3(-280.8299865722656, -1910.56005859375, 29.950000762939453), 
          heading = 0.0, 
          config = 'service_87', 
          homeName = '', 
          spawn = {
              vector4(-275.0899963378906, -1904.0400390625, 27.760000228881836, 319),}
          },
          {
            showBlip = false, 
            coord = vector3(-1644.35,-987.73,13.01), 
            heading = 0.0, 
            config = 'service_87', 
            homeName = '', 
            spawn = {
                vector4(-1639.38,-992.17,13.01, 316.01),
                vector4(-1638.97,-988.28,13.01, 316.01),
                vector4(-1641.0,-986.36,13.01, 316.01),
                vector4(-1640.87,-991.02,13.01, 316.01),}
            },
          {
          showBlip = false, 
          coord = vector3(1852.4100341796875, 2613.93994140625, 45.68000030517578), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(1854.0699462890625, 2620.570068359375, 45.68000030517578, 269),}
          },
          {
          showBlip = false, 
          coord = vector3(2760.7900390625, 3485.739990234375, 55.5), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(2771.949951171875, 3481.239990234375, 55.38999938964844, 257.07),
              vector4(2773.330078125, 3485.14990234375, 55.34000015258789, 257.07),}
          },
          {
          showBlip = false, 
          coord = vector3(2746.43994140625, 3455.360107421875, 55.95000076293945), 
          heading = 0.0, 
          config = 'service_90', 
          homeName = '', 
          spawn = {
              vector4(2756.89990234375, 3447.68994140625, 55.970001220703125, 252.86),
              vector4(2758.3701171875, 3451.360107421875, 55.90999984741211, 252.86),}
          },
          {
          showBlip = false, 
          coord = vector3(1298.7900390625, 4322.7900390625, 38.27000045776367), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(1304.7099609375, 4325.919921875, 38.349998474121094, 172.3),}
          },
          {
          showBlip = false, 
          coord = vector3(123.12000274658203, 6629.75, 31.920000076293945), 
          heading = 0.0, 
          config = 'service_94', 
          homeName = '', 
          spawn = {
              vector4(128.11000061035156, 6623.2998046875, 31.799999237060547, 232.8),}
          },

          {
          showBlip = false, 
          coord = vector3(1169.5899658203125, -1492.72998046875, 34.849998474121094), 
          heading = 0.0, 
          config = 'service_110', 
          homeName = '', 
          spawn = {
              vector4(1158.489990234375, -1494.8699951171875, 34.70000076293945, 0.5),}
          },
          {
          showBlip = true, 
          coord = vector3(-1012.2100219726562, -3026.989990234375, 13.949999809265137), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(-1008.6599731445312, -3020.169921875, 13.319999694824219, 59.22),}
          },
          {
          showBlip = true, 
          coord = vector3(1182.4599609375, -1533.0400390625, 39.40999984741211), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(1176.8499755859375, -1542.77001953125, 39.40999984741211, 181.3),}
          },
          {
          showBlip = false, 
          coord = vector3(-101.08999633789062, 820.6099853515625, 235.72999572753906), 
          heading = 0.0, 
          config = 'service_113', 
          homeName = '', 
          spawn = {
              vector4(-106.55000305175781, 838.9099731445312, 235.64999389648438, 345.69),}
          },
          {
          showBlip = false, 
          coord = vector3(1208.989990234375, -1469.8699951171875, 45.79999923706055), 
          heading = 0.0, 
          config = 'service_114', 
          homeName = '', 
          spawn = {
              vector4(1200.760009765625, -1471.8499755859375, 45.75, 178.69),}
          },
          {
          showBlip = false, 
          coord = vector3(2197.409912109375, 4973.77978515625, 41.4900016784668), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(2205.10009765625, 4977.93017578125, 41.90999984741211, 41.9),}
          },
          
          {
          showBlip = true, 
          coord = vector3(712.4199829101562, -976.9500122070312, 24.1299991607666), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(706.4000244140625, -984.8200073242188, 24.110000610351562, 276.821533203125),}
          },
          {
          showBlip = false, 
          coord = vector3(-5881.56982421875, 1169.1600341796875, 7.570000171661377), 
          heading = 0.0, 
          config = 'service_137', 
          homeName = '', 
          spawn = {
              vector4(-5887.27001953125, 1168.0799560546875, 7.570000171661377, 89.8),}
          },
 
          {
          showBlip = true, 
          coord = vector3(-989.510009765625, -2950.489990234375, 13.949999809265137), 
          heading = 0.0, 
          config = 'service_139', 
          homeName = '', 
          spawn = {
              vector4(-987.2100219726562, -2962.7099609375, 13.949999809265137, 59.59),}
          },
          {
          showBlip = false, 
          coord = vector3(-1757.5999755859375, 340.239990234375, 88.36000061035156), 
          heading = 0.0, 
          config = 'service_140', 
          homeName = '', 
          spawn = {
              vector4(-1755.5699462890625, 353.25, 89, 25.12),}
          },

          {
          showBlip = false, 
          coord = vector3(-980.6900024414062, -1489.6700439453125, 5.590000152587891), 
          heading = 0.0, 
          config = 'service_144', 
          homeName = '', 
          spawn = {
              vector4(-969.1199951171875, -1482.6700439453125, 5.019999980926514, 289.62),}
          },
          {
          showBlip = false, 
          coord = vector3(-810.4600219726562, 157.77000427246094, 71.47000122070312), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(-821.4400024414062, 157.72999572753906, 70.26000213623047, 84.49),}
          },

          {
          showBlip = true, 
          coord = vector3(2724.989990234375, 3414.919921875, 56.77000045776367), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(2732.820068359375, 3416.409912109375, 56.70000076293945, 246.85),}
          },
          {
          showBlip = false, 
          coord = vector3(-101.80999755859375, 1016.97998046875, 235.8300018310547), 
          heading = 0.0, 
          config = 'public', 
          homeName = '', 
          spawn = {
              vector4(-104.94999694824219, 1021.010009765625, 235.77999877929688, 103.72),}
          },
          {
          showBlip = false, 
          coord = vector3(1196.739990234375, -1465.2900390625, 34.86000061035156), 
          heading = 0.0, 
          config = 'service_153', 
          homeName = '', 
          spawn = {
              vector4(1200.9000244140625, -1459.7900390625, 34.7599983215332, 357.52),}
          },

          {
            showBlip = false, 
            coord = vector3(-2639.26,1316.03,144.62), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-2629.96,1317.4,144.18, 172.35),}
          },
          {
            showBlip = true, 
            coord = vector3(2687.85,3540.0,52.1), 
            heading = 0.0, 
            config = 'service_122', 
            homeName = '', 
            spawn = {
                vector4(2676.5,3539.1,51.81, 72.35),}
          },

          {
            showBlip = false, 
            coord = vector3(-1781.21,-2773.07,13.95), 
            heading = 0.0, 
            config = 'service_154', 
            homeName = '', 
            spawn = {
                vector4(-1766.26,-2765.41,13.95, 234.14),}
          },
          {
            showBlip = true, 
            coord = vector3(-2072.1,-453.96,11.73), 
            heading = 0.0, 
            config = 'service_122', 
            homeName = '', 
            spawn = {
                vector4(-2061.15,-448.46,11.39, 318.24),}
          },
          {
            showBlip = false, 
            coord = vector3(-2553.11,1914.33,169.04), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-2540.69,1919.64,170.35, 149.18),}
          },

          {
            showBlip = false, 
            coord = vector3(873.71,11.24,78.76), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(877.19,3.88,78.76, 267.18),}
          },

          {
            showBlip = false, 
            coord = vector3(-5848.36,1205.16,5.84), 
            heading = 0.0, 
            config = 'public_areo', 
            homeName = '', 
            spawn = {
                vector4(-5855.48,1212.16,5.85, 267.18),}
          },

          {
            showBlip = false, 
            coord = vector3(-2655.69,1296.76,146.36), 
            heading = 0.0, 
            config = 'public_areo', 
            homeName = '', 
            spawn = {
                vector4(-2646.55,1287.7,147.12, 174.107),}
          },

          {
            showBlip = false, 
            coord = vector3(-3195.6,822.08,8.93), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-3198.01,807.75,8.93, 207.09),}
          },

          {
            showBlip = true, 
            coord = vector3(1336.78,4269.88,31.49), 
            heading = 0.0, 
            config = 'service_56', 
            homeName = '', 
            spawn = {
                vector4(1331.06,4263.14,29.45, 207.09),}
          },

          {
            showBlip = true, 
            coord = vector3(-2342.01,255.14,164.45), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-2339.3,256.42,164.45, 205.48),}
          },

-------- ELEMENTS 
         {
            showBlip = false, 
            coord = vector3(-2596.23,1673.35,141.89), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-2585.35,1666.34,141.69, 113.62),}
        }, 
 
-------------- CV
        {
            showBlip = false, 
            coord = vector3(-68.42,818.73,227.74), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-70.95,808.3,227.25, 70.14),}
        },

-------------- DP FACULDADE
        {
            showBlip = false, 
            coord = vector3(-2278.44,402.72,174.6), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-2283.23,408.04,174.46, 131.27),}
        },

        {
            showBlip = false, 
            coord = vector3(966.93,29.71,123.12), 
            heading = 0.0, 
            config = 'public_areo', 
            homeName = '', 
            spawn = {
                vector4(965.87,42.35,123.12, 358.72),}
        },

        {
            showBlip = false, 
            coord = vector3(-2267.02,382.9,193.3), 
            heading = 0.0, 
            config = 'service_121', 
            homeName = '', 
            spawn = {
                vector4(-2261.44,392.08,193.13, 58.53),}
        },

        {
            showBlip = true, 
            coord = vector3(1170.06,-1480.43,38.94), 
            heading = 0.0, 
            config = 'public_areo', 
            homeName = '', 
            spawn = {
                vector4(1182.68,-1473.45,39.18, 357.53),}
        },

        {
            showBlip = true, 
            coord = vector3(-1522.94,1497.01,111.6), 
            heading = 0.0, 
            config = 'service_seashark', 
            homeName = '', 
            spawn = {
                vector4(-1532.0,1515.43,109.25, 156.53),}
        },

        {
            showBlip = true, 
            coord = vector3(-1639.13,2596.86,1.47), 
            heading = 0.0, 
            config = 'service_seashark', 
            homeName = '', 
            spawn = {
                vector4(-1645.84,2605.42,-0.02, 140.53),}
        },
        {
            showBlip = false, 
            coord = vector3(503.94,-3122.13,6.07), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(489.78,-3138.06,6.07, 264.53),}
        },

        {
            showBlip = false, 
            coord = vector3(-458.33,6034.03,31.34), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-468.76,6028.8,31.34, 264.53),}
        },

        {
            showBlip = false, 
            coord = vector3(-101.28,820.11,235.73), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-107.22,840.18,235.63, 342.53),}
        },

        {
            showBlip = false, 
            coord = vector3(-446.55,1579.02,358.93), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-441.11,1581.26,358.4, 243.05),}
        },

        {
            showBlip = false, 
            coord = vector3(1243.4,-241.62,79.03), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(1237.84,-243.42,78.97, 209.53),}
        },
        {
            showBlip = false, 
            coord = vector3(1349.11,-742.72,67.18), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(1350.28,-735.41,67.16, 60.53),}
        },

        {
            showBlip = false, 
            coord = vector3(-1372.94,-586.1,29.84), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-1370.84,-583.76,29.77, 34.53),}
        },
        {
            showBlip = false, 
            coord = vector3(-1058.58,299.04,65.98), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-1061.48,308.92,66.03, 342.53),}
        },

        {
            showBlip = false, 
            coord = vector3(959.23,-121.37,74.96), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(969.08,-124.16,74.36, 137.53),}
        },

        {
            showBlip = false, 
            coord = vector3(2118.7,15.72,217.33), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(2113.65,17.86,217.33, 135.53),}
        },

        {
            showBlip = false, 
            coord = vector3(1457.56,-994.82,51.7), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(1457.71,-999.56,51.59, 83.53),}
        },

        {
            showBlip = false, 
            coord = vector3(-1092.6,362.92,68.61), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-1103.09,369.62,68.92, 88.53),}
        },

        {
            showBlip = false, 
            coord = vector3(-2532.4,1877.23,168.09), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-2539.96,1875.59,166.85, 23.53),}
        },

        {
            showBlip = false, 
            coord = vector3(-1296.15,-1674.23,4.6), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-1289.8,-1675.05,4.5, 214.53),}
        },

        {
            showBlip = false, 
            coord = vector3(-452.99,-1179.58,23.08), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-455.85,-1183.35,22.78, 1.12),}
        },

        {
            showBlip = false, 
            coord = vector3(170.22,680.48,207.25), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(167.23,682.88,207.12, 192.36),}
        },

        {
            showBlip = false, 
            coord = vector3(704.84,4174.05,40.84), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(715.31,4174.94,40.71, 276.80),}
        },

        {
            showBlip = false, 
            coord = vector3(155.75,2277.2,93.99), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(148.15,2273.6,94.24, 80.14),}
        },

        {
            showBlip = false, 
            coord = vector3(-1924.31,2051.12,140.83), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-1914.06,2051.42,140.73, 168.53),}
        },

        {
            showBlip = false, 
            coord = vector3(-446.61,1579.17,358.95), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-437.69,1579.42,358.06, 168.53),}
        },

        {
            showBlip = false, 
            coord = vector3(-1787.06,459.46,128.31), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-1796.18,458.1,128.31, 99.64),}
        },

        {
            showBlip = false, 
            coord = vector3(-157.42,-1581.3,34.81), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-160.56,-1577.47,34.93, 316.07),}
        },

        {
            showBlip = false, 
            coord = vector3(-1565.92,339.79,86.2), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-1560.64,341.35,86.25, 238.43),}
        },

        {
            showBlip = false, 
            coord = vector3(-153.56,-1697.73,32.87), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-166.21,-1698.39,31.71, 228.38),}
        },

        {
            showBlip = false, 
            coord = vector3(-953.2,303.45,70.87), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-941.55,304.21,70.99, 179.44),}
        },

        {
            showBlip = false, 
            coord = vector3(-941.31,292.83,70.53), 
            heading = 0.0, 
            config = 'public_areo', 
            homeName = '', 
            spawn = {
                vector4(-939.54,300.37,70.87, 210.74),}
        },

        {
            showBlip = false, 
            coord = vector3(-1552.57,876.9,181.34), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-1548.83,884.15,181.29, 197.94),}
        },

        {
            showBlip = false, 
            coord = vector3(-1665.21,-250.65,54.88), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-1663.64,-243.2,54.91, 338.58),}
        },

        {
            showBlip = false, 
            coord = vector3(492.78,-1356.68,29.34), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(488.39,-1363.81,29.25, 175.66),}
        },

        {
            showBlip = false, 
            coord = vector3(-2657.14,1302.26,147.44), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-2664.4,1305.09,147.12, 271.38),}
        },

        -- {
        --     showBlip = false, 
        --     coord = vector3(83.33,-1911.49,21.1), 
        --     heading = 0.0, 
        --     config = 'public', 
        --     homeName = '', 
        --     spawn = {
        --         vector4(84.15,-1919.4,20.83, 168.53),}
        -- },

        {
            showBlip = false, 
            coord = vector3(-1517.24,825.66,181.69), 
            heading = 0.0, 
            config = 'public_areo', 
            homeName = '', 
            spawn = {
                vector4(-1511.4,820.82,181.69, 358.72),}
        },

        {
            showBlip = false, 
            coord = vector3(1019.52,-2297.44,31.59), 
            heading = 0.0, 
            config = 'service_civil', 
            homeName = '', 
            spawn = {
                vector4(1017.37,-2307.46,31.48, 166.69),}
        },

        {
            showBlip = false, 
            coord = vector3(3262.86,5154.98,20.19), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(3258.77,5157.88,19.92, 176.07),}
        },

        {
            showBlip = false, 
            coord = vector3(1787.61,462.35,171.41), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(1789.48,457.34,171.3, 321.419),}
        },

        {
            showBlip = false, 
            coord = vector3(-161.57,6306.95,31.37), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-165.13,6305.15,31.19, 42.31),}
        },

        {
            showBlip = false, 
            coord = vector3(-998.21,-1423.33,5.17), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-1008.8,-1428.06,5.04, 108.11),}
        },

        {
            showBlip = false, 
            coord = vector3(-2650.93,1298.48,146.61), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-2646.67,1289.91,146.95, 358.72),}
        },

        {
            showBlip = false, 
            coord = vector3(-2200.09,4270.25,48.48), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-2194.66,4267.73,48.55, 153.72),}
        },

        {
            showBlip = false, 
            coord = vector3(1415.49,3607.89,35.08), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(1416.84,3621.95,34.86, 153.72),}
        },

        {
            showBlip = false, 
            coord = vector3(1696.08,4793.11,41.92), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(1702.82,4802.58,41.79, 87.72),}
        },

        {
            showBlip = false, 
            coord = vector3(-1093.33,-838.54,37.69), 
            heading = 0.0, 
            config = 'public_areo', 
            homeName = '', 
            spawn = {
                vector4(-1096.62,-832.48,37.69, 123.72),}
        },

        {
            showBlip = false, 
            coord = vector3(1874.06,466.78,171.35), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(1880.87,471.38,171.58, 87.72),}
        },

        {
            showBlip = false, 
            coord = vector3(1850.3,445.21,166.63), 
            heading = 0.0, 
            config = 'public_areo', 
            homeName = '', 
            spawn = {
                vector4(1833.64,432.55,166.63, 123.72),}
        },

        {
            showBlip = false, 
            coord = vector3(1014.6,-2336.59,38.64), 
            heading = 0.0, 
            config = 'service_121', 
            homeName = '', 
            spawn = {
                vector4(1017.43,-2330.59,38.62, 268.72),}
        },

        {
            showBlip = false, 
            coord = vector3(1365.78,-2422.19,53.43), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(1359.14,-2422.2,53.5, 346.43),}
        },


        {
            showBlip = false, 
            coord = vector3(74.44,-1923.49,21.05), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4( 80.11,-1923.24,20.83, 40.25),}
        },

        {
            showBlip = false, 
            coord = vector3(1310.59,-2538.83,54.16), 
            heading = 0.0, 
            config = 'public_areo', 
            homeName = '', 
            spawn = {
                vector4(1308.85,-2545.96,54.0, 123.72),}
        },

        {
            showBlip = false, 
            coord = vector3(1018.74,-2314.27,31.48), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(1026.36,-2305.42,31.44, 87.72),}
        },

        {
            showBlip = false, 
            coord = vector3(920.46,43.56,81.1), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(917.85,49.17,80.9, 325.12),}
        },

        -- {
        --     showBlip = false, 
        --     coord = vector3(-189.73,-1726.33,32.65), 
        --     heading = 0.0, 
        --     config = 'public_areo', 
        --     homeName = '', 
        --     spawn = {
        --         vector4(-202.7,-1726.31,32.65, 123.72),}
        -- },

        {
            showBlip = false, 
            coord = vector3(1441.3,1100.52,114.24), 
            heading = 0.0, 
            config = 'public_areo', 
            homeName = '', 
            spawn = {
                vector4(1457.03,1111.79,114.33, 123.72),}
        },

        {
            showBlip = false, 
            coord = vector3(-1409.74,-630.05,38.91), 
            heading = 0.0, 
            config = 'public_areo', 
            homeName = '', 
            spawn = {
                vector4(-1415.89,-627.98,38.91, 292.60),}
        },

        {
            showBlip = false, 
            coord = vector3(-233.93,-1690.36,33.8), 
            heading = 0.0, 
            config = 'public_areo', 
            homeName = '', 
            spawn = {
                vector4(-225.19,-1697.48,33.95, 292.60),}
        },

        {
            showBlip = false, 
            coord = vector3(-413.86,1583.16,355.11), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-418.16,1576.67,355.67, 292.60),}
        },

        {
            showBlip = false, 
            coord = vector3(-1544.61,77.98,61.32), 
            heading = 0.0, 
            config = 'public_areo', 
            homeName = '', 
            spawn = {
                vector4(-1526.32,72.9,61.32, 292.60),}
        },

        {
            showBlip = false, 
            coord = vector3(-1082.83,-262.7,37.79), 
            heading = 0.0, 
            config = 'public', 
            homeName = '', 
            spawn = {
                vector4(-1100.82,-262.65,37.69, 325.12),}
        },

        {
            showBlip = false, 
            coord = vector3(-5817.2,1140.95,1.9), 
            heading = 0.0, 
            config = 'service_56', 
            homeName = '', 
            spawn = {
                vector4(5790.07,1145.95,-0.29, 325.12),}
        },

        {
            showBlip = false, 
            coord = vector3(-1794.39,-1005.16,1.3), 
            heading = 0.0, 
            config = 'service_sr650fly', 
            homeName = '', 
            spawn = {
                vector4(-1809.28,-1026.29,-0.47, 325.12),}
        },

        {
            showBlip = false, 
            coord = vector3(-189.09,788.35,198.1), 
            heading = 0.0, 
            config = 'service_yacht3a', 
            homeName = '', 
            spawn = {
                vector4(-194.63,782.79,195.93, 142.60),}
        },


        {
            showBlip = false, 
            coord = vector3(36.3,860.26,197.7), 
            heading = 0.0, 
            config = 'service_56', 
            homeName = '', 
            spawn = {
                vector4(39.28,851.04,195.93, 223.96),}
        },


        {
            showBlip = false, 
            coord = vector3(-1780.8,429.67,127.4), 
            heading = 0.0, 
            config = 'public_areo', 
            homeName = '', 
            spawn = {
                vector4(-1775.96,432.69,127.28, 88.34),}
        },

	}, 

    commands = {
       -- {showBlip = true, coord = vector3(-75.770088195801,-818.69323730469,326.17532348633), distance = 100000000, command = "openGarages", config = 'configGaragem'},
    }

})