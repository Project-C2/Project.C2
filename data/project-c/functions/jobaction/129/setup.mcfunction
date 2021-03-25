#職看板
give @p oak_sign{display:{Name:'"118-Resonance"'},BlockEntityTag:{Text1:'{"text":"*********-129-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 129"}}',Text2:'{"text":"【Revenant】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"Revenant\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#スキル系処理用
setblock -90 61 -11 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=129}] at @s run function project-c:jobaction/129/main",TrackOutput:0b} destroy

setblock -88 61 -11 minecraft:repeating_command_block[conditional=false,facing=south]{Command:"execute if entity @e[tag=129-silenth,limit=1] as @e[tag=129-silenth] at @s positioned ~ ~0.3 ~ run function project-c:jobaction/129/skill/1/1",TrackOutput:0b} destroy
setblock -88 61 -10 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,Command:"execute unless entity @e[tag=129-silenth,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock -86 61 -11 minecraft:repeating_command_block[conditional=false,facing=south]{Command:"execute if entity @e[tag=129-totem,limit=1] as @e[tag=129-totem] at @s run function project-c:jobaction/126/skill/1/1",TrackOutput:0b} destroy
setblock -86 61 -10 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,Command:"execute unless entity @e[tag=129-totem,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy