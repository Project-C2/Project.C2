scoreboard players set @s CT1 1000


execute if entity @s[scores={counter_1=0}] run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 2
execute if entity @s[scores={counter_1=0}] run particle flame ~ ~1 ~ 0 0 0 0.2 10
execute if entity @s[scores={counter_1=0}] at @e[type=minecraft:snowball,sort=nearest,limit=1,distance=..6] run summon fireball ^ ^-0.25 ^ {direction:[0.0d,0.0d,0.0d],ExplosionPower:1}

execute if entity @s[scores={counter_1=1}] run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 1
execute if entity @s[scores={counter_1=1}] run particle flame ~ ~1 ~ 0 0 0 0.2 200
execute if entity @s[scores={counter_1=1}] at @e[type=minecraft:snowball,sort=nearest,limit=1,distance=..6] run summon fireball ^ ^-0.25 ^ {direction:[0.0d,0.0d,0.0d],ExplosionPower:2}

execute if entity @s[scores={counter_1=2}] run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={counter_1=2}] run particle flame ~ ~1 ~ 0 0 0 0.2 400
execute if entity @s[scores={counter_1=2}] at @e[type=minecraft:snowball,sort=nearest,limit=1,distance=..6] run summon fireball ^ ^-0.25 ^ {direction:[0.0d,0.0d,0.0d],ExplosionPower:3,Tags:["FECharge2"]}

execute as @e[type=minecraft:snowball,sort=nearest,limit=1,distance=..5] positioned as @s run teleport @s ~ ~-1.2 ~
data merge entity @e[type=minecraft:snowball,sort=nearest,limit=1,distance=..6] {Motion:[0.0d,10.0d,0.0d]}

execute if entity @s[scores={counter_1=2}] run data merge block -37 2 -122 {auto:1b}

scoreboard players set @s counter 0
scoreboard players set @s counter_1 0
replaceitem entity @s hotbar.4 minecraft:end_crystal{display:{Name:"{\"text\":\"チャージ\"}",Lore:["{\"text\":\"1~3段階までチャージできる。"]}} 1


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1