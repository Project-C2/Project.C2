##シュルカーボックス設置
give @s oak_sign{BlockEntityTag:{Text1:"{\"text\":\"*********-108-*********\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @s jobNumber 108\"}}",Text2:"{\"text\":\"【CHEL】\",\"bold\":true,\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tag @s add JobChanged\"}}",Text3:"{\"text\":\"右クリックで転職!!\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tellraw @s [\\\"\\\",{\\\"text\\\":\\\"[システム]\\\",\\\"color\\\":\\\"white\\\"},{\\\"text\\\":\\\"CHEL\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":true,\\\"underlined\\\":true},{\\\"text\\\":\\\" に転職しました。\\\",\\\"color\\\":\\\"white\\\",\\\"bold\\\":false,\\\"underlined\\\":false}]\"}}",Text4:"{\"text\":\"**********************\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/data merge block -75 49 -123 {auto:1b}\"}}"},display:{Name:"Custom Sign"}}
execute unless block 0 0 0 shulker_box run setblock 0 0 0 shulker_box


##スコアボード関連
scoreboard objectives add 108-Confuse dummy
scoreboard players set #360 counter 360
scoreboard players set #8 counter 8


##コマンドブロック設置

##ドロップ検知用
#setblock -55 31 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
#setblock -55 31 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=108,drop=1..}] run function project-c:jobaction/108/replaceitem/0",TrackOutput:0b} destroy
#setblock -70 17 -117 minecraft:chain_command_block[facing=north,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=108,drop=1..}] run data merge block -55 31 -122 {auto:1b}",TrackOutput:0b} destroy

##スキル系処理用
setblock -78 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @p[scores={jobNumber=108}] as @e[scores={jobNumber=108}] at @s run function project-c:jobaction/108/main",TrackOutput:0b,auto:1b} destroy