scoreboard players add @a[scores={relic=2,CT1=..1200}] CT1 1
scoreboard players add @a[scores={relic=2,CT2=..1200}] CT2 1
scoreboard players add @a[scores={relic=2,CT3=..1200}] CT3 1
execute as @a[scores={relic=2},nbt={HurtTime:9s}] at @s run tag @s add relic2damaged
execute as @a[tag=relic2damaged] at @s run effect give @s minecraft:instant_damage 1 0
execute as @e[tag=relic2damaged] at @s run particle minecraft:dust 1 0 0 3 ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[distance=1..]
execute as @e[tag=relic2damaged] at @s run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 2 0
execute as @a[scores={relic=2},tag=relic2damaged] at @s run tag @s remove relic2damaged

effect clear @a[scores={relic=3}] minecraft:regeneration
effect clear @a[scores={relic=3}] minecraft:instant_health
tag @a[scores={relic=3}] add Regene
tag @a[scores={deathCount=1..},tag=!relic3deathA] add relic3death
execute as @a[team=Blue,tag=relic3death] at @s run tag @a[scores={relic=3},team=Red,gamemode=!spectator] add relic3killed
execute as @a[team=Red,tag=relic3death] at @s run tag @a[scores={relic=3},team=Blue,gamemode=!spectator] add relic3killed
execute as @a[tag=relic3killed] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 200 force @a
execute as @a[tag=relic3killed] at @s run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 2 2
execute as @a[tag=relic3killed] at @s run effect give @s minecraft:instant_health 1 100
execute as @a[tag=relic3killed] at @s run scoreboard players set @s CT1 1200
execute as @a[tag=relic3killed] at @s run scoreboard players set @s CT2 1200
execute as @a[tag=relic3killed] at @s run scoreboard players set @s CT3 1200
execute as @a[tag=relic3killed] at @s run tag @s remove relic3killed
tag @a[scores={deathCount=1..}] add relic3deathA
tag @a[scores={deathCount=1..}] remove relic3death

execute as @a[scores={relic=4,relicCount=300..},gamemode=!spectator] at @s run particle minecraft:witch ~ ~0.5 ~ 0.8 0.8 0.8 0.02 1 force @a
execute as @a[scores={relic=4,relicCount=300},gamemode=!spectator] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 2 1
execute as @a[scores={relic=4,relicCount=300},gamemode=!spectator] at @s run particle minecraft:witch ~ ~0.1 ~ 0.8 0 0.8 0.02 100 force @a 
effect give @a[scores={relic=4,relicCount=300..},gamemode=!spectator] minecraft:absorption 1 1 true
effect clear @a[scores={relic=4,relicCount=300..},gamemode=!spectator] minecraft:slowness
effect clear @a[scores={relic=4,relicCount=300..},gamemode=!spectator] minecraft:weakness
effect clear @a[scores={relic=4,relicCount=300..},gamemode=!spectator] minecraft:hunger
effect clear @a[scores={relic=4,relicCount=300..},gamemode=!spectator] minecraft:mining_fatigue
effect clear @a[scores={relic=4,relicCount=300..},gamemode=!spectator] minecraft:poison
effect clear @a[scores={relic=4,relicCount=300..},gamemode=!spectator] minecraft:nausea
effect clear @a[scores={relic=4,relicCount=300..},gamemode=!spectator] minecraft:blindness
effect clear @a[scores={relic=4,relicCount=300..},gamemode=!spectator] minecraft:wither
tag @a[scores={relic=4,relicCount=300..},nbt={HurtTime:9s}] add relic4damaged
execute as @a[tag=relic4damaged] at @s run scoreboard players set @s relicCount 0
execute as @a[tag=relic4damaged] at @s run effect clear @s minecraft:absorption
execute as @a[tag=relic4damaged] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 0.4 200 normal @a
execute as @a[tag=relic4damaged] at @s run playsound minecraft:item.totem.use master @a ~ ~ ~ 2 0.5
execute as @a[tag=relic4damaged] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 1 200 normal @a
tag @a[tag=relic4damaged] remove relic4damaged
execute if score #Clock counter matches 1 run execute as @a[scores={relic=4,relicCount=300..}] at @s run scoreboard players remove @s CT1 1
execute if score #Clock counter matches 1 run execute as @a[scores={relic=4,relicCount=300..}] at @s run scoreboard players remove @s CT2 1
execute if score #Clock counter matches 1 run execute as @a[scores={relic=4,relicCount=300..}] at @s run scoreboard players remove @s CT3 1
scoreboard players add @a[scores={relic=4,relicCount=..300}] relicCount 1

