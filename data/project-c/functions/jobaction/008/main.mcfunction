#実行者     -> jobNumber = -n-
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={aviate=100..},team=Red,gamemode=!spectator] run effect give @e[team=Blue,tag=Battle,distance=..3] minecraft:instant_damage 1 0
execute if entity @s[scores={aviate=100..},team=Blue,gamemode=!spectator] run effect give @e[team=Red,tag=Battle,distance=..3] minecraft:instant_damage 1 0

execute if entity @s[scores={aviate=100..},gamemode=!spectator] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.1 1.5
execute if entity @s[scores={aviate=100..},gamemode=!spectator] run particle flame ~ ~ ~ 0.2 0.2 0.2 0.1 10


execute if entity @s[nbt={OnGround:1b},scores={counter_1=..4}] run scoreboard players add @s counter 1

execute if entity @s[nbt={HurtTime:9s}] run scoreboard players set @s counter 0

execute if entity @s[scores={counter=30..}] run scoreboard players add @s counter_1 1
execute if entity @s[scores={counter=30..}] run function project-c:jobaction/008/setquartz
execute if entity @s[scores={counter=30..}] run scoreboard players set @s counter 0

execute if entity @s[scores={CT2=1200..},gamemode=!spectator,tag=fall400,nbt={OnGround:1b}] run function project-c:jobaction/008/skill/2/0

execute if entity @s[scores={counter_1=1..,sneak=1..,CT3=1240..},gamemode=!spectator] run function project-c:jobaction/008/skill/3/0

execute if entity @s[tag=!jumpBug,nbt={OnGround:0b}] run function project-c:jobaction/008/jumpbug
execute if entity @s[tag=jumpBug,nbt={OnGround:1b}] run tag @s remove jumpBug

scoreboard players reset @s aviate
scoreboard players reset @s sneak