tag @s add it
execute as @a[tag=aqua_gun_user] if score @s playerNumber = @e[tag=it,limit=1,sort=nearest] playerNumber at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 0.6 0.5
tag @s remove it
execute unless entity @s[tag=110geometric] run scoreboard players set #110- subcounter 50
execute if entity @s[tag=110geometric] run scoreboard players set #110- subcounter 62
execute as @e[tag=hit,type=player] at @s run function project-c:jobaction/110/skills/16/hit-player
execute as @e[tag=hit,type=!player] at @s run function project-c:jobaction/110/skills/16/hit-entity
scoreboard players reset #110-
tag @e[tag=hit] remove hit
function project-c:jobaction/110/skills/16/end