effect give @a[scores={relic=5,HP=..30}] minecraft:haste 1 1 false
effect give @a[scores={relic=5,HP=..30}] minecraft:resistance 1 0 false
effect give @a[scores={relic=5,HP=..20}] minecraft:fire_resistance 1 0 false
effect give @a[scores={relic=5,HP=..20}] minecraft:speed 1 0 false
effect give @a[scores={relic=5,HP=..20}] minecraft:jump_boost 1 0 false
effect give @a[scores={relic=5,HP=..10}] minecraft:strength 1 0 false
effect give @a[scores={relic=5}] minecraft:glowing 1 0 false

execute as @a[scores={relic=6}] at @s run tag @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!DoubleArrow] add DoubleArrowC
execute as @a[scores={relic=6}] at @s run tag @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!DoubleArrow] add DoubleArrow
execute as @e[tag=DoubleArrowC] at @s run execute store result score @s relicCount run data get entity @s damage
execute as @e[tag=DoubleArrowC] at @s run execute store result entity @s damage float 1.5 run scoreboard players get @s relicCount
execute as @e[tag=DoubleArrowC] at @s run tag @s remove DoubleArrowC

execute as @a[scores={relic=6},nbt={HurtTime:9s}] at @s run tag @s add relic6damaged
execute as @a[tag=relic6damaged] at @s run effect give @s minecraft:instant_damage 1 0
execute as @e[tag=relic6damaged] at @s run particle minecraft:dust 1 0 0 3 ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[distance=1..]
execute as @e[tag=relic6damaged] at @s run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 2 0
execute as @a[scores={relic=6},tag=relic6damaged] at @s run tag @s remove relic6damaged
execute as @a[scores={relic=6,jobNumber=21}] at @s run data merge entity @e[distance=..7,tag=DoubleArrow,sort=nearest,limit=1] {damage:1.0d,life:1200}


scoreboard players set @a[scores={relic=8}] relicCount 0
scoreboard players add @a[scores={relic=8,CT1=..1200}] relicCount 1
scoreboard players add @a[scores={relic=8,CT2=..1200}] relicCount 1
scoreboard players add @a[scores={relic=8,CT3=..1200}] relicCount 1
effect give @a[scores={relic=8,relicCount=2}] minecraft:speed 1 0 false
effect give @a[scores={relic=8,relicCount=3}] minecraft:speed 1 1 false
effect give @a[scores={relic=8,relicCount=0}] minecraft:slowness 1 2 false

effect clear @a[scores={relic=10}] minecraft:slowness
effect clear @a[scores={relic=10}] minecraft:weakness
effect clear @a[scores={relic=10}] minecraft:hunger
effect clear @a[scores={relic=10}] minecraft:mining_fatigue
effect clear @a[scores={relic=10}] minecraft:poison
effect clear @a[scores={relic=10}] minecraft:nausea
effect clear @a[scores={relic=10}] minecraft:blindness
effect clear @a[scores={relic=10}] minecraft:wither
effect clear @a[scores={relic=10}] minecraft:regeneration
effect give @a[scores={relic=10}] minecraft:fire_resistance 1 2 true
tag @a[scores={relic=10},tag=!Regene] add Regene

scoreboard players add @a[scores={relic=11,relicCount=1..100}] relicCount 1
effect give @a[scores={relic=11,HP=0..6,relicCount=0}] minecraft:resistance 5 5 false
execute as @a[scores={relic=11,HP=0..6,relicCount=0}] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 2 0
execute as @a[scores={relic=11,HP=0..6,relicCount=0}] at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.5 100 force @a
scoreboard players set @a[scores={relic=11,HP=0..6,relicCount=0}] CT1 1200
scoreboard players set @a[scores={relic=11,HP=0..6,relicCount=0}] CT2 1200
scoreboard players set @a[scores={relic=11,HP=0..6,relicCount=0}] CT3 1200
execute as @a[scores={relic=11,HP=..6,relicCount=0}] at @s run scoreboard players set @s relicCount 1

execute if score #Clock counter matches 1 run execute as @a[scores={relic=11,relicCount=100..}] at @s run scoreboard players remove @s CT1 1
execute if score #Clock counter matches 1 run execute as @a[scores={relic=11,relicCount=100..}] at @s run scoreboard players remove @s CT2 1
execute if score #Clock counter matches 1 run execute as @a[scores={relic=11,relicCount=100..}] at @s run scoreboard players remove @s CT3 1


