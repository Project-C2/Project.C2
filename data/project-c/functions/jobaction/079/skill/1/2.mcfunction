particle minecraft:end_rod ^ ^1.5 ^2 6 6 6 0.1 550 force @a
particle minecraft:explosion_emitter ^ ^1.5 ^ 0 0 0 0 1 force @a
playsound minecraft:item.totem.use master @a ~ ~ ~ 3 2
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 3 1

execute if score @s playerNumber = @a[scores={jobNumber=79},limit=1] playerNumber run tp @a[scores={jobNumber=79},limit=1] @s

kill @s