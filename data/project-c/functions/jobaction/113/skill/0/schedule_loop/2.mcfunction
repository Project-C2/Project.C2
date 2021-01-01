execute if score #RamenRotation counter matches ..-1 run scoreboard players set #RamenTurnRotation counter 750000
execute if score #RamenRotation counter matches 1.. run scoreboard players set #RamenTurnRotation counter -750000
execute if entity @s[tag=Inverted] run scoreboard players operation #RamenTurnRotation counter *= #-1 counter