execute as @a[scores={relic=12},nbt={HurtTime:9s}] at @s run tag @s add relic12damaged
execute as @a[tag=relic12damaged] at @s run effect give @s minecraft:instant_damage 1 0
execute as @e[tag=relic12damaged] at @s run particle minecraft:dust 1 0 0 3 ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[distance=1..]
execute as @e[tag=relic12damaged] at @s run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 2 0
execute as @a[scores={relic=12},tag=relic12damaged] at @s run tag @s remove relic12damaged

scoreboard players add @a[scores={relic=12,jobNumber=27,Mana=..160}] Mana 1
scoreboard players add @a[scores={relic=12,jobNumber=28,counter_1=..1}] counter 1
scoreboard players add @a[scores={relic=12,jobNumber=7,counter_1=..1}] counter 1

execute as @e[type=item,tag=isItem] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 1 100 force @a
execute as @e[type=item,tag=Item1] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 3 0
execute as @e[type=item,tag=Item1] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players add @s CT1 40
execute as @e[type=item,tag=Item1] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players add @s CT2 40
execute as @e[type=item,tag=Item1] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players add @s CT3 40
execute as @e[type=item,tag=Item2] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 3 0.9
execute as @e[type=item,tag=Item2] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players add @s CT1 80
execute as @e[type=item,tag=Item2] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players add @s CT2 80
execute as @e[type=item,tag=Item2] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players add @s CT3 80
execute as @e[type=item,tag=Item2] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run effect give @s minecraft:regeneration 1 3
execute as @e[type=item,tag=Item3] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 3 1
execute as @e[type=item,tag=Item3] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players add @s CT1 160
execute as @e[type=item,tag=Item3] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players add @s CT2 160
execute as @e[type=item,tag=Item3] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players add @s CT3 160
execute as @e[type=item,tag=Item3] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run effect give @s minecraft:instant_health 1 1
execute as @e[type=item,tag=Item4] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 3 1.5
execute as @e[type=item,tag=Item4] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players add @s CT1 300
execute as @e[type=item,tag=Item4] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players add @s CT2 300
execute as @e[type=item,tag=Item4] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players add @s CT3 300
execute as @e[type=item,tag=Item4] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run effect give @s minecraft:instant_health 1 1
execute as @e[type=item,tag=Item4] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run effect give @s minecraft:regeneration 1 3
execute as @e[type=item,tag=Item5] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 3 2
execute as @e[type=item,tag=Item5] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players set @s CT1 1200
execute as @e[type=item,tag=Item5] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players set @s CT2 1200
execute as @e[type=item,tag=Item5] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run scoreboard players set @s CT3 1200
execute as @e[type=item,tag=Item5] at @s run execute as @a[scores={relic=13},distance=..4,gamemode=!spectator] at @s run effect give @s minecraft:instant_health 1 2
execute as @a[scores={relic=13},gamemode=!spectator] at @s run execute as @e[type=item,tag=isItem,distance=..4] at @s run particle minecraft:explosion ~ ~1 ~ 0 0 0 1 3 force @a
execute as @a[scores={relic=13},gamemode=!spectator] at @s run execute as @e[type=item,tag=isItem,distance=..4] at @s run kill @s

execute as @a[tag=Battle,scores={relic=14},gamemode=!spectator] at @s run scoreboard players add @a relicCount 1
execute as @a[tag=Battle,scores={relic=14,relicCount=0..600},team=Red,gamemode=!spectator] at @s run effect give @s minecraft:strength 1 0
execute as @a[tag=Battle,scores={relic=14,relicCount=0..600},team=Red,gamemode=!spectator] at @s run effect give @s minecraft:resistance 1 0
execute as @a[tag=Battle,scores={relic=14,relicCount=0..600},team=Red,gamemode=!spectator] at @s run effect give @s minecraft:speed 1 0
execute as @a[tag=Battle,scores={relic=14,relicCount=0..600},team=Red,gamemode=!spectator] at @s run effect give @s minecraft:glowing 1 0
execute as @a[tag=Battle,scores={relic=14,relicCount=601..1200},team=Blue,gamemode=!spectator] at @s run effect give @s minecraft:strength 1 0
execute as @a[tag=Battle,scores={relic=14,relicCount=601..1200},team=Blue,gamemode=!spectator] at @s run effect give @s minecraft:resistance 1 0
execute as @a[tag=Battle,scores={relic=14,relicCount=601..1200},team=Blue,gamemode=!spectator] at @s run effect give @s minecraft:speed 1 0
execute as @a[tag=Battle,scores={relic=14,relicCount=601..1200},team=Blue,gamemode=!spectator] at @s run effect give @s minecraft:glowing 1 0

