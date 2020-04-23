default{
    state_entry(){
        llSetDamage(100.);
        llCollisionSound("", 0.);
        llSetStatus(STATUS_ROTATE_X|STATUS_ROTATE_Y|STATUS_ROTATE_Z, FALSE);
        llCollisionFilter(llGetObjectName(), "", FALSE);
    }
    collision_start(integer n){
        llDie();
    }
    land_collision_start(vector v){
        llDie();
    }
}

