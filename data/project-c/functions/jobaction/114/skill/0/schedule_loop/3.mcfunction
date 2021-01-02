# 実行者 -> tag = Ramen
# 実行位置 -> 実行者

execute if entity @s[team=RedDummy] as @e[team=Blue,distance=..2,nbt={HurtTime:0s}] at @s run summon arrow ~ ~2.5 ~ {LeftOwner:1b,CustomName:"{\"text\":\"ラーメン\"}",Tags:["Initializing"],CustomNameVisible:0,Motion:[0.0,-1.0,0.0],pickup:0,damage:2,Silent:1b}
execute if entity @s[team=BlueDummy] as @e[team=Red,distance=..2,nbt={HurtTime:0s}] at @s run summon arrow ~ ~2.5 ~ {LeftOwner:1b,CustomName:"{\"text\":\"ラーメン\"}",Tags:["Initializing"],CustomNameVisible:0,Motion:[0.0,-1.0,0.0],pickup:0,damage:2,Silent:1b}

scoreboard players operation #SushiAttackDamage counter = @s counter_3
execute store result score #BladerAttackDamage counter run attribute @a[tag=DarkSushiBlader,limit=1] minecraft:generic.attack_damage get
scoreboard players operation #SushiAttackDamage counter += #BladerAttackDamage counter
execute as @e[tag=Initializing] store result entity @s damage double 1 run scoreboard players get #SushiAttackDamage counter
tag @e[tag=Initializing] remove Initializing