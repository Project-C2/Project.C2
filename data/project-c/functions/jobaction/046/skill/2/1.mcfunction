scoreboard players remove @s counter 1
teleport @s ~ ~ ~ ~37 ~
particle dust 1 1 0 1 ^ ^ ^7 0.5 0.5 0.5 0 10 force @a
particle dust 1 1 0 1 ^ ^ ^-7 0.5 0.5 0.5 0 10 force @a
particle dust 1 1 0 1 ^7 ^ ^ 0.5 0.5 0.5 0 10 force @a
particle dust 1 1 0 1 ^-7 ^ ^ 0.5 0.5 0.5 0 10 force @a
kill @s[scores={counter=..0}]
particle minecraft:firework ~ ~ ~ 7 7 7 0.1 5 force @a
playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 0.5 1
#Red
execute if entity @s[tag=046-ParR] run effect clear @a[distance=..15,team=Red] minecraft:slowness
execute if entity @s[tag=046-ParR] run effect clear @a[distance=..15,team=Red] minecraft:weakness
execute if entity @s[tag=046-ParR] run effect clear @a[distance=..15,team=Red] minecraft:wither
execute if entity @s[tag=046-ParR] run effect clear @a[distance=..15,team=Red] minecraft:poison
execute if entity @s[tag=046-ParR] run effect clear @a[distance=..15,team=Red] minecraft:blindness
#青
execute if entity @s[tag=046-ParB] run effect clear @a[distance=..15,team=Blue] minecraft:slowness
execute if entity @s[tag=046-ParB] run effect clear @a[distance=..15,team=Blue] minecraft:weakness
execute if entity @s[tag=046-ParB] run effect clear @a[distance=..15,team=Blue] minecraft:wither
execute if entity @s[tag=046-ParB] run effect clear @a[distance=..15,team=Blue] minecraft:poison
execute if entity @s[tag=046-ParB] run effect clear @a[distance=..15,team=Blue] minecraft:blindness
execute if entity @s[scores={counter=60}] run particle minecraft:enchant ~ ~ ~ 2 2 2 5 1000 force @a
execute if entity @s[scores={counter=60}] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 5 1
execute if entity @s[scores={counter=60}] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 5 1
execute if entity @s[scores={counter=20}] run summon spectral_arrow ~ ~ ~ {NoGravity:1b,life:1200,Motion:[0.0,-0.25,0.0],Tags:["046-Arrow"],Damage:-10,Glowing:1b}
execute if entity @s[scores={counter=20}] run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 2 0.45
data merge block -71 2 -18 {auto:1b}