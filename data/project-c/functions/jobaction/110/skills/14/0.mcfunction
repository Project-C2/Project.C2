#コスト支払い
scoreboard players set #110- counter_3 1140


summon armor_stand ~ ~ ~ {Tags:["this","110anti_aircraft"],Invisible:1b,Marker:1b,NoGravity:1b}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
tag @e[tag=this] remove this
tag @s add 110anti_aircraft_using
effect give @s minecraft:slowness 1 0
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1.2 2

data merge block -48 64 -62 {auto:1b}