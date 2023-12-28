#include maps\_anim;
#include maps\_utility;
#include common_scripts\utility;
#include maps\_utility_code;

#using_animtree("generic_human");

main()
{
	if ( getdvar( "r_reflectionProbeGenerate" ) == "1" )
		return;

	precacheitem("mp5");

	maps\_blackhawk::main("vehicle_blackhawk");
	maps\_mi17::main("vehicle_mi17_woodland_fly");
	maps\_load::main();
	level.early_level[ level.script ] = false; 


	thread mission_start(); 

	wait 0.05; 
	setsaveddvar( "cg_fov" , "80" );
}

mission_start()
{



}