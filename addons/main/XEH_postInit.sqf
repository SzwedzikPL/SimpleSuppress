#include "script_component.hpp"

if !(hasInterface) exitWith {};

["CBA_settingsInitialized", {
  // Create overlay and hide it
  QGVAR(overlay) cutRsc [QGVAR(overlay), "PLAIN", -1, false];
  private _display = uiNamespace getVariable QGVAR(overlay);
  private _overlayCtrl = _display displayCtrl IDC_OVERLAY;
  _overlayCtrl ctrlSetFade 1;
  _overlayCtrl ctrlSetTextColor [0, 0, 0, GVAR(overlayOpacity)];
  _overlayCtrl ctrlCommit 0;

  // Add unit EH and tigger it for current unit
  ["unit", {_this call FUNC(handlePlayerChanged)}, true] call CBA_fnc_addPlayerEventHandler;
}] call CBA_fnc_addEventHandler;
