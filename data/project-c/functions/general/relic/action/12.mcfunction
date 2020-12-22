execute as @a[scores={relic=6},gamemode=!spectator] at @s run function project-c:general/relic/action/daisyou

execute if entity @s[scores={jobNumber=27,Mana=..160}] run scoreboard players add @s Mana 1
execute if entity @s[scores={jobNumber=28,counter_1=..1}] run scoreboard players add @s counter 1
execute if entity @s[scores={jobNumber=7,counter_1=..1}] run scoreboard players add @s counter 1

