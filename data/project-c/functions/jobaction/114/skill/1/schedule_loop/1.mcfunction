tag @s add SearchingOwner
execute as @a[scores={jobNumber=114}] if score @s playerNumber = @e[tag=SearchingOwner,limit=1] playerNumber run tag @s add DarkSushiBlader
tag @s remove SearchingOwner
execute positioned as @a[tag=DarkSushiBlader,limit=1,sort=nearest] positioned ^ ^ ^-3 run tp @s ~ ~ ~ ~4 0

##飛翔物反射
execute positioned ~-0.75 ~ ~-0.75 if entity @e[tag=!114-Refected,type=#project-c:suyarumi/projectile,dx=0.5,dy=2,dz=0.5,limit=1] as @e[tag=!114-Refected,type=#project-c:suyarumi/projectile,dx=0.5,dy=2,dz=0.5] at @s run function project-c:jobaction/114/skill/1/schedule_loop/2

tag @a[tag=DarkSushiBlader] remove DarkSushiBlader





execute if score @s counter matches 200.. run kill @s



##演出
particle minecraft:sweep_attack ~ ~1.3 ~ 0.5 0.5 0.5 0 1
playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 0.15 1.2