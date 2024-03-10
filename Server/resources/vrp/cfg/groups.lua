local cfg = {}

cfg.groups = {
	["mindmaster157"] = {
		_config = {
			title = "MindMaster"
		},
		"mindmaster.permissao",
		"administrador.permissao",
		"moderador.permissao",
		"suporte.permissao",
		"ac.permissao",
		"player.blips",
		"player.spec",
		"player.noclip",
		"player.secret",
		"player.teleport",
		"player.wall",
		"mqcu.permissao",
		"player.som",
		"dv.permissao",
		"instagram.permissao",
	}, 
	["administrador157"] = {
		_config = {
			title = "Administrador(a)"
		},
		"administrador.permissao",
		"moderador.permissao",
		"suporte.permissao",
		"player.blips",
		"player.spec",
		"player.noclip",
		"player.secret",
		"player.wall",
		"player.teleport",
		"mqcu.permissao",
		"ac.permissao",
		"player.som",
		"dv.permissao",
		"instagram.permissao",
	},
	["moderador157"] = {
		_config = {
			title = "Moderador(a)"
		},
		"moderador.permissao",
		"suporte.permissao",
		"player.blips",
		"player.spec",
		"player.noclip",
		"player.secret",
		"player.wall",
		"player.teleport",
		"mqcu.permissao",
		"ac.permissao",
		"player.som",
		"dv.permissao",
		"instagram.permissao",
	},
	["suporte157"] = {
		_config = {
			title = "Suporte"
		},
		"suporte.permissao",
		"player.teleport",
		"player.noclip",
		"mqcu.permissao",
		"ac.permissao",
		"player.som",
	},
	["paisana-mind"] = {
		_config = {
			title = "mind-paisana",
		},
		"paisana-mind.permissao",
		"paisana-staff.permissao",
	},
	["paisana-admin"] = {
		_config = {
			title = "admin-paisana",
		},
		"paisana-admin.permissao",
		"paisana-staff.permissao",
	},
	["paisana-mod"] = {
		_config = {
			title = "mod-paisana",
		},
		"paisana-mod.permissao",
		"paisana-staff.permissao",
	},
	["paintball"] = {
		_config = {
			title = "paintball",
		},
		"mqcu.permissao",
		"paintball.permissao",
		"player.blips",
		"player.spec",
		"player.noclip",
		"player.secret",
		"player.teleport",
	},
-----------------------------------------------------------------------------
--[	Setagens Vips ]----------------------------------------------------------
-----------------------------------------------------------------------------
	["bronze5e"] = {
		_config = {
			title = "Bronze",
			gtype = "vip1"
		},
		"bronze.permissao",
		"mochila.permissao"
	},
	["bronze25e"] = {
		_config = {
			title = "Bronze",
			gtype = "vip12"
		},
		"bronze2.permissao",
		"mochila.permissao"
	},
	["bronze35e"] = {
		_config = {
			title = "Bronze",
			gtype = "vip13"
		},
		"bronze3.permissao",
		"mochila.permissao"
	},
	["bronze45e"] = {
		_config = {
			title = "Bronze",
			gtype = "vip14"
		},
		"bronze4.permissao",
		"mochila.permissao"
	},
	
	["prata5e"] = {
		_config = {
			title = "Prata",
			gtype = "vip2"
		},
		"prata.permissao",
		"mochila.permissao"
	},
	["prata25e"] = {
		_config = {
			title = "Prata",
			gtype = "vip22"
		},
		"prata2.permissao",
		"mochila.permissao"
	},
	["prata35e"] = {
		_config = {
			title = "Prata",
			gtype = "vip23"
		},
		"prata3.permissao",
		"mochila.permissao"
	},
	["prata45e"] = {
		_config = {
			title = "Prata",
			gtype = "vip24"
		},
		"prata4.permissao",
		"mochila.permissao"
	},

	["ouro5e"] = {
		_config = {
			title = "Ouro",
			gtype = "vip3"
		},
		"ouro.permissao",
		"mochila.permissao"
	},
	["ouro25e"] = {
		_config = {
			title = "Ouro",
			gtype = "vip32"
		},
		"ouro2.permissao",
		"mochila.permissao"
	},
	["ouro35e"] = {
		_config = {
			title = "Ouro",
			gtype = "vip33"
		},
		"ouro3.permissao",
		"mochila.permissao"
	},
	["ouro45e"] = {
		_config = {
			title = "Ouro",
			gtype = "vip34"
		},
		"ouro4.permissao",
		"mochila.permissao"
	},

	["diamante5e"] = {
		_config = {
			title = "Diamante",
			gtype = "vip4"
		},
		"player.som",
		"naopagaipva.permissao",
		"diamante.permissao",
		"mochila.permissao"
	},
	["diamante25e"] = {
		_config = {
			title = "Diamante 2",
			gtype = "vip42"
		},
		"player.som",
		"naopagaipva.permissao",
		"diamante2.permissao",
		"mochila.permissao"
	},
	["diamante35e"] = {
		_config = {
			title = "Diamante 3",
			gtype = "vip43"
		},
		"player.som",
		"naopagaipva.permissao",
		"diamante3.permissao",
		"mochila.permissao"
	},
	["diamante45e"] = {
		_config = {
			title = "Diamante 4",
			gtype = "vip44"
		},
		"player.som",
		"naopagaipva.permissao",
		"diamante4.permissao",
		"mochila.permissao"
	},

	["esmeralda5e"] = {
		_config = {
			title = "Esmeralda",
			gtype = "vip5"
		},
		"player.som",
		"naopagaipva.permissao",
		"esmeralda.permissao",
		"mochila.permissao"
	},
	["esmeralda25e"] = {
		_config = {
			title = "Esmeralda 2",
			gtype = "vip52"
		},
		"player.som",
		"naopagaipva.permissao",
		"esmeralda2.permissao",
		"mochila.permissao"
	},
	["esmeralda35e"] = {
		_config = {
			title = "Esmeralda 3",
			gtype = "vip53"
		},
		"player.som",
		"naopagaipva.permissao",
		"esmeralda3.permissao",
		"mochila.permissao"
	},
	["esmeralda45e"] = {
		_config = {
			title = "Esmeralda 4",
			gtype = "vip54"
		},
		"player.som",
		"naopagaipva.permissao",
		"esmeralda4.permissao",
		"mochila.permissao"
	},

	["flush5e"] = {
		_config = {
			title = "Esmeralda",
			gtype = "vip6"
		},
		"player.som",
		"naopagaipva.permissao",
		"flush.permissao",
		"instagram.permissao",
		"mochila.permissao"
	},
	["flush25e"] = {
		_config = {
			title = "Esmeralda",
			gtype = "vip62"
		},
		"player.som",
		"naopagaipva.permissao",
		"instagram.permissao",
		"flush2.permissao",
		"mochila.permissao"
	},
	["booster"] = {
		_config = {
			title = "Booster",
		},
		"booster.permissao"
	},
	["som"] = {
		_config = {
			title = "Som",
		},
		"player.som",
	},
	["instagram"] = {
		_config = {
			title = "Instagram",
		},
		"instagram.permissao",
	},
	["estagiario"] = {
		_config = {
			title = "estagiario",
		},
		"estagiario.permissao",
	},
	["funcionario"] = {
		_config = {
			title = "funcionario",
		},
		"funcionario.permissao",
	},
	["gerente"] = {
		_config = {
			title = "gerente",
		},
		"gerente.permissao",
	},
	["patrao"] = {
		_config = {
			title = "patrao",
		},
		"patrao.permissao",
	},
-----------------------------------------------------------------------------
--[	Departamento Médico ]----------------------------------------------------
-----------------------------------------------------------------------------
	["diretor"] = {
		_config = {
			title = "Hospital Diretor",
			gtype = "job"
		},
		"diretor.permissao",
		"polpar.permissao",
		"player.blips",
		"paramedico.permissao",
	}, 
	["paisana-diretor"] = {
		_config = {
			title = "Paisana Diretor",
			gtype = "job"
		},
		"paisana-diretor.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["especialista"] = {
		_config = {
			title = "Especialista",
			gtype = "job"
		},
		"especialista.permissao",
		"paramedico.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["paisana-especialista"] = {
		_config = {
			title = "Paisana Especialista",
			gtype = "job"
		},
		"paisana-especialista.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["psicologo"] = {
		_config = {
			title = "Psicologo",
			gtype = "job"
		},
		"psicologo.permissao",
		"paramedico.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["paisana-psicologo"] = {
		_config = {
			title = "Paisana Psicologo",
			gtype = "job"
		},
		"paisana-psicologo.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["medico"] = {
		_config = {
			title = "Medico",
			gtype = "job"
		},
		"medico.permissao",
		"paramedico.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["paisana-medico"] = {
		_config = {
			title = "Paisana Medico",
			gtype = "job"
		},
		"paisana-medico.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["enfermeiro"] = {
		_config = {
			title = "Enfermeiro",
			gtype = "job"
		},
		"enfermeiro.permissao",
		"paramedico.permissao",
		"polpar.permissao",
		"player.blips",
	},
	["paisana-enfermeiro"] = {
		_config = {
			title = "Paisana Enfermeiro",
			gtype = "job"
		},
		"paisana-enfermeiro.permissao",
		"polpar.permissao",
		"player.blips",
	}, 
	["paramedico"] = {
		_config = {
			title = "Paramedico",
			gtype = "job"
		},
		"paramedico.permissao",
		"polpar.permissao",
		"para.permissao",
		"player.blips",
	}, 
	["paisana-paramedico"] = {
		_config = {
			title = "Paramedico de Folga",
			gtype = "job"
		},
		"paisana-paramedico.permissao",
		"polpar.permissao",
		"player.blips",
	},
-----------------------------------------------------------------------------
--[	POLICIA ]----------------------------------------------------------------
-----------------------------------------------------------------------------
	["policia"] = {
		_config = {
			title = "Policial",
			gtype = "job"
		},
		"policia.permissao",
		"policial.permissao",
		"patrulha.permissao",
		"player.blips",
	},
	["paisana-policia"] = {
		_config = {
			title = "Policial de folga",
			gtype = "job"
		},
		"paisana-policia.permissao",
	},
	["acao-policia"] = {
		_config = {
			title = "Policial em Ação",
			gtype = "job"
		},
		"policial-em-acao.permissao",
		"acao-policia.permissao",
		"mochila.permissao",
	},
	["medico-policia"] = {
		_config = {
			title = "Medico Policial",
			gtype = "job"
		},
		"policia.permissao",
		"medico-policia.permissao",
		"patrulha.permissao",
		"player.blips",
	},
	["medico-paisana-policia"] = {
		_config = {
			title = "Policial Médico de folga",
			gtype = "job"
		},
		"medico-paisana-policia.permissao",
	},
	["medico-acao-policia"] = {
		_config = {
			title = "Policial Médico em Ação",
			gtype = "job"
		},
		"policial-em-acao.permissao",
		"medico-acao-policia.permissao",
		"mochila.permissao",
	},
	["comando-policia"] = {
		_config = {
			title = "Comandante",
			gtype = "job"
		},
		"policia.permissao",
		"comando-policia.permissao",
		"patrulha.permissao",
		"player.blips",
	},
	["comando-paisana-policia"] = {
		_config = {
			title = "Comandante de folga",
			gtype = "job"
		},
		"comando-paisana-policia.permissao",
	},
	["comando-acao-policia"] = {
		_config = {
			title = "Comandante em Ação",
			gtype = "job"
		},
		"policial-em-acao.permissao",
		"comando-acao-policia.permissao",
		"mochila.permissao",
	},
-----------------------------------------------------------------------------
--[TRABALHOS]----------------------------------------------------------------
-----------------------------------------------------------------------------
	["mecanico"] = {
		_config = {
			title = "Mecânico",
			gtype = "job"
		},
		"mecanico.permissao",
		"desmanche.permissao",
		"bennys.permissao",
	},
	["paisana-mecanico"] = {
		_config = {
			title = "Mecânico de folga",
			gtype = "job"
		},
		"paisana-mecanico.permissao",
	},
	["lider-mecanico"] = {
		_config = {
			title = "Lider Mecânica",
			gtype = "job"
		},
		"mecanico.permissao",
		"desmanche.permissao",
		"bennys.permissao",
	},
	["advogado"] = {
		_config = {
			title = "Advogado",
			gtype = "job",
		},
		"advogado.permissao",
	},
	["desembargador"] = {
		_config = {
			title = "Desembargador",
			gtype = "job",
		},
		"desembargador.permissao",
		"advogado.permissao",
	},
	["promotor"] = {
		_config = {
			title = "Promotor de Justiça",
			gtype = "job",
		},
		"promotor.permissao",
		"advogado.permissao",
	},
	["juiz"] = {
		_config = {
			title = "Juiz",
			gtype = "job",
		},
		"juiz.permissao",
		"advogado.permissao",
	},
	-----------------------------------------------------------------------------
	--[	Organização e Facções ]--------------------------------------------------
	-----------------------------------------------------------------------------
	["vanilla"] = {
		_config = {
			title = "Vanilla",
			gtype = "job"
		},
		"vanilla.permissao",
		"ilegal.permissao",
		"lavagem.permissao",
	},
	["lider-vanilla"] = {
		_config = {
			title = "Lider Vanilla",
			gtype = "job"
		},
		"vanilla.permissao",
		"ilegal.permissao",
		"lavagem.permissao",
	},
	["tcp"] = {
		_config = {
			title = "TCP",
			gtype = "job",
		},
		"tcp.permissao",
		"ilegal.permissao",
		"drogas.permissao",
		"maconha.permissao",
	},
	["ada"] = {
		_config = {
			title = "ADA",
			gtype = "job",
		},
		"ada.permissao",
		"ilegal.permissao",
		"drogas.permissao",
		"metanfetamina.permissao",
	},
	["gde"] = {
		_config = {
			title = "GDE",
			gtype = "job",
		},
		"gde.permissao",
		"ilegal.permissao",
		"drogas.permissao",
		"cocaina.permissao",
	},
	["cp"] = {
		_config = {
			title = "Comando da Paz",
			gtype = "job",
		},
		"cp.permissao",
		"ilegal.permissao",
		"drogas.permissao",
		"lsd.permissao",
	},
	["cv"] = {
		_config = {
			title = "CV",
			gtype = "job",
		},
		"cv.permissao",
		"ilegal.permissao",
		"armas.permissao",
	},
	["pcc"] = {
		_config = {
			title = "PCC",
			gtype = "job",
		},
		"pcc.permissao",
		"ilegal.permissao",
		"armas.permissao",
	},
	["b13"] = {
		_config = {
			title = "B13",
			gtype = "job",
		},
		"b13.permissao",
		"municao.permissao",
		"ilegal.permissao",
	},
	["fdn"] = {
		_config = {
			title = "Familia do Norte",
			gtype = "job",
		},
		"fdn.permissao",
		"municao.permissao",
		"ilegal.permissao",
	},
	["motoclub"] = {
		_config = {
			title = "Motoclub",
			gtype = "job",
		},
		"motoclub.permissao",
		"ilegal.permissao",
		"desmanche.permissao",
	},
	["hells"] = {
		_config = {
			title = "Hells",
			gtype = "job"
		},
		"hells.permissao",
		"ilegal.permissao",
		"desmanche.permissao",
	},
	["sindicato"] = {
		_config = {
			title = "Sindicato",
			gtype = "job"
		},
		"sindicato.permissao",
		"ilegal.permissao",
		"lavagem.permissao",
	},
	["lux"] = {
		_config = {
			title = "Lux",
			gtype = "job"
		},
		"lux.permissao",
		"ilegal.permissao",
		"lavagem.permissao",
	},
	["cdd"] = {
		_config = {
			title = "Cidade de Deus",
			gtype = "job"
		},
		"cdd.permissao",
		"ilegal.permissao",
		"desmanche.permissao",
	},
	["rocinha"] = {
		_config = {
			title = "Rocinha",
			gtype = "job"
		},
		"rocinha.permissao",
		"ilegal.permissao",
		"municao.permissao",
	},
	["cpx"] = {
		_config = {
			title = "CPX",
			gtype = "job"
		},
		"cpx.permissao",
		"ilegal.permissao",
		"armas.permissao",
	},
----------------------- AREA DE LIDRES
	["lider-rocinha"] = {
		_config = {
			title = "Lider Rocinha",
			gtype = "job",
		},
		"lider-rocinha.permissao",
		"rocinha.permissao",
		"ilegal.permissao",
		"municao.permissao",
	},
	["lider-cdd"] = {
		_config = {
			title = "Lider CDD",
			gtype = "job",
		},
		"lider-cdd.permissao",
		"cdd.permissao",
		"ilegal.permissao",
		"desmanche.permissao",
	},
	["lider-cpx"] = {
		_config = {
			title = "Lider CPX",
			gtype = "job",
		},
		"lider-cpx.permissao",
		"cpx.permissao",
		"ilegal.permissao",
		"armas.permissao",
	},
	["lider-tcp"] = {
		_config = {
			title = "Lider TCP",
			gtype = "job",
		},
		"lider-tcp.permissao",
		"tcp.permissao",
		"ilegal.permissao",
		"drogas.permissao",
	},
	["lider-ada"] = {
		_config = {
			title = "Lider ADA",
			gtype = "job",
		},
		"lider-ada.permissao",
		"ada.permissao",
		"ilegal.permissao",
		"drogas.permissao",
	},
	["lider-gde"] = {
		_config = {
			title = "Lider GDE",
			gtype = "job",
		},
		"lider-gde.permissao",
		"gde.permissao",
		"ilegal.permissao",
		"drogas.permissao",
	},
	["lider-cv"] = {
		_config = {
			title = "Lider CV",
			gtype = "job",
		},
		"lider-cv.permissao",
		"cv.permissao",
		"ilegal.permissao",
		"armas.permissao",
	},
	["lider-pcc"] = {
		_config = {
			title = "Lider PCC",
			gtype = "job",
		},
		"lider-pcc.permissao",
		"pcc.permissao",
		"ilegal.permissao",
		"armas.permissao",
	},
	["lider-milicia"] = {
		_config = {
			title = "Lider Milicia",
			gtype = "job",
		},
		"lider-milicia.permissao",
		"milicia.permissao",
		"municao.permissao",
		"ilegal.permissao",
	},
	["lider-fdn"] = {
		_config = {
			title = "Lider FDN",
			gtype = "job",
		},
		"lider-fdn.permissao",
		"fdn.permissao",
		"municao.permissao",
		"ilegal.permissao",
	},
	["lider-b13"] = {
		_config = {
			title = "Lider B13",
			gtype = "job",
		},
		"lider-b13.permissao",
		"b13.permissao",
		"municao.permissao",
		"ilegal.permissao",
	},
	["lider-motoclub"] = {
		_config = {
			title = "Lider Motoclub",
			gtype = "job",
		},
		"lider-motoclub.permissao",
		"motoclub.permissao",
		"ilegal.permissao",
		"desmanche.permissao",
	},
	["lider-hells"] = {
		_config = {
			title = "Lider Hells",
			gtype = "job"
		},
		"lider-hells.permissao",
		"hells.permissao",
		"ilegal.permissao",
		"desmanche.permissao",
	},	
	["lider-sindicato"] = {
		_config = {
			title = "Lider Sindicato",
			gtype = "job"
		},
		"lider-sindicato.permissao",
		"sindicato.permissao",
		"ilegal.permissao",
		"lavagem.permissao",
	},
	["lider-lux"] = {
		_config = {
			title = "Lider Lux",
			gtype = "job"
		},
		"lider-lux.permissao",
		"lux.permissao",
		"ilegal.permissao",
		"lavagem.permissao",
	},
	-----------------------------------------------------------------------------
	---[	grupo de casas mods ]------------------------------------------------
	-----------------------------------------------------------------------------
	["mansaomalibu"] = {
		_config = {
			title = "Casa Malibu"
		},
		"mansaomalibu.permissao",
	},
	["mansaogold"] = {
		_config = {
			title = "Casa Gold"
		},
		"mansaogold.permissao",
	},
	["cobertura"] = {
		_config = {
			title = "Cobertura"
		},
		"cobertura.permissao",
	},
	["cobertura2"] = {
		_config = {
			title = "Cobertura 2"
		},
		"cobertura2.permissao",
	},
	["mansaoextra01"] = {
		_config = {
			title = "Mansao Extra 01"
		},
		"mansaoextra01.permissao",
	},
	["mansaoextra02"] = {
		_config = {
			title = "Mansao Extra 02"
		},
		"mansaoextra02.permissao",
	},
}

cfg.users = {
	[0] = { "mindmaster157" },
	[1] = { "mindmaster157" },
	[2] = { "mindmaster157" },
	[4] = { "mindmaster157" },
	[5] = { "mindmaster157" }
}

cfg.selectors = {}

return cfg