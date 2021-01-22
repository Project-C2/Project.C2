#職看板
give @p oak_sign{display:{Name:'"016-ゆうしゃ"'},BlockEntityTag:{Text1:'{"text":"*********-16-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 16"}}',Text2:'{"text":"【ゆうしゃ】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"ゆうしゃ\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群
setblock 69 2 -122 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=16}] at @s run function project-c:jobaction/016/main",TrackOutput:0b} destroy


#スキル系処理用
setblock 71 2 -122 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=016-Mera1] as @e[tag=016-Mera1] at @s run function project-c:jobaction/016/skill/1/1-1",TrackOutput:0b} destroy

setblock 71 2 -121 minecraft:chain_command_block[facing=south,conditional=false]{Command:"execute unless entity @e[tag=016-Mera1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 71 5 -122 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=016-Mera2] as @e[tag=016-Mera2] at @s run function project-c:jobaction/016/skill/1/2-1",TrackOutput:0b} destroy

setblock 71 5 -121 minecraft:chain_command_block[facing=south,conditional=false]{Command:"execute unless entity @e[tag=016-Mera2] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 71 8 -122 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=016-Mera3] as @e[tag=016-Mera3] at @s run function project-c:jobaction/016/skill/1/3-1",TrackOutput:0b} destroy

setblock 71 8 -121 minecraft:chain_command_block[facing=south,conditional=false]{Command:"execute unless entity @e[tag=016-Mera3] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 73 2 -122 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=016fire] as @e[tag=016fire] at @s run function project-c:jobaction/016/skill/2/1-1",TrackOutput:0b} destroy

setblock 73 2 -121 minecraft:chain_command_block[facing=south,conditional=false]{Command:"execute unless entity @e[tag=016fire] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 73 5 -122 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=016-Dein2] as @e[tag=016-Dein2] at @s run function project-c:jobaction/016/skill/2/2-1",TrackOutput:0b} destroy

setblock 73 5 -121 minecraft:chain_command_block[facing=south,conditional=false]{Command:"execute unless entity @e[tag=016-Dein2] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 73 8 -122 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=016-Dein3] as @e[tag=016-Dein3] at @s run function project-c:jobaction/016/skill/2/3-1",TrackOutput:0b} destroy

setblock 73 8 -121 minecraft:chain_command_block[facing=south,conditional=false]{Command:"execute unless entity @e[tag=016-Dein3] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 75 2 -122 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=016-Madante] as @e[tag=016-Madante] at @s run function project-c:jobaction/016/skill/3/1",TrackOutput:0b} destroy

setblock 75 2 -121 minecraft:chain_command_block[facing=south,conditional=false]{Command:"execute unless entity @e[tag=016-Madante] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy