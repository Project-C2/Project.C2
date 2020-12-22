#職看板
give @p oak_sign{display:{Name:'"106-ジョブマスター"'},BlockEntityTag:{Text1:'{"text":"*********-106-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 106"}}',Text2:'{"text":"【ジョブマスター】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"ジョブマスター\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群
execute unless block 0 0 0 shulker_box run setblock 0 0 0 shulker_box
scoreboard objectives add 106-tab dummy
scoreboard objectives add 106-skill-page dummy
scoreboard objectives add drop2 minecraft.custom:minecraft.drop
scoreboard objectives add shield minecraft.custom:minecraft.damage_blocked_by_shield


#drop処理用
setblock -55 28 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -55 28 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=106,drop=1..}] run scoreboard players reset @s drop",TrackOutput:0b} destroy
setblock -70 17 -115 minecraft:chain_command_block[facing=north,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=106,drop=1..}] run data merge block -55 28 -122 {auto:1b}",TrackOutput:0b} destroy
#スキル系処理用
setblock -102 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[scores={jobNumber=106},limit=1] as @e[scores={jobNumber=106}] at @s run function project-c:jobaction/106/main",TrackOutput:0b} destroy
setblock -100 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=103fireball1,limit=1] as @e[tag=103fireball1] at @s run function project-c:jobaction/106/skill/1/1",TrackOutput:0b} destroy
setblock -100 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=103fireball1,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -98 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=103fireball2,limit=1] as @e[tag=103fireball2] at @s run function project-c:jobaction/106/skill/2/3",TrackOutput:0b} destroy
setblock -98 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=103fireball2,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -96 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=103fireball4,limit=1] as @e[tag=103fireball4] at @s run function project-c:jobaction/106/skill/2/6",TrackOutput:0b} destroy
setblock -96 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=103fireball4,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

