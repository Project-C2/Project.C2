summon armor_stand ~ ~ ~ {Tags:["096chain","this"],NoGravity:1b,Marker:1b,Invisible:1b}
execute if score @s counter matches 1 run tag @e[tag=this] add 096chainFirst
execute as @e[tag=user] anchored eyes run tp @e[tag=this] ^ ^ ^ ~ ~
execute if entity @s[team=RedDummy] run team join RedDummy @e[tag=this]
execute if entity @s[team=BlueDummy] run team join BlueDummy @e[tag=this]
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this,limit=1] counter = @s counter
scoreboard players operation @e[tag=this,limit=1] subcounter = @s counter
scoreboard players operation @e[tag=this,limit=1] subcounter *= @s subcounter
tag @e[tag=this] remove this

#playsound minecraft:block.chain.place master @a ~ ~ ~ 1 0.7
playsound minecraft:block.chain.break master @a ~ ~ ~ 1 0.7