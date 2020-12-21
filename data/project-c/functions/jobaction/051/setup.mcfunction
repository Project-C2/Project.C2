#職看板
give @p oak_sign{display:{Name:'"051-踏氷渡海真君"'},BlockEntityTag:{Text1:'{"text":"*********-51-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 51"}}',Text2:'{"text":"【踏氷渡海真君】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"踏氷渡海真君\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}
#動作必須コマブロ群
#drop処理用
setblock -65 23 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -65 23 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=51,drop=1..}] run function project-c:jobaction/051/replaceitem/0",TrackOutput:0b} destroy
#スキル系処理用
setblock -15 2 -20 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=51}] at @s run function project-c:jobaction/051/main",TrackOutput:0b} destroy
setblock -15 2 -19 minecraft:obsidian
setblock -15 2 -18 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @a[tag=051p,limit=1] as @e[tag=051p] unless score @s jobNumber matches 51 run function project-c:jobaction/051/jobchange",TrackOutput:0b} destroy
setblock -15 2 -17 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @a[tag=051p,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -13 2 -20 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=051_koore,limit=1] as @e[tag=051_koore] at @s run function project-c:jobaction/051/skill/1/1",TrackOutput:0b} destroy
setblock -13 2 -19 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=051_koore,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -11 2 -20 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=051_eternal,limit=1] as @e[tag=051_eternal] at @s run function project-c:jobaction/051/skill/2/2",TrackOutput:0b} destroy
setblock -11 2 -19 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=051_eternal,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
