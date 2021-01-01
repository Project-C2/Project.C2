tag @s add RamenSummoner
execute as @e[tag=Ramen] if score @s counter_2 = @a[tag=RamenSummoner,limit=1] playerNumber run tag @s add MyRamen
tag @e[tag=MyRamen,tag=!Inverted] add Reversing
tag @e[tag=MyRamen,tag=!Inverted] add Inverted
tag @e[tag=MyRamen,tag=Inverted,tag=!Reversing] remove Inverted
tag @e[tag=MyRamen,tag=Reversing] remove Reversing
tag @s remove RamenSummoner