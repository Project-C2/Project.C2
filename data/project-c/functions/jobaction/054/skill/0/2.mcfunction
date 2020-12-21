execute if score @s counter matches 22.. run scoreboard players set @s counter 21
execute anchored eyes run summon armor_stand ^ ^ ^ {Tags:["054blaster","054blasterF"],Marker:1b,Invisible:1b,NoGravity:1b}
execute if entity @s[team=Red] run team join RedDummy @e[tag=054blasterF]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=054blasterF]
scoreboard players operation @e[tag=054blasterF,limit=1] subcounter = @s counter
scoreboard players operation @e[tag=054blasterF,limit=1] playerNumber = @s playerNumber
execute anchored eyes run tp @e[tag=054blasterF] ^ ^ ^ ~ ~
tag @e[tag=054blasterF] remove 054blasterF
data merge block 45 2 -18 {auto:1b}

effect clear @s minecraft:slowness
tag @s add SkillnotReady0
scoreboard players set @s counter -26
function project-c:jobaction/054/replaceitem/0