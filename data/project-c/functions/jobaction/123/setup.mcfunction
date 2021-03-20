#職看板
give @p oak_sign{display:{Name:'"123-羊飼い"'},BlockEntityTag:{Text1:'{"text":"*********-123-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 123"}}',Text2:'{"text":"【羊飼い】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"羊飼い\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#スキル系処理用
setblock 102 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=123}] at @s run function project-c:jobaction/123/main",TrackOutput:0b} destroy
setblock 104 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=123sheep,limit=1] as @e[tag=123sheep] at @s run function project-c:jobaction/123/skill/1/1",TrackOutput:0b} destroy
setblock 104 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=123sheep,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 106 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=123gamingStand,limit=1] as @e[tag=123gamingStand] at @s run function project-c:jobaction/123/skill/2/1",TrackOutput:0b} destroy
setblock 106 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=123gamingStand,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock 108 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=123crossFire,limit=1] as @e[tag=123crossFire] at @s run function project-c:jobaction/123/skill/3/1",TrackOutput:0b} destroy
setblock 108 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=123crossFire,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

