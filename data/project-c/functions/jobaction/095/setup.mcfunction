#職看板
give @p oak_sign{display:{Name:'"095-ライダー"'},BlockEntityTag:{Text1:'{"text":"*********-95-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 95"}}',Text2:'{"text":"【ライダー】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"ライダー\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群
#drop処理用
setblock -57 27 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -57 27 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=95,drop=1..}] run function project-c:jobaction/095/replaceitem/0",TrackOutput:0b} destroy
setblock -70 17 -104 minecraft:chain_command_block[facing=north,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=95,drop=1..}] run data merge block -57 27 -122 {auto:1b}",TrackOutput:0b} destroy
#スキル系処理用
setblock 33 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=95}] at @s run function project-c:jobaction/095/main",TrackOutput:0b} destroy
setblock 35 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=095trident,limit=1] as @e[tag=095trident] at @s run function project-c:jobaction/095/skill/1/3",TrackOutput:0b} destroy
setblock 35 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=095trident,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 37 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=095-2AEC,limit=1] as @e[tag=095-2AEC] at @s run function project-c:jobaction/095/skill/2/1",TrackOutput:0b} destroy
setblock 37 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=095-2AEC,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 39 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=095-3,limit=1] run function project-c:jobaction/095/skill/3/1",TrackOutput:0b} destroy
setblock 39 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=095-3,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 33 2 90 minecraft:obsidian
setblock 33 2 91 minecraft:stone
