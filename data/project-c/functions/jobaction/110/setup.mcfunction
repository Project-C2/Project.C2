#職看板
give @p oak_sign{display:{Name:'"110-魔導の箱庭"'},BlockEntityTag:{Text1:'{"text":"*********-110-*********","clickEvent":{"action":"run_command","value":"/scoreboard players set @s jobNumber 110"}}',Text2:'{"text":"【魔導の箱庭】","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s add JobChanged"}}',Text3:'{"text":"右クリックで転職!!","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[システム]\\",\\"color\\":\\"white\\"},{\\"text\\":\\"魔導の箱庭\\",\\"color\\":\\"white\\",\\"bold\\":true,\\"underlined\\":true},{\\"text\\":\\" に転職しました。\\",\\"color\\":\\"white\\",\\"bold\\":false,\\"underlined\\":false}]"}}',Text4:'{"text":"**********************","clickEvent":{"action":"run_command","value":"/data merge block -75 49 -123 {auto:1b}"}}'}}
scoreboard players set #1000 counter 1000
team add DarkGray
team modify DarkGray color dark_gray

#mainコマブロ
setblock -54 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute as @a[scores={jobNumber=110}] at @s run function project-c:jobaction/110/main",TrackOutput:0b} destroy

#スキルコマブロ
setblock -54 61 -61 minecraft:obsidian
setblock -54 61 -60 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110_parry_stand,limit=1] as @e[tag=110_parry_stand] run function project-c:jobaction/110/weapons/2/tick",TrackOutput:0b} destroy
setblock -54 61 -59 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110_parry_stand,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy

setblock -54 67 -63 minecraft:obsidian
setblock -54 67 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110throweddagger,limit=1] as @e[tag=110throweddagger] at @s run function project-c:jobaction/110/weapons/7/tick",TrackOutput:0b} destroy
setblock -54 67 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110throweddagger,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy
setblock -54 67 -60 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110pickupabledagger,limit=1] as @e[tag=110pickupabledagger] at @s run function project-c:jobaction/110/weapons/7/tick2",TrackOutput:0b} destroy
setblock -54 67 -59 minecraft:chain_command_block[facing=south,conditional=false]{Command:"execute unless entity @e[tag=110pickupabledagger,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy
setblock -54 67 -58 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute if entity @e[tag=110trident_blood_dagger,limit=1] as @e[tag=110trident_blood_dagger] if data entity @s {DealtDamage:1b} run kill @s",TrackOutput:0b,auto:1b} destroy

setblock -52 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110fireball_p_stand,limit=1] as @e[tag=110fireball_p_stand] run function project-c:jobaction/110/skills/01/tick2",TrackOutput:0b} destroy
setblock -52 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110fireball_p_stand,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy
setblock -52 61 -60 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110fireball,limit=1] as @e[tag=110fireball] at @s run function project-c:jobaction/110/skills/01/tick",TrackOutput:0b} destroy
setblock -52 61 -59 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110fireball,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy

setblock -52 64 -63 minecraft:obsidian
setblock -52 64 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110wind_arrow,limit=1] as @e[tag=110wind_arrow] at @s run function project-c:jobaction/110/skills/02/tick",TrackOutput:0b} destroy
setblock -52 64 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110wind_arrow,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy

setblock -52 67 -63 minecraft:obsidian
setblock -52 67 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110drainplant,limit=1] as @e[tag=110drainplant] at @s run function project-c:jobaction/110/skills/03/tick",TrackOutput:0b} destroy
setblock -52 67 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110drainplant,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy
setblock -52 67 -60 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110drainplant_hit_stand,limit=1] as @e[tag=110drainplant_hit_stand] run function project-c:jobaction/110/skills/03/hit-tick",TrackOutput:0b} destroy
setblock -52 67 -59 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110drainplant_hit_stand,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy

setblock -52 70 -63 minecraft:obsidian
setblock -52 70 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110shiden,limit=1] as @e[tag=110shiden] at @s run function project-c:jobaction/110/skills/04/tick",TrackOutput:0b} destroy
setblock -52 70 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110shiden,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy


setblock -50 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110spectral_shot,limit=1] as @e[tag=110spectral_shot] at @s run function project-c:jobaction/110/skills/05/tick",TrackOutput:0b} destroy
setblock -50 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110spectral_shot,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy

