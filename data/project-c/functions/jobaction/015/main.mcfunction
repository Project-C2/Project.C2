#実行者     > 職15番
#実行地点   > 実行者の地点

#usedSkillリセット
scoreboard players reset @s usedSkill


#アイテム配布/サウンド再生/SkillReadyタグ付与
execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/015/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/015/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/015/replaceitem/3


#スキル発動
execute if entity @s[scores={sneak=1..,CT1=1200..},nbt={SelectedItem:{tag:{display:{Name:'[{"text":"身代わり人形","color":"#003300","strikethrough":true}]'}}}}] run function project-c:jobaction/015/skill/1/0
execute if entity @s[scores={sneak=1..,CT2=1200..},nbt={SelectedItem:{tag:{display:{Name:'[{"text":"傀儡の呪縛","strikethrough":false,"color":"#000033"}]'}}}}] run function project-c:jobaction/015/skill/2/0
execute if entity @s[scores={sneak=1..,CT3=1200..},nbt={SelectedItem:{tag:{display:{Name:'[{"text":"儚きマリオネット","italic":true,"color":"dark_aqua"}]'}}}}] run function project-c:jobaction/015/skill/3/0


scoreboard players reset @s sneak