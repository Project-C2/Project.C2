#region テレポーターのパーティクル
particle minecraft:happy_villager 923 110 -1005 0.25 0.5 0.25 1 1 normal
particle minecraft:happy_villager 923 110 -1002 0.25 0.5 0.25 1 1 normal
particle minecraft:happy_villager 923 110 -998 0.25 0.5 0.25 1 1 normal
particle minecraft:happy_villager 923 110 -995 0.25 0.5 0.25 1 1 normal

particle minecraft:happy_villager 1029 110 -995 0.25 0.5 0.25 1 1 normal
particle minecraft:happy_villager 1029 110 -998 0.25 0.5 0.25 1 1 normal
particle minecraft:happy_villager 1029 110 -1002 0.25 0.5 0.25 1 1 normal
particle minecraft:happy_villager 1029 110 -1005 0.25 0.5 0.25 1 1 normal

particle dust 1 0 0 1 961 70.5 -1045 0.25 0.75 0.25 1 3 force
particle minecraft:dust 1 0.5 0 1 930 77.5 -1009 0.25 0.75 0.25 1 3 force
particle minecraft:dust 1 1 0 1 960 86.5 -1007 0.25 0.75 0.25 1 3 force

particle dust 1 0 0 1 982 87.5 -1038 0.25 0.75 0.25 1 3 force
particle dust 0 1 0 1 1015 70.5 -1032 0.25 0.75 0.25 1 3 force
particle dust 0 1 1 1 1006 81.5 -1010 0.25 0.75 0.25 1 3 force

particle dust 0 1 1 1 1008 85.5 -991 0.25 0.75 0.25 1 3 force
particle dust 1 1 0 1 1002 70.5 -978 0.25 0.75 0.25 1 3 force
particle dust 0 0 1 1 998 97.5 -961 0.25 0.75 0.25 1 3 force

particle dust 0 1 0 1 969 87.5 -954 0.25 0.75 0.25 1 3 force
particle dust 1 0.5 0 1 965 81.5 -991 0.25 0.75 0.25 1 3 force
particle dust 0 0 1 1 932 70.5 -989 0.25 0.75 0.25 1 3 force

#endregion

# テレポート
execute positioned 923 109.5 -1005 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 1005 78.5 -1047 0 0
execute positioned 923 109.5 -1002 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 939 78.5 -1043 -45 0
execute positioned 923 109.5 -998 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 939 79.5 -993 -45 0
execute positioned 923 109.5 -995 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 995 79.5 -984 145 0

execute positioned 1029 109.5 -995 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 947 76.5 -953 180 0
execute positioned 1029 109.5 -998 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 1021 77.5 -973 90 -10
execute positioned 1029 109.5 -1002 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 1022 77.5 -1010 135 0
execute positioned 1029 109.5 -1005 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 948 78.5 -1008 180 0


execute positioned 961 69.5 -1045 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 983.0 85.5 -1041.0 -90 0
execute positioned 930 76.5 -1009 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 963 80.5 -991 45 0
execute positioned 960 85.5 -1007 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 1002 69.5 -980 135 0

execute positioned 982 86.5 -1038 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 961 69.5 -1043 0 0
execute positioned 1015 69.5 -1032 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 971.0 86 -958.0 135 0
execute positioned 1006 80.5 -1010 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 1010 84.5 -989 0 0

execute positioned 1008 84.5 -991 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 1006 83.5 -1014 180 0
execute positioned 1002 69.5 -978 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 958 85.5 -1009 135 0
execute positioned 998 96.5 -961 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 935 69.5 -989 -45 0

execute positioned 969 86.5 -954 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 1017 69.5 -1033 45 0
execute positioned 965 80.5 -991 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 930 76.5 -1011 -90 0
execute positioned 932 69.5 -989 if entity @a[distance=..0.5,gamemode=!spectator,limit=1] run tp @a[distance=..0.5,gamemode=!spectator] 999 96.5 -963 180 0