execute as @a[tag=Battle,scores={relic=14,relicCount=1},team=Red,gamemode=!spectator] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 3 0
execute as @a[tag=Battle,scores={relic=14,relicCount=600},team=Red,gamemode=!spectator] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 3 0.75
execute as @a[tag=Battle,scores={relic=14,relicCount=601},team=Blue,gamemode=!spectator] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 3 0
execute as @a[tag=Battle,scores={relic=14,relicCount=1},team=Blue,gamemode=!spectator] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 3 0.75
execute as @a[tag=Battle,scores={relic=14,relicCount=601..1200},team=Red,gamemode=!spectator] at @s run effect give @s minecraft:slowness 1 0
execute as @a[tag=Battle,scores={relic=14,relicCount=601..1200},team=Red,gamemode=!spectator] at @s run effect give @s minecraft:weakness 1 0
execute as @a[tag=Battle,scores={relic=14,relicCount=601..1200},team=Red,gamemode=!spectator] at @s run effect give @s minecraft:mining_fatigue 1 1
execute as @a[tag=Battle,scores={relic=14,relicCount=1..600},team=Blue,gamemode=!spectator] at @s run effect give @s minecraft:slowness 1 0
execute as @a[tag=Battle,scores={relic=14,relicCount=1..600},team=Blue,gamemode=!spectator] at @s run effect give @s minecraft:weakness 1 0
execute as @a[tag=Battle,scores={relic=14,relicCount=1..600},team=Blue,gamemode=!spectator] at @s run effect give @s minecraft:mining_fatigue 1 1
execute as @a[tag=Battle,scores={relic=14,relicCount=1200..},gamemode=!spectator] at @s run scoreboard players set @a relicCount 0

scoreboard players add @a[scores={relic=20,relicCount=1..150}] relicCount 1
execute as @a[scores={relic=20,HP=1..6,relicCount=0},nbt={HurtTime:9s}] at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 0
execute as @a[scores={relic=20,HP=1..6,relicCount=0},nbt={HurtTime:9s}] at @s run function project-c:general/relic/firincscircle
execute as @a[scores={relic=20,HP=1..6,relicCount=0},nbt={HurtTime:9s}] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.6 100 force @a
execute as @a[scores={relic=20,HP=1..6,relicCount=0},nbt={HurtTime:9s}] at @s run scoreboard players set @s relicCount 1

execute as @a[scores={relic=20,relicCount=1..141,CT1=..1179}] at @s run replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:"\"CoolTime\""}} 1
execute as @a[scores={relic=20,relicCount=1..141,CT1=..1179}] at @s run scoreboard players set @s CT1 1180
execute as @a[scores={relic=20,relicCount=1..141,CT2=..1179}] at @s run replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:"\"CoolTime\""}} 1
execute as @a[scores={relic=20,relicCount=1..141,CT2=..1179}] at @s run scoreboard players set @s CT2 1180
execute as @a[scores={relic=20,relicCount=1..141,CT3=..1179}] at @s run replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:"\"CoolTime\""}} 1
execute as @a[scores={relic=20,relicCount=1..141,CT3=..1179}] at @s run scoreboard players set @s CT3 1180
effect give @a[scores={relic=20,relicCount=151..}] slowness 1 4 false

