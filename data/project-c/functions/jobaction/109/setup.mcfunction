#職看板
give @p oak_sign{display:{Name:'"109-黒の剣士"'},BlockEntityTag:{Text1:'{"text":"*********-109-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 109"}}',Text2:'{"text":"【黒の剣士】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"黒の剣士\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群
#drop処理用
#setblock -55 31 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
#setblock -55 31 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=109,drop=1..}] run function project-c:jobaction/109/replaceitem/0",TrackOutput:0b} destroy
#setblock -70 17 -118 minecraft:chain_command_block[facing=north,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=109,drop=1..}] run data merge block -55 31 -122 {auto:1b}",TrackOutput:0b} destroy
#スキル系処理用
setblock -66 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=109}] at @s run function project-c:jobaction/109/main",TrackOutput:0b} destroy
setblock -64 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=109strike,limit=1] as @e[tag=109strike] at @s run function project-c:jobaction/109/skill/1/3",TrackOutput:0b} destroy
setblock -64 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=109strike,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

