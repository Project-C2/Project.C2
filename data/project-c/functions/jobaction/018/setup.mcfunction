#職看板
give @p oak_sign{display:{Name:'"018-農民"'},BlockEntityTag:{Text1:'{"text":"*********-18-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 18"}}',Text2:'{"text":"【農民】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"農民\\",\\"color\\":\\"#4444ff\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群
#drop処理用
fill -73 30 -119 -73 30 -121 air
setblock -73 30 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=18,drop=1..}] run function project-c:jobaction/018/replaceitem/0",TrackOutput:0b} destroy
fill 99 8 -122 93 2 -82 air
#スキル系処理用
setblock 93 2 -122 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=18}] at @s run function project-c:jobaction/018/main",TrackOutput:0b} destroy
setblock 95 2 -122 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=018-chicken,limit=1] as @e[tag=018-chicken] at @s run function project-c:jobaction/018/skill/1/1",TrackOutput:0b} destroy
setblock 95 2 -121 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=018-chicken,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 99 2 -122 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=018-seed,limit=1] as @e[tag=018-seed] at @s run function project-c:jobaction/018/skill/3/1",TrackOutput:0b} destroy
setblock 99 2 -121 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=018-seed,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 99 2 -120 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"function project-c:jobaction/018/skill/3/3",TrackOutput:0b} destroy

