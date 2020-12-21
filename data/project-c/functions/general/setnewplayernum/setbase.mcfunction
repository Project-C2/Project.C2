#実行者     -> すべてのプレイヤー

execute if score #Base playerNumber < @s playerNumber run scoreboard players operation #Base playerNumber = @s playerNumber
execute if score #Base playerNumber = @s playerNumber run scoreboard players add #Base playerNumber 1