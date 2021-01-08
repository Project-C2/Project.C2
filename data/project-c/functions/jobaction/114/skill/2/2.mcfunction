scoreboard players set @s counter_2 0
execute as @e[tag=Ramen] if score @s counter_2 = @a[tag=RamenSummoner,limit=1] playerNumber run tag @s add MyRamen
scoreboard players set @e[tag=MyRamen] counter_4 0
scoreboard players set @e[tag=MyRamen] counter 4
tag @e[tag=MyRamen] remove MyRamen