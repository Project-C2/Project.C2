#最後の攻撃者をplayerNumber検索
scoreboard players operation #deathLog playerNumber = @s lastHurtByNumber
execute as @a if score @s playerNumber = #deathLog playerNumber run tag @s add killedBy
#hurtSkillNumberに応じてEnderItemsの中からアイテムを取り出す
scoreboard players operation #deathLog hurtSkillNumber = @s hurtSkillNumber
execute if entity @a[tag=killedBy,limit=1] as @a[tag=killedBy,limit=1] run function project-c:general/deathlog_getitem
execute if entity @a[tag=killedBy,limit=1] as @a[tag=killedBy,limit=1] run function project-c:general/deathlog_gettext
execute unless entity @a[tag=killedBy,limit=1] run function project-c:general/deathlog_gettext2
#チャット欄にキルログを表示
execute if entity @a[tag=killedBy,limit=1] run tellraw @a ["",{"translate":"%s%s%s%s%s%s%s","with":[{"selector":"@s"},{"text":"は"},{"selector":"@a[tag=killedBy,limit=1]"},{"text":"の"},{"text":"[","color":"aqua"},{"nbt":"Name","storage":"deathlog:","interpret": true},{"text":"]","color":"aqua"}]},{"nbt":"Text","storage":"deathlog:","interpret": true}]
execute unless entity @a[tag=killedBy,limit=1] run tellraw @a ["",{"selector":"@s"},{"nbt":"Text","storage":"deathlog:","interpret": true}]

#リセット
data remove storage deathlog: Name
data remove storage deathlog: Text
scoreboard players reset #deathLog
tag @a[tag=killedBy] remove killedBy
scoreboard players reset @s deathCount
tag @s add deadPlayer