execute as @a[scores={relic=21,relicCount=..19},tag=Battle,team=Red] at @s run execute if entity @a[tag=Battle,distance=..12,gamemode=!spectator,team=Blue,nbt={HurtTime:9s}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2
execute as @a[scores={relic=21,relicCount=..19},tag=Battle,team=Red] at @s run execute if entity @a[tag=Battle,distance=..12,gamemode=!spectator,team=Blue,nbt={HurtTime:9s}] run scoreboard players add @s relicCount 1
execute as @a[scores={relic=21,relicCount=..20},tag=Battle,team=Red] at @s run execute if entity @a[tag=Battle,distance=..12,gamemode=!spectator,team=Blue,nbt={HurtTime:10s}] run function project-c:general/relic/clocodire
execute as @a[scores={relic=21,relicCount=..19},tag=Battle,team=Blue] at @s run execute if entity @a[tag=Battle,distance=..12,gamemode=!spectator,team=Red,nbt={HurtTime:9s}] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2
execute as @a[scores={relic=21,relicCount=..19},tag=Battle,team=Blue] at @s run execute if entity @a[tag=Battle,distance=..12,gamemode=!spectator,team=Red,nbt={HurtTime:9s}] run scoreboard players add @s relicCount 1
execute as @a[scores={relic=21,relicCount=..20},tag=Battle,team=Blue] at @s run execute if entity @a[tag=Battle,distance=..12,gamemode=!spectator,team=Red,nbt={HurtTime:10s}] run function project-c:general/relic/clocodire

execute as @a[scores={relic=23,damageTaken=140..},nbt={HurtTime:9s}] at @s run effect give @s minecraft:instant_health 1 1
execute as @a[scores={relic=23,damageTaken=140..},nbt={HurtTime:9s}] at @s run effect give @s minecraft:strength 5 0
execute as @a[scores={relic=23,damageTaken=140..},nbt={HurtTime:9s}] at @s run effect give @s minecraft:resistance 10 1
execute as @a[scores={relic=23,damageTaken=140..},nbt={HurtTime:9s}] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 2 2
execute as @a[scores={relic=23,damageTaken=140..},nbt={HurtTime:9s}] at @s run particle minecraft:witch ~ ~0.5 ~ 0.8 0.8 0.8 0.2 60 force @a
execute as @a[scores={relic=23},nbt={HurtTime:9s}] at @s run scoreboard players set @s damageTaken 0

scoreboard players add @a[scores={relic=24,relicCount=..201},tag=Battle] relicCount 1
execute as @a[scores={relic=24,relicCount=201},team=Red] at @s run effect give @a[distance=..20,gamemode=!spectator,limit=4,team=Red] minecraft:glowing 5 0 false
execute as @a[scores={relic=24,relicCount=201},team=Blue] at @s run effect give @a[distance=..20,gamemode=!spectator,limit=4,team=Blue] minecraft:glowing 5 0 false

execute as @a[scores={relic=24,relicCount=201}] at @s run playsound minecraft:entity.ghast.scream master @p ~ ~ ~ 1 1.25
execute as @a[scores={relic=24,relicCount=201}] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 3 0 3 1 100 force @a
scoreboard players add @a[scores={relic=24,relicCount=201}] CT1 100
scoreboard players add @a[scores={relic=24,relicCount=201}] CT2 100
scoreboard players add @a[scores={relic=24,relicCount=201}] CT3 100
execute as @a[scores={relic=24,relicCount=201..}] at @s run scoreboard players set @s relicCount 0

scoreboard players add @a[scores={relic=25},tag=Battle] relicCount 1
execute as @a[scores={relic=25,relicCount=101..}] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 2 2
execute as @a[scores={relic=25,relicCount=101..}] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.3 30 force @a
execute as @a[scores={relic=25,relicCount=101..}] at @s run effect give @s absorption 5 0 true
execute as @a[scores={relic=25,relicCount=101..}] at @s run scoreboard players set @s relicCount 0
effect clear @a[scores={relic=25}] minecraft:regeneration
tag @a[scores={relic=25},tag=!Regene] add Regene


execute if entity @a[scores={relic=26}] run function project-c:general/relic/chacecore

execute if score #Clock counter matches 1 run execute as @a[scores={relic=27}] at @s run scoreboard players remove @s CT1 1
execute if score #Clock counter matches 1 run execute as @a[scores={relic=27}] at @s run scoreboard players remove @s CT2 1
execute if score #Clock counter matches 1 run execute as @a[scores={relic=27}] at @s run scoreboard players remove @s CT3 1

execute as @a[scores={relic=27,CT1=..1180},tag=relic27ct1,tag=!relic27ct1-2] at @s run tag @s add relic27ct1_2
execute as @a[scores={relic=27,CT1=..1180},tag=relic27ct1,tag=relic27ct1_2] at @s run tag @s remove relic27ct1
execute as @a[scores={relic=27,CT1=1199..},tag=!relic27ct1,tag=relic27ct1_2] at @s run tag @s remove relic27ct1_2


execute as @a[scores={relic=27,CT1=..1180},tag=!relic27ct1,tag=!relic27ct1_2] at @s run tag @s add relic27ct1
execute as @a[scores={relic=27,CT1=..1180},tag=relic27ct1] at @s run replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:"\"CoolTime\""}} 1
execute as @a[scores={relic=27,CT1=..1180},tag=relic27ct1] at @s run scoreboard players set @s CT1 1191

execute as @a[scores={relic=27,CT2=..1180},tag=relic27ct2,tag=!relic27ct2-2] at @s run tag @s add relic27ct2_2
execute as @a[scores={relic=27,CT2=..1180},tag=relic27ct2,tag=relic27ct2_2] at @s run tag @s remove relic27ct2
execute as @a[scores={relic=27,CT2=1181..},tag=!relic27ct2,tag=relic27ct2_2] at @s run tag @s remove relic27ct2_2


