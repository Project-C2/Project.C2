#職看板
give @p oak_sign{display:{Name:'"125-星追い"'},BlockEntityTag:{Text1:'{"text":"*********-125-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 125"}}',Text2:'{"text":"【星を追う者】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"星を追う者\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群

#スキル系処理用
setblock 126 61 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:33795605L,SuccessCount:3,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @a[scores={jobNumber=125}] at @s run function project-c:jobaction/125/main",TrackOutput:0b} destroy

setblock 126 64 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:33793465L,SuccessCount:0,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=125fire,limit=1] as @e[tag=125fire] at @s run function project-c:jobaction/125/skill/0/1",TrackOutput:0b} destroy

setblock 126 64 -61 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:33793465L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=125fire,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 126 67 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:33793491L,SuccessCount:5,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=125back,limit=1] as @e[tag=125back] at @s run function project-c:jobaction/125/skill/0/3",TrackOutput:0b} destroy

setblock 126 67 -61 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:33793491L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=125back,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 128 61 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:33793328L,SuccessCount:22,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=125-rspawn,limit=1] as @e[tag=125-rspawn] at @s run function project-c:jobaction/125/skill/1/2",TrackOutput:0b} destroy

setblock 128 61 -61 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:33793328L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=125-rspawn,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 128 64 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:33793364L,SuccessCount:10,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=125-rain,limit=1] as @e[tag=125-rain] at @s run function project-c:jobaction/125/skill/1/4",TrackOutput:0b} destroy

setblock 128 64 -61 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:33793364L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=125-rain,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 128 67 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:33793356L,SuccessCount:4,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=125-rrbeam,limit=1] as @e[tag=125-rrbeam] at @s run function project-c:jobaction/125/skill/1/5",TrackOutput:0b} destroy

setblock 128 67 -61 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:33793356L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=125-rrbeam,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 128 70 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:33793456L,SuccessCount:4,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=125-rrbullet,limit=1] as @e[tag=125-rrbullet] at @s run function project-c:jobaction/125/skill/1/6",TrackOutput:0b} destroy

setblock 128 70 -61 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:33793456L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=125-rrbullet,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 130 61 -62 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:33793382L,SuccessCount:0,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=125star,limit=1] as @e[tag=125star] at @s run function project-c:jobaction/125/skill/2/1",TrackOutput:0b} destroy

setblock 130 61 -61 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:33793382L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=125star,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy