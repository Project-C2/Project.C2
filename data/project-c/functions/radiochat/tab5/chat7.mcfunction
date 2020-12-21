execute if entity @s[team=Blue] run tellraw @a[team=Blue] [{"text":"["},{"selector":"@s"},{"text":"] ≪"},{"text":"右から行くぞ!!","color":"blue"},{"text":"≫"}]
execute if entity @s[team=Red] run tellraw @a[team=Red] [{"text":"["},{"selector":"@s"},{"text":"] ≪"},{"text":"右から行くぞ!!","color":"red"},{"text":"≫"}]
execute if entity @s[team=!Blue] run tellraw @s[team=!Red] {"text":"チームに所属していないときはチームチャットは使えません","color":"yellow"}

playsound minecraft:entity.experience_orb.pickup master @s 0 0 0 0.5 2 0.5

function project-c:radiochat/tab5/replacechatitem