#職看板
give @p oak_sign{display:{Name:'"089-雷電"'},BlockEntityTag:{Text1:'{"text":"*********-89-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 89"}}',Text2:'{"text":"【雷幻】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"雷幻\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}


#動作必須コマブロ群
#drop処理用
setblock -59 31 -122 minecraft:command_block[facing=south,conditional=false]{Command:"data merge block ~ ~ ~ {auto:0b}",TrackOutput:0b} destroy
setblock -59 31 -121 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute as @a[scores={jobNumber=89,drop=1..}] run function project-c:jobaction/089/replaceitem/0",TrackOutput:0b} destroy
setblock -71 17 -101 minecraft:chain_command_block[facing=south,conditional=false]{auto:1b,Command:"execute if entity @p[scores={jobNumber=89,drop=1..}] run data merge block -59 31 -122 {auto:1b}",TrackOutput:0b} destroy
#スキル系処理用
setblock -39 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=89}] at @s run function project-c:jobaction/089/main",TrackOutput:0b} destroy
setblock -37 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=089denkou,limit=1] as @e[tag=089denkou] at @s run function project-c:jobaction/089/skill/1/tick",TrackOutput:0b} destroy
setblock -37 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=089denkou,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -37 2 91 minecraft:repeating_command_block[facing=south,conditional=false]{Command:'execute if entity @e[name="忘却の彼方より訪れし王",limit=1] as @e[name="忘却の彼方より訪れし王"] at @s run function project-c:jobaction/089/skill/1/pig_tick',TrackOutput:0b} destroy
setblock -37 2 92 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:'execute unless entity @e[name="忘却の彼方より訪れし王",limit=1] run data merge block ~ ~ ~-1 {auto:0b}',TrackOutput:0b} destroy
setblock -35 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=089lightning,limit=1] as @e[tag=089lightning] at @s run function project-c:jobaction/089/skill/2/1",TrackOutput:0b} destroy
setblock -35 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=089lightning,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -35 2 91 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=089lightning_elem,limit=1] as @e[tag=089lightning_elem] at @s run function project-c:jobaction/089/skill/2/tick_elem",TrackOutput:0b} destroy
setblock -35 2 92 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=089lightning_elem,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
setblock -33 2 89 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=089fire,limit=1] as @e[tag=089fire] at @s run function project-c:jobaction/089/skill/3/1",TrackOutput:0b} destroy
setblock -33 2 90 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=089fire,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
