scoreboard players set @s CT2 400
replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 40

execute align y run summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Invulnerable:1b,Tags:["092towerstand","this"]}
execute if entity @s[team=Red] run tag @e[tag=this,limit=1] add 092Red
execute if entity @s[team=Blue] run tag @e[tag=this,limit=1] add 092Blue
execute store result score @e[tag=this,limit=1] subcounter run data get entity @s Rotation[0] 0.2
scoreboard players set @e[tag=this,limit=1] counter_1 18
scoreboard players add @e[tag=this,limit=1] subcounter 9
execute as @e[tag=this,limit=1] store result entity @s Rotation[0] float 90 run scoreboard players operation @s subcounter /= @s counter_1
scoreboard players set @e[tag=this,limit=1] counter_1 4
execute as @e[tag=this,limit=1] at @s run tp @s ^-0.5 ^ ^-1
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
data merge entity @e[tag=this,limit=1] {Motion:[0d,-10d,0d]}
tag @e[tag=this] remove this

particle minecraft:witch ~ ~0.5 ~ 2 0.5 2 1 400
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 3 0.8

data merge block 1 2 89 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2