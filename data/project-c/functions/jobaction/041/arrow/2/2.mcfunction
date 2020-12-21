scoreboard players add @e[tag=041-inferno-ef] counter 1
execute as @e[tag=041-inferno-ef] if score @s counter matches 1 at @s run function project-c:jobaction/041/arrow/2/2-1
scoreboard players add @e[tag=041-inferno-ef,tag=041-inferno-q,scores={counter=..63}] counter 2
scoreboard players set #041-dummy counter 9
execute as @e[tag=041-inferno-ef] if score @s counter matches ..64 run scoreboard players operation @s subcounter = @s counter
execute as @e[tag=041-inferno-ef] if score @s counter matches ..64 run scoreboard players operation @s subcounter %= #041-dummy counter
execute as @e[tag=041-inferno-ef] if score @s counter matches ..64 if score @s subcounter matches 0 at @s run function project-c:jobaction/041/arrow/2/2-9x
execute as @e[tag=041-inferno-ef] if score @s subcounter matches 5 at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.5
execute as @e[tag=041-inferno-ef] if score @s subcounter matches 5 if score @s counter matches 19.. at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.5
execute as @e[tag=041-inferno-ef] if score @s subcounter matches 5 if score @s counter matches 46.. at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 0.5
execute as @e[tag=041-inferno-ef] if score @s counter matches 1..9 at @s rotated ~ 90 run function project-c:jobaction/041/arrow/2/2-9
execute as @e[tag=041-inferno-ef] if score @s counter matches 1..9 at @s rotated ~180 90 run function project-c:jobaction/041/arrow/2/2-9

execute as @e[tag=041-inferno-ef] if score @s counter matches 10..18 at @s rotated ~ 90 run function project-c:jobaction/041/arrow/2/2-18
execute as @e[tag=041-inferno-ef] if score @s counter matches 10..18 at @s rotated ~120 90 run function project-c:jobaction/041/arrow/2/2-18
execute as @e[tag=041-inferno-ef] if score @s counter matches 10..18 at @s rotated ~240 90 run function project-c:jobaction/041/arrow/2/2-18

execute as @e[tag=041-inferno-ef] if score @s counter matches 19..27 at @s rotated ~ 90 run function project-c:jobaction/041/arrow/2/2-27
execute as @e[tag=041-inferno-ef] if score @s counter matches 19..27 at @s rotated ~90 90 run function project-c:jobaction/041/arrow/2/2-27
execute as @e[tag=041-inferno-ef] if score @s counter matches 19..27 at @s rotated ~180 90 run function project-c:jobaction/041/arrow/2/2-27
execute as @e[tag=041-inferno-ef] if score @s counter matches 19..27 at @s rotated ~270 90 run function project-c:jobaction/041/arrow/2/2-27

execute as @e[tag=041-inferno-ef] if score @s counter matches 28..36 at @s rotated ~ 90 run function project-c:jobaction/041/arrow/2/2-36
execute as @e[tag=041-inferno-ef] if score @s counter matches 28..36 at @s rotated ~72 90 run function project-c:jobaction/041/arrow/2/2-36
execute as @e[tag=041-inferno-ef] if score @s counter matches 28..36 at @s rotated ~144 90 run function project-c:jobaction/041/arrow/2/2-36
execute as @e[tag=041-inferno-ef] if score @s counter matches 28..36 at @s rotated ~216 90 run function project-c:jobaction/041/arrow/2/2-36
execute as @e[tag=041-inferno-ef] if score @s counter matches 28..36 at @s rotated ~288 90 run function project-c:jobaction/041/arrow/2/2-36

execute as @e[tag=041-inferno-ef] if score @s counter matches 37..45 at @s rotated ~ 90 run function project-c:jobaction/041/arrow/2/2-45
execute as @e[tag=041-inferno-ef] if score @s counter matches 37..45 at @s rotated ~60 90 run function project-c:jobaction/041/arrow/2/2-45
execute as @e[tag=041-inferno-ef] if score @s counter matches 37..45 at @s rotated ~120 90 run function project-c:jobaction/041/arrow/2/2-45
execute as @e[tag=041-inferno-ef] if score @s counter matches 37..45 at @s rotated ~180 90 run function project-c:jobaction/041/arrow/2/2-45
execute as @e[tag=041-inferno-ef] if score @s counter matches 37..45 at @s rotated ~240 90 run function project-c:jobaction/041/arrow/2/2-45
execute as @e[tag=041-inferno-ef] if score @s counter matches 37..45 at @s rotated ~300 90 run function project-c:jobaction/041/arrow/2/2-45

execute as @e[tag=041-inferno-ef] if score @s counter matches 46..54 at @s rotated ~ 90 run function project-c:jobaction/041/arrow/2/2-54
execute as @e[tag=041-inferno-ef] if score @s counter matches 46..54 at @s rotated ~51 90 run function project-c:jobaction/041/arrow/2/2-54
execute as @e[tag=041-inferno-ef] if score @s counter matches 46..54 at @s rotated ~102 90 run function project-c:jobaction/041/arrow/2/2-54
execute as @e[tag=041-inferno-ef] if score @s counter matches 46..54 at @s rotated ~153 90 run function project-c:jobaction/041/arrow/2/2-54
execute as @e[tag=041-inferno-ef] if score @s counter matches 46..54 at @s rotated ~205 90 run function project-c:jobaction/041/arrow/2/2-54
execute as @e[tag=041-inferno-ef] if score @s counter matches 46..54 at @s rotated ~257 90 run function project-c:jobaction/041/arrow/2/2-54
execute as @e[tag=041-inferno-ef] if score @s counter matches 46..54 at @s rotated ~308 90 run function project-c:jobaction/041/arrow/2/2-54

execute as @e[tag=041-inferno-ef] if score @s counter matches 55..63 at @s rotated ~ 90 run function project-c:jobaction/041/arrow/2/2-63
execute as @e[tag=041-inferno-ef] if score @s counter matches 55..63 at @s rotated ~45 90 run function project-c:jobaction/041/arrow/2/2-63
execute as @e[tag=041-inferno-ef] if score @s counter matches 55..63 at @s rotated ~90 90 run function project-c:jobaction/041/arrow/2/2-63
execute as @e[tag=041-inferno-ef] if score @s counter matches 55..63 at @s rotated ~135 90 run function project-c:jobaction/041/arrow/2/2-63
execute as @e[tag=041-inferno-ef] if score @s counter matches 55..63 at @s rotated ~180 90 run function project-c:jobaction/041/arrow/2/2-63
execute as @e[tag=041-inferno-ef] if score @s counter matches 55..63 at @s rotated ~225 90 run function project-c:jobaction/041/arrow/2/2-63
execute as @e[tag=041-inferno-ef] if score @s counter matches 55..63 at @s rotated ~270 90 run function project-c:jobaction/041/arrow/2/2-63
execute as @e[tag=041-inferno-ef] if score @s counter matches 55..63 at @s rotated ~315 90 run function project-c:jobaction/041/arrow/2/2-63

execute as @e[tag=041-inferno-ef] if score @s counter matches 63 at @s run function project-c:jobaction/041/arrow/2/2-64
execute as @e[tag=041-inferno-ef] if score @s counter matches 65.. at @s run function project-c:jobaction/041/arrow/2/2-65
execute as @e[tag=041-inferno-ef,tag=!041-inferno-q] if score @s counter matches ..64 at @s run tp @s ~ ~ ~ ~11.25 0
execute as @e[tag=041-inferno-ef,tag=041-inferno-q] if score @s counter matches ..64 at @s run tp @s ~ ~ ~ ~33.75 0