#職看板
give @p oak_sign{display:{Name:"\"054-シルフ\""},BlockEntityTag:{Text1:"{\"text\":\"*********-54-*********\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s jobNumber 54\"}}",Text2:"{\"text\":\"【シルフ】\",\"bold\":true,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tag @s add JobChanged\"}}",Text3:"{\"text\":\"右クリックで転職!!\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tellraw @s [\\\"\\\",{\\\"text\\\":\\\"[システム]\\\",\\\"color\\\":\\\"white\\\"},{\\\"text\\\":\\\"シルフ\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":true,\\\"underlined\\\":true},{\\\"text\\\":\\\" に転職しました。\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":false,\\\"underlined\\\":false}]\"}}",Text4:"{\"text\":\"**********************\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data merge block -75 49 -123 {auto:1b}\"}}"},display:{Name:"Custom Sign"}}

#動作必須コマブロ群
#drop処理用
setblock -65 26 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -65 26 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=54,drop=1..}] run function project-c:jobaction/054/replaceitem/0",TrackOutput:0b} destroy
setblock -72 17 -103 minecraft:chain_command_block[facing=north,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=54,drop=1..}] run data merge block -65 26 -122 {auto:1b}",TrackOutput:0b} destroy
#スキル系処理用
setblock 45 2 -20 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=54}] at @s run function project-c:jobaction/054/main",TrackOutput:0b} destroy
setblock 45 2 -19 minecraft:dried_kelp_block
setblock 45 2 -18 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=054blaster,limit=1] as @e[tag=054blaster] at @s run function project-c:jobaction/054/skill/0/3",TrackOutput:0b} destroy
setblock 45 2 -17 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=054blaster,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 47 2 -20 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=054tornado,limit=1] as @e[tag=054tornado] at @s run function project-c:jobaction/054/skill/1/1",TrackOutput:0b} destroy
setblock 47 2 -19 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=054tornado,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 49 2 -20 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"function project-c:jobaction/054/skill/2/1",TrackOutput:0b} destroy
setblock 49 2 -19 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=054-2stand,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
