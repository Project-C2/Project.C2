replaceitem entity @s hotbar.2 minecraft:cobweb{Unbreakable:1,display:{Name:'[{"text":"傀儡の呪縛","strikethrough":false,"color":"#000033"}]',Lore:['[{"text":"CT: 15s","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"発動: シフト","italic":false,"color":"yellow"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"前方に呪いのデコイ人形を放ち、","italic":false,"color":"gray"}]','[{"text":"ヒットした敵を","italic":false,"color":"gray"},{"text":"2.5秒間拘束","color":"white"},{"text":"し","color":"gray"}]','[{"text":"行動不能にする","italic":false,"color":"gray"}]']},Enchantments:[{id:"soul_speed",lvl:3}],HideFlags:1}
execute if entity @s run playsound minecraft:block.shulker_box.close master @s 0 0 0 0.5 2 0.5
tag @s add SkillReady2