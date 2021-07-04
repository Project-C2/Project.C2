clear @s golden_sword{HideFlags:1,Unbreakable:1b}
clear @s iron_sword{HideFlags:1,Unbreakable:1b}
execute unless entity @s[tag=035-3A] run item replace entity @s hotbar.3 with minecraft:golden_sword{display:{Name:'{"text":"アニマディヴァイン","color":"gold","underlined":true}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§6聖光の幻弓を召喚し、引き絞りを行う。"}','{"text":"§6再度右クリックで引き絞りに応じた勢いで発射する。"}','{"text":"§aCT:25,Cost:9"}']},Enchantments:[{}],AttributeModifiers:[{Name:"HaruEditor",UUID:[I;299986444,-83341408,-1118315636,-202831999],Operation:0,AttributeName:"generic.attack_damage",Amount:1d,Slot:"mainhand"}],HideFlags:1,Unbreakable:1b} 1
execute if entity @s[tag=035-3A] run item replace entity @s hotbar.3 with minecraft:iron_sword{display:{Name:'{"text":"アニマディヴァイン","color":"gold","underlined":true}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§6聖光の幻弓を召喚し、引き絞りを行う。"}','{"text":"§6再度右クリックで引き絞りに応じた勢いで発射する。"}','{"text":"§aCT:25,Cost:9"}']},Enchantments:[{}],AttributeModifiers:[{Name:"HaruEditor",UUID:[I;299986444,-83341408,-1118315636,-202831999],Operation:0,AttributeName:"generic.attack_damage",Amount:1d,Slot:"mainhand"}],HideFlags:1,Unbreakable:1b} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3

