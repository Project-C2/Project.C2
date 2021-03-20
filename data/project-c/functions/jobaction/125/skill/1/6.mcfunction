particle end_rod ^ ^ ^ 0 0 0 1 0
particle end_rod ^ ^ ^0.5 0 0 0 1 0

execute if entity @s[tag=!125-rrbulletshoot] run tp @s ^ ^ ^ facing entity @e[tag=125-rain,scores={counter=4..},limit=1,sort=random]
execute if entity @s[tag=!125-rrbulletshoot] run tag @s add 125-rrbulletshoot

tp @s ^ ^ ^1

scoreboard players add @s counter 1
kill @s[scores={counter=100..}]