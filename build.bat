if not exist gm82gex.py curl https://raw.githubusercontent.com/GM82Project/gm82gex/main/gm82gex.py -o 

cmake -B build -A Win32 -DINSTALL_GEX=ON && cmake --build build --config Release

pause