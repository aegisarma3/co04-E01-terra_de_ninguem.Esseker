/* Código do Paraquedas */
waituntil {!IsNil "babe_fd_init"};
EM_fd_min_dam_h = 9000;
EM_fd_mu = 0;

player setVelocity [(sin (getDir player)) * 50, (cos (getDir player)) * 50, -5];

waitUntil {count(lineIntersectsObjs [ATLToASL(player modelToWorld [0,0,0]), ATLToASL(player modelToWorld [0,0,-2])]) > 1 || ((getPosATL player) select 2) < 2};

player setVelocity [0, 0, 0];
deleteVehicle (vehicle player);
player switchMove "";
sleep 1;

EM_fd_min_dam_h = 4;
EM_fd_mu = 1;
