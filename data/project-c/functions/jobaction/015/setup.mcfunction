# 職看板
give @p oak_sign{BlockEntityTag:{Text1:'{"text":"*********-15-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 15"}}',Text2:'{"text":"【呪いのデコイ人形】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"呪いのデコイ人形\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

# コマブロ設置
setblock 57 2 -122 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=15}] at @s run function project-c:jobaction/015/main",TrackOutput:0b} destroy


setblock 63 2 -122 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[scores={jobNumber=15},limit=1] as @e[scores={jobNumber=15,counter=1..}] at @s run function project-c:jobaction/015/skill/3/1",TrackOutput:0b} destroy