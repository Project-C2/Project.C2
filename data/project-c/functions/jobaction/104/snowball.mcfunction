kill @e[type=snowball,distance=..5,limit=1,sort=nearest]
execute unless score @s counter_2 matches 1.. run scoreboard players set @s counter_2 19
scoreboard players reset @s useSnowball