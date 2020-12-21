summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["096_2stand","this"]}
execute if entity @s[team=Red] run team join RedDummy @e[tag=this]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=this]
tag @e[tag=this] remove this
execute if entity @s[tag=096_jumped] run function project-c:jobaction/096/skill/2/2-add

data merge block 49 2 89 {auto:1b}
scoreboard players reset @s counter_1
