execute as @a[tag=JobChanged] at @s run particle firework ~ ~1 ~ 0 0 0 0.3 50
execute as @a[tag=JobChanged] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute as @a[tag=JobChanged,tag=job118] run function project-c:jobaction/118/change-to-other
scoreboard players reset @a[tag=JobChanged] usedSkill
replaceitem entity @a[tag=JobChanged] armor.chest minecraft:air
execute if entity @a[scores={relic=..31},tag=JobChanged,limit=1] run effect clear @a[scores={relic=..31},tag=JobChanged] minecraft:regeneration
execute if entity @a[scores={relic=..31},tag=JobChanged,limit=1] run effect clear @a[scores={relic=..31},tag=JobChanged] minecraft:invisibility
execute if entity @a[scores={relic=..31},tag=JobChanged,limit=1] run effect clear @a[scores={relic=..31},tag=JobChanged] minecraft:jump_boost
execute if entity @a[scores={relic=..31},tag=JobChanged,limit=1] run effect clear @a[scores={relic=..31},tag=JobChanged] minecraft:mining_fatigue
execute if entity @a[scores={relic=..31},tag=JobChanged,limit=1] run effect clear @a[scores={relic=..31},tag=JobChanged] minecraft:speed
scoreboard players set @a[tag=JobChanged] Mana 0
scoreboard players set @a[tag=JobChanged] MagicFatigue 0
scoreboard players set @a[tag=JobChanged] stockcounter 0

scoreboard players set @a[scores={relic=32}] relicCount2 10

execute as @a[tag=JobChanged] at @s run attribute @s minecraft:generic.knockback_resistance base set 0
execute as @a[tag=JobChanged] at @s run attribute @s minecraft:generic.armor base set 0
execute as @a[tag=JobChanged] at @s run attribute @s minecraft:generic.attack_damage base set 1
execute as @a[tag=JobChanged] at @s run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @a[tag=JobChanged] at @s run attribute @s minecraft:generic.attack_speed base set 4

scoreboard players reset @a[tag=JobChanged] teleportCount
scoreboard players set @a[tag=JobChanged] subcounter 0

scoreboard players set @a[tag=JobChanged] counter 0
scoreboard players set @a[tag=JobChanged] counter_1 0
scoreboard players set @a[tag=JobChanged] counter_2 0
scoreboard players set @a[tag=JobChanged] counter_3 0
scoreboard players set @a[tag=JobChanged] counter_4 0
scoreboard players set @a[tag=JobChanged] counter_5 0
scoreboard players set @a[tag=JobChanged] counter_6 0
scoreboard players set @a[tag=JobChanged] counter_7 0
scoreboard players set @a[tag=JobChanged] counter_8 0
scoreboard players set @a[tag=JobChanged] counter_9 0
xp add @a[tag=JobChanged] -2147483648 levels


execute if entity @a[scores={relic=..31},tag=JobChanged,limit=1] as @a[scores={relic=..31},tag=JobChanged] at @s unless entity @s[scores={relic=30},tag=Battle] run scoreboard players set @s relicCount 0
execute if entity @a[scores={relic=..31},tag=JobChanged,limit=1] run scoreboard players set @a[scores={relic=..31},tag=JobChanged] relicCount2 0
scoreboard players set @a[tag=JobChanged] damageTaken 0
execute if entity @a[scores={relic=..31},tag=JobChanged,limit=1] run effect clear @a[scores={relic=..31},tag=JobChanged] minecraft:absorption
execute unless entity @a[scores={jobNumber=57},limit=1] run weather clear
execute if entity @a[tag=JobChanged,gamemode=spectator,limit=1] run gamemode adventure @a[tag=JobChanged,gamemode=spectator]

execute if entity @a[scores={jobNumber=0},limit=1] run scoreboard players set @a[scores={jobNumber=0}] relic 0

execute as @a[tag=JobChanged] at @s run function project-c:general/removetagforinitialize

