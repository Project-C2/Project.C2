scoreboard players set @s CT1 1080

playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1.1 2
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1.3 2
execute anchored eyes positioned ^ ^ ^ run tag @e[type=fishing_bobber,distance=..5,limit=1,sort=nearest] add 116first
tag @e[tag=116first,limit=1] add 116impact
scoreboard players operation @e[tag=116first,limit=1] playerNumber = @s playerNumber
tag @e[tag=116first] remove 116first

data merge block 20 61 -62 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
