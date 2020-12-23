#職看板
give @p oak_sign{display:{Name:"\"067-軽戦士\""},BlockEntityTag:{Text1:"{\"text\":\"*********-67-*********\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s jobNumber 67\"}}",Text2:"{\"text\":\"【軽戦士】\",\"bold\":true,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tag @s add JobChanged\"}}",Text3:"{\"text\":\"右クリックで転職!!\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tellraw @s [\\\"\\\",{\\\"text\\\":\\\"[システム]\\\",\\\"color\\\":\\\"white\\\"},{\\\"text\\\":\\\"軽戦士\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":true,\\\"underlined\\\":true},{\\\"text\\\":\\\" に転職しました。\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":false,\\\"underlined\\\":false}]\"}}",Text4:"{\"text\":\"**********************\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data merge block -75 49 -123 {auto:1b}\"}}"},display:{Name:"Custom Sign"}}

#動作必須コマブロ群
#drop処理用
setblock -63 29 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -63 29 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=67,drop=1..}] run function project-c:jobaction/067/replaceitem/0",TrackOutput:0b} destroy
setblock -72 17 -116 minecraft:chain_command_block[facing=north,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=67,drop=1..}] run data merge block -63 29 -122 {auto:1b}",TrackOutput:0b} destroy
#スキル系処理用
setblock -51 2 31 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=67}] at @s run function project-c:jobaction/067/main",TrackOutput:0b} destroy
#setblock -49 2 31 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=067-des] as @e[tag=067-1Bow] at @s run function project-c:jobaction/067/skill/1/1",TrackOutput:0b} destroy
setblock -47 2 31 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"function project-c:jobaction/067/skill/2/1",TrackOutput:0b} destroy
setblock -47 2 32 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=067-2,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -45 2 31 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=067Arrow,limit=1] as @e[tag=067Arrow] at @s run function project-c:jobaction/067/skill/3/1",TrackOutput:0b} destroy
setblock -45 2 32 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=067Arrow,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
