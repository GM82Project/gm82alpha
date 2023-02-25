
#define window_set_alphablend
/*
    ///(enable)
    
    if (argument0) {
        object_event_clear(__gm82core_object,ev_alarm,0)
        object_event_add(__gm82core_object,ev_alarm,0,"
            __gm82dx8_setalphabuffer(1)
            __gm82core_setcomposite(1)
        ")
        __gm82core_object.alarm[0]=2
        window_set_showborder(0)        
    } else {
        __gm82dx8_setalphabuffer(0)
        //__gm82core_setcomposite(0) not necessary, border toggle resets the window
        window_set_showborder(1)
    }

*/
#define window_set_chromakey
    ///(enable,color)
    
    __gm82alpha_setchromakey(window_handle(),argument0,argument1)
//
//