data merge block -111 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=1},limit=1] run data merge block -111 2 -122 {auto:1b}
data merge block -99 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=2},limit=1] run data merge block -99 2 -122 {auto:1b}
data merge block -87 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=3},limit=1] run data merge block -87 2 -122 {auto:1b}
data merge block -75 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=4},limit=1] run data merge block -75 2 -122 {auto:1b}
data merge block -63 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=5},limit=1] run data merge block -63 2 -122 {auto:1b}
data merge block -51 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=6},limit=1] run data merge block -51 2 -122 {auto:1b}
data merge block -39 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=7},limit=1] run data merge block -39 2 -122 {auto:1b}
data merge block -27 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=8},limit=1] run data merge block -27 2 -122 {auto:1b}
data merge block -15 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=9},limit=1] run data merge block -15 2 -122 {auto:1b}
data merge block -3 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=10},limit=1] run data merge block -3 2 -122 {auto:1b}
data merge block 9 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=11},limit=1] run data merge block 9 2 -122 {auto:1b}
data merge block 21 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=12},limit=1] run data merge block 21 2 -122 {auto:1b}
data merge block 33 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=13},limit=1] run data merge block 33 2 -122 {auto:1b}
data merge block 45 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=14},limit=1] run data merge block 45 2 -122 {auto:1b}