execute as @a[scores={relic=27,CT2=..1180},tag=!relic27ct2,tag=!relic27ct2_2] at @s run tag @s add relic27ct2
execute as @a[scores={relic=27,CT2=..1180},tag=relic27ct2] at @s run replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:"\"CoolTime\""}} 1
execute as @a[scores={relic=27,CT2=..1180},tag=relic27ct2] at @s run scoreboard players set @s CT2 1191

execute as @a[scores={relic=27,CT3=..1180},tag=relic27ct3,tag=!relic27ct3-2] at @s run tag @s add relic27ct3_2
execute as @a[scores={relic=27,CT3=..1180},tag=relic27ct3,tag=relic27ct3_2] at @s run tag @s remove relic27ct3
execute as @a[scores={relic=27,CT3=1181..},tag=!relic27ct3,tag=relic27ct3_2] at @s run tag @s remove relic27ct3_2

execute as @a[scores={relic=27,CT3=..1180},tag=!relic27ct3,tag=!relic27ct3_2] at @s run tag @s add relic27ct3
execute as @a[scores={relic=27,CT3=..1180},tag=relic27ct3] at @s run replaceitem entity @s hotbar.3 minecraft:compass{display:{Name:"\"CoolTime\""}} 1
execute as @a[scores={relic=27,CT3=..1180},tag=relic27ct3] at @s run scoreboard players set @s CT3 1191

execute as @a[scores={relic=28,relicCount=1..}] at @s run scoreboard players remove @s relicCount 1

execute as @a[scores={relic=28,relicCount=0},nbt={HurtTime:9s}] at @s run tag @s add relic28damaged

execute as @e[tag=relic28damaged] at @s run particle minecraft:dust 1 1 1 3 ~ ~1 ~ 1 1 1 0 30 force @a
execute as @e[tag=relic28damaged] at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 2 2

execute as @e[tag=relic28damaged] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[RandomAEC]}
execute as @e[tag=RandomAEC] at @s store result score @s counter_3 run data get entity @s UUID[1]

execute as @e[limit=1,tag=RandomAEC] at @s run scoreboard players operation @s counter_3 %= #12 counter

execute as @e[tag=relic28damaged] at @s if entity @e[limit=1,tag=RandomAEC,scores={counter_3=0}] run effect give @s slowness 5 1

execute as @e[tag=relic28damaged] at @s if entity @e[limit=1,tag=RandomAEC,scores={counter_3=1}] run effect give @s weakness 5 0

execute as @e[tag=relic28damaged] at @s if entity @e[limit=1,tag=RandomAEC,scores={counter_3=2}] run effect give @s glowing 5 0

execute as @e[tag=relic28damaged] at @s if entity @e[limit=1,tag=RandomAEC,scores={counter_3=3}] run effect give @s poison 5 0

execute as @e[tag=relic28damaged] at @s if entity @e[limit=1,tag=RandomAEC,scores={counter_3=4}] run effect give @s wither 5 1 true

execute as @e[tag=relic28damaged] at @s if entity @e[limit=1,tag=RandomAEC,scores={counter_3=5}] run effect give @s strength 5 0

execute as @e[tag=relic28damaged] at @s if entity @e[limit=1,tag=RandomAEC,scores={counter_3=6}] run effect give @s resistance 5 1

execute as @e[tag=relic28damaged] at @s if entity @e[limit=1,tag=RandomAEC,scores={counter_3=7}] run effect give @s speed 5 1

execute as @e[tag=relic28damaged] at @s if entity @e[limit=1,tag=RandomAEC,scores={counter_3=8}] run effect give @s jump_boost 5 0

execute as @e[tag=relic28damaged] at @s if entity @e[limit=1,tag=RandomAEC,scores={counter_3=9}] run effect give @s slow_falling 5 0
execute as @e[tag=relic28damaged] at @s if entity @e[limit=1,tag=RandomAEC,scores={counter_3=10}] run effect give @s instant_health 1 0
execute as @e[tag=relic28damaged] at @s if entity @e[limit=1,tag=RandomAEC,scores={counter_3=11}] run effect give @s instant_damage 1 0

kill @e[tag=RandomAEC]

execute as @a[scores={relic=28},tag=relic28damaged] at @s run scoreboard players set @s relicCount 100

execute as @a[scores={relic=28},tag=relic28damaged] at @s run tag @s remove relic28damaged

execute if score #Clock counter matches 1 run execute as @a[scores={relic=29}] at @s run scoreboard players remove @s CT1 1
execute if score #Clock counter matches 1 run execute as @a[scores={relic=29}] at @s run scoreboard players remove @s CT2 1
execute if score #Clock counter matches 1 run execute as @a[scores={relic=29}] at @s run scoreboard players remove @s CT3 1

execute as @a[scores={relic=29},team=Red] at @s run scoreboard players add @a[team=Red,gamemode=!spectator,distance=1..12] CT1 1
execute as @a[scores={relic=29},team=Red] at @s run scoreboard players add @a[team=Red,gamemode=!spectator,distance=1..12] CT2 1
execute as @a[scores={relic=29},team=Red] at @s run scoreboard players add @a[team=Red,gamemode=!spectator,distance=1..12] CT3 1
execute as @a[scores={relic=29},team=Blue] at @s run scoreboard players add @a[team=Blue,gamemode=!spectator,distance=1..12] CT1 1
execute as @a[scores={relic=29},team=Blue] at @s run scoreboard players add @a[team=Blue,gamemode=!spectator,distance=1..12] CT2 1
execute as @a[scores={relic=29},team=Blue] at @s run scoreboard players add @a[team=Blue,gamemode=!spectator,distance=1..12] CT3 1

execute as @a[scores={relic=29},gamemode=!spectator] at @s run particle minecraft:enchant ^ ^2 ^ 1 1 1 0.3 1 normal @a

execute as @a[scores={relic=29},team=Red] at @s run execute as @a[team=Red,gamemode=!spectator,distance=1..12] at @s run particle minecraft:enchant ^ ^2 ^ 0 0 0 1 1 normal @a
execute as @a[scores={relic=29},team=Blue] at @s run execute as @a[team=Blue,gamemode=!spectator,distance=1..12] at @s run particle minecraft:enchant ^ ^2 ^ 0 0 0 1 1 normal @a

execute as @a[scores={relic=30,relicCount=0},tag=Battle] at @s run function project-c:general/jobrandom

execute as @a[scores={relic=30,relicCount=0},tag=Battle] at @s run effect give @s instant_health 1 0 true

execute as @a[scores={relic=30},tag=Battle] at @s run scoreboard players add @s relicCount 1

