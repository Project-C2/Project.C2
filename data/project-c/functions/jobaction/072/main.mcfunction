#実行者     -> jobNumber = 72
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/072/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/072/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/072/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"第五勢\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/072/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"五輪真髄:空\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator,nbt={Inventory:[{Slot:-106b,id:"minecraft:golden_sword"}]}] run function project-c:jobaction/072/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"五輪真髄:空\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator,nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_sword"}]}] run function project-c:jobaction/072/skill/2/2

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"§c天眼§f/§a無空\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator,nbt={Inventory:[{Slot:-106b,id:"minecraft:golden_sword"}]}] run function project-c:jobaction/072/skill/3/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"§c天眼§f/§a無空\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator,nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_sword"}]}] run function project-c:jobaction/072/skill/3/1



scoreboard players remove @s[scores={counter_1=1..}] counter_1 1
execute if entity @s[scores={counter_1=1..}] run particle firework ~ ~1 ~ 0.5 0 0.5 0.1 1
execute if entity @s[scores={counter_1=1}] run particle spit ~ ~1 ~ 0 0 0 1 200
execute if entity @s[scores={counter_1=1}] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 2 1

execute if entity @s[scores={counter_1=1..}] run particle end_rod ~1 ~1 ~0.25 -1 0 1 0.2 0 
execute if entity @s[scores={counter_1=1..}] run particle end_rod ~ ~1 ~1.25 -1 0 -1 0.2 0 
execute if entity @s[scores={counter_1=1..}] run particle end_rod ~-1 ~1 ~0.5 0 0 -1 0.2 0 
execute if entity @s[scores={counter_1=1..}] run particle end_rod ~-1 ~1 ~-0.25 1 0 -1 0.2 0 
execute if entity @s[scores={counter_1=1..}] run particle end_rod ~ ~1 ~-1.25 1 0 1 0.2 0 
execute if entity @s[scores={counter_1=1..}] run particle end_rod ~1 ~1 ~-0.5 0 0 1 0.2 0 

execute if entity @s[scores={counter_1=1..,damageDealt=1..},team=Red] run tag @e[team=Blue,distance=..6,limit=1] add FiveH
execute if entity @s[scores={counter_1=1..,damageDealt=1..},team=Blue] run tag @e[team=Red,distance=..6,limit=1] add FiveH

execute as @e[tag=FiveH] at @s run particle sweep_attack ~ ~1 ~ 0.5 0.5 0.5 0 10
execute as @e[tag=FiveH] at @s run particle firework ~ ~1 ~ 0 0 0 0.3 40

execute as @e[tag=FiveH] at @s run effect give @s wither 1 4
execute as @e[tag=FiveH] at @s run tag @s remove FiveH


scoreboard players remove @s[scores={counter_3=1..}] counter_3 1
execute if entity @s[scores={counter_3=1..}] run particle minecraft:block glass ~ ~1 ~ 1 1 1 1 7 force @a
execute if entity @s[scores={counter_3=1}] run particle spit ~ ~1 ~ 0 0 0 1 200
execute if entity @s[scores={counter_3=1}] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 2 1

execute if entity @s[scores={counter_3=1..},team=Red] run effect clear @a[distance=..7,team=Blue,tag=Battle] resistance
execute if entity @s[scores={counter_3=1..},team=Blue] run effect clear @a[distance=..7,team=Red,tag=Battle] resistance

scoreboard players set @s sneak 0
scoreboard players reset @s damageDealt
scoreboard players reset @s jump