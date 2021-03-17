scoreboard players set @s CT1 1000

execute at @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^0.2 {Tags:["007dummy"],Marker:1b,Invisible:1b,NoGravity:1b}

kill @e[type=snowball,limit=1,sort=nearest]

execute if entity @s[scores={counter_1=0}] run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 2
execute if entity @s[scores={counter_1=0}] run particle flame ~ ~1 ~ 0 0 0 0.2 10
execute at @s if entity @s[scores={counter_1=0}] anchored eyes run summon fireball ^ ^ ^1 {ExplosionPower:1,Tags:["FEChargeF"]}

execute if entity @s[scores={counter_1=1}] run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 1
execute if entity @s[scores={counter_1=1}] run particle flame ~ ~1 ~ 0 0 0 0.2 200
execute at @s if entity @s[scores={counter_1=1}] anchored eyes run summon fireball ^ ^ ^1 {ExplosionPower:2,Tags:["FEChargeF"]}

execute if entity @s[scores={counter_1=2}] run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1 0.5
execute if entity @s[scores={counter_1=2}] run particle flame ~ ~1 ~ 0 0 0 0.2 400
execute at @s if entity @s[scores={counter_1=2}] anchored eyes run summon fireball ^ ^ ^1 {ExplosionPower:3,Tags:["FECharge2","FEChargeF"]}

execute if entity @s[scores={counter_1=2}] run data merge block -37 2 -122 {auto:1b}

data modify entity @e[tag=FEChargeF,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=FEChargeF,limit=1] power set from entity @e[tag=007dummy,limit=1] Pos
execute if entity @s[team=Red] run team join RedDummy @e[tag=FEChargeF]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=FEChargeF]
kill @e[tag=007dummy]
tag @e[tag=FEChargeF] remove FEChargeF

scoreboard players set @s counter 0
scoreboard players set @s counter_1 0
replaceitem entity @s hotbar.4 minecraft:end_crystal{display:{Name:'{"text":"チャージ"}',Lore:['{"text":"1~3段階までチャージできる。"}']}} 1


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1