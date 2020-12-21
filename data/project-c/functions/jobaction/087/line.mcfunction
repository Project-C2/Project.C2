scoreboard players add @s counter 1
kill @s[scores={counter=8..}]

particle dust 1 0 0 2 ^ ^ ^ 0 0 0 1 1 force @a[scores={jobNumber=87},gamemode=!spectator]
particle dust 1 0 0 2 ^ ^ ^1 0 0 0 1 1 force @a[scores={jobNumber=87},gamemode=!spectator]
particle dust 1 0 0 2 ^ ^ ^2 0 0 0 1 1 force @a[scores={jobNumber=87},gamemode=!spectator]
particle dust 1 0 0 2 ^ ^ ^3 0 0 0 1 1 force @a[scores={jobNumber=87},gamemode=!spectator]



teleport @s ^ ^ ^4 ~ ~

execute unless block ^ ^ ^1 air run kill @s

execute as @e[tag=087-line] at @s run function project-c:jobaction/087/line