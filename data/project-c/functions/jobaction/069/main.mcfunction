#実行者     -> jobNumber = 69
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/069/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/069/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/069/replaceitem/3


execute if entity @s[scores={CT1=1200..,damageDealt=1..},gamemode=!spectator] run function project-c:jobaction/069/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"麻痺薬","color":"light_blue","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/069/skill/2/0

execute if entity @s[nbt={OnGround:1b,SelectedItem:{tag:{display:{Name:'{"text":"ミリオンストーム","color":"light_blue","italic":"false","underlined":"false"}'}}}},scores={CT3=1200..,sneak=1..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/069/skill/3/0

effect give @s[scores={useLinger=1..},gamemode=!spectator] slow_falling 1 1 true
effect give @s[scores={useLinger=1..},gamemode=!spectator,nbt={OnGround:1b}] resistance 1 4 true
item replace entity @s[scores={crossbow=1..},gamemode=!spectator] hotbar.4 with minecraft:arrow

execute if entity @s[scores={crossbow=1..},gamemode=!spectator] run data merge entity @e[sort=nearest,limit=1,type=arrow] {NoGravity:1b}
execute if entity @s[scores={crossbow=1..},gamemode=!spectator] run tag @e[sort=nearest,limit=1,type=arrow] add 069-arrow
execute as @e[tag=069-arrow] at @s run scoreboard players add @s counter 1
kill @e[tag=069-arrow,scores={counter=6..}]

execute as @s[scores={counter_3=1..}] at @s run effect clear @s levitation
execute as @s[scores={counter_3=1..}] at @s run effect give @s slowness 1 8
execute as @s[scores={counter_3=1..}] at @s run execute unless entity @e[tag=MilionStormStand,distance=..1,limit=1] run teleport @s @e[tag=MilionStormStand,distance=..2,limit=1]

execute as @s[scores={counter_3=1..}] at @s run scoreboard players add @s counter_3 1

execute as @s[scores={counter_3=11..,sneak=0}] at @s run tag @s add 069MilionEnd
execute as @s[scores={counter_3=11..,useCarrotStick=1..}] at @s run tag @s add 069MilionEnd
execute as @s[scores={counter_3=11..,crossbow=1..}] at @s run tag @s add 069MilionEnd
execute as @s[scores={counter_3=11..,subcounter=61..}] at @s run tag @s add 069MilionEnd

execute as @s[tag=069MilionEnd] at @s run kill @e[tag=MilionStormStand,limit=1]
execute as @s[tag=069MilionEnd] at @s run scoreboard players set @s counter_3 0
execute as @s[tag=069MilionEnd] at @s run scoreboard players set @s subcounter 0
execute as @s[tag=069MilionEnd] at @s run tag @s remove 069MilionEnd

execute as @s[scores={counter_3=31}] at @s anchored eyes run summon arrow ^ ^0.25 ^1 {damage:0.5d,Tags:["069-Bullet","069-hassummoned"],CustomName:'{"text":"ミリオンストーム","color":"gold"}',Color:-1,NoGravity:1b,crit:1}
execute as @s[scores={counter_3=31}] at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.5 1 force

execute as @s[scores={counter_3=29..}] at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 2

execute as @s[scores={counter_3=31}] at @s run scoreboard players add @s subcounter 1
execute as @s[scores={counter_3=31}] at @s run scoreboard players set @s counter_3 29

execute as @s[scores={jump=1..},nbt={OnGround:0b}] at @s run tag @s add 069useElytra
execute as @s[tag=069useElytra,nbt={OnGround:0b}] at @s run effect give @s jump_boost 5 4 true

execute as @s[tag=069useElytra,nbt={OnGround:1b}] at @s run item replace entity @s armor.chest with minecraft:elytra{display:{Name:'{"text":"Celestial Feather","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[Passive: Fall Resist,Jump Boost]","color":"white","italic":false}','{"text":"[Jump: Double Jump]","color":"white","italic":false}','{"text":" "}','{"text":"\\"大丈夫、きっとやりとげられる\\"","color":"white","italic":false}']},HideFlags:5,RepairCost:-1000,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.maxHealth",Amount:-0.3,Operation:1,UUIDLeast:605430,UUIDMost:320978,Slot:"chest"}],Unbreakable:1b,ItemName:Celestial_Feather,Enchantments:[{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:binding_curse",lvl:1}],CustomModelData:1} 1
execute as @s[tag=069useElytra,nbt={OnGround:1b}] at @s run effect clear @s jump_boost
execute as @s[tag=069useElytra,nbt={OnGround:1b}] at @s run tag @s remove 069useElytra


execute as @e[tag=069-hassummoned] store result score @s CT1 run data get entity @s Pos[0] 100
execute as @e[tag=069-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=69,counter_3=1..},limit=1,sort=nearest,distance=..3] Pos[0] 100
execute as @e[tag=069-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=069-hassummoned] store result entity @s Motion[0] double 0.05 run scoreboard players get @s CT1
execute as @e[tag=069-hassummoned] store result score @s CT1 run data get entity @s Pos[1] 100
execute as @e[tag=069-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=69,counter_3=1..},limit=1,sort=nearest,distance=..3] Pos[1] 100
scoreboard players add @e[tag=069-hassummoned] counter_1 160
execute as @e[tag=069-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=069-hassummoned] store result entity @s Motion[1] double 0.05 run scoreboard players get @s CT1
execute as @e[tag=069-hassummoned] store result score @s CT1 run data get entity @s Pos[2] 100
execute as @e[tag=069-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=69,counter_3=1..},limit=1,sort=nearest,distance=..3] Pos[2] 100
execute as @e[tag=069-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=069-hassummoned] store result entity @s Motion[2] double 0.05 run scoreboard players get @s CT1
tag @e[tag=069-Bullet,tag=069-hassummoned] remove 069-hassummoned
scoreboard players add @e[tag=069-Bullet] counter_2 1
kill @e[tag=069-Bullet,scores={counter_2=5..}]


scoreboard players set @s sneak 0
scoreboard players reset @s damageDealt
scoreboard players reset @s useLinger
scoreboard players reset @s crossbow
scoreboard players reset @s jump
scoreboard players reset @s useCarrotStick