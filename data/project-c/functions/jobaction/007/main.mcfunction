#実行者     -> jobNumber = 7
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/007/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/007/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/007/replaceitem/3


execute if entity @s[scores={counter_5=1..}] run function project-c:jobaction/007/skill/1/shoot

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"火のエレメント\"}"}}}},scores={CT1=1200..,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/007/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"氷のエレメント\"}"}}}},scores={CT2=1200..,useSnowball=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/007/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"雷のエレメント\"}"}}}},scores={CT3=1200..,useSnowball=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/007/skill/3/0


replaceitem entity @s[scores={useSnowball=1..}] weapon.offhand minecraft:snowball 1


scoreboard players add @s[scores={sneak=1..,counter_1=..1},gamemode=!spectator] counter 1
scoreboard players add @s[scores={counter=40..}] counter_1 1
execute if entity @s[scores={counter=40..}] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2
execute if entity @s[scores={counter=40..}] run particle enchant ~ ~1.5 ~ 0 0 0 2 50
execute if entity @s[scores={counter=40..}] run give @s minecraft:end_crystal{display:{Name:"{\"text\":\"チャージ\"}",Lore:["{\"text\":\"1~3段階までチャージできる。\"}"]}} 1
execute if entity @s[scores={counter=40..}] run scoreboard players reset @s counter

execute if entity @s[scores={sneak=..0}] run scoreboard players set @s counter 0
execute if entity @s[scores={sneak=..0}] run scoreboard players set @s counter_1 0
execute if entity @s[scores={sneak=..0}] run replaceitem entity @s hotbar.4 minecraft:end_crystal{display:{Name:"{\"text\":\"チャージ\"}",Lore:["{\"text\":\"1~3段階までチャージできる。\"}"]}} 1

scoreboard players set @s sneak 0


scoreboard players reset @s useSnowball