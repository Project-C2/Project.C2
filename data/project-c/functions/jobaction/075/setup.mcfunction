#職看板
give @p oak_sign{display:{Name:'"075-滅霊"'},BlockEntityTag:{Text1:'{"text":"*********-75-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 75"}}',Text2:'{"text":"【滅霊】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"滅霊\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}


#動作必須コマブロ群
#drop処理用
setblock -61 27 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -61 27 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=75,drop=1..}] run function project-c:jobaction/075/replaceitem/0",TrackOutput:0b} destroy
setblock -71 17 -115 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=75,drop=1..}] run data merge block -61 27 -122 {auto:1b}",TrackOutput:0b} destroy
#スキル系処理用
setblock 45 2 31 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=75}] at @s run function project-c:jobaction/075/main",TrackOutput:0b} destroy
setblock 49 2 31 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=075crash,limit=1] as @e[tag=075crash] at @s run function project-c:jobaction/075/skill/2/1",TrackOutput:0b} destroy
setblock 49 2 32 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=075crash,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
