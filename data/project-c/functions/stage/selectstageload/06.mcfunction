summon arrow 0 0 0 {xTile:-1040,yTile:0,zTile:40,NoGravity:1b,Tags:["Loader","Stable"]}
data merge block -113 47 -121 {Command:"/function project-c:stage/selectstageclock/06"}
data merge block -123 32 -120 {Command:"/function project-c:stage/selectstagestart/06"}
data merge block -115 20 -118 {Command:"/tp @a[scores={gameNumber=-1}] -1040 132 40 -135 40"}
data merge block -115 23 -121 {Command:"/tp @a[tag=!Joined] -1040 132 40 -135 40"}