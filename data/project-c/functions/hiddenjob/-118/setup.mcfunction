#職看板
give @p dark_oak_sign{display:{Name:'"118-Resonance"'},BlockEntityTag:{Text1:'{"text":"*********-118-*********","color":"yellow","clickEvent":{"action":"run_command","value":"function project-c:hiddenjob/-118/jobchangecheck"}}',Text2:'{"text":"【Granter】","color":"yellow","bold":true,"underlined":true}',Text3:'{"text":"右クリックで転職!!","color":"yellow"}',Text4:'{"text":"**********************","color":"yellow"}'}}

#スキル系処理用
setblock 42 84 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:1b,Command:"execute as @a[scores={jobNumber=-118}] at @s run function project-c:hiddenjob/-118/main",TrackOutput:0b} destroy

