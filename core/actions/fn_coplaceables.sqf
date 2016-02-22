/*
    FILE: fn_bong.sqf
	AUTHOR: BongLord & DjTrb For Supplying Class Names.
	DESC: Allows Cops & Medics To Place Road Barriers
	DISCLAIMER: This Script Can Be Used On Every Server Only 
	                With This Header / Notification
	Date: 20/2/16
*/
[]spawn bongs_barrier_menu;
       
	    bongs_barrier_menu = {
                removeallActions player; hint "***  Bongs Barrier Menu Loaded  ***  Credits BongLord & DjTrb";
                player addAction ["<t size=""1.5"" color=""#00FF11"">BongLord's Barrier Menu</t>","[]"];
                player addAction ["<t color='#0080FF'>Road Barriers","[]spawn  bong_menu"];
				player addAction ["<t color='#0080FF'>Extras","[]spawn  bong_menu1"];
				player addAction ["<t color='#0080FF'>Remove Barriers","[]spawn  bong_delete"];
                player addAction ["<t color='#FF0000'>--Close Menu--</t>","removeallActions player"];
        };


        bong_menu= {
		        //Barrier
                removeallActions player;
				player addAction ["<t size=""1.5"" color=""#00FF11"">BongLord's Barrier Menu</t>","[]"];
                player addAction["<t color='#0080FF'>Road Barrier",{
                barrier = "RoadBarrier_F" createVehicle position player;
                barrier attachTo[player,[0,3,0.6]];
                barrier setVectorUp (surfaceNormal position barrier); []spawn bong_place;}];
				//Roadcone
                player addAction["<t color='#0080FF'>Road Cone",{
                barrier = "RoadCone_F" createVehicle position player;
                barrier attachTo[player,[0,3,0.4]];
                barrier setVectorUp (surfaceNormal position barrier); []spawn bong_place;}];
				player addAction ["<t color='#FF0000'>--Back--</t>","[]spawn  bongs_barrier_menu"];
        };
		
		bong_menu1= {
		        removeallActions player;
				player addAction ["<t size=""1.5"" color=""#00FF11"">BongLord's Barrier Menu</t>","[]"];
				player addAction["<t color='#0080FF'>Road Cone Beacon",{
                barrier = "RoadCone_L_F" createVehicle position player;
                barrier attachTo[player,[0,3,0.4]];
                barrier setVectorUp (surfaceNormal position barrier); []spawn bong_place1;}];
				//Light
				player addAction["<t color='#0080FF'>Portable Light",{
                barrier = "Land_PortableLight_double_F" createVehicle position player;
                barrier attachTo[player,[0,3,1.1]];
                barrier setVectorUp (surfaceNormal position barrier); []spawn bong_place1;}];
				//Sign
				player addAction["<t color='#0080FF'>Sign CP",{
                barrier = "Sign_Checkpoint_US_EP1" createVehicle position player;
                barrier attachTo[player,[0,3,0.5]];
                barrier setVectorUp (surfaceNormal position barrier); []spawn bong_place1;}];
				//Tape
				player addAction["<t color='#0080FF'>Tape",{
                barrier = "TapeSign_F" createVehicle position player;
                barrier attachTo[player,[0,3,0.4]];
                barrier setVectorUp (surfaceNormal position barrier); []spawn bong_place1;}];
				//BarGate
				player addAction["<t color='#0080FF'>BarGate",{
                barrier = "Land_BarGate_F" createVehicle position player;
                barrier attachTo[player,[0,4,4]];
                barrier setVectorUp (surfaceNormal position barrier); []spawn bong_place1;}];
				//CncBarrier
				player addAction["<t color='#0080FF'>Concrete Barrier",{
                barrier = "Land_CncBarrier_F" createVehicle position player;
                barrier attachTo[player,[0,3,0.4]];
                barrier setVectorUp (surfaceNormal position barrier); []spawn bong_place1;}];
				//Barrier Orange
				player addAction["<t color='#0080FF'>Barrier Orange",{
                barrier = "PlasticBarrier_03_orange_F" createVehicle position player;
                barrier attachTo[player,[0,3,0.4]];
                barrier setVectorUp (surfaceNormal position barrier); []spawn bong_place1;}];
				//Barrier Yellow
				player addAction["<t color='#0080FF'>Barrier Yellow",{
                barrier = "PlasticBarrier_02_yellow_F" createVehicle position player;
                barrier attachTo[player,[0,3,0.4]];
                barrier setVectorUp (surfaceNormal position barrier); []spawn bong_place1;}];
				player addAction ["<t color='#FF0000'>--Back--</t>","[]spawn  bongs_barrier_menu"];
        };
		
		bong_delete= {
		        _lord = position player nearObjects ["RoadBarrier_F", 2];
				_lord1 = position player nearObjects ["RoadCone_F", 2];
				_lord2 = position player nearObjects ["RoadCone_L_F", 2];
				_lord3 = position player nearObjects ["Land_PortableLight_double_F", 2];
				_lord4 = position player nearObjects ["Sign_Checkpoint_US_EP1", 2];
				_lord5 = position player nearObjects ["TapeSign_F", 2];
				_lord6 = position player nearObjects ["Land_BarGate_F", 6];
				_lord7 = position player nearObjects ["Land_CncBarrier_F", 2];
				_lord8 = position player nearObjects ["PlasticBarrier_03_orange_F", 2];
				_lord9 = position player nearObjects ["PlasticBarrier_02_yellow_F", 2];
				_del = (_lord select 0);
		        deleteVehicle _del;
				_del = (_lord1 select 0);
		        deleteVehicle _del;
				_del = (_lord2 select 0);
		        deleteVehicle _del;
				_del = (_lord3 select 0);
		        deleteVehicle _del;
				_del = (_lord4 select 0);
		        deleteVehicle _del;
				_del = (_lord5 select 0);
		        deleteVehicle _del;
				_del = (_lord6 select 0);
		        deleteVehicle _del;
				_del = (_lord7 select 0);
		        deleteVehicle _del;
				_del = (_lord8 select 0);
				deleteVehicle _del;
				_del = (_lord9 select 0);
				deleteVehicle _del;
				hint "Barrier Deleted";
        };

		bong_place= {
                removeallActions player;
                player addAction ["<t color='#33cc33'>Place</t>","detach barrier,[]spawn  bong_menu"];
        };
		bong_place1= {
                removeallActions player;
                player addAction ["<t color='#33cc33'>Place</t>","detach barrier,[]spawn  bong_menu1"];
        };