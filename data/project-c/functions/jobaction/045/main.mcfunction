#実行者     -> jobNumber = 45
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/045/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/045/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/045/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"不死霊召喚＝サモンアンデッド","color":"dark_purple","italic":"false","underlined":"true"}'}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/045/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"蘇生ノ呪術＝ネクロマンシー","color":"dark_red","italic":"false","underlined":"true"}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/045/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"幻影＝ファントムー","color":"dark_gray","italic":"false","underlined":"true"}'}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/045/skill/3/0

execute if entity @s[scores={deathCountExt=1..}] run execute as @e[tag=045-NecroMinion] if score @s playerNumber = @a[limit=1,sort=nearest] playerNumber run kill @s
execute if entity @s[scores={HP=..1}] run execute as @e[tag=045-NecroMinion] if score @s playerNumber = @a[limit=1,sort=nearest] playerNumber run kill @s

scoreboard players reset @s sneak