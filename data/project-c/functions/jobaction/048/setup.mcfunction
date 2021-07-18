#職看板
give @p oak_sign{display:{Name:'"48-精霊王"'},BlockEntityTag:{Text1:'{"text":"*********-48-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 48"}}',Text2:'{"text":"【精霊王】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"精霊王\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群

#スキル系処理用
setblock -51 2 -20 minecraft:repeating_command_block[conditional=false,facing=south]{Command:"execute as @a[scores={jobNumber=48}] at @s run function project-c:jobaction/048/main",CustomName:'{"text":"@"}',LastExecution:40280730L,SuccessCount:5,TrackOutput:0b,UpdateLastExecution:1b,auto:1b,conditionMet:1b,powered:0b}

setblock -49 2 -20 minecraft:repeating_command_block[conditional=false,facing=south]{Command:"execute if entity @e[tag=048-Bullet] as @e[tag=048-Bullet] at @s run function project-c:jobaction/048/skill/0/2",CustomName:'{"text":"@"}',LastExecution:40279514L,SuccessCount:21,TrackOutput:0b,UpdateLastExecution:1b,auto:0b,conditionMet:1b,powered:0b}
setblock -49 2 -19 minecraft:chain_command_block[conditional=false,facing=south]{Command:"execute unless entity @e[tag=048-Bullet] run data merge block ~ ~ ~-1 {auto:0b}",CustomName:'{"text":"@"}',LastExecution:40279514L,SuccessCount:1,TrackOutput:0b,UpdateLastExecution:1b,auto:1b,conditionMet:1b,powered:0b}

setblock -45 2 -20 minecraft:repeating_command_block[conditional=false,facing=south]{Command:"execute if entity @e[tag=048_eternal,limit=1] as @e[tag=048_eternal] at @s run function project-c:jobaction/048/skill/3/2",CustomName:'{"text":"@"}',LastExecution:40279530L,SuccessCount:70,TrackOutput:0b,UpdateLastExecution:1b,auto:0b,conditionMet:1b,powered:0b}
setblock -45 2 -19 minecraft:chain_command_block[conditional=false,facing=up]{Command:"execute unless entity @e[tag=048_eternal,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",CustomName:'{"text":"@"}',LastExecution:40279530L,SuccessCount:1,TrackOutput:0b,UpdateLastExecution:1b,auto:1b,conditionMet:1b,powered:0b}
