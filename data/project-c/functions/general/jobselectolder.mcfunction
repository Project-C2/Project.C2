execute as @a[tag=JobChanged] at @s run particle firework ~ ~1 ~ 0 0 0 0.3 50
execute as @a[tag=JobChanged] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
scoreboard players reset @a[tag=JobChanged] usedSkill
replaceitem entity @a[tag=JobChanged] armor.chest minecraft:air
effect clear @a[scores={relic=..31},tag=JobChanged] minecraft:regeneration
effect clear @a[scores={relic=..31},tag=JobChanged] minecraft:invisibility
effect clear @a[scores={relic=..31},tag=JobChanged] minecraft:jump_boost
effect clear @a[scores={relic=..31},tag=JobChanged] minecraft:mining_fatigue
effect clear @a[scores={relic=..31},tag=JobChanged] minecraft:speed
scoreboard players set @a[tag=JobChanged] Mana 0
scoreboard players set @a[tag=JobChanged] MagicFatigue 0
scoreboard players set @a[tag=JobChanged] stockcounter 0

scoreboard players set @a[scores={relic=32}] relicCount2 10

execute as @a[tag=JobChanged] at @s run attribute @s minecraft:generic.knockback_resistance base set 0

scoreboard players reset @a[tag=JobChanged] teleportCount
scoreboard players set @a[tag=JobChanged] subcounter 0

scoreboard players set @a[tag=JobChanged] counter 0
scoreboard players set @a[tag=JobChanged] counter_1 0
scoreboard players set @a[tag=JobChanged] counter_2 0
scoreboard players set @a[tag=JobChanged] counter_3 0
scoreboard players set @a[tag=JobChanged] counter_4 0
scoreboard players set @a[tag=JobChanged] counter_5 0


execute as @a[scores={relic=..31},tag=JobChanged] at @s unless entity @s[scores={relic=30},tag=Battle] run scoreboard players set @s relicCount 0
scoreboard players set @a[scores={relic=..31},tag=JobChanged] relicCount2 0
scoreboard players set @a[tag=JobChanged] damageTaken 0
effect clear @a[scores={relic=..31},tag=JobChanged] minecraft:absorption
execute unless entity @a[scores={jobNumber=57}] run weather clear
execute if entity @a[tag=JobChanged,gamemode=spectator] run gamemode adventure @s

execute as @a[scores={jobNumber=0}] at @s run scoreboard players set @s relic 0

execute as @a[tag=JobChanged] at @s run function project-c:general/removetagforinitialize

data merge block -111 2 -122 {auto:0b}
execute as @a[scores={jobNumber=1}] at @s run data merge block -111 2 -122 {auto:1b}
data merge block -99 2 -122 {auto:0b}
execute as @a[scores={jobNumber=2}] at @s run data merge block -99 2 -122 {auto:1b}
data merge block -87 2 -122 {auto:0b}
execute as @a[scores={jobNumber=3}] at @s run data merge block -87 2 -122 {auto:1b}
data merge block -75 2 -122 {auto:0b}
execute as @a[scores={jobNumber=4}] at @s run data merge block -75 2 -122 {auto:1b}
data merge block -63 2 -122 {auto:0b}
execute as @a[scores={jobNumber=5}] at @s run data merge block -63 2 -122 {auto:1b}
data merge block -51 2 -122 {auto:0b}
execute as @a[scores={jobNumber=6}] at @s run data merge block -51 2 -122 {auto:1b}
data merge block -39 2 -122 {auto:0b}
execute as @a[scores={jobNumber=7}] at @s run data merge block -39 2 -122 {auto:1b}
data merge block -27 2 -122 {auto:0b}
execute as @a[scores={jobNumber=8}] at @s run data merge block -27 2 -122 {auto:1b}
data merge block -15 2 -122 {auto:0b}
execute as @a[scores={jobNumber=9}] at @s run data merge block -15 2 -122 {auto:1b}
data merge block -3 2 -122 {auto:0b}
execute as @a[scores={jobNumber=10}] at @s run data merge block -3 2 -122 {auto:1b}
data merge block 9 2 -122 {auto:0b}
execute as @a[scores={jobNumber=11}] at @s run data merge block 9 2 -122 {auto:1b}
data merge block 21 2 -122 {auto:0b}
execute as @a[scores={jobNumber=12}] at @s run data merge block 21 2 -122 {auto:1b}
data merge block 33 2 -122 {auto:0b}
execute as @a[scores={jobNumber=13}] at @s run data merge block 33 2 -122 {auto:1b}
data merge block 45 2 -122 {auto:0b}
execute as @a[scores={jobNumber=14}] at @s run data merge block 45 2 -122 {auto:1b}

