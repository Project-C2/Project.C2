#職看板
give @p oak_sign{display:{Name:'"117-盆の遊園地"'},BlockEntityTag:{Text1:'{"text":"*********-117-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 117"}}',Text2:'{"text":"【盆の遊園地】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"盆の遊園地\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#スキル系処理用
setblock 30 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=117}] at @s run function project-c:jobaction/117/main",TrackOutput:0b} destroy

setblock 32 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[tag=117_1] at @s run function project-c:jobaction/117/skill/1/1",TrackOutput:0b} destroy
setblock 32 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=117_1,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 32 61 -60 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[tag=117zombie_inGround] at @s run function project-c:jobaction/117/skill/1/4",TrackOutput:0b} destroy
setblock 32 61 -59 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=117zombie_inGround,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 34 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[tag=117_2o] at @s run function project-c:jobaction/117/skill/2/1",TrackOutput:0b} destroy
setblock 34 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=117_2o,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 34 61 -60 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[tag=117_2rush] at @s run function project-c:jobaction/117/skill/2/3",TrackOutput:0b} destroy
setblock 34 61 -59 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=117_2rush,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 36 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[tag=117_3_1] at @s run function project-c:jobaction/117/skill/3/1_1",TrackOutput:0b} destroy
setblock 36 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=117_3_1,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 36 61 -60 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[tag=117_3_2] at @s run function project-c:jobaction/117/skill/3/1_2",TrackOutput:0b} destroy
setblock 36 61 -59 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=117_3_2,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 36 61 -58 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[tag=117_3buff] at @s run function project-c:jobaction/117/skill/3/tick_p",TrackOutput:0b} destroy
setblock 36 61 -57 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @a[tag=117_3buff,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

