#アイテムドロップ時、インベントリを保持したい場合はここに追記してください
tag @s[scores={jobNumber=106}] add inventory-keep
execute if entity @s[tag=!inventory-keep] run function project-c:general/inventoryclear
tag @s[tag=inventory-keep] remove inventory-keep


tag @s[tag=SkillReady1] remove SkillReady1
tag @s[tag=SkillReady2] remove SkillReady2
tag @s[tag=SkillReady3] remove SkillReady3
execute if score #MenuTeamarmor counter matches 1..3 run tag @s add SetArmor
function project-c:general/teamarmor/rulecheck

execute if score #MenuRelic counter matches 1 run function project-c:general/relic/relicset
#execute if score #MenuRelic counter matches 1 if entity @s[scores={relic=16,Selectsneak=1..},tag=Battle] at @s run data merge block -45 50 -122 {auto:1b}
scoreboard players reset @s[scores={jobNumber=0}] drop

item replace entity @s hotbar.4 with minecraft:gray_stained_glass_pane{display:{Name:'{"text":"特殊枠","italic":false}',Lore:['{"text":"ここに特殊枠を追加します","italic":false}']}} 1
function project-c:general/outfitsset

tag @s add project-c_drop