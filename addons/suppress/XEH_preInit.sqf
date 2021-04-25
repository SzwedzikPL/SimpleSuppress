#include "script_component.hpp"

ADDON = false;

#include "XEH_PREP.hpp"

if (hasInterface) then {
  GVAR(suppressedEH) = -1;
  GVAR(interruptingDisplays) = [];
  GVAR(displayInterrupt) = false;
};

#include "initSettings.sqf"

ADDON = true;
