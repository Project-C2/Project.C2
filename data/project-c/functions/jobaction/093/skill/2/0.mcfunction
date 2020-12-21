scoreboard players set @s CT2 800
replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 20

summon armor_stand ^ ^ ^4 {Tags:["093fishstand2","this"],Invisible:1b,Marker:1b,NoGravity:1b}
tp @e[tag=this] ^ ^ ^4 ~ ~
summon armor_stand ~ ~ ~ {Tags:["093fishstand","this"],Invisible:1b,Marker:1b,NoGravity:1b}
execute rotated ~ 0 run tp @e[tag=this,limit=1,sort=nearest,distance=..0.1] ^-1 ^0.25 ^-1.8 ~90 0
summon armor_stand ~ ~ ~ {Tags:["093fishstand","this"],Invisible:1b,Marker:1b,NoGravity:1b}
execute rotated ~ 0 run tp @e[tag=this,limit=1,sort=nearest,distance=..0.1] ^1 ^0.25 ^-1.8 ~-90 0
summon armor_stand ~ ~ ~ {Tags:["093fishstand","this"],Invisible:1b,Marker:1b,NoGravity:1b}
execute rotated ~ 0 run tp @e[tag=this,limit=1,sort=nearest,distance=..0.1] ^ ^0.25 ^4.8 ~180 0
execute if entity @s[team=Red] run tag @e[tag=this] add 093Red
execute if entity @s[team=Blue] run tag @e[tag=this] add 093Blue
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
tag @e[tag=this] remove this

particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 1 1 force @a
playsound minecraft:entity.elder_guardian.ambient master @a ~ ~ ~ 3 2
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 1.6

data merge block 13 2 89 {auto:1b}
data merge block 13 2 91 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2