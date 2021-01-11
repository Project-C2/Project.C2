#職看板
give @p oak_sign{display:{Name:'"118-Resonance"'},BlockEntityTag:{Text1:'{"text":"*********-118-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 118"}}',Text2:'{"text":"【Resonance】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"Resonance\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#スキル系処理用
setblock 42 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=118}] at @s run function project-c:jobaction/118/main",TrackOutput:0b} destroy

setblock 20 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"function project-c:jobaction/116/skill/1/1",TrackOutput:0b} destroy
setblock 20 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=116impact,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock 24 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"function project-c:jobaction/116/skill/3/1",TrackOutput:0b} destroy
setblock 24 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=116grapple,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy


