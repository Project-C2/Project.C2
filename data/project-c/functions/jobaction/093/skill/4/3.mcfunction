scoreboard players add @s counter 1
tp @s ^ ^ ^0.7
execute if score @s counter matches 2..3 run summon tropical_fish ~ ~ ~ {Tags:["this2","093_4wave"],Air:-20s,Health:0.1f,Invulnerable:1b,DeathTime:2s,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:300,ShowParticles:0b}]}
execute if score @s counter matches 2..3 run loot spawn 0 0 0 loot project-c:wnkm/rand.-180_179
execute if score @s counter matches 2..3 store result score @s subcounter run data get entity @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand"}].Amount 1403569
execute if score @s counter matches 2..3 run kill @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}}]
execute if score @s counter matches 2..3 if score @s subcounter matches ..-1 run scoreboard players add @s subcounter 252642561
execute if score @s counter matches 2..3 store result entity @e[tag=this2,limit=1] Variant int 1 run scoreboard players get @s subcounter
execute if score @s counter matches 6.. run scoreboard players set @s counter 0



