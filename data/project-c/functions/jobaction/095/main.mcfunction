#実行者     -> jobNumber = 095
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> スキル1
#counter_2    -> スキル4のストック保存用
#counter_3    -> 
#counter_4    -> スキル4制御用
#counter_5    -> スキル4のCT用
#subcounter   -> スキル3の消滅用

scoreboard players reset @s usedSkill

execute if score @s counter_1 matches 1.. run function project-c:jobaction/095/skill/1/1
execute unless score @s counter_2 matches 1.. run scoreboard players add @s counter_5 1
execute unless score @s counter_2 matches 1.. if score @s counter_5 matches 200.. run function project-c:jobaction/095/skill/4/0
execute if entity @s[scores={counter_3=1..}] run scoreboard players remove @s counter_3 1
execute if entity @s[scores={counter_3=1}] run function project-c:jobaction/095/skill/3/inv_clear

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/095/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/095/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/095/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"トラップ・オブ・アルガリア","color":"gold","italic":false}'}}}},scores={CT1=1200..,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/095/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"恐慌呼び起こせし魔笛","color":"#eeff22","underlined":true,"italic":false}'}}}},scores={CT2=1200..,useSnowball=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/095/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"この世ならざる幻馬","color":"#ddbbdd","bold":true,"underlined":true,"italic":false}'}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/095/skill/3/0
execute if entity @s[nbt={SelectedItem:{tag:{095weapon:1b}}},scores={useSnowball=1..},gamemode=!spectator] if entity @s[nbt={RootVehicle:{Entity:{Passengers:[{id:"minecraft:horse",Tags:["095Hippoglyphe"]}]}}}] run function project-c:jobaction/095/skill/3/inv

execute if entity @s[scores={useSnowball=1..}] run kill @e[type=snowball,distance=..5,limit=1,sort=nearest]
execute if entity @s[scores={useSnowball=1..}] run item replace entity @s weapon.offhand with minecraft:snowball 1
scoreboard players reset @s[scores={useSnowball=1..}] useSnowball
scoreboard players reset @s[scores={sneak=1..}] sneak
advancement revoke @s[advancements={project-c:wanco_job/095/instant_damage=true}] only project-c:wanco_job/095/instant_damage