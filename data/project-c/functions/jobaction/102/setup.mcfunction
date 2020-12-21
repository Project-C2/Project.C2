#職看板
give @p oak_sign{display:{Name:'"102-スケルポン"'},BlockEntityTag:{Text1:'{"text":"*********-102-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 102"}}',Text2:'{"text":"【スケルポン】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"スケルポン\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群
#drop処理用
setblock -55 24 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -55 24 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=102,drop=1..}] run function project-c:jobaction/102/replaceitem/0",TrackOutput:0b} destroy
setblock -70 17 -111 minecraft:chain_command_block[facing=north,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=102,drop=1..}] run data merge block -55 24 -122 {auto:1b}",TrackOutput:0b} destroy
#スキル系処理用
setblock 117 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=102}] at @s run function project-c:jobaction/102/main",TrackOutput:0b} destroy
setblock 119 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=102chest,limit=1] as @e[tag=102chest] at @s run function project-c:jobaction/102/skill/1/1",TrackOutput:0b} destroy
setblock 119 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=102chest,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 119 2 91 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=102skeleton,limit=1] as @e[tag=102skeleton] at @s run function project-c:jobaction/102/skill/1/3",TrackOutput:0b} destroy
setblock 119 2 92 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=102skeleton,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

