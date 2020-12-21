tag @s add notOwnBomb
execute if score @s playerNumber = @a[sort=nearest,limit=1] playerNumber run tag @s add OwnBomb
execute if entity @s[tag=OwnBomb] run scoreboard players set @a[sort=nearest,limit=1] counter 1
execute unless entity @e[tag=OwnBomb] if entity @e[tag=Bomb,tag=!notOwnBomb] as @e[tag=Bomb,tag=!notOwnBomb,limit=1,sort=nearest] run function project-c:jobaction/005/findownbomb