particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
particle minecraft:dust 1 0 0 1 ~ ~ ~ 1 1 1 0 20 force
particle minecraft:dust 0 0 0 1 ~ ~ ~ 1 1 1 0 20 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.8

#summon armor_stand ~ ~-0.1 ~ {Small:1b,NoBasePlate:1b,Marker:1b,Invisible:1b,Tags:["129-silenth-pos","this"]}
summon armor_stand ~ ~-0.3 ~ {Tags:["129-silenth-pos","this"],Invisible:1b,NoBasePlate:1b,Small:1b,Marker:1b,Passengers:[{id:"minecraft:item",Tags:["isItem","this","129-silenth","129-silenth-deploying"],Owner:[I;0,0,0,0],Glowing:1b,Item:{id:"minecraft:stone",Count:1b}}]}
data modify entity @e[type=item,tag=this,limit=1] Item set from entity @s Item
team join DarkGray @e[type=item,tag=this]
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
scoreboard players operation @e[tag=this] stockcounter = @s stockcounter
scoreboard players operation @e[tag=this] counter = @s counter

tag @e[tag=this] remove this

data merge entity @s {Glowing:1b,NoGravity:1b,Motion:[0.0d,0.0d,0.0d]}

tag @s remove 129-silenth-deploy
kill @s