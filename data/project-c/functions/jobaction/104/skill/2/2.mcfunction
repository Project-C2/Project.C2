execute rotated ~ 0 run summon minecraft:armor_stand ^ ^0.7 ^1 {Tags:["this","104ponpon_ready"],Invisible:1b,Small:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b,tag:{Enchantments:[{}]}}],Pose:{Head:[90f,-45f,45f]}}
execute if entity @s[team=Red] run tag @e[tag=this,limit=1,sort=nearest] add 104ponponR
execute if entity @s[team=Blue] run tag @e[tag=this,limit=1,sort=nearest] add 104ponponB
scoreboard players set @e[tag=this,limit=1,sort=nearest] subcounter 3
scoreboard players operation @e[tag=this,limit=1,sort=nearest] playerNumber = @s playerNumber
tag @e[tag=this] remove this
