#実行者     -> jobNumber = 47
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

scoreboard players add @s[nbt={HurtTime:9s}] CT2 200
scoreboard players add @s[nbt={HurtTime:9s},scores={counter_2=10..}] CT2 200

effect give @s[scores={counter_3=10..}] minecraft:slowness 1 3
effect give @s[scores={counter_3=10..}] minecraft:strength 1 0

effect give @s[scores={counter_1=10..}] minecraft:blindness 12 1
execute if entity @s[scores={counter_1=10..},team=Red] at @s run effect give @a[sort=nearest,team=Blue,limit=1] minecraft:glowing 1 0
execute if entity @s[scores={counter_1=10..},team=Blue] at @s run effect give @a[sort=nearest,team=Red,limit=1] minecraft:glowing 1 0

scoreboard players add @s[scores={damageDealt=50..}] CT1 20
scoreboard players add @s[scores={damageDealt=50..}] CT2 20
scoreboard players add @s[scores={damageDealt=50..}] CT3 20
execute as @s[scores={damageDealt=1..}] at @e[limit=1,sort=nearest,nbt={HurtTime:10s}] run particle dust 1 0 5435465 1 ~ ~1 ~ 0.5 0 0.5 0 20
execute as @s[scores={damageDealt=1..}] at @e[limit=1,sort=nearest,nbt={HurtTime:10s}] facing entity @s feet run particle minecraft:damage_indicator ^ ^1 ^ ^ ^ ^10000000 0.0000001 0
execute as @s[scores={damageDealt=1..}] at @e[limit=1,sort=nearest,nbt={HurtTime:10s}] facing entity @s feet run particle minecraft:damage_indicator ^0.5 ^1 ^ ^ ^ ^10000000 0.0000001 0
execute as @s[scores={damageDealt=1..}] at @e[limit=1,sort=nearest,nbt={HurtTime:10s}] facing entity @s feet run particle minecraft:damage_indicator ^ ^1 ^0.5 ^ ^ ^10000000 0.0000001 0
execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/053/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/053/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/053/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"暴食＝ベルゼブブ","color":"dark_purple","italic":"false"}'}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/053/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"憤怒＝サタン","color":"dark_red","italic":"false","underline":"true"}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/053/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"怠惰＝ヴェルフェゴール","color":"dark_green","italic":"false"}'}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/053/skill/3/0
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={damageDealt=1..}] damageDealt
execute if entity @s[gamemode=!spectator] run teleport @e[type=item,distance=..5] ~ ~ ~