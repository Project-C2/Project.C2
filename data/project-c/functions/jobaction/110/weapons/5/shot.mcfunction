execute anchored eyes positioned ^ ^ ^ run tag @e[type=arrow,tag=!110shotArrow,limit=1,sort=nearest] add this
execute as @e[tag=this] run function project-c:jobaction/110/shot_arrow
execute as @e[tag=this] store result entity @s damage double 0.01 run data get entity @s damage 50
tag @e[tag=this] add 110shotArrow
tag @e[tag=this] remove this
scoreboard players set #110-recoil counter_1 -600
scoreboard players set #110-recoil counter_2 40
scoreboard players set #110-recoil counter_3 8
function project-c:jobaction/110/operation/recoil

function project-c:jobaction/110/weapons/5/recharge