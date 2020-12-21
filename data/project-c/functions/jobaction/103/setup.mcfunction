#職看板
give @p oak_sign{display:{Name:'"103-メテオキャスター"'},BlockEntityTag:{Text1:'{"text":"*********-103-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 103"}}',Text2:'{"text":"【メテオキャスタ】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"メテオキャスター\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群
#drop処理用
setblock -55 25 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -55 25 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=103,drop=1..}] run function project-c:jobaction/103/replaceitem/0",TrackOutput:0b} destroy
setblock -70 17 -112 minecraft:chain_command_block[facing=north,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=103,drop=1..}] run data merge block -55 25 -122 {auto:1b}",TrackOutput:0b} destroy
#スキル系処理用
setblock 129 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=103}] at @s run function project-c:jobaction/103/main",TrackOutput:0b} destroy
setblock 131 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=103fireball1,limit=1] as @e[tag=103fireball1] at @s run function project-c:jobaction/103/skill/1/1",TrackOutput:0b} destroy
setblock 131 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=103fireball1,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 133 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=103fireball2,limit=1] as @e[tag=103fireball2] at @s run function project-c:jobaction/103/skill/2/3",TrackOutput:0b} destroy
setblock 133 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=103fireball2,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 133 2 91 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=103fireball4,limit=1] as @e[tag=103fireball4] at @s run function project-c:jobaction/103/skill/2/6",TrackOutput:0b} destroy
setblock 133 2 92 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=103fireball4,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

