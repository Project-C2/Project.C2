scoreboard players set @s counter 160160


summon armor_stand ~ ~ ~ {Tags:["110_parry_stand","Stable","this"],NoGravity:1b,Marker:1b,Invisible:1b}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
tag @s add 110_parry
tag @e[tag=this] remove this
effect give @s resistance 1 4 true

playsound minecraft:block.anvil.place master @a ~ ~ ~ 1.2 1.88
particle minecraft:block minecraft:oak_leaves ~ ~1 ~ 0.6 0.6 0.6 1 40 normal @a
particle minecraft:block minecraft:oak_leaves ~ ~1 ~ 0.6 0.6 0.6 1 10 force @a
particle minecraft:falling_dust minecraft:oak_leaves ~ ~1 ~ 1.6 1.6 1.6 1 80 normal @a
particle minecraft:falling_dust minecraft:oak_leaves ~ ~1 ~ 1.6 1.6 1.6 1 20 force @a

data merge block -54 61 -60 {auto:1b}
