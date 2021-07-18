#判定
particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 50

#スキル効果
execute if entity @s[scores={counter_1=0}] run scoreboard players set @s counter_3 50
execute if entity @s[scores={counter_1=1}] run scoreboard players set @s counter_3 80
execute if entity @s[scores={counter_1=2}] run scoreboard players set @s counter_3 150
execute if entity @s[scores={counter_1=3}] run scoreboard players set @s counter_3 100
execute if entity @s[scores={counter_1=4}] run scoreboard players set @s counter_3 120
execute if entity @s[scores={counter_1=5}] run scoreboard players set @s counter_3 200

execute if entity @s[scores={counter_2=1}] run scoreboard players operation @s counter_3 *= #3 counter
execute if entity @s[scores={counter_2=1}] run scoreboard players operation @s counter_3 /= #2 counter
execute if entity @s[scores={counter_2=2}] run scoreboard players operation @s counter_3 *= #2 counter

execute if score @s counter_3 > @s Mana run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0

execute if score @s counter_3 <= @s Mana if entity @s[scores={counter_1=0}] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 2 2
execute if score @s counter_3 <= @s Mana if entity @s[scores={counter_1=1}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0
execute if score @s counter_3 <= @s Mana if entity @s[scores={counter_1=2}] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 2
execute if score @s counter_3 <= @s Mana if entity @s[scores={counter_1=3}] run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 2 1
execute if score @s counter_3 <= @s Mana if entity @s[scores={counter_1=4}] run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 2 1.4
execute if score @s counter_3 <= @s Mana if entity @s[scores={counter_1=5}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.2

execute if score @s counter_3 <= @s Mana run function project-c:jobaction/048/skill/0/1

execute if score @s counter_3 <= @s Mana run scoreboard players operation @s Mana -= @s counter_3

data merge block -49 2 -20 {auto:1b}