data merge block 57 2 -122 {auto:0b}
execute as @a[scores={jobNumber=15}] at @s run data merge block 57 2 -122 {auto:1b}
data merge block 69 2 -122 {auto:0b}
execute as @a[scores={jobNumber=16}] at @s run data merge block 69 2 -122 {auto:1b}
data merge block 81 2 -122 {auto:0b}
execute as @a[scores={jobNumber=17}] at @s run data merge block 81 2 -122 {auto:1b}
data merge block 93 2 -122 {auto:0b}
execute as @a[scores={jobNumber=18}] at @s run data merge block 93 2 -122 {auto:1b}
data merge block 105 2 -122 {auto:0b}
execute as @a[scores={jobNumber=19}] at @s run data merge block 105 2 -122 {auto:1b}
data merge block 117 2 -122 {auto:0b}
execute as @a[scores={jobNumber=20}] at @s run data merge block 117 2 -122 {auto:1b}
data merge block 129 2 -122 {auto:0b}
execute as @a[scores={jobNumber=21}] at @s run data merge block 129 2 -122 {auto:1b}
data merge block -111 2 -71 {auto:0b}
execute as @a[scores={jobNumber=22}] at @s run data merge block -111 2 -71 {auto:1b}
data merge block -99 2 -71 {auto:0b}
execute as @a[scores={jobNumber=23}] at @s run data merge block -99 2 -71 {auto:1b}
data merge block -87 2 -71 {auto:0b}
execute as @a[scores={jobNumber=24}] at @s run data merge block -87 2 -71 {auto:1b}
data merge block -75 2 -71 {auto:0b}
execute as @a[scores={jobNumber=25}] at @s run data merge block -75 2 -71 {auto:1b}
data merge block -63 2 -71 {auto:0b}
execute as @a[scores={jobNumber=26}] at @s run data merge block -63 2 -71 {auto:1b}
data merge block -51 2 -71 {auto:0b}
execute as @a[scores={jobNumber=27}] at @s run data merge block -51 2 -71 {auto:1b}
data merge block -39 2 -71 {auto:0b}
execute as @a[scores={jobNumber=28}] at @s run data merge block -39 2 -71 {auto:1b}
data merge block -27 2 -71 {auto:0b}
execute as @a[scores={jobNumber=29}] at @s run data merge block -27 2 -71 {auto:1b}
data merge block -15 2 -71 {auto:0b}
execute as @a[scores={jobNumber=30}] at @s run data merge block -15 2 -71 {auto:1b}
data merge block -3 2 -71 {auto:0b}
execute as @a[scores={jobNumber=31}] at @s run data merge block -3 2 -71 {auto:1b}
data merge block 9 2 -71 {auto:0b}
execute as @a[scores={jobNumber=32}] at @s run data merge block 9 2 -71 {auto:1b}
data merge block 21 2 -71 {auto:0b}
execute as @a[scores={jobNumber=33}] at @s run data merge block 21 2 -71 {auto:1b}
data merge block 33 2 -71 {auto:0b}
execute as @a[scores={jobNumber=34}] at @s run data merge block 33 2 -71 {auto:1b}
data merge block 45 2 -71 {auto:0b}
execute as @a[scores={jobNumber=35}] at @s run data merge block 45 2 -71 {auto:1b}
data merge block 57 2 -71 {auto:0b}
execute as @a[scores={jobNumber=36}] at @s run data merge block 57 2 -71 {auto:1b}
data merge block 69 2 -71 {auto:0b}
execute as @a[scores={jobNumber=37}] at @s run data merge block 69 2 -71 {auto:1b}
data merge block 81 2 -71 {auto:0b}
execute as @a[scores={jobNumber=38}] at @s run data merge block 81 2 -71 {auto:1b}
data merge block 93 2 -71 {auto:0b}
execute as @a[scores={jobNumber=39}] at @s run data merge block 93 2 -71 {auto:1b}
data merge block 105 2 -71 {auto:0b}
execute as @a[scores={jobNumber=40}] at @s run data merge block 105 2 -71 {auto:1b}
data merge block 117 2 -71 {auto:0b}
execute as @a[scores={jobNumber=41}] at @s run data merge block 117 2 -71 {auto:1b}
data merge block 129 2 -71 {auto:0b}
execute as @a[scores={jobNumber=42}] at @s run data merge block 129 2 -71 {auto:1b}
data merge block -111 2 -20 {auto:0b}
execute as @a[scores={jobNumber=43}] at @s run data merge block -111 2 -20 {auto:1b}
data merge block -99 2 -20 {auto:0b}
execute as @a[scores={jobNumber=44}] at @s run data merge block -99 2 -20 {auto:1b}
data merge block -87 2 -20 {auto:0b}
execute as @a[scores={jobNumber=45}] at @s run data merge block -87 2 -20 {auto:1b}
data merge block -75 2 -20 {auto:0b}
execute as @a[scores={jobNumber=46}] at @s run data merge block -75 2 -20 {auto:1b}
data merge block -63 2 -20 {auto:0b}
execute as @a[scores={jobNumber=47}] at @s run data merge block -63 2 -20 {auto:1b}
data merge block -51 2 -20 {auto:0b}
execute as @a[scores={jobNumber=48}] at @s run data merge block -51 2 -20 {auto:1b}
data merge block -39 2 -20 {auto:0b}
execute as @a[scores={jobNumber=49}] at @s run data merge block -39 2 -20 {auto:1b}
data merge block -27 2 -20 {auto:0b}
execute as @a[scores={jobNumber=50}] at @s run data merge block -27 2 -20 {auto:1b}


execute as @a[scores={jobNumber=73},tag=JobChanged] at @s run scoreboard players set @s MagicFatigue 0
execute as @a[scores={jobNumber=73},tag=JobChanged] at @s run function project-c:jobaction/073/changejob
advancement revoke @a[scores={jobNumber=73},tag=JobChanged] only project-c:radiochat/amchat


data merge block 955 1 9 {auto:1b}