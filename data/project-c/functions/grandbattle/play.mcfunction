#Type: musicFuncion(再生用)
#SongName: 
#SongAuthor: 
#実行したプレイヤーのplayModeを1にします。2の場合はタイムラインをリセットせず1にします
execute as @s[scores={grandbattle_pm=0}] run scoreboard players set @s grandbattle_tl 0
execute as @s[scores={grandbattle_pm=0}] run scoreboard players set @s grandbattle_pm 1
execute as @s[scores={grandbattle_pm=2}] run scoreboard players set @s grandbattle_pm 1
