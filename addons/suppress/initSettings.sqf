
[
    QGVAR(overlayOpacity), "SLIDER",
    [LSTRING(overlayOpacity_name), LSTRING(overlayOpacity_tooltip)],
    ELSTRING(main,category_displayName),
    [0,1,0.96,2],
    false,
    {
      private _display = uiNamespace getVariable [QGVAR(overlay), displayNull];
      if (isNull _display) exitWith {};
      private _overlayCtrl = _display displayCtrl IDC_OVERLAY;
      _overlayCtrl ctrlSetTextColor [0, 0, 0, _this];
      _overlayCtrl ctrlCommit 0;
    },
    false
] call CBA_fnc_addSetting;

[
    QGVAR(overlayFadeoutTime), "SLIDER",
    [LSTRING(overlayFadeoutTime_name), LSTRING(overlayFadeoutTime_tooltip)],
    ELSTRING(main,category_displayName),
    [1,30,10,1],
    false,
    {},
    false
] call CBA_fnc_addSetting;

[
    QGVAR(projectileMaxDistance), "SLIDER",
    [LSTRING(projectileMaxDistance_name), LSTRING(projectileMaxDistance_tooltip)],
    ELSTRING(main,category_displayName),
    [1,10,9,2],
    false,
    {},
    false
] call CBA_fnc_addSetting;

[
    QGVAR(shooterMinDistance), "SLIDER",
    [LSTRING(shooterMinDistance_name), LSTRING(shooterMinDistance_tooltip)],
    ELSTRING(main,category_displayName),
    [0,50,0,2],
    false,
    {},
    false
] call CBA_fnc_addSetting;
