#職看板
give @p oak_sign{display:{Name:"\"074-サラマンダー\""},BlockEntityTag:{Text1:"{\"text\":\"*********-74-*********\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s jobNumber 74\"}}",Text2:"{\"text\":\"【サラマンダー】\",\"bold\":true,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tag @s add JobChanged\"}}",Text3:"{\"text\":\"右クリックで転職!!\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tellraw @s [\\\"\\\",{\\\"text\\\":\\\"[システム]\\\",\\\"color\\\":\\\"white\\\"},{\\\"text\\\":\\\"サラマンダー\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":true,\\\"underlined\\\":true},{\\\"text\\\":\\\" に転職しました。\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":false,\\\"underlined\\\":false}]\"}}",Text4:"{\"text\":\"**********************\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data merge block -75 49 -123 {auto:1b}\"}}"}}

#動作必須コマブロ群
#drop処理用
setblock -61 26 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -61 26 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=74,drop=1..}] run function project-c:jobaction/074/replaceitem/0",TrackOutput:0b} destroy
setblock -71 17 -116 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=74,drop=1..}] run data merge block -61 26 -122 {auto:1b}",TrackOutput:0b} destroy
#スキル系処理用
setblock 33 2 31 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=74}] at @s run function project-c:jobaction/074/main",TrackOutput:0b} destroy
setblock 35 2 31 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=074fire,limit=1] as @e[tag=074fire] at @s run function project-c:jobaction/074/skill/1/1",TrackOutput:0b} destroy
setblock 35 2 32 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=074fire,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 35 2 33 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=074-1stand,limit=1] as @e[tag=074-1stand] at @s run function project-c:jobaction/074/skill/1/2",TrackOutput:0b} destroy
setblock 35 2 34 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=074-1stand,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 37 2 31 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=074lavajav,limit=1] as @e[tag=074lavajav] at @s run function project-c:jobaction/074/skill/2/1",TrackOutput:0b} destroy
setblock 37 2 32 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=074lavajav,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 37 2 33 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=074lava_blocking,limit=1] run function project-c:jobaction/074/skill/2/3",TrackOutput:0b} destroy
setblock 37 2 34 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=074lava_blocking,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
