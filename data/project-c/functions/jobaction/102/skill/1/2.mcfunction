execute if entity @e[tag=102skeleton,limit=1] as @e[tag=102skeleton] if score @s playerNumber = @a[tag=user,limit=1] playerNumber run kill @s

summon skeleton ~ ~ ~ {CustomName:'"スケルポン"',Tags:["102skeleton","Battle","this"],ActiveEffects:[{Id:28b,Amplifier:0b,Duration:35,ShowParticles:0b}],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:2s}]}},{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:leaping"}}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[{}]}}],Attributes:[{Name:"minecraft:generic.follow_range",Base:25d}]}
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
execute positioned 0.0 1 0.0 run summon area_effect_cloud ^ ^ ^1.4 {Duration:1,Tags:["102vector"]}
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=102vector,limit=1] Pos
kill @e[tag=102vector,limit=1]

execute if entity @s[team=RedDummy] run team join Red @e[tag=this,limit=1]
execute if entity @s[team=BlueDummy] run team join Blue @e[tag=this,limit=1]
execute as @e[tag=this] if entity @s[team=Red] run data modify entity @s ArmorItems[3].tag.display.color set value 16711680
execute as @e[tag=this] if entity @s[team=Blue] run data modify entity @s ArmorItems[3].tag.display.color set value 255
scoreboard players set @e[tag=this] counter 201
scoreboard players set @e[tag=this] counter_1 40
scoreboard players set @e[tag=this] counter_2 50
tag @e[tag=this] remove this


particle minecraft:flash ~ ~ ~ 1 1 1 1 8 normal @a
particle minecraft:flash ~ ~ ~ 1 1 1 1 1 force @a
particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force
particle minecraft:poof ~ ~ ~ 1 1 1 1 600 normal @a
particle minecraft:poof ~ ~ ~ 1 1 1 1 120 force @a
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.7 1.2
playsound minecraft:entity.skeleton.death master @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 0.8

scoreboard players reset @a[tag=user,limit=1] counter_1
data merge block 119 2 91 {auto:1b}
kill @s
