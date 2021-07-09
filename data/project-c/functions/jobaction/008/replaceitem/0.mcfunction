item replace entity @s hotbar.0 with minecraft:iron_sword{display:{Name:'{"text":"Iron longsword"}'},Unbreakable:1b} 1
item replace entity @s hotbar.1 with minecraft:feather{display:{Name:'{"text":"ソニックウィング"}',Lore:['{"text":"発動:滑空"}','{"text":"周囲の敵にダメージを与える。"}']}} 1
item replace entity @s hotbar.2 with minecraft:cobweb{display:{Name:'{"text":"バードストライク"}',Lore:['{"text":"発動:落下"}','{"text":"周囲の敵にダメージを与える"}']}} 1

item replace entity @s hotbar.3 with minecraft:quartz{display:{Name:'{"text":"飛翔"}',Lore:['{"text":"発動:スニーク"}','{"text":"緩やかに上昇する。"}']}} 1
item replace entity @s enderchest.3 from entity @s container.3
function project-c:jobaction/008/setquartz

item replace entity @s armor.chest with minecraft:elytra{HideFlags:63,Unbreakable:1,Enchantment:[{id:10,lvl:1},{id:2,lvl:10000}]} 1

#replaceitem entity @s hotbar.8 written_book{pages:["[\"\",{\"text\":\"     \"},{\"text\":\"= バードマン =\",\"color\":\"aqua\",\"bold\":true,\"italic\":true,\"underlined\":true},{\"text\":\"\\nエリトラを用いた空中戦において活躍する近接職。落下ダメージを無効化し、飛行により壁を超えることができるので初心者にもおすすめ。\",\"color\":\"black\",\"bold\":false,\"italic\":false,\"underlined\":false},{\"text\":\"\\n\\nスキル\",\"color\":\"red\",\"italic\":true,\"underlined\":true},{\"text\":\"\\nソニックウィング\",\"color\":\"black\",\"underlined\":true,\"italic\":false},{\"text\":\"\\nバードストライク\",\"color\":\"black\",\"underlined\":true},{\"text\":\"\\n飛翔\",\"color\":\"black\",\"underlined\":true}]\"}","{\"text\":\"[\"\",{\"text\":\"- ソニックウィング -\",\"color\":\"black\",\"bold\":true,\"underlined\":true},{\"text\":\"\\nパッシブスキル\",\"color\":\"dark_blue\",\"underlined\":true,\"bold\":false},{\"text\":\"\\nクールタイム : なし\",\"color\":\"blue\",\"underlined\":true},{\"text\":\"\\n発動条件 : 高速で滑空する\",\"color\":\"blue\",\"underlined\":true},{\"text\":\"\\n高速滑空中、周囲3mの敵にダメージを与える。\",\"color\":\"black\",\"underlined\":false}]\"}","{\"text\":\"[\"\",{\"text\":\"- バードストライク -\",\"color\":\"black\",\"bold\":true,\"underlined\":true},{\"text\":\"\\nパッシブスキル\",\"color\":\"dark_blue\",\"underlined\":true,\"bold\":false},{\"text\":\"\\nクールタイム : なし\",\"color\":\"blue\",\"underlined\":true},{\"text\":\"\\n発動条件 : 高高度からの落下\",\"color\":\"blue\",\"underlined\":true},{\"text\":\"\\n落下地点から周囲4m以内の敵に距離に応じてダメージを与える。高速で滑空し落下しても発動する。着地時に周囲の敵に移動速度低下を付与する。\",\"color\":\"black\",\"underlined\":false}]\"}","{\"text\":\"[\"\",{\"text\":\"- 飛翔 -\",\"color\":\"black\",\"bold\":true,\"underlined\":true},{\"text\":\"\\nパッシブスキル\",\"color\":\"dark_blue\",\"underlined\":true,\"bold\":false},{\"text\":\"\\nクールタイム : 1秒\",\"color\":\"blue\",\"underlined\":true},{\"text\":\"\\n発動条件 : スニーク\",\"color\":\"blue\",\"underlined\":true},{\"text\":\"\\n羽ばたき、空中に浮かび上がる。5回までストックすることができ、回復には地面に立っていなければいけない。\",\"color\":\"black\",\"underlined\":false}]\"}"],title:"バードマンの手引",author:fuaim,display:{Name:"飛翔族バードマンの手引 i1"}} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0
item replace entity @s enderchest.1 from entity @s container.1
item replace entity @s enderchest.2 from entity @s container.2
execute positioned as @s run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5