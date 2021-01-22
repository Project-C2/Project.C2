#実行者     -> jobNumber = 47
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/025/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/025/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/025/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ｶﾞｲｼﾞの極ー全能持越しー\",\"color\":\"dark_purple\",\"bold\":true,\"italic\":false}"}}}},scores={CT1=1200..,damageDealt=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/025/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"伝説の増殖\",\"color\":\"dark_green\",\"bold\":true,\"italic\":false}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/025/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"忘れた頃の復讐\",\"color\":\"dark_red\",\"bold\":true,\"italic\":false}"}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/025/skill/3/0
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={damageDealt=1..}] damageDealt

title @s actionbar ["",{"text":"\u300a\u6012\u308a\u30b2\u30fc\u30b8:","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"Mana"},"bold":true,"underlined":true,"color":"red"},{"text":"%","bold":true,"color":"red"},{"text":"\u300b","bold":true,"color":"yellow"}]
scoreboard players add @s[scores={Mana=..99}] subcounter 1
scoreboard players add @s[scores={subcounter=40..}] Mana 1
scoreboard players set @s[scores={subcounter=40..}] subcounter 0
scoreboard players add @s[nbt={HurtTime:9s}] Mana 5
scoreboard players set @s[scores={Mana=101..}] Mana 100