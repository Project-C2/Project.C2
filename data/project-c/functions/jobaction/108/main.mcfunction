#実行者     -> jobNumber = 108
#実行地点   -> 実行者
#108-Confuse -> 混乱デバフに使用
#counter -> 乱数生成に使用
#Mana ->
#counter_1 ->
#counter_2 ->
#counter_3 ->
#counter_4 ->
#counter_5 ->
# #108-Counter -> 他プレイヤーのcounterスコア待避用に使用(dummyplayer)
# #108-ConfuseMod -> 混乱時の演出用(dummyplayer)
# ResetCounterScore -> counterスコアリセットのために使用(Tag)



scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/108/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/108/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/108/replaceitem/3



execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ちぇるーんちぇらるれちぇるぽぱぴ？","italic":false}'}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/108/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ちぇるちぇる★じぇのさい","color":"red","bold":"true"}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/108/skill/2/0
#execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"\"}"}}}},scores={CT3=1200..,score=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/00-n-/skill/3/0

function project-c:jobaction/108/melee_attack
execute if score @s deathCountExt matches 1.. run function project-c:jobaction/108/reset_chel



scoreboard players reset @s sneak
scoreboard players reset @s deathCountExt
scoreboard players set @s CT3 1200
