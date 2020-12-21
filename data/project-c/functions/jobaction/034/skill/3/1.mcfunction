summon minecraft:armor_stand ~ ~ ~ {Tags:["034-houndF1"],Invisible:1b,NoGravity:1b,Marker:1b}
execute if entity @s[team=Red] run team join RedDummy @e[tag=034-houndF1]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=034-houndF1]
tp @e[tag=034-houndF1] ~ ~ ~ facing entity @e[tag=034-houndF,limit=1] feet
execute as @e[tag=034-houndF1] run function project-c:jobaction/034/skill/3/1a
function project-c:jobaction/034/skill/3/1b