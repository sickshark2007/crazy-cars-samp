CMD:shark(playerid)
{
    new Float:x, Float:y, Float:z, veh, obj;
    GetPlayerPos(playerid, Float:x, Float:y, Float:z);
    veh = CreateVehicle(539, Float:x, Float:y, Float:z, random(360), random(5), random(5), -1, 0);
    PutPlayerInVehicle(playerid, veh, 0);
    LinkVehicleToInterior(veh, 1);
    obj = CreateObject(1608, 0, 0, 0, 0, 0, 0, 96);
    AttachObjectToVehicle(obj, veh, 0,0,0,0,0,0);
    return 1;
}
