scoreboard players set @s counter_1 1000
tag @s remove 119fail
playsound minecraft:entity.illusioner.prepare_blindness master @s ~ ~ ~ 10 2
playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 1 2
particle falling_dust minecraft:pink_wool ~ ~ ~ 0.5 0.5 0.5 0 40 normal @s
particle falling_dust minecraft:pink_wool ~ ~ ~ 0.5 0.5 0.5 0 10 force @s
particle falling_dust minecraft:pink_wool ~ ~ ~ 0.3 0.3 0.3 0 20 normal @a
particle falling_dust minecraft:pink_wool ~ ~ ~ 0.3 0.3 0.3 0 5 force @a


summon item ~ ~ ~ {Motion:[0d,0.2d,0d],Tags:["this","119flower","isItem"],Item:{id:"minecraft:pink_dye",Count:1b,tag:{Enchantments:[{}]}},Owner:[I;0,0,0,0],Age:5600s,Health:6s}
execute unless entity @s[tag=hit] run data modify entity @e[tag=this,limit=1] Thrower set from entity @e[tag=hit,limit=1,sort=nearest] UUID
execute unless entity @s[tag=hit] run tag @e[tag=this,limit=1,sort=nearest] add 119flower_adhesion
execute unless entity @s[tag=hit] run data merge entity @e[tag=this,limit=1,sort=nearest] {NoGravity:1b,Motion:[0d,0d,0d]}
scoreboard players operation @e[tag=this,limit=1,sort=nearest] playerNumber = @s playerNumber
loot spawn ~ ~ ~ loot project-c:wnkm/rand.2.-50_49
data modify entity @e[type=item,tag=this,limit=1,sort=nearest] Item.tag.AttributeModifiers set from entity @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}},limit=1] Item.tag.AttributeModifiers
kill @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}}]
tag @e[type=item,tag=this,limit=1,sort=nearest] remove this
tag @e[tag=hit] remove hit

data merge block 56 61 -62 {auto:1b}
