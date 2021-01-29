#職看板
give @p oak_sign{display:{Name:'"121-Custodian"'},BlockEntityTag:{Text1:'{"text":"*********-121-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 121"}}',Text2:'{"text":"【Custodian】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"Custodian\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#スキル系処理用

setblock 78 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=121}] at @s run function project-c:jobaction/121/main",TrackOutput:0b} destroy

setblock 80 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=121-S1-AEC,limit=1] as @e[tag=121-S1-AEC] at @s run function project-c:jobaction/121/skill/1/1",TrackOutput:0b} destroy
setblock 80 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=121-S1-AEC,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 82 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=121-first,limit=1] as @e[tag=121-first] at @s run function project-c:jobaction/121/skill/2/2",TrackOutput:0b} destroy
setblock 82 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=121-first,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 84 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=121fire,limit=1] as @e[tag=121fire] at @s run function project-c:jobaction/121/skill/3/1",TrackOutput:0b} destroy
setblock 84 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=121fire,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
