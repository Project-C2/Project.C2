tag @s remove 035-3A
scoreboard players set @s CT3 900
scoreboard players reset @s useCarrotStick
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3

execute as @e[tag=035-animaBow] if score @s playerNumber = @a[tag=035,limit=1] playerNumber run tag @s add 035-animaLaunch
execute anchored eyes positioned ^ ^ ^3 run summon minecraft:armor_stand ~ ~ ~ {Tags:["035-first","035-animaShot"],Invisible:1b,NoGravity:1b,Marker:1b}
execute rotated as @s anchored eyes positioned ^ ^ ^3 run tp @e[type=armor_stand,tag=035-first] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=035-first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=035-first,limit=1] counter_2 = @e[tag=035-animaLaunch,limit=1] counter
execute if entity @s[team=Red] run tag @e[tag=035-first] add 035-animaShotR
execute if entity @s[team=Blue] run tag @e[tag=035-first] add 035-animaShotB
execute if entity @s[team=Red] run team join RedDummy @e[tag=035-first]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=035-first]

kill @e[tag=035-animaLaunch]
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 4 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4 2

data merge block 51 2 -69 {auto:1b}
