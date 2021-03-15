#実行者     -> jobNumber = -78
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:hiddenjob/-078/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:hiddenjob/-078/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:hiddenjob/-078/replaceitem/3



execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"SHURIKEN","color":"white","italic":"false","underlined":"false"}'}}}},scores={useSnowball=1..,counter_3=0,counter_1=0},gamemode=!spectator] run function project-c:hiddenjob/-078/skill/0/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"SHURIKEN SWARM","color":"gold","italic":"false","underlined":"false"}'}}}},scores={useSnowball=1..,counter_3=1,counter_1=0},gamemode=!spectator] run function project-c:hiddenjob/-078/skill/0/2


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"SEAR","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useSnowball=1..,counter_3=0},tag=SkillReady1,gamemode=!spectator] run function project-c:hiddenjob/-078/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"FLAMBE","color":"yellow","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useSnowball=1..,counter_3=1},tag=SkillReady1,gamemode=!spectator] run function project-c:hiddenjob/-078/skill/1/1


execute if entity @s[scores={CT2=1200..,sneak=1..,counter_3=0},tag=SkillReady2,gamemode=!spectator] run function project-c:hiddenjob/-078/skill/2/0

execute if entity @s[scores={CT2=1200..,sneak=1..,counter_3=1},tag=SkillReady2,gamemode=!spectator] run function project-c:hiddenjob/-078/skill/2/2



execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"SECOND HELPING","color":"yellow","italic":"false","underlined":"false"}'}}}},scores={CT3=1200..,useSnowball=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:hiddenjob/-078/skill/3/0

execute if entity @s[scores={counter_1=1}] run replaceitem entity @s weapon.offhand minecraft:snowball
scoreboard players remove @s[scores={counter_1=1..}] counter_1 1

scoreboard players remove @s[scores={counter_2=1..}] counter_2 1
execute if entity @s[scores={counter_2=1..}] run execute as @e[tag=-078fire,distance=..5,limit=1] at @s run teleport @a[scores={jobNumber=-78,counter_2=1..},limit=1,sort=nearest] ~ ~ ~

scoreboard players add @s[scores={subcounter=1..}] subcounter 1


execute as @s[scores={subcounter=11..}] at @s anchored eyes run summon arrow ^ ^ ^1 {damage:0.5d,Tags:["-078-Bullet","-078-hassummoned"],CustomName:'{"text":"SEAR","color":"gold"}',Color:-1,NoGravity:1b,crit:1,Fire:10s}
execute as @e[tag=-078-hassummoned] at @s run data modify entity @s UUID set from entity @a[scores={jobNumber=-78,subcounter=11..},limit=1] UUID
execute as @s[scores={subcounter=11..}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0


execute as @e[tag=-078-hassummoned] store result score @s CT1 run data get entity @s Pos[0] 100
execute as @e[tag=-078-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=-78,subcounter=11..},limit=1,sort=nearest,distance=..3] Pos[0] 100
execute as @e[tag=-078-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=-078-hassummoned] store result entity @s Motion[0] double 0.05 run scoreboard players get @s CT1
execute as @e[tag=-078-hassummoned] store result score @s CT1 run data get entity @s Pos[1] 100
execute as @e[tag=-078-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=-78,subcounter=11..},limit=1,sort=nearest,distance=..3] Pos[1] 100
scoreboard players add @e[tag=-078-hassummoned] counter_1 160
execute as @e[tag=-078-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=-078-hassummoned] store result entity @s Motion[1] double 0.05 run scoreboard players get @s CT1
execute as @e[tag=-078-hassummoned] store result score @s CT1 run data get entity @s Pos[2] 100
execute as @e[tag=-078-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=-78,subcounter=11..},limit=1,sort=nearest,distance=..3] Pos[2] 100
execute as @e[tag=-078-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=-078-hassummoned] store result entity @s Motion[2] double 0.05 run scoreboard players get @s CT1
tag @e[tag=-078-Bullet,tag=-078-hassummoned] remove -078-hassummoned
scoreboard players add @e[tag=-078-Bullet] counter_2 1
execute as @e[tag=-078-Bullet] at @s run particle flame ~ ~ ~ 0 0 0 0.2 10 force @a
kill @e[tag=-078-Bullet,scores={counter_2=4..}]

execute if entity @s[scores={subcounter=11..}] run scoreboard players set @s subcounter 0



scoreboard players add @s[scores={Mana=1..}] Mana 1


execute as @s[scores={Mana=11..}] at @s anchored eyes run summon arrow ^ ^ ^1 {damage:1.2d,Tags:["-078-Bullet2","-078-hassummoned"],CustomName:'{"text":"FLAMBE","color":"gold"}',Color:-1,NoGravity:1b,crit:1,Fire:10s}
execute as @e[tag=-078-hassummoned] at @s run data modify entity @s UUID set from entity @a[scores={jobNumber=-78,Mana=11..},limit=1] UUID
execute as @s[scores={Mana=11..}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0


execute as @e[tag=-078-hassummoned] store result score @s CT1 run data get entity @s Pos[0] 100
execute as @e[tag=-078-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=-78,Mana=11..},limit=1,sort=nearest,distance=..3] Pos[0] 100
execute as @e[tag=-078-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=-078-hassummoned] store result entity @s Motion[0] double 0.05 run scoreboard players get @s CT1
execute as @e[tag=-078-hassummoned] store result score @s CT1 run data get entity @s Pos[1] 100
execute as @e[tag=-078-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=-78,Mana=11..},limit=1,sort=nearest,distance=..3] Pos[1] 100
scoreboard players add @e[tag=-078-hassummoned] counter_1 160
execute as @e[tag=-078-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=-078-hassummoned] store result entity @s Motion[1] double 0.05 run scoreboard players get @s CT1
execute as @e[tag=-078-hassummoned] store result score @s CT1 run data get entity @s Pos[2] 100
execute as @e[tag=-078-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=-78,Mana=11..},limit=1,sort=nearest,distance=..3] Pos[2] 100
execute as @e[tag=-078-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=-078-hassummoned] store result entity @s Motion[2] double 0.05 run scoreboard players get @s CT1
tag @e[tag=-078-Bullet2,tag=-078-hassummoned] remove -078-hassummoned
scoreboard players add @e[tag=-078-Bullet2] counter_2 1
execute as @e[tag=-078-Bullet2] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.2 10 force @a
kill @e[tag=-078-Bullet2,scores={counter_2=5..}]

execute if entity @s[scores={Mana=11..}] run scoreboard players set @s Mana 0

execute if entity @s[scores={useSnowball=1..}] run replaceitem entity @s weapon.offhand minecraft:snowball

execute if entity @s[scores={useSnowball=1..}] run kill @e[type=snowball,limit=1,sort=nearest]

scoreboard players set @s sneak 0
scoreboard players reset @s damageDealt
scoreboard players reset @s useLinger
scoreboard players reset @s crossbow
scoreboard players reset @s jump
scoreboard players reset @s useCarrotStick
scoreboard players reset @s useSnowball