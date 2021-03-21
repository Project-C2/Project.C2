summon armor_stand ~ ~1 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["126-graif","126-hassummoned"]}
scoreboard players operation @e[limit=1,sort=nearest,tag=126-hassummoned] playerNumber = @s playerNumber
tag @e[tag=126-hassummoned] remove 126-hassummoned

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 2 1
effect give @s slowness 100000 3 true

scoreboard players add @s Mana 1

data merge block -122 61 -11 {auto:1b}