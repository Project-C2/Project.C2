#職看板
give @p oak_sign{display:{Name:'"092-ノーム"'},BlockEntityTag:{Text1:'{"text":"*********-92-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 92"}}',Text2:'{"text":"【ノーム】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"ノーム\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群
#drop処理用
setblock -57 24 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -57 24 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=92,drop=1..}] run function project-c:jobaction/092/replaceitem/0",TrackOutput:0b} destroy
setblock -70 17 -101 minecraft:chain_command_block[facing=north,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=92,drop=1..}] run data merge block -57 24 -122 {auto:1b}",TrackOutput:0b} destroy
#スキル系処理用
setblock -3 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=92}] at @s run function project-c:jobaction/092/main",TrackOutput:0b} destroy
setblock -1 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=092-kanbotsu-ground,limit=1] as @e[tag=092-kanbotsu-ground] at @s run function project-c:jobaction/092/skill/1/shulker_tick",TrackOutput:0b} destroy
setblock -1 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=092-kanbotsu-ground,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 1 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=092towerstand,limit=1] as @e[tag=092towerstand] at @s run function project-c:jobaction/092/skill/2/1",TrackOutput:0b} destroy
setblock 1 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=092towerstand,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 1 2 91 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=092shulker_launcher,limit=1] as @e[tag=092shulker_launcher] at @s run function project-c:jobaction/092/skill/2/5",TrackOutput:0b} destroy
setblock 1 2 92 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=092shulker_launcher,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 1 2 93 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=092razer,limit=1] as @e[tag=092razer] at @s run function project-c:jobaction/092/skill/2/7",TrackOutput:0b} destroy
setblock 1 2 94 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=092razer,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
