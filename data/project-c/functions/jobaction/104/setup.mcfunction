#職看板
give @p oak_sign{display:{Name:'"104-爆弾魔"'},BlockEntityTag:{Text1:'{"text":"*********-104-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 104"}}',Text2:'{"text":"【爆弾魔】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"爆弾魔\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#スキル系処理用
setblock -126 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=104}] at @s run function project-c:jobaction/104/main",TrackOutput:0b} destroy
setblock -126 61 -61 minecraft:obsidian
setblock -126 61 -60 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=104bomb,limit=1] as @e[tag=104bomb] at @s run function project-c:jobaction/104/skill/0/1",TrackOutput:0b} destroy
setblock -126 61 -59 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=104bomb,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -124 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=104powerbomb,limit=1] as @e[tag=104powerbomb] at @s run function project-c:jobaction/104/skill/1/1",TrackOutput:0b} destroy
setblock -124 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=104powerbomb,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -122 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=104ponpon,limit=1] as @e[tag=104ponpon] at @s run function project-c:jobaction/104/skill/2/5",TrackOutput:0b} destroy
setblock -122 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=104ponpon,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -122 61 -60 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=104mine,limit=1] as @e[tag=104mine] at @s run function project-c:jobaction/104/skill/2/8",TrackOutput:0b} destroy
setblock -122 61 -59 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=104mine,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -122 61 -58 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute if entity @e[tag=104mineStand,limit=1] as @e[tag=104mineStand] at @s run function project-c:jobaction/104/skill/2/9",TrackOutput:0b} destroy
setblock -120 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=104dokkan,limit=1] as @e[tag=104dokkan] at @s run function project-c:jobaction/104/skill/3/3",TrackOutput:0b} destroy
setblock -120 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=104dokkan,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