setblock -50 64 -63 minecraft:obsidian
setblock -50 64 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110shulkerPassenged,limit=1] run function project-c:jobaction/110/skills/06/tick",TrackOutput:0b} destroy
setblock -50 64 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110shulkerPassenged,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy
setblock -50 64 -60 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110shulkerWall,limit=1] run function project-c:jobaction/110/skills/06/tick2",TrackOutput:0b} destroy
setblock -50 64 -59 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110shulkerWall,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy

setblock -50 70 -63 minecraft:obsidian
setblock -50 70 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110meditation,limit=1] as @e[tag=110meditation] at @s run function project-c:jobaction/110/skills/08/tick",TrackOutput:0b} destroy
setblock -50 70 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110meditation,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy


setblock -54 64 -63 minecraft:obsidian
setblock -54 64 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110creeperArrow,limit=1] as @e[tag=110creeperArrow] at @s run function project-c:jobaction/110/arrows/12/tick",TrackOutput:0b} destroy
setblock -54 64 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110creeperArrow,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy
setblock -54 64 -60 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110creeperA_judge,limit=1] as @e[tag=110creeperA_judge] at @s run function project-c:jobaction/110/arrows/12/tick2",TrackOutput:0b} destroy
setblock -54 64 -59 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110creeperA_judge,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy


setblock -48 61 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110mana-gun,limit=1] as @e[tag=110mana-gun] at @s run function project-c:jobaction/110/skills/13/tick",TrackOutput:0b} destroy
setblock -48 61 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110mana-gun,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy

setblock -48 64 -63 minecraft:obsidian
setblock -48 64 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110anti_aircraft,limit=1] as @e[tag=110anti_aircraft] at @s run function project-c:jobaction/110/skills/14/tick",TrackOutput:0b} destroy
setblock -48 64 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110anti_aircraft,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy
setblock -48 64 -60 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110anti_aircraft_projectile,limit=1] as @e[tag=110anti_aircraft_projectile] at @s run function project-c:jobaction/110/skills/14/tick2",TrackOutput:0b} destroy
setblock -48 64 -59 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110anti_aircraft_projectile,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy

setblock -48 67 -63 minecraft:obsidian
setblock -48 67 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110horming_missile,limit=1] as @e[tag=110horming_missile] at @s run function project-c:jobaction/110/skills/15/tick",TrackOutput:0b} destroy
setblock -48 67 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110horming_missile,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy

setblock -48 70 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110aqua_gun,limit=1] as @e[tag=110aqua_gun] at @s run function project-c:jobaction/110/skills/16/tick",TrackOutput:0b} destroy
setblock -48 70 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110aqua_gun,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy

setblock -52 73 -63 minecraft:obsidian
setblock -52 73 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110denkou,limit=1] as @e[tag=110denkou] at @s run function project-c:jobaction/110/skills/17/tick",TrackOutput:0b} destroy
setblock -52 73 -61 minecraft:chain_command_block[facing=up,conditional=false]{auto:1b,Command:"execute unless entity @e[tag=110denkou,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b} destroy

setblock -52 76 -63 minecraft:obsidian
setblock -52 76 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110suirou,limit=1] as @e[tag=110suirou] at @s run function project-c:jobaction/110/skills/18/tick",TrackOutput:0b} destroy
setblock -52 76 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110suirou,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy

setblock -52 79 -63 minecraft:obsidian
setblock -52 79 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110blizzard,limit=1] as @e[tag=110blizzard] at @s run function project-c:jobaction/110/skills/19/1",TrackOutput:0b} destroy
setblock -52 79 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110blizzard,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy

setblock -52 82 -63 minecraft:obsidian
setblock -52 82 -62 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"execute if entity @e[tag=110heathaze,limit=1] as @e[tag=110heathaze] at @s run function project-c:jobaction/110/skills/20/1",TrackOutput:0b} destroy
setblock -52 82 -61 minecraft:chain_command_block[facing=up,conditional=false]{Command:"execute unless entity @e[tag=110heathaze,limit=1] run data merge block ~ ~ ~-1 {auto:0b}",TrackOutput:0b,auto:1b} destroy
