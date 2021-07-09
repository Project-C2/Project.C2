scoreboard players set @s CT2 840
item replace entity @s hotbar.2 with minecraft:compass{display:{Name:'"CoolTime"'}} 18

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4 0.5
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 1 1 force
particle minecraft:poof ~ ~ ~ 2 2 2 1 1000 normal @a
particle minecraft:poof ~ ~ ~ 1 1 1 1 250 force @a

summon minecraft:armor_stand ~ ~0.1 ~ {Tags:["this","075crash"],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players operation @e[tag=this] counter = @s fall
scoreboard players operation @e[tag=this] counter_2 = @s fall
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
tag @s add 075crash_CT1regen
scoreboard players set @e[tag=this,scores={counter=2001..}] counter 2000
tp @e[tag=this] ~ ~0.1 ~ ~ 0
execute if entity @s[team=Red] run tag @e[tag=this] add 075crashRed
execute if entity @s[team=Blue] run tag @e[tag=this] add 075crashBlue
tag @e[tag=this] remove this



data merge block 49 2 31 {auto:1b}


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
