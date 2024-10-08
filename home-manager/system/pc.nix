{ config, ... }:
{
    
    imports = [ 
        ./default.nix
        ../modules/system_specific/pc/default.nix
    ];

}
