tag @s add 096
execute as @e[tag=096chained,scores={counter=..37}] if score @s playerNumber = @a[limit=1,sort=nearest,tag=096] playerNumber run tag @s add flag
tag @s remove 096

#なんか1個だけアマスタ残って浮遊だけ付く事があるので、2個以上ある時のみ発動するように
scoreboard players set @s counter_4 0
execute at @e[tag=flag] run scoreboard players add @s counter_4 1
execute if score @s counter_4 matches 2.. run function project-c:jobaction/096/skill/3/5

