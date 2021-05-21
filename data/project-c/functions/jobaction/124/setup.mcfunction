#職看板
give @p oak_sign{display:{Name:'"124-吟遊詩人"'},BlockEntityTag:{Text1:'{"text":"*********-124-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 124"}}',Text2:'{"text":"【吟遊詩人】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"吟遊詩人\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#スキル系処理用
setblock 114 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=124}] at @s run function project-c:jobaction/124/main",TrackOutput:0b} destroy
setblock 116 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=124windsong1,limit=1] as @e[tag=124windsong1] at @s run function project-c:jobaction/124/skill/1/1",TrackOutput:0b} destroy
setblock 116 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=124windsong1,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 116 61 -60 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=124windsong2,limit=1] as @e[tag=124windsong2] at @s run function project-c:jobaction/124/skill/1/3",TrackOutput:0b} destroy
setblock 116 61 -59 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=124windsong2,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 118 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=124storm,limit=1] as @e[tag=124storm] at @s run function project-c:jobaction/124/skill/2/1",TrackOutput:0b} destroy
setblock 118 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=124storm,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

