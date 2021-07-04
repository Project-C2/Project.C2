item replace entity @s hotbar.1 with minecraft:skeleton_skull{display:{Name:'{"text":"同胞-ヴェックスウィング"}',Lore:['{"text":"発動:滑空"}','{"text":"前方に突進し、大量のvexを召喚する。"}','{"text":"CT:13"}']}} 1
item replace entity @s armor.chest with minecraft:elytra{display:{Name:'{"text":"vex wings"}'},Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1s}],HideFlags:4}
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1