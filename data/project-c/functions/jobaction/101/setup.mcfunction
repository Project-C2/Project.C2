#職看板
give @p oak_sign{display:{Name:'"101-Sniper"'},BlockEntityTag:{Text1:'{"text":"*********-101-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 101"}}',Text2:'{"text":"【Sniper】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"Sniper\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群

#スキル系処理用
setblock 105 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=101}] at @s run function project-c:jobaction/101/main",TrackOutput:0b} destroy
setblock 109 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[tag=101back] at @s run function project-c:jobaction/101/skill/2/1",TrackOutput:0b} destroy
setblock 109 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=101back] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 105 5 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[tag=101spotter] at @s run function project-c:jobaction/101/skill/3/1",TrackOutput:0b} destroy
setblock 105 5 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=101spotter] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
