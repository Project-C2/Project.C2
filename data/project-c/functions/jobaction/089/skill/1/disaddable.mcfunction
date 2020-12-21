scoreboard players operation #089dummy playerNumber = @s playerNumber
execute as @a[tag=089denkou_addable] if score @s playerNumber = #089dummy playerNumber run tag @s remove 089denkou_addable
scoreboard players reset #089dummy
kill @s