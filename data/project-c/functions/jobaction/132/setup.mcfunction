#職看板
give @p oak_sign{display:{Name:'"132-岩拳の守護者"'},BlockEntityTag:{Text1:'{"text":"*********-75-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 132"}}',Text2:'{"text":"【岩拳の守護者】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"岩拳の守護者\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}


#動作必須コマブロ群
#drop処理用
setblock -54 61 -11 minecraft:repeating_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:35144717L,SuccessCount:4,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute as @a[scores={jobNumber=132}] at @s run function project-c:jobaction/132/main",TrackOutput:0b} destroy
#スキル系処理用
setblock -50 61 -11 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:35143022L,SuccessCount:27,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=132-Storm,limit=1] as @e[tag=132-Storm] at @s run function project-c:jobaction/132/skill/2/1",TrackOutput:0b} destroy
setblock -50 61 -10 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:35143022L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=132-Storm,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock -50 64 -11 minecraft:repeating_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:35144944L,SuccessCount:10,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=132-Buffed,limit=1] as @a[tag=132-Buffed] at @s run function project-c:jobaction/132/skill/2/2",TrackOutput:0b} destroy
setblock -50 64 -10 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:35144993L,SuccessCount:0,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=132-Buffed,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock -48 61 -11 minecraft:repeating_command_block[conditional=false,facing=south]{auto:0b,powered:0b,LastExecution:35141080L,SuccessCount:5,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute if entity @e[tag=132fire,limit=1] as @e[tag=132fire] at @s run function project-c:jobaction/132/skill/3/2",TrackOutput:0b} destroy
setblock -48 61 -10 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,powered:0b,LastExecution:35141080L,SuccessCount:1,UpdateLastExecution:1b,conditionMet:1b,CustomName:'{"text":"@"}',Command:"execute unless entity @e[tag=132fire,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy