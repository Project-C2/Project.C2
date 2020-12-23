##シュルカーボックス設置

execute unless block 0 0 0 shulker_box run setblock 0 0 0 shulker_box


##スコアボード関連
scoreboard objectives add 108-AttackFlag1 custom:minecraft.damage_dealt
scoreboard objectives add 108-AttackFlag2 custom:minecraft.damage_absorbed
scoreboard objectives add 108-AttackFlag3 custom:minecraft.damage_dealt_resisted
scoreboard objectives add 108-MeleeDamage dummy
scoreboard objectives add 108-Confuse dummy
scoreboard objectives add 108-ConfuseMod dummy
scoreboard players set #360 counter 360
scoreboard players set #8 counter 8


##コマンドブロック設置
##コマブロの座標はあとでワールドデータを確認してから変える

##ドロップ検知用
setblock -55 25 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -55 25 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=108,drop=1..}] run function project-c:jobaction/108/replaceitem/0",TrackOutput:0b} destroy
setblock -70 17 -112 minecraft:chain_command_block[facing=north,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=108,drop=1..}] run data merge block -55 25 -122 {auto:1b}",TrackOutput:0b} destroy

##スキル系処理用
setblock 129 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @p[scores={jobNumber=108,drop=1..}] as @e[scores={jobNumber=108}] at @s run function project-c:jobaction/108/main",TrackOutput:0b} destroy