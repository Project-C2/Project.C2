#職看板
give @p oak_sign{display:{Name:'"111-Bandit"'},BlockEntityTag:{Text1:'{"text":"*********-112-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 112"}}',Text2:'{"text":"【磁界覇者】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"磁界覇者\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}

#動作必須コマブロ群

#スキル系処理用
setblock -30 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @e[scores={jobNumber=112}] at @s run function project-c:jobaction/112/main",TrackOutput:0b} destroy

setblock -26 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=112_eternal,limit=1] as @e[tag=112_eternal] at @s run function project-c:jobaction/112/skill/2/2",TrackOutput:0b} destroy
setblock -26 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=112_eternal,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock -26 64 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=112_circle,limit=1] as @e[tag=112_circle] at @s run function project-c:jobaction/112/skill/2/2-2",TrackOutput:0b} destroy
setblock -26 64 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=112_circle,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock -24 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=112_bullet,limit=1] as @e[tag=112_bullet] at @s run function project-c:jobaction/112/skill/3/1",TrackOutput:0b} destroy
setblock -24 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=112_bullet,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock -24 64 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=112stonebullet,limit=1] as @e[tag=112stonebullet] at @s run function project-c:jobaction/112/skill/3/3",TrackOutput:0b} destroy
setblock -24 64 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=112stonebullet,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy
