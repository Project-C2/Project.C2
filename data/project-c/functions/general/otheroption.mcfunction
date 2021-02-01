execute if entity @e[tag=Damage1,limit=1] as @e[tag=Damage1] run effect give @s resistance 1 1 true
execute if entity @e[tag=Damage1,limit=1] as @e[tag=Damage1] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @e[tag=Damage1,limit=1] as @e[tag=Damage1] run tag @s remove Damage1

execute if entity @e[tag=Damage2,limit=1] as @e[tag=Damage2] run effect give @s resistance 1 0 true
execute if entity @e[tag=Damage2,limit=1] as @e[tag=Damage2] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @e[tag=Damage2,limit=1] as @e[tag=Damage2] run tag @s remove Damage2

execute if entity @e[tag=Damage4,limit=1] as @e[tag=Damage2] run effect give @s resistance 1 0 true
execute if entity @e[tag=Damage4,limit=1] as @e[tag=Damage4] run effect give @s minecraft:instant_damage 1 1 true
execute if entity @e[tag=Damage4,limit=1] as @e[tag=Damage4] run tag @s remove Damage4


clear @a minecraft:glass_bottle 1
clear @a minecraft:elytra{Damage:431} 1
scoreboard players add @e[type=shulker_bullet] counter 1
kill @e[type=shulker_bullet,scores={counter=80}]

execute if entity @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator,scores={OutCombat=240..},limit=1] as @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator,scores={OutCombat=240..}] run effect clear @s regeneration
execute if entity @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator,scores={OutCombat=240..},limit=1] as @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator,scores={OutCombat=240..}] run tag @s remove Regene

execute if entity @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator,limit=1] as @a[tag=Battle,nbt={HurtTime:9s},gamemode=!spectator] run scoreboard players set @s OutCombat 0
execute if entity @a[tag=Battle,team=Blue,limit=1] as @a[tag=Battle,team=Blue] unless entity @a[tag=Battle,team=Red,distance=..16,gamemode=!spectator] run scoreboard players add @s OutCombat 1
execute if entity @a[tag=Battle,team=Red,limit=1] as @a[tag=Battle,team=Red] unless entity @a[tag=Battle,team=Blue,distance=..16,gamemode=!spectator] run scoreboard players add @s OutCombat 1

execute if entity @a[tag=Battle,scores={OutCombat=240},gamemode=!spectator,limit=1] as @a[tag=Battle,scores={OutCombat=240},gamemode=!spectator] at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.75
execute if entity @a[tag=Battle,scores={OutCombat=240},limit=1] as @a[tag=Battle,scores={OutCombat=240}] run effect give @s regeneration 100000 1 true

execute if entity @a[tag=Battle,scores={OutCombat=400},gamemode=!spectator,limit=1] as @a[tag=Battle,scores={OutCombat=400},gamemode=!spectator] at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1
execute if entity @a[tag=Battle,scores={OutCombat=400},limit=1] as @a[tag=Battle,scores={OutCombat=400}] run effect give @s regeneration 100000 2 true
execute if entity @a[tag=Battle,scores={OutCombat=401..},limit=1] as @a[tag=Battle,scores={OutCombat=401..}] run effect give @s speed 1 0 true



execute if entity @a[tag=KoutetuPotion,limit=1] as @a[tag=KoutetuPotion] at @s run particle minecraft:block iron_block ~ ~1 ~ 0.5 0.5 0.5 0 3
execute if entity @a[tag=KoutetuPotion,limit=1] as @a[tag=KoutetuPotion] at @s run effect give @s resistance 1 4 true
execute if entity @a[tag=KoutetuPotion,limit=1] as @a[tag=KoutetuPotion,nbt={HurtTime:9s}] at @s run effect clear @s resistance
execute if entity @a[tag=KoutetuPotion,limit=1] as @a[tag=KoutetuPotion,nbt={HurtTime:9s}] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 0.5
execute if entity @a[tag=KoutetuPotion,limit=1] as @a[tag=KoutetuPotion,nbt={HurtTime:9s}] at @s run particle minecraft:block iron_block ~ ~1 ~ 0 0 0 1 70
execute if entity @a[tag=KoutetuPotion,limit=1] as @a[tag=KoutetuPotion,nbt={HurtTime:9s}] at @s run tag @s remove KoutetuPotion

execute if entity @a[tag=OverPotion,limit=1] as @a[tag=OverPotion] at @s run particle minecraft:white_ash ~ ~1 ~ 0.5 0.5 0.5 0 3

execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=1}] unless entity @s[scores={relic=27}] as @a[tag=OverPotion,scores={usedSkill=1}] at @s run tag @s add OverPotion1
execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=2}] unless entity @s[scores={relic=27}] as @a[tag=OverPotion,scores={usedSkill=2}] at @s run tag @s add OverPotion2
execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=3}] unless entity @s[scores={relic=27}] as @a[tag=OverPotion,scores={usedSkill=3}] at @s run tag @s add OverPotion3
execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=1}] unless entity @s[scores={relic=27}] as @a[tag=OverPotion,scores={usedSkill=1}] at @s run tag @s add OverPotionUse
execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=2}] unless entity @s[scores={relic=27}] as @a[tag=OverPotion,scores={usedSkill=2}] at @s run tag @s add OverPotionUse
execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=3}] unless entity @s[scores={relic=27}] as @a[tag=OverPotion,scores={usedSkill=3}] at @s run tag @s add OverPotionUse

execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=1,relic=27,CT1=..1180}] as @a[tag=OverPotion,scores={usedSkill=1,relic=27,CT1=..1180}] at @s run tag @s add OverPotion1
execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=2,relic=27,CT2=..1180}] as @a[tag=OverPotion,scores={usedSkill=2,relic=27,CT2=..1180}] at @s run tag @s add OverPotion2
execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=3,relic=27,CT3=..1180}] as @a[tag=OverPotion,scores={usedSkill=3,relic=27,CT3=..1180}] at @s run tag @s add OverPotion3

execute if entity @a[tag=OverPotion1,limit=1] as @a[tag=OverPotion1] at @s run scoreboard players set @s CT1 1179
execute if entity @a[tag=OverPotion2,limit=1] as @a[tag=OverPotion2] at @s run scoreboard players set @s CT2 1179
execute if entity @a[tag=OverPotion3,limit=1] as @a[tag=OverPotion3] at @s run scoreboard players set @s CT3 1179

execute if entity @a[tag=OverPotion1,limit=1] as @a[tag=OverPotion1] at @s run tag @s remove OverPotion1
execute if entity @a[tag=OverPotion2,limit=1] as @a[tag=OverPotion2] at @s run tag @s remove OverPotion2
execute if entity @a[tag=OverPotion3,limit=1] as @a[tag=OverPotion3] at @s run tag @s remove OverPotion3

execute if entity @a[tag=OverPotionUse,limit=1] as @a[tag=OverPotionUse] at @s run particle minecraft:firework ~ ~1 ~ 0 0 0 1 30
execute if entity @a[tag=OverPotionUse,limit=1] as @a[tag=OverPotionUse] at @s run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 2
execute if entity @a[tag=OverPotionUse,limit=1] as @a[tag=OverPotionUse] at @s run tag @s remove OverPotion
execute if entity @a[tag=OverPotionUse,limit=1] as @a[tag=OverPotionUse] at @s run tag @s remove OverPotionUse

execute as @a at @s store result score @s Hight run data get entity @s Pos[1]

execute if entity @a[gamemode=!spectator,tag=Battle,limit=1] as @a[gamemode=!spectator,tag=Battle] if score @s Hight matches ..4 unless score #GameTime counter matches ..0 run function project-c:general/void_return