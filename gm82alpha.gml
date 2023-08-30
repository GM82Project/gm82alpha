#define window_set_alphablend
    ///window_set_alphablend(enable)
    //enable: enable alpha blending
    //Allows the game to draw directly to the alpha channel of the aero window.
    //Requires the Desktop Window Manager (DWM) to be enabled.
    
    if (argument0) {
        object_event_clear(gm82core_object,ev_alarm,0)
        object_event_add(gm82core_object,ev_alarm,0,"
            __gm82dx9_setalphabuffer(1)
            __gm82alpha_setcomposite(window_handle(),1)
        ")
        gm82core_object.alarm[0]=2
        window_set_showborder(0)        
    } else {
        __gm82dx9_setalphabuffer(0)
        window_set_showborder(1)
    }


#define window_set_chromakey
    ///window_set_chromakey(enable,color)
    //enable: enable chroma key mode
    //color: color to chroma key
    //Enables experimental chroma key mode.
    //Note: does not work in Windows 7 at the moment.
    
    __gm82alpha_setchromakey(window_handle(),argument0,argument1)
//
//