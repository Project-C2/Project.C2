execute if entity @s[scores={Selectsneak=1..,drop=1..,relicCount2=0}] run scoreboard players add @s relicCount 1
execute if entity @s[scores={Selectsneak=1..,relicCount=2..,drop=1..,relicCount2=0}] run scoreboard players set @s relicCount 0
execute if entity @s[scores={Selectsneak=1..,drop=1..,relicCount2=0}] run tag @s add JobChanged

execute if entity @s[scores={relicCount=1,Selectsneak=1..,drop=1..,relicCount2=0}] run scoreboard players operation @s jobNumber = @s F_job1
execute if entity @s[scores={relicCount=0,Selectsneak=1..,drop=1..,relicCount2=0}] run scoreboard players operation @s jobNumber = @s F_job2


execute if entity @s[scores={Selectsneak=1..,drop=1..,relicCount2=0}] run data merge block -75 49 -123 {auto:1b}

execute if entity @s[scores={relicCount2=1..}] run scoreboard players remove @s relicCount2 1

scoreboard players reset @s[scores={Selectsneak=1..}] Selectsneak