data merge block 57 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=15},limit=1] run data merge block 57 2 -122 {auto:1b}
data merge block 69 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=16},limit=1] run data merge block 69 2 -122 {auto:1b}
data merge block 81 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=17},limit=1] run data merge block 81 2 -122 {auto:1b}
data merge block 93 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=18},limit=1] run data merge block 93 2 -122 {auto:1b}
data merge block 105 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=19},limit=1] run data merge block 105 2 -122 {auto:1b}
data merge block 117 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=20},limit=1] run data merge block 117 2 -122 {auto:1b}
data merge block 129 2 -122 {auto:0b}
execute if entity @a[scores={jobNumber=21},limit=1] run data merge block 129 2 -122 {auto:1b}
data merge block -111 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=22},limit=1] run data merge block -111 2 -71 {auto:1b}
data merge block -99 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=23},limit=1] run data merge block -99 2 -71 {auto:1b}
data merge block -87 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=24},limit=1] run data merge block -87 2 -71 {auto:1b}
data merge block -75 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=25},limit=1] run data merge block -75 2 -71 {auto:1b}
data merge block -63 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=26},limit=1] run data merge block -63 2 -71 {auto:1b}
data merge block -51 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=27},limit=1] run data merge block -51 2 -71 {auto:1b}
data merge block -39 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=28},limit=1] run data merge block -39 2 -71 {auto:1b}
data merge block -27 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=29},limit=1] run data merge block -27 2 -71 {auto:1b}
data merge block -15 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=30},limit=1] run data merge block -15 2 -71 {auto:1b}
data merge block -3 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=31},limit=1] run data merge block -3 2 -71 {auto:1b}
data merge block 9 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=32},limit=1] run data merge block 9 2 -71 {auto:1b}
data merge block 21 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=33},limit=1] run data merge block 21 2 -71 {auto:1b}
data merge block 33 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=34},limit=1] run data merge block 33 2 -71 {auto:1b}
data merge block 45 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=35},limit=1] run data merge block 45 2 -71 {auto:1b}
data merge block 57 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=36},limit=1] run data merge block 57 2 -71 {auto:1b}
data merge block 69 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=37},limit=1] run data merge block 69 2 -71 {auto:1b}
data merge block 81 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=38},limit=1] run data merge block 81 2 -71 {auto:1b}
data merge block 93 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=39},limit=1] run data merge block 93 2 -71 {auto:1b}
data merge block 105 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=40},limit=1] run data merge block 105 2 -71 {auto:1b}
data merge block 117 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=41},limit=1] run data merge block 117 2 -71 {auto:1b}
data merge block 129 2 -71 {auto:0b}
execute if entity @a[scores={jobNumber=42},limit=1] run data merge block 129 2 -71 {auto:1b}
data merge block -111 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=43},limit=1] run data merge block -111 2 -20 {auto:1b}
data merge block -99 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=44},limit=1] run data merge block -99 2 -20 {auto:1b}
data merge block -87 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=45},limit=1] run data merge block -87 2 -20 {auto:1b}
data merge block -75 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=46},limit=1] run data merge block -75 2 -20 {auto:1b}
data merge block -63 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=47},limit=1] run data merge block -63 2 -20 {auto:1b}
data merge block -51 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=48},limit=1] run data merge block -51 2 -20 {auto:1b}
data merge block -39 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=49},limit=1] run data merge block -39 2 -20 {auto:1b}
data merge block -27 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=50},limit=1] run data merge block -27 2 -20 {auto:1b}
data merge block -15 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=51},limit=1] run data merge block -15 2 -20 {auto:1b}
data merge block 21 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=52},limit=1] run data merge block 21 2 -20 {auto:1b}
data merge block 33 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=53},limit=1] run data merge block 33 2 -20 {auto:1b}
data merge block 45 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=54},limit=1] run data merge block 45 2 -20 {auto:1b}
data merge block 57 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=55},limit=1] run data merge block 57 2 -20 {auto:1b}
data merge block 69 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=56},limit=1] run data merge block 69 2 -20 {auto:1b}
data merge block 81 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=57},limit=1] run data merge block 81 2 -20 {auto:1b}
data merge block 93 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=58},limit=1] run data merge block 93 2 -20 {auto:1b}
data merge block 105 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=59},limit=1] run data merge block 105 2 -20 {auto:1b}
data merge block 117 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=60},limit=1] run data merge block 117 2 -20 {auto:1b}
data merge block 129 2 -20 {auto:0b}
execute if entity @a[scores={jobNumber=61},limit=1] run data merge block 129 2 -20 {auto:1b}
data merge block -111 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=62},limit=1] run data merge block -111 2 31 {auto:1b}
data merge block -99 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=63},limit=1] run data merge block -99 2 31 {auto:1b}
data merge block -87 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=64},limit=1] run data merge block -87 2 31 {auto:1b}
data merge block -75 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=65},limit=1] run data merge block -75 2 31 {auto:1b}
data merge block -63 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=66},limit=1] run data merge block -63 2 31 {auto:1b}
data merge block -51 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=67},limit=1] run data merge block -51 2 31 {auto:1b}
data merge block -39 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=68},limit=1] run data merge block -39 2 31 {auto:1b}
data merge block -27 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=69},limit=1] run data merge block -27 2 31 {auto:1b}
data merge block -15 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=70},limit=1] run data merge block -15 2 31 {auto:1b}
data merge block -3 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=71},limit=1] run data merge block -3 2 31 {auto:1b}
data merge block 9 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=72},limit=1] run data merge block 9 2 31 {auto:1b}
data merge block 21 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=73},limit=1] run data merge block 21 2 31 {auto:1b}
data merge block 33 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=74},limit=1] run data merge block 33 2 31 {auto:1b}
data merge block 45 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=75},limit=1] run data merge block 45 2 31 {auto:1b}
data merge block 57 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=76},limit=1] run data merge block 57 2 31 {auto:1b}
data merge block 69 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=77},limit=1] run data merge block 69 2 31 {auto:1b}
data merge block 81 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=78},limit=1] run data merge block 81 2 31 {auto:1b}
data merge block 93 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=79},limit=1] run data merge block 93 2 31 {auto:1b}
data merge block 105 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=80},limit=1] run data merge block 105 2 31 {auto:1b}
data merge block 117 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=81},limit=1] run data merge block 117 2 31 {auto:1b}
data merge block 129 2 31 {auto:0b}
execute if entity @a[scores={jobNumber=82},limit=1] run data merge block 129 2 31 {auto:1b}
data merge block -111 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=83},limit=1] run data merge block -111 2 89 {auto:1b}
data merge block -99 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=84},limit=1] run data merge block -99 2 89 {auto:1b}
data merge block -87 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=85},limit=1] run data merge block -87 2 89 {auto:1b}
data merge block -75 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=86},limit=1] run data merge block -75 2 89 {auto:1b}
data merge block -63 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=87},limit=1] run data merge block -63 2 89 {auto:1b}
data merge block -51 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=88},limit=1] run data merge block -51 2 89 {auto:1b}
data merge block -39 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=89},limit=1] run data merge block -39 2 89 {auto:1b}
data merge block -27 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=90},limit=1] run data merge block -27 2 89 {auto:1b}
data merge block -15 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=91},limit=1] run data merge block -15 2 89 {auto:1b}
data merge block -3 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=92},limit=1] run data merge block -3 2 89 {auto:1b}
data merge block 9 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=93},limit=1] run data merge block 9 2 89 {auto:1b}
data merge block 21 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=94},limit=1] run data merge block 21 2 89 {auto:1b}
data merge block 33 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=95},limit=1] run data merge block 33 2 89 {auto:1b}
data merge block 45 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=96},limit=1] run data merge block 45 2 89 {auto:1b}
data merge block 57 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=97},limit=1] run data merge block 57 2 89 {auto:1b}
data merge block 69 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=98},limit=1] run data merge block 69 2 89 {auto:1b}
data merge block 81 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=99},limit=1] run data merge block 81 2 89 {auto:1b}
data merge block 93 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=100},limit=1] run data merge block 93 2 89 {auto:1b}
data merge block 105 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=101},limit=1] run data merge block 105 2 89 {auto:1b}
data merge block 117 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=102},limit=1] run data merge block 117 2 89 {auto:1b}
data merge block 129 2 89 {auto:0b}
execute if entity @a[scores={jobNumber=103},limit=1] run data merge block 129 2 89 {auto:1b}
data merge block -126 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=104},limit=1] run data merge block -126 61 -62 {auto:1b}
data merge block -114 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=105},limit=1] run data merge block -114 61 -62 {auto:1b}
data merge block -102 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=106},limit=1] run data merge block -102 61 -62 {auto:1b}
data merge block -90 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=107},limit=1] run data merge block -90 61 -62 {auto:1b}
data merge block -78 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=108},limit=1] run data merge block -78 61 -62 {auto:1b}
data merge block -66 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=109},limit=1] run data merge block -66 61 -62 {auto:1b}
data merge block -54 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=110},limit=1] run data merge block -54 61 -62 {auto:1b}
data merge block -42 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=111},limit=1] run data merge block -42 61 -62 {auto:1b}
data merge block -30 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=112},limit=1] run data merge block -30 61 -62 {auto:1b}
data merge block -18 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=113},limit=1] run data merge block -18 61 -62 {auto:1b}
data merge block -6 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=114},limit=1] run data merge block -6 61 -62 {auto:1b}
data merge block 6 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=115},limit=1] run data merge block 6 61 -62 {auto:1b}
data merge block 18 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=116},limit=1] run data merge block 18 61 -62 {auto:1b}
data merge block 30 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=117},limit=1] run data merge block 30 61 -62 {auto:1b}
data merge block 42 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=118},limit=1] run data merge block 42 61 -62 {auto:1b}
data merge block 54 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=119},limit=1] run data merge block 54 61 -62 {auto:1b}
data merge block 66 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=120},limit=1] run data merge block 66 61 -62 {auto:1b}
data merge block 78 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=121},limit=1] run data merge block 78 61 -62 {auto:1b}
data merge block 90 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=122},limit=1] run data merge block 90 61 -62 {auto:1b}
data merge block 102 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=123},limit=1] run data merge block 102 61 -62 {auto:1b}
data merge block 114 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=124},limit=1] run data merge block 114 61 -62 {auto:1b}
data merge block 126 61 -62 {auto:0b}
execute if entity @a[scores={jobNumber=125},limit=1] run data merge block 126 61 -62 {auto:1b}

execute if entity @a[scores={jobNumber=73},tag=JobChanged,limit=1] as @a[scores={jobNumber=73},tag=JobChanged] at @s run scoreboard players set @s MagicFatigue 0
execute if entity @a[scores={jobNumber=73},tag=JobChanged,limit=1] as @a[scores={jobNumber=73},tag=JobChanged] at @s run function project-c:jobaction/073/changejob
execute if entity @a[scores={jobNumber=73},tag=JobChanged,limit=1] run advancement revoke @a[scores={jobNumber=73},tag=JobChanged] only project-c:radiochat/amchat


data merge block 955 1 9 {auto:1b}