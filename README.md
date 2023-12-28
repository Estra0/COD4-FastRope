

## What's inside this template ?

This template will show you how to spawn helicopters, make them move, make them unload friendly and ennemy ai, and having them fly away and despawn


## How to install the template ?

Inside the first folder you will find 3 other folders, simply drag & drop them inside your Call Of Duty 4 Modern Warfare Root Folder
Then open Cod4CompileTool or any other compiler tool for cod 4. Then  make sure the option " Compile Paths " is checked because otherwise the movements will not work
Then simply compile BSP, Reflections, and build FastFile then launch and have fun !



## More in-depths explanation to how to recreate this template

**It's recommended that you have some familiarity with Cod4Radiant !**


I. Spawning the helicopters and initialising them into the map

Right Click on the 2d grid then go to **Script > Vehicle**
You'll then be met with a lot of 3d models in the folder **raw > models** IF NOT THEN SIMPLY GO TROUGHT > **Cod 4 Root Folder > raw > models**
Then type **vehicle_THENAMEOFTHEVEHICLE** for example i will use the MI-17 model so i type **vehicle_mi17**

## ❗ If you want to use the MI17 model make sure you select a model with _fly at the end otherwise it will be a static object and not a moveable vehicle !

Once you selecte the right model press the **Open button** at the right of the window

You should then have an helicopter on your map !


## II. Making the helicopter move & having him unload ai and them drive off 

So do a Right Click on the 2d grid again and select **trigger > multiple**
Then adjust the size of the trigger to whatever you want 

**Now you can choose to put the trigger inside the player spawn, so when the player load in the helicopter spawns in or you can put it where ever you want**

Now select both the trigger and the helicopter with **SHIFT + RIGHT-CLICK**
Once both of them are selected press **SHIFT + V**
A menu should appear !
For now simply press **Spawn Vehicle**

## Now let's make him move !

To make the helicopter move we will need to put script struct in our map 

To do so, simply right click again on the 2d grid and go to **Script > Struct**

Once spawned it should be a RED CUBE

Now put as much struct as you need, (In the template there is 3 Struct)

Script Struct will allow us to do multiple things with the helicopters such as (**Making them move, Making them unload Ai's, and Making them delete themself**)

So now that you have your structs in your map. Select the helicopter and THE FIRST STRUCT with **Shift + Right-Click** and Press **W** it will then link the helicopter to the first struct, then select the struct who's linked to the helicopter and do the same for the other structs ! (**WARNING: For the others structs DO NOT link them to the helicopter because its unnecesseary to do so unnecessary. Simply select a struct then another and link them !

Now that ALL the structs are linked.


Select the struct where you want the ai to be unload

Then press **N** and write this

Key = Script_Unload
Value = Both

This will tell the helicopter to unload the ai's once it reach this struct !

Then select the struct where you want the helicopter to be deleted then write this :

Key = Script_NoteWorthy
Value = deleteme 




## Now let's finish the movements !


Select again the trigger and and the HELICOPTER and press again **Shift + V**
And press **Move Vehicle**
Then select all the struct WITHOUT the helicopter selected and press **Shift + V**
Then  go to **Speed** and put the value you want then press **SetSpeed**
Then to below to **Set LookAhead** and put this value = **1** and press **Set LookAhead**


##Now let's make the helicopter a moving vehicle

Right now the helicopter is just an object for it to become a vehicle we have to include some values.

So select the helicopter model and press **N**

And put these values :

Key = vehicletype
Value = mi17

Note * To find the vehicletypes simply go to your Cod 4 root folder > raw > vehicles


## The Radiant part is done, NOW WE NEED TO PUT SOME CODE IN OUR MAP

Open the .gsc of your map and put this line ABOVE **maps\_load::main();** OTHERWISE THE MAP WONT START !!!!!!!!!!

maps\_mi17::main("vehicle_mi17_woodland_fly");



Now that's done let's add the ai to the helicopter !





## HOW TO PUT AIS IN THE HELICOPTER 

spawn the ennemies that you want (THE MI17 IS LIMITED TO 8 SEATING SPACE)

Then select all of them and press **N** and check **SPAWNER**

Then still with the ennemies selected, select the helicopter and press **SHIFT + V**
Then press **Ride On/In Vehicle**


BOOM DONE !


## Now for the final part !



Open Cod4CompilerTool and select your map and make sure **COMPILE PATHS** is checked otherwise your map wont work !
Then simply compile bsp, reflections and build your fastfile
then launch the map
If you did everything correctly, you won't get any errors !
Now close the game and go to **Update Zone File** located in the COD4CompilerTool 
You will then see at the left side a bunch of lines 
Select everything and put them at the right side below the existing lines
then press save and **REBUILD FAST FILE**


## AND BOOM EVERYTHING IS DONE !!!!
