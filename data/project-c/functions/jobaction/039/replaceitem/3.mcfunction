item replace entity @s hotbar.3 with minecraft:wither_skeleton_skull{display:{Name:'{"text":"トランス"}',Lore:['{"text":"発動:最大チャージ状態で攻撃"}','{"text":"攻撃した敵のHPを半分だけ削るが、"}','{"text":"敵のHPが多い程に敵に強力なバフを与える。"}']},AttributeModifiers:[{Name:"HaruEditor",UUID:[I;299986444,-83341408,-1118315636,-202831999],Operation:0,AttributeName:"generic.attack_damage",Amount:-0.9d,Slot:"mainhand"}],HideFlags:2,039trans_weapon:1b} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3