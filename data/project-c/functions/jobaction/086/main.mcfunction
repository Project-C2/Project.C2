#実行者     -> jobNumber = 86
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/086/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/086/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/086/replaceitem/3

execute if entity @s[scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/086/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"黙想\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/086/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"燕返し\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT3=1200..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/086/skill/3/0

execute if entity @s[scores={counter_1=1..},nbt={HurtTime:9s}] run function project-c:jobaction/086/skill/1/1
scoreboard players remove @s[scores={counter_1=1..}] counter_1 1

execute if entity @s[scores={counter_2=1..}] run particle minecraft:firework ~ ~1 ~ 0.5 1 0.5 0 1
execute if entity @s[scores={counter_2=1}] run function project-c:jobaction/086/skill/2/1
scoreboard players remove @s[scores={counter_2=1..}] counter_2 1

execute if entity @s[scores={counter_2=1..,damageDealt=1..}] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 2 1

execute if entity @s[scores={counter_2=1..},nbt={HurtTime:9s}] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 2 1

scoreboard players set @s[scores={counter_2=1..,damageDealt=1..}] counter_2 0
scoreboard players set @s[scores={counter_2=1..},nbt={HurtTime:9s}] counter_2 0

execute if entity @s[scores={counter_3=1..}] run particle dust 1 0 0 1 ~ ~1 ~ 0.5 1 0.5 0 1
scoreboard players remove @s[scores={counter_3=1..}] counter_3 1

scoreboard players set @s sneak 0
scoreboard players reset @s useCarrotStick
scoreboard players reset @s damageDealt