execute anchored eyes positioned ^ ^ ^ run tag @e[type=arrow,tag=!110bowgunArrow,limit=1,sort=nearest] add this
execute as @e[tag=this] store result entity @s damage double 0.01 run data get entity @s damage 50
tag @e[tag=this] add 110bowgunArrow
tag @e[tag=this] remove this
scoreboard players set #110- counter_1 -600
scoreboard players set #110- counter_2 40
scoreboard players set #110 counter_3 8
function project-c:jobaction/110/operation/recoil

function project-c:jobaction/110/weapons/5/recharge