item replace entity @s hotbar.1 with minecraft:dark_oak_slab{DarkHamburg:1b,display:{Name:'[{"text":"ダークハンバーグ","italic":false,"color":"dark_purple"},{"text":"展開","italic":false,"color":"white"}]',Lore:['[{"text":"ダークハンバーグ","italic":false,"color":"dark_purple"},{"text":"を自分の周りに展開し、","color":"white"},{"text":"","color":"dark_purple"}]','[{"text":"ダークハンバーグ","italic":false,"color":"dark_purple"},{"text":"に当たった飛翔物を反射する。","italic":false,"color":"white"}]','[{"text":"展開中に右クリックを押すことで","italic":false,"color":"white"}]','[{"text":"前方の敵に向かって","italic":false,"color":"white"},{"text":"ダークハンバーグ","color":"dark_purple"},{"text":"を1つずつ発射する。"},{"text":"","color":"dark_purple"}]','[{"text":"発動: 右クリック","italic":false,"color":"yellow"},{"text":" ","color":"white"},{"text":"/","color":"dark_gray"},{"text":" ","color":"white"},{"text":"CT 20s","color":"green"}]']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1