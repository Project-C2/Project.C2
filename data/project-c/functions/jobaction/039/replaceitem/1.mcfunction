item replace entity @s hotbar.1 with minecraft:diamond_sword{display:{Name:'{"text":"ショートアサルト"}',Lore:['{"text":"発動:ジャンプ"}','{"text":"前方に自分諸共剣と飛び、"}','{"text":"着弾地点に敵がいれば自分諸共攻撃。"}','{"text":"スニークで強制着地出来る。"}']},AttributeModifiers:[{Name:"HaruEditor",UUIDLeast:1270581031l,UUIDMost:1270581031l,Operation:1,AttributeName:"generic.attack_damage",Amount:-1d,Slot:"mainhand"}],HideFlags:2} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1