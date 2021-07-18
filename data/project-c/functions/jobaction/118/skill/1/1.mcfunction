scoreboard players remove @s counter_1 1
scoreboard players add @s counter_5 1
scoreboard players add @s Mana 1

scoreboard players set @s OutCombat 0

tag @s add 118-1--

execute as @a[tag=Battle] if score @s playerNumber = @a[tag=118-1--,limit=1] counter_3 run function project-c:jobaction/118/skill/1/resonance
tag @s remove 118-1--

execute if score @s Mana matches 10.. run scoreboard players reset @s Mana

execute if score @s counter_1 matches 0 if score @s stockcounter > @s subcounter run scoreboard players add @s advancement1 1