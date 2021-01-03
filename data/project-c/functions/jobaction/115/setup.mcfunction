#職看板
give @p oak_sign{display:{Name:'"115-狩猟者"'},BlockEntityTag:{Text1:'{"text":"*********-115-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 115"}}',Text2:'{"text":"【狩猟者】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"狩猟者\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}
scoreboard players set #6 counter 6

#スキル系処理用
setblock 6 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=115}] at @s run function project-c:jobaction/115/main",TrackOutput:0b} destroy

setblock 8 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=115shotaxe,limit=1] as @e[tag=115shotaxe] at @s run function project-c:jobaction/115/skill/1/1",TrackOutput:0b} destroy
setblock 8 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=115shotaxe,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 12 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=115hoe,limit=1] as @e[tag=115hoe] at @s run function project-c:jobaction/115/skill/3/1",TrackOutput:0b} destroy
setblock 12 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=115hoe,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

