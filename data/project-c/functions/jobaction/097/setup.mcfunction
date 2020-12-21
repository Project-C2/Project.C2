#職看板
give @p oak_sign{display:{Name:'"097-蒼星の射手"'},BlockEntityTag:{Text1:'{"text":"*********-97-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 97"}}',Text2:'{"text":"【蒼星の射手】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"蒼星の射手\\",\\"color\\":\\"#4444ff\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群
#drop処理用
setblock -57 29 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -57 29 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=97,drop=1..}] run function project-c:jobaction/097/replaceitem/0",TrackOutput:0b} destroy
setblock -70 17 -106 minecraft:chain_command_block[facing=north,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=97,drop=1..}] run data merge block -57 29 -122 {auto:1b}",TrackOutput:0b} destroy
#スキル系処理用
setblock 57 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=97}] at @s run function project-c:jobaction/097/main",TrackOutput:0b} destroy
setblock 57 2 90 minecraft:obsidian
setblock 57 2 91 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=097razer,limit=1] as @e[tag=097razer] at @s run function project-c:jobaction/097/skill/0/1",TrackOutput:0b} destroy
setblock 57 2 92 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=097razer,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 59 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"function project-c:jobaction/097/skill/1/3",TrackOutput:0b} destroy
setblock 59 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=097sagittaire,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 61 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=097bluestar,limit=1] as @e[tag=097bluestar] at @s run function project-c:jobaction/097/skill/2/3",TrackOutput:0b} destroy
setblock 61 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=097bluestar,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 61 2 91 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=097bluestar_explosion,limit=1] as @e[tag=097bluestar_explosion] at @s run function project-c:jobaction/097/skill/2/5",TrackOutput:0b} destroy
setblock 61 2 92 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=097bluestar_explosion,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 63 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=097_3arrow,limit=1] as @e[tag=097_3arrow] at @s run function project-c:jobaction/097/skill/3/1",TrackOutput:0b} destroy
setblock 63 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=097_3arrow,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

