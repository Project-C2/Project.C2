#職看板
give @p oak_sign{display:{Name:'"111-Bandit"'},BlockEntityTag:{Text1:'{"text":"*********-111-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 111"}}',Text2:'{"text":"【Bandit】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"Bandit\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群

#スキル系処理用
setblock -42 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=111}] at @s run function project-c:jobaction/111/main",TrackOutput:0b} destroy

setblock -42 64 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=111fire,limit=1] as @e[tag=111fire] at @s run function project-c:jobaction/111/skill/0/1",TrackOutput:0b} destroy
setblock -42 64 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=111fire,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock -40 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=111-dynamite,limit=1] as @e[tag=111-dynamite] at @s run function project-c:jobaction/111/skill/1/1",TrackOutput:0b} destroy
setblock -40 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=111-dynamite,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