execute as @a[scores={relic=30,relicCount=20},tag=Battle] at @s run replaceitem entity @s hotbar.8 minecraft:magenta_glazed_terracotta{display:{Name:"{\"text\":\"アブノーマルデッキ\"}",Lore:["発動:自動","効果:一定時間毎にランダムで職業が変わる！"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 30
execute as @a[scores={relic=30,relicCount=300},tag=Battle] at @s run replaceitem entity @s hotbar.8 minecraft:magenta_glazed_terracotta{display:{Name:"{\"text\":\"アブノーマルデッキ\"}",Lore:["発動:自動","効果:一定時間毎にランダムで職業が変わる！"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 15

execute as @a[scores={relic=30,relicCount=400},tag=Battle] at @s run replaceitem entity @s hotbar.8 minecraft:magenta_glazed_terracotta{display:{Name:"{\"text\":\"アブノーマルデッキ\"}",Lore:["発動:自動","効果:一定時間毎にランダムで職業が変わる！"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 10
execute as @a[scores={relic=30,relicCount=420},tag=Battle] at @s run replaceitem entity @s hotbar.8 minecraft:magenta_glazed_terracotta{display:{Name:"{\"text\":\"アブノーマルデッキ\"}",Lore:["発動:自動","効果:一定時間毎にランダムで職業が変わる！"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 9
execute as @a[scores={relic=30,relicCount=440},tag=Battle] at @s run replaceitem entity @s hotbar.8 minecraft:magenta_glazed_terracotta{display:{Name:"{\"text\":\"アブノーマルデッキ\"}",Lore:["発動:自動","効果:一定時間毎にランダムで職業が変わる！"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 8
execute as @a[scores={relic=30,relicCount=460},tag=Battle] at @s run replaceitem entity @s hotbar.8 minecraft:magenta_glazed_terracotta{display:{Name:"{\"text\":\"アブノーマルデッキ\"}",Lore:["発動:自動","効果:一定時間毎にランダムで職業が変わる！"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 7
execute as @a[scores={relic=30,relicCount=480},tag=Battle] at @s run replaceitem entity @s hotbar.8 minecraft:magenta_glazed_terracotta{display:{Name:"{\"text\":\"アブノーマルデッキ\"}",Lore:["発動:自動","効果:一定時間毎にランダムで職業が変わる！"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 6
execute as @a[scores={relic=30,relicCount=500},tag=Battle] at @s run replaceitem entity @s hotbar.8 minecraft:magenta_glazed_terracotta{display:{Name:"{\"text\":\"アブノーマルデッキ\"}",Lore:["発動:自動","効果:一定時間毎にランダムで職業が変わる！"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 5
execute as @a[scores={relic=30,relicCount=520},tag=Battle] at @s run replaceitem entity @s hotbar.8 minecraft:magenta_glazed_terracotta{display:{Name:"{\"text\":\"アブノーマルデッキ\"}",Lore:["発動:自動","効果:一定時間毎にランダムで職業が変わる！"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 4
execute as @a[scores={relic=30,relicCount=540},tag=Battle] at @s run replaceitem entity @s hotbar.8 minecraft:magenta_glazed_terracotta{display:{Name:"{\"text\":\"アブノーマルデッキ\"}",Lore:["発動:自動","効果:一定時間毎にランダムで職業が変わる！"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 3
execute as @a[scores={relic=30,relicCount=560},tag=Battle] at @s run replaceitem entity @s hotbar.8 minecraft:magenta_glazed_terracotta{display:{Name:"{\"text\":\"アブノーマルデッキ\"}",Lore:["発動:自動","効果:一定時間毎にランダムで職業が変わる！"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 2
execute as @a[scores={relic=30,relicCount=580},tag=Battle] at @s run replaceitem entity @s hotbar.8 minecraft:magenta_glazed_terracotta{display:{Name:"{\"text\":\"アブノーマルデッキ\"}",Lore:["発動:自動","効果:一定時間毎にランダムで職業が変わる！"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 1

execute as @a[scores={relic=30,relicCount=600..},tag=Battle] at @s run scoreboard players set @s relicCount 0

execute as @a[scores={relic=30},tag=Battle] at @s run effect give @s haste 1 0 true

execute as @a[gamemode=!spectator,scores={relic=31,Selectsneak=1..,drop=1..}] at @s run scoreboard players add @s relicCount 1
execute as @a[gamemode=!spectator,scores={relic=31,relicCount=2..,drop=1..}] at @s run scoreboard players set @s relicCount 0
scoreboard players reset @a[scores={Selectsneak=1..,drop=1..,relic=31}] Selectsneak

execute as @a[gamemode=!spectator,scores={relic=31,relicCount=0}] at @s run effect give @s strength 1 0

execute as @a[gamemode=!spectator,scores={relic=31,relicCount=0}] at @s run scoreboard players remove @s CT1 1
execute as @a[gamemode=!spectator,scores={relic=31,relicCount=0}] at @s run scoreboard players remove @s CT2 1
execute as @a[gamemode=!spectator,scores={relic=31,relicCount=0}] at @s run scoreboard players remove @s CT3 1


execute as @a[gamemode=!spectator,scores={relic=31,relicCount=1}] at @s run effect give @s weakness 1 1

execute as @a[gamemode=!spectator,scores={relic=31,relicCount=1}] at @s run scoreboard players add @s CT1 1
execute as @a[gamemode=!spectator,scores={relic=31,relicCount=1}] at @s run scoreboard players add @s CT2 1
execute as @a[gamemode=!spectator,scores={relic=31,relicCount=1}] at @s run scoreboard players add @s CT3 1


execute as @a[gamemode=!spectator,scores={relic=32,Selectsneak=1..,drop=1..,relicCount2=0}] at @s run scoreboard players add @s relicCount 1
execute as @a[gamemode=!spectator,scores={relic=32,Selectsneak=1..,relicCount=2..,drop=1..,relicCount2=0}] at @s run scoreboard players set @s relicCount 0
execute as @a[gamemode=!spectator,scores={relic=32,Selectsneak=1..,drop=1..,relicCount2=0}] at @s run tag @s add JobChanged

execute as @a[gamemode=!spectator,scores={relic=32,relicCount=1,Selectsneak=1..,drop=1..,relicCount2=0}] at @s run scoreboard players operation @s jobNumber = @s F_job1
execute as @a[gamemode=!spectator,scores={relic=32,relicCount=0,Selectsneak=1..,drop=1..,relicCount2=0}] at @s run scoreboard players operation @s jobNumber = @s F_job2


execute as @a[gamemode=!spectator,scores={relic=32,Selectsneak=1..,drop=1..,relicCount2=0}] at @s run data merge block -75 49 -123 {auto:1b}

execute as @a[scores={relic=32,relicCount2=1..}] at @s run scoreboard players remove @s relicCount2 1

scoreboard players reset @a[scores={Selectsneak=1..,relic=32}] Selectsneak
