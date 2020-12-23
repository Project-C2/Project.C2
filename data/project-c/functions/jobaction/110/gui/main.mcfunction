#GUIクリック検知
execute if entity @s[tag=!110drop,tag=!110SelectSkillSlot2] run function project-c:jobaction/110/gui/check
execute if entity @s[tag=!110drop,tag=110SelectSkillSlot2] run function project-c:jobaction/110/gui/skills/select_slot/check

#アイテム表示
execute if entity @s[tag=110pageChange] run function project-c:jobaction/110/gui/set
execute if entity @s[tag=110SelectSkillSlot1] run function project-c:jobaction/110/gui/skills/select_slot/set

#ダミーエンティティのスコアリセット
scoreboard players reset #110-
