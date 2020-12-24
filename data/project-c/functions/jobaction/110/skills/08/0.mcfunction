#コスト支払い
scoreboard players set #110- counter_3 600


tp @s @s
summon armor_stand ~ ~ ~ {Tags:["this","110meditation"],Invisible:1b,Marker:1b,NoGravity:1b}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
scoreboard players set @e[tag=this] counter 30
tag @e[tag=this] remove this
tag @s add 110meditation_using
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1.2 2

data merge block -50 70 -62 {auto:1b}