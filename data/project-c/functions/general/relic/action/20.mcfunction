scoreboard players add @s[scores={relicCount=1..}] relicCount 1
execute if entity @s[scores={HP=1..6,relicCount=0},nbt={HurtTime:9s}] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 0
execute if entity @s[scores={HP=1..6,relicCount=0},nbt={HurtTime:9s}] run function project-c:general/relic/firincscircle
execute if entity @s[scores={HP=1..6,relicCount=0},nbt={HurtTime:9s}] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.6 100 force @a
execute if entity @s[scores={HP=1..6,relicCount=0},nbt={HurtTime:9s}] run scoreboard players set @s relicCount 1

execute if entity @s[scores={relicCount=1..141,CT1=..1179}] run replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 1
execute if entity @s[scores={relicCount=1..141,CT1=..1179}] run scoreboard players set @s CT1 1180
execute if entity @s[scores={relicCount=1..141,CT2=..1179}] run replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 1
execute if entity @s[scores={relicCount=1..141,CT2=..1179}] run scoreboard players set @s CT2 1180
execute if entity @s[scores={relicCount=1..141,CT3=..1179}] run replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:'"CoolTime"'}} 1
execute if entity @s[scores={relicCount=1..141,CT3=..1179}] run scoreboard players set @s CT3 1180
execute if entity @s[scores={relicCount=151..}] run effect give @s slowness 1 4 false

