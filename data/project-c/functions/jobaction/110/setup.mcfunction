#職看板
give @p oak_sign{display:{Name:'"110-魔導の箱庭"'},BlockEntityTag:{Text1:'{"text":"*********-110-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 110"}}',Text2:'{"text":"【魔導の箱庭】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"魔導の箱庭\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}
scoreboard players set #1000 counter 1000

#mainコマブロ
setblock -54 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=110}] at @s run function project-c:jobaction/110/main",TrackOutput:0b} destroy

#スキルコマブロ
setblock -54 61 -61 minecraft:obsidian
setblock -54 61 -60 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110_parry_stand,limit=1] as @e[tag=110_parry_stand] run function project-c:jobaction/110/weapons/2/tick",TrackOutput:0b} destroy
setblock -54 61 -59 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110_parry_stand,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy
