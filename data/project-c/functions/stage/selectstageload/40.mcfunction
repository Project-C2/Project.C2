summon arrow 0 0 0 {xTile:3000,yTile:0,zTile:-1000,NoGravity:1b,Tags:["Loader","Stable"]}
data merge block -113 47 -121 {Command:"/function project-c:stage/selectstageclock/40"}
data merge block -123 32 -120 {Command:"/function project-c:stage/selectstagestart/40"}
data merge block -115 20 -118 {Command:"/tp @a[scores={gameNumber=-1}] 3002 100 -1015 0 45"}
data merge block -115 23 -121 {Command:"/tp @a[tag=!Joined] 3002 100 -1015 0 45"}