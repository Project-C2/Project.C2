#実行者     -> jobNumber = -n-
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={aviate=100..},team=Red,gamemode=!spectator] run effect give @e[team=Blue,tag=Battle,distance=..3] minecraft:instant_damage 1 0
execute if entity @s[scores={aviate=100..},team=Blue,gamemode=!spectator] run effect give @e[team=Red,tag=Battle,distance=..3] minecraft:instant_damage 1 0

execute if entity @s[scores={aviate=100..},gamemode=!spectator] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.1 1.5
execute if entity @s[scores={aviate=100..},gamemode=!spectator] run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.1 5


execute if entity @s[nbt={OnGround:1b},scores={counter_1=..4}] run scoreboard players add @s counter 1

execute if entity @s[nbt={HurtTime:9s}] run scoreboard players set @s counter 0

execute if entity @s[scores={counter=30..}] run scoreboard players add @s counter_1 1
execute if entity @s[scores={counter=30..}] run function project-c:jobaction/008/setquartz
execute if entity @s[scores={counter=30..}] run scoreboard players set @s counter 0

execute if entity @s[scores={CT2=1200..,aviate=130..},gamemode=!spectator,nbt={OnGround:0b}] run tag @s add aviate130
execute if entity @s[scores={CT2=1200..},gamemode=!spectator,nbt={OnGround:1b},tag=aviate130] run function project-c:jobaction/008/skill/2/0

execute if entity @s[scores={counter_1=1..,sneak=1..,CT3=1240..},gamemode=!spectator] run function project-c:jobaction/008/skill/3/0

execute if entity @s[scores={aviate=1..},gamemode=!spectator] run tag @s add aviate1
execute if entity @s[tag=aviate1,gamemode=!spectator] run effect give @s jump_boost 1 255 true
execute if entity @s[tag=aviate1,gamemode=!spectator] run attribute @s minecraft:generic.knockback_resistance base set 1
execute if entity @s[gamemode=!spectator,nbt={OnGround:1b},tag=aviate1] run attribute @s minecraft:generic.knockback_resistance base set 0
execute if entity @s[gamemode=!spectator,nbt={OnGround:1b},tag=aviate1] run effect clear @s jump_boost
execute if entity @s[gamemode=!spectator,nbt={OnGround:1b},tag=aviate1] run tag @s remove aviate1

scoreboard players reset @s aviate
scoreboard players reset @s fall
scoreboard players reset @s sneak