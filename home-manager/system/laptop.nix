{ config, ... }:
{

    imports = [ 
        ./default.nix
        ../modules/system_specific/laptop/default.nix
    ];

}
