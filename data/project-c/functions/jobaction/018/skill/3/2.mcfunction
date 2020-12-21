execute if entity @s[team=RedDummy] run loot give @a[team=Red,tag=Battle] loot project-c:wnkm/018/bread
execute if entity @s[team=BlueDummy] run loot give @a[team=Blue,tag=Battle] loot project-c:wnkm/018/bread
tag @s add 018
execute as @a[scores={jobNumber=18},tag=Battle] if score @s playerNumber = @e[tag=018,limit=1,sort=nearest] playerNumber run loot give @s loot project-c:wnkm/018/bread
tag @s remove 018


execute if entity @s[team=RedDummy] run playsound minecraft:entity.player.levelup master @a[team=Red] ~ -20 ~ 0 2 1
execute if entity @s[team=BlueDummy] run playsound minecraft:entity.player.levelup master @a[team=Blue] ~ -20 ~ 0 2 1
execute if entity @s[team=RedDummy] run playsound minecraft:entity.player.levelup master @a[team=!Red] ~ ~ ~ 1.5 2
execute if entity @s[team=BlueDummy] run playsound minecraft:entity.player.levelup master @a[team=!Blue] ~ ~ ~ 1.5 2
execute unless entity @s[team=RedDummy] unless entity @s[team=BlueDummy] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1.5 2

data merge block 99 2 -120 {auto:1b}
kill @e[tag=018-seedVil,type=minecraft:vindicator,limit=1,sort=nearest]
kill @s
