#職看板
give @p oak_sign{display:{Name:'"093-ウンディーネ"'},BlockEntityTag:{Text1:'{"text":"*********-93-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 93"}}',Text2:'{"text":"【ウンディーネ】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"ウンディーネ\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群
#drop処理用
#setblock -57 25 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
#setblock -57 25 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=93,drop=1..}] run function project-c:jobaction/093/replaceitem/0",TrackOutput:0b} destroy
#setblock -70 17 -102 minecraft:chain_command_block[facing=north,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=93,drop=1..}] run data merge block -57 25 -122 {auto:1b}",TrackOutput:0b} destroy
#スキル系処理用
setblock 9 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=93}] at @s run function project-c:jobaction/093/main",TrackOutput:0b} destroy
setblock 9 2 91 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"function project-c:jobaction/093/skill/0/1",TrackOutput:0b} destroy
setblock 9 2 92 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=093aquabomb,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 11 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=093firstTrident,limit=1] as @e[tag=093firstTrident] at @s run function project-c:jobaction/093/skill/1/1",TrackOutput:0b} destroy
setblock 11 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=093firstTrident,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 13 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=093fishstand,limit=1] as @e[tag=093fishstand] at @s run function project-c:jobaction/093/skill/2/1",TrackOutput:0b} destroy
setblock 13 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=093fishstand,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 13 2 91 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=093fishstand2,limit=1] as @e[tag=093fishstand2] at @s run function project-c:jobaction/093/skill/2/2",TrackOutput:0b} destroy
setblock 13 2 92 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=093fishstand2,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 13 2 93 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"function project-c:jobaction/093/skill/2/4",TrackOutput:0b} destroy
setblock 13 2 94 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=093fish,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
