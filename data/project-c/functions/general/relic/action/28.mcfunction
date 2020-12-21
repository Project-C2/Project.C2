execute if entity @s[scores={relicCount=1..}] run scoreboard players remove @s relicCount 1

execute if entity @s[scores={relicCount=0},nbt={HurtTime:9s}] run function project-c:general/relic/action/28.active

