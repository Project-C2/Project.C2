#職看板
give @p oak_sign{display:{Name:'"119-Sakura"'},BlockEntityTag:{Text1:'{"text":"*********-119-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 119"}}',Text2:'{"text":"【Sakura】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"Sakura\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#スキル系処理用
setblock 54 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=119}] at @s run function project-c:jobaction/119/main",TrackOutput:0b} destroy

setblock 56 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[tag=119flower] at @s run function project-c:jobaction/119/skill/1/1",TrackOutput:0b} destroy
setblock 56 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=119flower,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 58 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[tag=119_2] at @s run function project-c:jobaction/119/skill/2/1",TrackOutput:0b} destroy
setblock 58 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=119_2,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

