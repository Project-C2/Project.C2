#実行者     -> jobNumber = 46
#実行地点   -> 実行者

#counter_2 -> 第二のカウンター
#counter_3 - > 第三aのカウンター
#counter_4 -> ディヴァインウェポン残り時間
#counter_5 -> マージバフ付与済みかどうか
#counter_6 -> 第三bのカウンター

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/046/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/046/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/046/replaceitem/3


effect give @s[scores={counter_4=..0,counter_5=0}] minecraft:absorption 1000000 2 true
effect give @s[scores={counter_4=599}] instant_health 1 10 true
scoreboard players set @s[scores={counter_4=..0,counter_5=0}] counter_5 1

title @s[scores={counter_4=-1}] actionbar {"text":"<<モード:イージスマージ>>","color":"yellow","bold":true,"underlined":true}
title @s[scores={counter_4=0..}] actionbar {"text":"<<モード:ディヴァインウェポン>>","color":"#FFD70F","bold":true,"underlined":true}

item replace entity @s[scores={counter_4=0}] armor.chest with elytra{display:{Name:'{"text":"モード:イージスマージ","color":"yellow","bold":true,"italic":false}',Lore:['{"text":" 防具 +7.5","color":"gray","italic":false}','{"text":" 防具強度 +2.5","color":"gray","italic":false}','{"text":" 滑空能力","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:7.5,Operation:0,UUID:[I;-1245327899,390941413,-1895648147,1921846778],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2.5,Operation:0,UUID:[I;1023964609,1884376969,-2141716239,330545278],Slot:"chest"}]} 1
item replace entity @s[scores={counter_4=0}] hotbar.3 with golden_horse_armor{display:{Name:'{"text":"パージライン","color":"white","italic":false}',Lore:['{"text":"発動:スニーク","color":"yellow","italic":false}','{"text":"モード:イージスマージ時のみ","color":"white","italic":false,"underlined":true}','{"text":"周囲に鎧兜を8体召喚し、","color":"white","italic":false}','{"text":"敵に向かって追尾して発射する","color":"white","italic":false}','{"text":"発動後、モード:ディヴァインウェポンに移行する","color":"white","italic":false}','{"text":"CT:45","color":"green","italic":false}']}} 1
function project-c:general/max-health
execute as @s[scores={counter_4=0}] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1.5 1.5
execute as @s[scores={counter_4=0}] at @s run playsound minecraft:item.armor.equip_netherite master @a ~ ~ ~ 2 1
execute as @s[scores={counter_4=0}] at @s run particle minecraft:enchant ^ ^1.25 ^0.125 0 0 0 2 1000 force

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"バニッシュメント","color":"white","italic":false}'}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/046/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"アポカリプティックサウンド","color":"white","italic":false}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/046/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"パージライン","color":"white","italic":false}'}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/046/skill/3/0a
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"フェイズシフト","color":"white","italic":false}'}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/046/skill/3/0b

execute if entity @s[scores={counter_4=..0,counter_5=1},gamemode=!spectator,nbt={AbsorptionAmount:0f}] run function project-c:jobaction/046/skill/4/0

effect clear @s[scores={counter_4=0..}] minecraft:bad_omen
effect clear @s[scores={counter_4=0..}] minecraft:blindness
effect clear @s[scores={counter_4=0..}] minecraft:glowing
effect clear @s[scores={counter_4=0..}] minecraft:hunger
effect clear @s[scores={counter_4=0..}] minecraft:instant_damage
effect clear @s[scores={counter_4=0..}] minecraft:mining_fatigue
effect clear @s[scores={counter_4=0..}] minecraft:nausea
effect clear @s[scores={counter_4=0..}] minecraft:poison
effect clear @s[scores={counter_4=0..}] minecraft:slowness
effect clear @s[scores={counter_4=0..}] minecraft:unluck
effect clear @s[scores={counter_4=0..}] minecraft:weakness
effect clear @s[scores={counter_4=0..}] minecraft:wither

scoreboard players reset @s sneak
scoreboard players remove @s[scores={counter_4=0..}] counter_4 1