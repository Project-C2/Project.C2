#実行者     -> jobNumber = 55
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

scoreboard players remove @s[scores={counter_1=1..}] counter_1 1

execute if entity @s[scores={counter_1=0},tag=055_bullet] run function project-c:jobaction/055/replaceitem/0
execute if entity @s[scores={counter_1=0},tag=055_bullet] run tag @s remove 055_bullet
execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/055/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/055/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/055/replaceitem/3

execute if entity @s[scores={counter_1=0,useSnowball=1..},gamemode=!spectator] run function project-c:jobaction/055/skill/0/0
execute if entity @s[scores={CT1=1200..,bow=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/055/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"フィン・ファンネル","color":"yellow","italic":"false","underlined":"true"}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/055/skill/2/0

execute if entity @s[nbt={HurtTime:9s},team=Red,gamemode=!spectator,tag=Battle] run effect give @a[distance=1..8,team=Red] instant_damage 1 0
execute if entity @s[nbt={HurtTime:9s},team=Blue,gamemode=!spectator,tag=Battle] run effect give @a[distance=1..8,team=Blue] instant_damage 1 0
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:item.trident.return master @a ~ ~ ~ 1 0
execute if entity @s[nbt={HurtTime:9s},team=Red,gamemode=!spectator,tag=Battle,distance=1..8] run particle minecraft:damage_indicator ~ ~1 ~ 0 0 0 1 10 normal @a
execute if entity @s[nbt={HurtTime:9s},team=Blue,gamemode=!spectator,tag=Battle,distance=1..8] run particle minecraft:damage_indicator ~ ~1 ~ 0 0 0 1 10 normal @a

execute if entity @s[team=Red,gamemode=!spectator,tag=Battle] run effect give @a[team=Red,distance=1..8,tag=Battle] minecraft:strength 1 0
execute if entity @s[team=Red,gamemode=!spectator,tag=Battle] run effect give @a[team=Red,distance=1..8,tag=Battle] minecraft:haste 1 1

execute if entity @s[team=Blue,gamemode=!spectator,tag=Battle] run effect give @a[team=Blue,distance=1..8,tag=Battle] minecraft:strength 1 0
execute if entity @s[team=Blue,gamemode=!spectator,tag=Battle] run effect give @a[team=Blue,distance=1..8,tag=Battle] minecraft:haste 1 1

scoreboard players reset @s sneak
scoreboard players reset @s bow
scoreboard players reset @s useSnowball