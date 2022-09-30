within PrototypeBuildingElectricalModels.Subsystems.LightingPanels;
package San_Diego
  package Conv_AC

    model Light_Panel_L1_2C
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L1_2C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            43)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Core_Lights(
        tableOnFile=true,
        tableName="L1-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn1_Lights(
        tableOnFile=true,
        tableName="L1-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn2_Lights(
        tableOnFile=true,
        tableName="L1-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn3_Lights(
        tableOnFile=true,
        tableName="L1-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn4_Lights(
        tableOnFile=true,
        tableName="L1-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 153 */
      HPF.DC.Variable_DC_Load Light_153;

    /* Light Model 152 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_153(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_153(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_152;

    /* Light Model 151 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_152(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_152(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_151;

    /* Light Model 150 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_151(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_151(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_150;

    /* Light Model 149 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_150(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_150(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_149;

    /* Light Model 148 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_149(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_149(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_148;

    /* Light Model 145 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_148(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_148(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_145;

    /* Light Model 144 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_145(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_145(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_144;

    /* Light Model 143 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_144(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_144(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_143;

    /* Light Model 142 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_143(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_143(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_142;

    /* Light Model 141 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_142(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_142(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_141;

    /* Light Model 140 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_141(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_141(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_140;

    /* Light Model 139 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_140(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_140(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_139;

    /* Light Model 138 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_139(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_139(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_138;

    /* Light Model 137 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_138(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_138(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_137;

    /* Light Model 136 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_137(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_137(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_136;

    /* Light Model 135 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_136(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_136(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_135;

    /* Light Model 134 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_135(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_135(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_134;

    /* Light Model 133 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_134(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_134(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_133;

    /* Light Model 132 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_133(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_133(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_132;

    /* Light Model 131 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_132(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_132(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_131;

    /* Light Model 107 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_131(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_131(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_107;

    /* Light Model 106 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_107(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_107(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_106;

    /* Light Model 104 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_106(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_106(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_104;

    /* Light Model 101 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_104(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_104(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_101;

    /* Light Model 80 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_101(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_101(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_80;

    /* Light Model 79 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_80(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_80(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_79;

    /* Light Model 78 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_79(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_79(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_78;

    /* Light Model 77 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_78(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_78(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_77;

    /* Light Model 76 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_77(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_77(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_76;

    /* Light Model 75 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_76(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_76(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_75;

    /* Light Model 74 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_75(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_75(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_74;

    /* Light Model 71 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_74(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_74(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_71;

    /* Light Model 70 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_71(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_71(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_70;

    /* Light Model 69 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_70(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_70(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_69;

    /* Light Model 68 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_69(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_69(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_68;

    /* Light Model 67 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_68(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_68(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_67;

    /* Light Model 66 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_67(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_67(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_66;

    /* Light Model 65 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_66(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_66(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_65;

    /* Light Model 54 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_65(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_65(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_54;

    /* Light Model 53 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_54(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_54(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_53;

    /* Light Model 42 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_53(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_53(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_42;

    /* Light Model 41 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_42(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_42(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_41;

    /* Light Model 40 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_41(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_41(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_40;

    /* Light Model 39 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_40(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_40(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_39;

    /* Light Model 38 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_39(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_39(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_38;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_38(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_38(k=22) annotation (HideResult=true);

    equation
      connect(cable_light_L1_2C.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 153 */
      connect(Light_Driver_153.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_153.p, Light_Driver_153.pin_p);
      connect(Light_153.n, GndDC.p);
      connect(Light_Driver_153.hPin_N, GndAC.pin);
      connect(Light_Driver_153.pin_n, GndDC.p);

    /* Light Connections 152 */
      connect(Gain_Light_driver_153.y, Light_153.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_153.u);  connect(Light_Driver_152.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_152.p, Light_Driver_152.pin_p);
      connect(Light_152.n, GndDC.p);
      connect(Light_Driver_152.hPin_N, GndAC.pin);
      connect(Light_Driver_152.pin_n, GndDC.p);

    /* Light Connections 151 */
      connect(Gain_Light_driver_152.y, Light_152.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_152.u);  connect(Light_Driver_151.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_151.p, Light_Driver_151.pin_p);
      connect(Light_151.n, GndDC.p);
      connect(Light_Driver_151.hPin_N, GndAC.pin);
      connect(Light_Driver_151.pin_n, GndDC.p);

    /* Light Connections 150 */
      connect(Gain_Light_driver_151.y, Light_151.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_151.u);  connect(Light_Driver_150.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_150.p, Light_Driver_150.pin_p);
      connect(Light_150.n, GndDC.p);
      connect(Light_Driver_150.hPin_N, GndAC.pin);
      connect(Light_Driver_150.pin_n, GndDC.p);

    /* Light Connections 149 */
      connect(Gain_Light_driver_150.y, Light_150.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_150.u);  connect(Light_Driver_149.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_149.p, Light_Driver_149.pin_p);
      connect(Light_149.n, GndDC.p);
      connect(Light_Driver_149.hPin_N, GndAC.pin);
      connect(Light_Driver_149.pin_n, GndDC.p);

    /* Light Connections 148 */
      connect(Gain_Light_driver_149.y, Light_149.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_149.u);  connect(Light_Driver_148.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_148.p, Light_Driver_148.pin_p);
      connect(Light_148.n, GndDC.p);
      connect(Light_Driver_148.hPin_N, GndAC.pin);
      connect(Light_Driver_148.pin_n, GndDC.p);

    /* Light Connections 145 */
      connect(Gain_Light_driver_148.y, Light_148.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_148.u);  connect(Light_Driver_145.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_145.p, Light_Driver_145.pin_p);
      connect(Light_145.n, GndDC.p);
      connect(Light_Driver_145.hPin_N, GndAC.pin);
      connect(Light_Driver_145.pin_n, GndDC.p);

    /* Light Connections 144 */
      connect(Gain_Light_driver_145.y, Light_145.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_145.u);  connect(Light_Driver_144.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_144.p, Light_Driver_144.pin_p);
      connect(Light_144.n, GndDC.p);
      connect(Light_Driver_144.hPin_N, GndAC.pin);
      connect(Light_Driver_144.pin_n, GndDC.p);

    /* Light Connections 143 */
      connect(Gain_Light_driver_144.y, Light_144.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_144.u);  connect(Light_Driver_143.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_143.p, Light_Driver_143.pin_p);
      connect(Light_143.n, GndDC.p);
      connect(Light_Driver_143.hPin_N, GndAC.pin);
      connect(Light_Driver_143.pin_n, GndDC.p);

    /* Light Connections 142 */
      connect(Gain_Light_driver_143.y, Light_143.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_143.u);  connect(Light_Driver_142.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_142.p, Light_Driver_142.pin_p);
      connect(Light_142.n, GndDC.p);
      connect(Light_Driver_142.hPin_N, GndAC.pin);
      connect(Light_Driver_142.pin_n, GndDC.p);

    /* Light Connections 141 */
      connect(Gain_Light_driver_142.y, Light_142.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_142.u);  connect(Light_Driver_141.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_141.p, Light_Driver_141.pin_p);
      connect(Light_141.n, GndDC.p);
      connect(Light_Driver_141.hPin_N, GndAC.pin);
      connect(Light_Driver_141.pin_n, GndDC.p);

    /* Light Connections 140 */
      connect(Gain_Light_driver_141.y, Light_141.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_141.u);  connect(Light_Driver_140.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_140.p, Light_Driver_140.pin_p);
      connect(Light_140.n, GndDC.p);
      connect(Light_Driver_140.hPin_N, GndAC.pin);
      connect(Light_Driver_140.pin_n, GndDC.p);

    /* Light Connections 139 */
      connect(Gain_Light_driver_140.y, Light_140.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_140.u);  connect(Light_Driver_139.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_139.p, Light_Driver_139.pin_p);
      connect(Light_139.n, GndDC.p);
      connect(Light_Driver_139.hPin_N, GndAC.pin);
      connect(Light_Driver_139.pin_n, GndDC.p);

    /* Light Connections 138 */
      connect(Gain_Light_driver_139.y, Light_139.u);
      connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_139.u);  connect(Light_Driver_138.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_138.p, Light_Driver_138.pin_p);
      connect(Light_138.n, GndDC.p);
      connect(Light_Driver_138.hPin_N, GndAC.pin);
      connect(Light_Driver_138.pin_n, GndDC.p);

    /* Light Connections 137 */
      connect(Gain_Light_driver_138.y, Light_138.u);
      connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_138.u);  connect(Light_Driver_137.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_137.p, Light_Driver_137.pin_p);
      connect(Light_137.n, GndDC.p);
      connect(Light_Driver_137.hPin_N, GndAC.pin);
      connect(Light_Driver_137.pin_n, GndDC.p);

    /* Light Connections 136 */
      connect(Gain_Light_driver_137.y, Light_137.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_137.u);  connect(Light_Driver_136.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_136.p, Light_Driver_136.pin_p);
      connect(Light_136.n, GndDC.p);
      connect(Light_Driver_136.hPin_N, GndAC.pin);
      connect(Light_Driver_136.pin_n, GndDC.p);

    /* Light Connections 135 */
      connect(Gain_Light_driver_136.y, Light_136.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_136.u);  connect(Light_Driver_135.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_135.p, Light_Driver_135.pin_p);
      connect(Light_135.n, GndDC.p);
      connect(Light_Driver_135.hPin_N, GndAC.pin);
      connect(Light_Driver_135.pin_n, GndDC.p);

    /* Light Connections 134 */
      connect(Gain_Light_driver_135.y, Light_135.u);
      connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_135.u);  connect(Light_Driver_134.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_134.p, Light_Driver_134.pin_p);
      connect(Light_134.n, GndDC.p);
      connect(Light_Driver_134.hPin_N, GndAC.pin);
      connect(Light_Driver_134.pin_n, GndDC.p);

    /* Light Connections 133 */
      connect(Gain_Light_driver_134.y, Light_134.u);
      connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_134.u);  connect(Light_Driver_133.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_133.p, Light_Driver_133.pin_p);
      connect(Light_133.n, GndDC.p);
      connect(Light_Driver_133.hPin_N, GndAC.pin);
      connect(Light_Driver_133.pin_n, GndDC.p);

    /* Light Connections 132 */
      connect(Gain_Light_driver_133.y, Light_133.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_133.u);  connect(Light_Driver_132.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_132.p, Light_Driver_132.pin_p);
      connect(Light_132.n, GndDC.p);
      connect(Light_Driver_132.hPin_N, GndAC.pin);
      connect(Light_Driver_132.pin_n, GndDC.p);

    /* Light Connections 131 */
      connect(Gain_Light_driver_132.y, Light_132.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_132.u);  connect(Light_Driver_131.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_131.p, Light_Driver_131.pin_p);
      connect(Light_131.n, GndDC.p);
      connect(Light_Driver_131.hPin_N, GndAC.pin);
      connect(Light_Driver_131.pin_n, GndDC.p);

    /* Light Connections 107 */
      connect(Gain_Light_driver_131.y, Light_131.u);
      connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_131.u);  connect(Light_Driver_107.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_107.p, Light_Driver_107.pin_p);
      connect(Light_107.n, GndDC.p);
      connect(Light_Driver_107.hPin_N, GndAC.pin);
      connect(Light_Driver_107.pin_n, GndDC.p);

    /* Light Connections 106 */
      connect(Gain_Light_driver_107.y, Light_107.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_107.u);  connect(Light_Driver_106.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_106.p, Light_Driver_106.pin_p);
      connect(Light_106.n, GndDC.p);
      connect(Light_Driver_106.hPin_N, GndAC.pin);
      connect(Light_Driver_106.pin_n, GndDC.p);

    /* Light Connections 104 */
      connect(Gain_Light_driver_106.y, Light_106.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_106.u);  connect(Light_Driver_104.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_104.p, Light_Driver_104.pin_p);
      connect(Light_104.n, GndDC.p);
      connect(Light_Driver_104.hPin_N, GndAC.pin);
      connect(Light_Driver_104.pin_n, GndDC.p);

    /* Light Connections 101 */
      connect(Gain_Light_driver_104.y, Light_104.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_104.u);  connect(Light_Driver_101.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_101.p, Light_Driver_101.pin_p);
      connect(Light_101.n, GndDC.p);
      connect(Light_Driver_101.hPin_N, GndAC.pin);
      connect(Light_Driver_101.pin_n, GndDC.p);

    /* Light Connections 80 */
      connect(Gain_Light_driver_101.y, Light_101.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_101.u);  connect(Light_Driver_80.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_80.p, Light_Driver_80.pin_p);
      connect(Light_80.n, GndDC.p);
      connect(Light_Driver_80.hPin_N, GndAC.pin);
      connect(Light_Driver_80.pin_n, GndDC.p);

    /* Light Connections 79 */
      connect(Gain_Light_driver_80.y, Light_80.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_80.u);  connect(Light_Driver_79.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_79.p, Light_Driver_79.pin_p);
      connect(Light_79.n, GndDC.p);
      connect(Light_Driver_79.hPin_N, GndAC.pin);
      connect(Light_Driver_79.pin_n, GndDC.p);

    /* Light Connections 78 */
      connect(Gain_Light_driver_79.y, Light_79.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_79.u);  connect(Light_Driver_78.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_78.p, Light_Driver_78.pin_p);
      connect(Light_78.n, GndDC.p);
      connect(Light_Driver_78.hPin_N, GndAC.pin);
      connect(Light_Driver_78.pin_n, GndDC.p);

    /* Light Connections 77 */
      connect(Gain_Light_driver_78.y, Light_78.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_78.u);  connect(Light_Driver_77.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_77.p, Light_Driver_77.pin_p);
      connect(Light_77.n, GndDC.p);
      connect(Light_Driver_77.hPin_N, GndAC.pin);
      connect(Light_Driver_77.pin_n, GndDC.p);

    /* Light Connections 76 */
      connect(Gain_Light_driver_77.y, Light_77.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_77.u);  connect(Light_Driver_76.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_76.p, Light_Driver_76.pin_p);
      connect(Light_76.n, GndDC.p);
      connect(Light_Driver_76.hPin_N, GndAC.pin);
      connect(Light_Driver_76.pin_n, GndDC.p);

    /* Light Connections 75 */
      connect(Gain_Light_driver_76.y, Light_76.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_76.u);  connect(Light_Driver_75.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_75.p, Light_Driver_75.pin_p);
      connect(Light_75.n, GndDC.p);
      connect(Light_Driver_75.hPin_N, GndAC.pin);
      connect(Light_Driver_75.pin_n, GndDC.p);

    /* Light Connections 74 */
      connect(Gain_Light_driver_75.y, Light_75.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_75.u);  connect(Light_Driver_74.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_74.p, Light_Driver_74.pin_p);
      connect(Light_74.n, GndDC.p);
      connect(Light_Driver_74.hPin_N, GndAC.pin);
      connect(Light_Driver_74.pin_n, GndDC.p);

    /* Light Connections 71 */
      connect(Gain_Light_driver_74.y, Light_74.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_74.u);  connect(Light_Driver_71.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_71.p, Light_Driver_71.pin_p);
      connect(Light_71.n, GndDC.p);
      connect(Light_Driver_71.hPin_N, GndAC.pin);
      connect(Light_Driver_71.pin_n, GndDC.p);

    /* Light Connections 70 */
      connect(Gain_Light_driver_71.y, Light_71.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_71.u);  connect(Light_Driver_70.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_70.p, Light_Driver_70.pin_p);
      connect(Light_70.n, GndDC.p);
      connect(Light_Driver_70.hPin_N, GndAC.pin);
      connect(Light_Driver_70.pin_n, GndDC.p);

    /* Light Connections 69 */
      connect(Gain_Light_driver_70.y, Light_70.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_70.u);  connect(Light_Driver_69.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_69.p, Light_Driver_69.pin_p);
      connect(Light_69.n, GndDC.p);
      connect(Light_Driver_69.hPin_N, GndAC.pin);
      connect(Light_Driver_69.pin_n, GndDC.p);

    /* Light Connections 68 */
      connect(Gain_Light_driver_69.y, Light_69.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_69.u);  connect(Light_Driver_68.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_68.p, Light_Driver_68.pin_p);
      connect(Light_68.n, GndDC.p);
      connect(Light_Driver_68.hPin_N, GndAC.pin);
      connect(Light_Driver_68.pin_n, GndDC.p);

    /* Light Connections 67 */
      connect(Gain_Light_driver_68.y, Light_68.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_68.u);  connect(Light_Driver_67.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_67.p, Light_Driver_67.pin_p);
      connect(Light_67.n, GndDC.p);
      connect(Light_Driver_67.hPin_N, GndAC.pin);
      connect(Light_Driver_67.pin_n, GndDC.p);

    /* Light Connections 66 */
      connect(Gain_Light_driver_67.y, Light_67.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_67.u);  connect(Light_Driver_66.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_66.p, Light_Driver_66.pin_p);
      connect(Light_66.n, GndDC.p);
      connect(Light_Driver_66.hPin_N, GndAC.pin);
      connect(Light_Driver_66.pin_n, GndDC.p);

    /* Light Connections 65 */
      connect(Gain_Light_driver_66.y, Light_66.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_66.u);  connect(Light_Driver_65.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_65.p, Light_Driver_65.pin_p);
      connect(Light_65.n, GndDC.p);
      connect(Light_Driver_65.hPin_N, GndAC.pin);
      connect(Light_Driver_65.pin_n, GndDC.p);

    /* Light Connections 54 */
      connect(Gain_Light_driver_65.y, Light_65.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_65.u);  connect(Light_Driver_54.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_54.p, Light_Driver_54.pin_p);
      connect(Light_54.n, GndDC.p);
      connect(Light_Driver_54.hPin_N, GndAC.pin);
      connect(Light_Driver_54.pin_n, GndDC.p);

    /* Light Connections 53 */
      connect(Gain_Light_driver_54.y, Light_54.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_54.u);  connect(Light_Driver_53.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_53.p, Light_Driver_53.pin_p);
      connect(Light_53.n, GndDC.p);
      connect(Light_Driver_53.hPin_N, GndAC.pin);
      connect(Light_Driver_53.pin_n, GndDC.p);

    /* Light Connections 42 */
      connect(Gain_Light_driver_53.y, Light_53.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_53.u);  connect(Light_Driver_42.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_42.p, Light_Driver_42.pin_p);
      connect(Light_42.n, GndDC.p);
      connect(Light_Driver_42.hPin_N, GndAC.pin);
      connect(Light_Driver_42.pin_n, GndDC.p);

    /* Light Connections 41 */
      connect(Gain_Light_driver_42.y, Light_42.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_42.u);  connect(Light_Driver_41.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_41.p, Light_Driver_41.pin_p);
      connect(Light_41.n, GndDC.p);
      connect(Light_Driver_41.hPin_N, GndAC.pin);
      connect(Light_Driver_41.pin_n, GndDC.p);

    /* Light Connections 40 */
      connect(Gain_Light_driver_41.y, Light_41.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_41.u);  connect(Light_Driver_40.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_40.p, Light_Driver_40.pin_p);
      connect(Light_40.n, GndDC.p);
      connect(Light_Driver_40.hPin_N, GndAC.pin);
      connect(Light_Driver_40.pin_n, GndDC.p);

    /* Light Connections 39 */
      connect(Gain_Light_driver_40.y, Light_40.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_40.u);  connect(Light_Driver_39.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_39.p, Light_Driver_39.pin_p);
      connect(Light_39.n, GndDC.p);
      connect(Light_Driver_39.hPin_N, GndAC.pin);
      connect(Light_Driver_39.pin_n, GndDC.p);

    /* Light Connections 38 */
      connect(Gain_Light_driver_39.y, Light_39.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_39.u);  connect(Light_Driver_38.hPin_L,  cable_light_L1_2C.pin_p);
      connect(Light_38.p, Light_Driver_38.pin_p);
      connect(Light_38.n, GndDC.p);
      connect(Light_Driver_38.hPin_N, GndAC.pin);
      connect(Light_Driver_38.pin_n, GndDC.p);

      connect(Gain_Light_driver_38.y, Light_38.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_38.u);

      annotation ();
    end Light_Panel_L1_2C;

    model Light_Panel_L1_2B
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L1_2B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            52)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Core_Lights(
        tableOnFile=true,
        tableName="L1-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn1_Lights(
        tableOnFile=true,
        tableName="L1-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn2_Lights(
        tableOnFile=true,
        tableName="L1-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn3_Lights(
        tableOnFile=true,
        tableName="L1-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn4_Lights(
        tableOnFile=true,
        tableName="L1-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 292 */
      HPF.DC.Variable_DC_Load Light_292;

    /* Light Model 291 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_292(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_292(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_291;

    /* Light Model 290 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_291(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_291(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_290;

    /* Light Model 289 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_290(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_290(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_289;

    /* Light Model 288 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_289(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_289(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_288;

    /* Light Model 287 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_288(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_288(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_287;

    /* Light Model 231 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_287(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_287(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_231;

    /* Light Model 186 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_231(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_231(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_186;

    /* Light Model 185 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_186(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_186(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_185;

    /* Light Model 184 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_185(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_185(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_184;

    /* Light Model 174 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_184(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_184(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_174;

    /* Light Model 173 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_174(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_174(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_173;

    /* Light Model 172 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_173(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_173(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_172;

    /* Light Model 171 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_172(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_172(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_171;

    /* Light Model 170 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_171(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_171(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_170;

    /* Light Model 169 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_170(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_170(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_169;

    /* Light Model 168 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_169(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_169(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_168;

    /* Light Model 167 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_168(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_168(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_167;

    /* Light Model 166 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_167(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_167(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_166;

    /* Light Model 165 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_166(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_166(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_165;

    /* Light Model 164 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_165(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_165(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_164;

    /* Light Model 163 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_164(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_164(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_163;

    /* Light Model 162 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_163(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_163(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_162;

    /* Light Model 161 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_162(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_162(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_161;

    /* Light Model 160 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_161(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_161(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_160;

    /* Light Model 159 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_160(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_160(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_159;

    /* Light Model 158 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_159(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_159(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_158;

    /* Light Model 157 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_158(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_158(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_157;

    /* Light Model 156 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_157(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_157(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_156;

    /* Light Model 155 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_156(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_156(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_155;

    /* Light Model 154 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_155(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_155(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_154;

    /* Light Model 147 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_154(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_154(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_147;

    /* Light Model 146 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_147(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_147(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_146;

    /* Light Model 95 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_146(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_146(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_95;

    /* Light Model 94 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_95(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_95(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_94;

    /* Light Model 93 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_94(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_94(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_93;

    /* Light Model 60 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_93(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_93(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_60;

    /* Light Model 59 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_60(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_60(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_59;

    /* Light Model 58 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_59(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_59(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_58;

    /* Light Model 57 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_58(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_58(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_57;

    /* Light Model 56 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_57(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_57(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_56;

    /* Light Model 55 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_56(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_56(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_55;

    /* Light Model 36 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_55(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_55(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_36;

    /* Light Model 34 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_36(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_36(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_34;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_34(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_34(k=35) annotation (HideResult=true);

    equation
      connect(cable_light_L1_2B.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 292 */
      connect(Light_Driver_292.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_292.p, Light_Driver_292.pin_p);
      connect(Light_292.n, GndDC.p);
      connect(Light_Driver_292.hPin_N, GndAC.pin);
      connect(Light_Driver_292.pin_n, GndDC.p);

    /* Light Connections 291 */
      connect(Gain_Light_driver_292.y, Light_292.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_292.u);  connect(Light_Driver_291.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_291.p, Light_Driver_291.pin_p);
      connect(Light_291.n, GndDC.p);
      connect(Light_Driver_291.hPin_N, GndAC.pin);
      connect(Light_Driver_291.pin_n, GndDC.p);

    /* Light Connections 290 */
      connect(Gain_Light_driver_291.y, Light_291.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_291.u);  connect(Light_Driver_290.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_290.p, Light_Driver_290.pin_p);
      connect(Light_290.n, GndDC.p);
      connect(Light_Driver_290.hPin_N, GndAC.pin);
      connect(Light_Driver_290.pin_n, GndDC.p);

    /* Light Connections 289 */
      connect(Gain_Light_driver_290.y, Light_290.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_290.u);  connect(Light_Driver_289.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_289.p, Light_Driver_289.pin_p);
      connect(Light_289.n, GndDC.p);
      connect(Light_Driver_289.hPin_N, GndAC.pin);
      connect(Light_Driver_289.pin_n, GndDC.p);

    /* Light Connections 288 */
      connect(Gain_Light_driver_289.y, Light_289.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_289.u);  connect(Light_Driver_288.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_288.p, Light_Driver_288.pin_p);
      connect(Light_288.n, GndDC.p);
      connect(Light_Driver_288.hPin_N, GndAC.pin);
      connect(Light_Driver_288.pin_n, GndDC.p);

    /* Light Connections 287 */
      connect(Gain_Light_driver_288.y, Light_288.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_288.u);  connect(Light_Driver_287.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_287.p, Light_Driver_287.pin_p);
      connect(Light_287.n, GndDC.p);
      connect(Light_Driver_287.hPin_N, GndAC.pin);
      connect(Light_Driver_287.pin_n, GndDC.p);

    /* Light Connections 231 */
      connect(Gain_Light_driver_287.y, Light_287.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_287.u);  connect(Light_Driver_231.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_231.p, Light_Driver_231.pin_p);
      connect(Light_231.n, GndDC.p);
      connect(Light_Driver_231.hPin_N, GndAC.pin);
      connect(Light_Driver_231.pin_n, GndDC.p);

    /* Light Connections 186 */
      connect(Gain_Light_driver_231.y, Light_231.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_231.u);  connect(Light_Driver_186.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_186.p, Light_Driver_186.pin_p);
      connect(Light_186.n, GndDC.p);
      connect(Light_Driver_186.hPin_N, GndAC.pin);
      connect(Light_Driver_186.pin_n, GndDC.p);

    /* Light Connections 185 */
      connect(Gain_Light_driver_186.y, Light_186.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_186.u);  connect(Light_Driver_185.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_185.p, Light_Driver_185.pin_p);
      connect(Light_185.n, GndDC.p);
      connect(Light_Driver_185.hPin_N, GndAC.pin);
      connect(Light_Driver_185.pin_n, GndDC.p);

    /* Light Connections 184 */
      connect(Gain_Light_driver_185.y, Light_185.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_185.u);  connect(Light_Driver_184.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_184.p, Light_Driver_184.pin_p);
      connect(Light_184.n, GndDC.p);
      connect(Light_Driver_184.hPin_N, GndAC.pin);
      connect(Light_Driver_184.pin_n, GndDC.p);

    /* Light Connections 174 */
      connect(Gain_Light_driver_184.y, Light_184.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_184.u);  connect(Light_Driver_174.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_174.p, Light_Driver_174.pin_p);
      connect(Light_174.n, GndDC.p);
      connect(Light_Driver_174.hPin_N, GndAC.pin);
      connect(Light_Driver_174.pin_n, GndDC.p);

    /* Light Connections 173 */
      connect(Gain_Light_driver_174.y, Light_174.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_174.u);  connect(Light_Driver_173.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_173.p, Light_Driver_173.pin_p);
      connect(Light_173.n, GndDC.p);
      connect(Light_Driver_173.hPin_N, GndAC.pin);
      connect(Light_Driver_173.pin_n, GndDC.p);

    /* Light Connections 172 */
      connect(Gain_Light_driver_173.y, Light_173.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_173.u);  connect(Light_Driver_172.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_172.p, Light_Driver_172.pin_p);
      connect(Light_172.n, GndDC.p);
      connect(Light_Driver_172.hPin_N, GndAC.pin);
      connect(Light_Driver_172.pin_n, GndDC.p);

    /* Light Connections 171 */
      connect(Gain_Light_driver_172.y, Light_172.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_172.u);  connect(Light_Driver_171.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_171.p, Light_Driver_171.pin_p);
      connect(Light_171.n, GndDC.p);
      connect(Light_Driver_171.hPin_N, GndAC.pin);
      connect(Light_Driver_171.pin_n, GndDC.p);

    /* Light Connections 170 */
      connect(Gain_Light_driver_171.y, Light_171.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_171.u);  connect(Light_Driver_170.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_170.p, Light_Driver_170.pin_p);
      connect(Light_170.n, GndDC.p);
      connect(Light_Driver_170.hPin_N, GndAC.pin);
      connect(Light_Driver_170.pin_n, GndDC.p);

    /* Light Connections 169 */
      connect(Gain_Light_driver_170.y, Light_170.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_170.u);  connect(Light_Driver_169.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_169.p, Light_Driver_169.pin_p);
      connect(Light_169.n, GndDC.p);
      connect(Light_Driver_169.hPin_N, GndAC.pin);
      connect(Light_Driver_169.pin_n, GndDC.p);

    /* Light Connections 168 */
      connect(Gain_Light_driver_169.y, Light_169.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_169.u);  connect(Light_Driver_168.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_168.p, Light_Driver_168.pin_p);
      connect(Light_168.n, GndDC.p);
      connect(Light_Driver_168.hPin_N, GndAC.pin);
      connect(Light_Driver_168.pin_n, GndDC.p);

    /* Light Connections 167 */
      connect(Gain_Light_driver_168.y, Light_168.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_168.u);  connect(Light_Driver_167.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_167.p, Light_Driver_167.pin_p);
      connect(Light_167.n, GndDC.p);
      connect(Light_Driver_167.hPin_N, GndAC.pin);
      connect(Light_Driver_167.pin_n, GndDC.p);

    /* Light Connections 166 */
      connect(Gain_Light_driver_167.y, Light_167.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_167.u);  connect(Light_Driver_166.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_166.p, Light_Driver_166.pin_p);
      connect(Light_166.n, GndDC.p);
      connect(Light_Driver_166.hPin_N, GndAC.pin);
      connect(Light_Driver_166.pin_n, GndDC.p);

    /* Light Connections 165 */
      connect(Gain_Light_driver_166.y, Light_166.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_166.u);  connect(Light_Driver_165.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_165.p, Light_Driver_165.pin_p);
      connect(Light_165.n, GndDC.p);
      connect(Light_Driver_165.hPin_N, GndAC.pin);
      connect(Light_Driver_165.pin_n, GndDC.p);

    /* Light Connections 164 */
      connect(Gain_Light_driver_165.y, Light_165.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_165.u);  connect(Light_Driver_164.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_164.p, Light_Driver_164.pin_p);
      connect(Light_164.n, GndDC.p);
      connect(Light_Driver_164.hPin_N, GndAC.pin);
      connect(Light_Driver_164.pin_n, GndDC.p);

    /* Light Connections 163 */
      connect(Gain_Light_driver_164.y, Light_164.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_164.u);  connect(Light_Driver_163.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_163.p, Light_Driver_163.pin_p);
      connect(Light_163.n, GndDC.p);
      connect(Light_Driver_163.hPin_N, GndAC.pin);
      connect(Light_Driver_163.pin_n, GndDC.p);

    /* Light Connections 162 */
      connect(Gain_Light_driver_163.y, Light_163.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_163.u);  connect(Light_Driver_162.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_162.p, Light_Driver_162.pin_p);
      connect(Light_162.n, GndDC.p);
      connect(Light_Driver_162.hPin_N, GndAC.pin);
      connect(Light_Driver_162.pin_n, GndDC.p);

    /* Light Connections 161 */
      connect(Gain_Light_driver_162.y, Light_162.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_162.u);  connect(Light_Driver_161.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_161.p, Light_Driver_161.pin_p);
      connect(Light_161.n, GndDC.p);
      connect(Light_Driver_161.hPin_N, GndAC.pin);
      connect(Light_Driver_161.pin_n, GndDC.p);

    /* Light Connections 160 */
      connect(Gain_Light_driver_161.y, Light_161.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_161.u);  connect(Light_Driver_160.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_160.p, Light_Driver_160.pin_p);
      connect(Light_160.n, GndDC.p);
      connect(Light_Driver_160.hPin_N, GndAC.pin);
      connect(Light_Driver_160.pin_n, GndDC.p);

    /* Light Connections 159 */
      connect(Gain_Light_driver_160.y, Light_160.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_160.u);  connect(Light_Driver_159.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_159.p, Light_Driver_159.pin_p);
      connect(Light_159.n, GndDC.p);
      connect(Light_Driver_159.hPin_N, GndAC.pin);
      connect(Light_Driver_159.pin_n, GndDC.p);

    /* Light Connections 158 */
      connect(Gain_Light_driver_159.y, Light_159.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_159.u);  connect(Light_Driver_158.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_158.p, Light_Driver_158.pin_p);
      connect(Light_158.n, GndDC.p);
      connect(Light_Driver_158.hPin_N, GndAC.pin);
      connect(Light_Driver_158.pin_n, GndDC.p);

    /* Light Connections 157 */
      connect(Gain_Light_driver_158.y, Light_158.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_158.u);  connect(Light_Driver_157.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_157.p, Light_Driver_157.pin_p);
      connect(Light_157.n, GndDC.p);
      connect(Light_Driver_157.hPin_N, GndAC.pin);
      connect(Light_Driver_157.pin_n, GndDC.p);

    /* Light Connections 156 */
      connect(Gain_Light_driver_157.y, Light_157.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_157.u);  connect(Light_Driver_156.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_156.p, Light_Driver_156.pin_p);
      connect(Light_156.n, GndDC.p);
      connect(Light_Driver_156.hPin_N, GndAC.pin);
      connect(Light_Driver_156.pin_n, GndDC.p);

    /* Light Connections 155 */
      connect(Gain_Light_driver_156.y, Light_156.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_156.u);  connect(Light_Driver_155.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_155.p, Light_Driver_155.pin_p);
      connect(Light_155.n, GndDC.p);
      connect(Light_Driver_155.hPin_N, GndAC.pin);
      connect(Light_Driver_155.pin_n, GndDC.p);

    /* Light Connections 154 */
      connect(Gain_Light_driver_155.y, Light_155.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_155.u);  connect(Light_Driver_154.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_154.p, Light_Driver_154.pin_p);
      connect(Light_154.n, GndDC.p);
      connect(Light_Driver_154.hPin_N, GndAC.pin);
      connect(Light_Driver_154.pin_n, GndDC.p);

    /* Light Connections 147 */
      connect(Gain_Light_driver_154.y, Light_154.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_154.u);  connect(Light_Driver_147.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_147.p, Light_Driver_147.pin_p);
      connect(Light_147.n, GndDC.p);
      connect(Light_Driver_147.hPin_N, GndAC.pin);
      connect(Light_Driver_147.pin_n, GndDC.p);

    /* Light Connections 146 */
      connect(Gain_Light_driver_147.y, Light_147.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_147.u);  connect(Light_Driver_146.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_146.p, Light_Driver_146.pin_p);
      connect(Light_146.n, GndDC.p);
      connect(Light_Driver_146.hPin_N, GndAC.pin);
      connect(Light_Driver_146.pin_n, GndDC.p);

    /* Light Connections 95 */
      connect(Gain_Light_driver_146.y, Light_146.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_146.u);  connect(Light_Driver_95.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_95.p, Light_Driver_95.pin_p);
      connect(Light_95.n, GndDC.p);
      connect(Light_Driver_95.hPin_N, GndAC.pin);
      connect(Light_Driver_95.pin_n, GndDC.p);

    /* Light Connections 94 */
      connect(Gain_Light_driver_95.y, Light_95.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_95.u);  connect(Light_Driver_94.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_94.p, Light_Driver_94.pin_p);
      connect(Light_94.n, GndDC.p);
      connect(Light_Driver_94.hPin_N, GndAC.pin);
      connect(Light_Driver_94.pin_n, GndDC.p);

    /* Light Connections 93 */
      connect(Gain_Light_driver_94.y, Light_94.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_94.u);  connect(Light_Driver_93.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_93.p, Light_Driver_93.pin_p);
      connect(Light_93.n, GndDC.p);
      connect(Light_Driver_93.hPin_N, GndAC.pin);
      connect(Light_Driver_93.pin_n, GndDC.p);

    /* Light Connections 60 */
      connect(Gain_Light_driver_93.y, Light_93.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_93.u);  connect(Light_Driver_60.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_60.p, Light_Driver_60.pin_p);
      connect(Light_60.n, GndDC.p);
      connect(Light_Driver_60.hPin_N, GndAC.pin);
      connect(Light_Driver_60.pin_n, GndDC.p);

    /* Light Connections 59 */
      connect(Gain_Light_driver_60.y, Light_60.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_60.u);  connect(Light_Driver_59.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_59.p, Light_Driver_59.pin_p);
      connect(Light_59.n, GndDC.p);
      connect(Light_Driver_59.hPin_N, GndAC.pin);
      connect(Light_Driver_59.pin_n, GndDC.p);

    /* Light Connections 58 */
      connect(Gain_Light_driver_59.y, Light_59.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_59.u);  connect(Light_Driver_58.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_58.p, Light_Driver_58.pin_p);
      connect(Light_58.n, GndDC.p);
      connect(Light_Driver_58.hPin_N, GndAC.pin);
      connect(Light_Driver_58.pin_n, GndDC.p);

    /* Light Connections 57 */
      connect(Gain_Light_driver_58.y, Light_58.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_58.u);  connect(Light_Driver_57.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_57.p, Light_Driver_57.pin_p);
      connect(Light_57.n, GndDC.p);
      connect(Light_Driver_57.hPin_N, GndAC.pin);
      connect(Light_Driver_57.pin_n, GndDC.p);

    /* Light Connections 56 */
      connect(Gain_Light_driver_57.y, Light_57.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_57.u);  connect(Light_Driver_56.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_56.p, Light_Driver_56.pin_p);
      connect(Light_56.n, GndDC.p);
      connect(Light_Driver_56.hPin_N, GndAC.pin);
      connect(Light_Driver_56.pin_n, GndDC.p);

    /* Light Connections 55 */
      connect(Gain_Light_driver_56.y, Light_56.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_56.u);  connect(Light_Driver_55.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_55.p, Light_Driver_55.pin_p);
      connect(Light_55.n, GndDC.p);
      connect(Light_Driver_55.hPin_N, GndAC.pin);
      connect(Light_Driver_55.pin_n, GndDC.p);

    /* Light Connections 36 */
      connect(Gain_Light_driver_55.y, Light_55.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_55.u);  connect(Light_Driver_36.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_36.p, Light_Driver_36.pin_p);
      connect(Light_36.n, GndDC.p);
      connect(Light_Driver_36.hPin_N, GndAC.pin);
      connect(Light_Driver_36.pin_n, GndDC.p);

    /* Light Connections 34 */
      connect(Gain_Light_driver_36.y, Light_36.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_36.u);  connect(Light_Driver_34.hPin_L,  cable_light_L1_2B.pin_p);
      connect(Light_34.p, Light_Driver_34.pin_p);
      connect(Light_34.n, GndDC.p);
      connect(Light_Driver_34.hPin_N, GndAC.pin);
      connect(Light_Driver_34.pin_n, GndDC.p);

      connect(Gain_Light_driver_34.y, Light_34.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_34.u);

      annotation ();
    end Light_Panel_L1_2B;

    model Light_Panel_L1_2A
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L1_2A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            61)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Core_Lights(
        tableOnFile=true,
        tableName="L1-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn1_Lights(
        tableOnFile=true,
        tableName="L1-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn2_Lights(
        tableOnFile=true,
        tableName="L1-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn3_Lights(
        tableOnFile=true,
        tableName="L1-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn4_Lights(
        tableOnFile=true,
        tableName="L1-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 255 */
      HPF.DC.Variable_DC_Load Light_255;

    /* Light Model 254 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_255(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_255(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_254;

    /* Light Model 253 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_254(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_254(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_253;

    /* Light Model 252 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_253(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_253(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_252;

    /* Light Model 251 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_252(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_252(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_251;

    /* Light Model 250 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_251(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_251(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_250;

    /* Light Model 249 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_250(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_250(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_249;

    /* Light Model 248 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_249(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_249(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_248;

    /* Light Model 247 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_248(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_248(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_247;

    /* Light Model 246 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_247(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_247(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_246;

    /* Light Model 245 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_246(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_246(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_245;

    /* Light Model 244 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_245(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_245(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_244;

    /* Light Model 243 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_244(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_244(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_243;

    /* Light Model 242 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_243(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_243(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_242;

    /* Light Model 241 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_242(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_242(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_241;

    /* Light Model 239 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_241(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_241(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_239;

    /* Light Model 235 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_239(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_239(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_235;

    /* Light Model 234 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_235(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_235(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_234;

    /* Light Model 233 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_234(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_234(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_233;

    /* Light Model 232 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_233(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_233(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_232;

    /* Light Model 226 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_232(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_232(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_226;

    /* Light Model 225 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_226(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_226(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_225;

    /* Light Model 224 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_225(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_225(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_224;

    /* Light Model 223 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_224(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_224(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_223;

    /* Light Model 222 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_223(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_223(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_222;

    /* Light Model 221 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_222(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_222(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_221;

    /* Light Model 220 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_221(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_221(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_220;

    /* Light Model 219 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_220(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_220(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_219;

    /* Light Model 204 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_219(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_219(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_204;

    /* Light Model 203 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_204(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_204(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_203;

    /* Light Model 202 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_203(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_203(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_202;

    /* Light Model 201 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_202(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_202(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_201;

    /* Light Model 200 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_201(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_201(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_200;

    /* Light Model 199 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_200(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_200(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_199;

    /* Light Model 190 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_199(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_199(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_190;

    /* Light Model 189 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_190(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_190(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_189;

    /* Light Model 187 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_189(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_189(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_187;

    /* Light Model 183 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_187(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_187(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_183;

    /* Light Model 182 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_183(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_183(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_182;

    /* Light Model 181 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_182(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_182(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_181;

    /* Light Model 180 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_181(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_181(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_180;

    /* Light Model 179 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_180(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_180(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_179;

    /* Light Model 178 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_179(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_179(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_178;

    /* Light Model 177 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_178(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_178(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_177;

    /* Light Model 176 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_177(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_177(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_176;

    /* Light Model 175 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_176(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_176(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_175;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_175(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_175(k=31) annotation (HideResult=true);

    equation
      connect(cable_light_L1_2A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 255 */
      connect(Light_Driver_255.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_255.p, Light_Driver_255.pin_p);
      connect(Light_255.n, GndDC.p);
      connect(Light_Driver_255.hPin_N, GndAC.pin);
      connect(Light_Driver_255.pin_n, GndDC.p);

    /* Light Connections 254 */
      connect(Gain_Light_driver_255.y, Light_255.u);
      connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_255.u);  connect(Light_Driver_254.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_254.p, Light_Driver_254.pin_p);
      connect(Light_254.n, GndDC.p);
      connect(Light_Driver_254.hPin_N, GndAC.pin);
      connect(Light_Driver_254.pin_n, GndDC.p);

    /* Light Connections 253 */
      connect(Gain_Light_driver_254.y, Light_254.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_254.u);  connect(Light_Driver_253.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_253.p, Light_Driver_253.pin_p);
      connect(Light_253.n, GndDC.p);
      connect(Light_Driver_253.hPin_N, GndAC.pin);
      connect(Light_Driver_253.pin_n, GndDC.p);

    /* Light Connections 252 */
      connect(Gain_Light_driver_253.y, Light_253.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_253.u);  connect(Light_Driver_252.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_252.p, Light_Driver_252.pin_p);
      connect(Light_252.n, GndDC.p);
      connect(Light_Driver_252.hPin_N, GndAC.pin);
      connect(Light_Driver_252.pin_n, GndDC.p);

    /* Light Connections 251 */
      connect(Gain_Light_driver_252.y, Light_252.u);
      connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_252.u);  connect(Light_Driver_251.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_251.p, Light_Driver_251.pin_p);
      connect(Light_251.n, GndDC.p);
      connect(Light_Driver_251.hPin_N, GndAC.pin);
      connect(Light_Driver_251.pin_n, GndDC.p);

    /* Light Connections 250 */
      connect(Gain_Light_driver_251.y, Light_251.u);
      connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_251.u);  connect(Light_Driver_250.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_250.p, Light_Driver_250.pin_p);
      connect(Light_250.n, GndDC.p);
      connect(Light_Driver_250.hPin_N, GndAC.pin);
      connect(Light_Driver_250.pin_n, GndDC.p);

    /* Light Connections 249 */
      connect(Gain_Light_driver_250.y, Light_250.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_250.u);  connect(Light_Driver_249.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_249.p, Light_Driver_249.pin_p);
      connect(Light_249.n, GndDC.p);
      connect(Light_Driver_249.hPin_N, GndAC.pin);
      connect(Light_Driver_249.pin_n, GndDC.p);

    /* Light Connections 248 */
      connect(Gain_Light_driver_249.y, Light_249.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_249.u);  connect(Light_Driver_248.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_248.p, Light_Driver_248.pin_p);
      connect(Light_248.n, GndDC.p);
      connect(Light_Driver_248.hPin_N, GndAC.pin);
      connect(Light_Driver_248.pin_n, GndDC.p);

    /* Light Connections 247 */
      connect(Gain_Light_driver_248.y, Light_248.u);
      connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_248.u);  connect(Light_Driver_247.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_247.p, Light_Driver_247.pin_p);
      connect(Light_247.n, GndDC.p);
      connect(Light_Driver_247.hPin_N, GndAC.pin);
      connect(Light_Driver_247.pin_n, GndDC.p);

    /* Light Connections 246 */
      connect(Gain_Light_driver_247.y, Light_247.u);
      connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_247.u);  connect(Light_Driver_246.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_246.p, Light_Driver_246.pin_p);
      connect(Light_246.n, GndDC.p);
      connect(Light_Driver_246.hPin_N, GndAC.pin);
      connect(Light_Driver_246.pin_n, GndDC.p);

    /* Light Connections 245 */
      connect(Gain_Light_driver_246.y, Light_246.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_246.u);  connect(Light_Driver_245.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_245.p, Light_Driver_245.pin_p);
      connect(Light_245.n, GndDC.p);
      connect(Light_Driver_245.hPin_N, GndAC.pin);
      connect(Light_Driver_245.pin_n, GndDC.p);

    /* Light Connections 244 */
      connect(Gain_Light_driver_245.y, Light_245.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_245.u);  connect(Light_Driver_244.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_244.p, Light_Driver_244.pin_p);
      connect(Light_244.n, GndDC.p);
      connect(Light_Driver_244.hPin_N, GndAC.pin);
      connect(Light_Driver_244.pin_n, GndDC.p);

    /* Light Connections 243 */
      connect(Gain_Light_driver_244.y, Light_244.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_244.u);  connect(Light_Driver_243.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_243.p, Light_Driver_243.pin_p);
      connect(Light_243.n, GndDC.p);
      connect(Light_Driver_243.hPin_N, GndAC.pin);
      connect(Light_Driver_243.pin_n, GndDC.p);

    /* Light Connections 242 */
      connect(Gain_Light_driver_243.y, Light_243.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_243.u);  connect(Light_Driver_242.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_242.p, Light_Driver_242.pin_p);
      connect(Light_242.n, GndDC.p);
      connect(Light_Driver_242.hPin_N, GndAC.pin);
      connect(Light_Driver_242.pin_n, GndDC.p);

    /* Light Connections 241 */
      connect(Gain_Light_driver_242.y, Light_242.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_242.u);  connect(Light_Driver_241.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_241.p, Light_Driver_241.pin_p);
      connect(Light_241.n, GndDC.p);
      connect(Light_Driver_241.hPin_N, GndAC.pin);
      connect(Light_Driver_241.pin_n, GndDC.p);

    /* Light Connections 239 */
      connect(Gain_Light_driver_241.y, Light_241.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_241.u);  connect(Light_Driver_239.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_239.p, Light_Driver_239.pin_p);
      connect(Light_239.n, GndDC.p);
      connect(Light_Driver_239.hPin_N, GndAC.pin);
      connect(Light_Driver_239.pin_n, GndDC.p);

    /* Light Connections 235 */
      connect(Gain_Light_driver_239.y, Light_239.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_239.u);  connect(Light_Driver_235.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_235.p, Light_Driver_235.pin_p);
      connect(Light_235.n, GndDC.p);
      connect(Light_Driver_235.hPin_N, GndAC.pin);
      connect(Light_Driver_235.pin_n, GndDC.p);

    /* Light Connections 234 */
      connect(Gain_Light_driver_235.y, Light_235.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_235.u);  connect(Light_Driver_234.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_234.p, Light_Driver_234.pin_p);
      connect(Light_234.n, GndDC.p);
      connect(Light_Driver_234.hPin_N, GndAC.pin);
      connect(Light_Driver_234.pin_n, GndDC.p);

    /* Light Connections 233 */
      connect(Gain_Light_driver_234.y, Light_234.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_234.u);  connect(Light_Driver_233.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_233.p, Light_Driver_233.pin_p);
      connect(Light_233.n, GndDC.p);
      connect(Light_Driver_233.hPin_N, GndAC.pin);
      connect(Light_Driver_233.pin_n, GndDC.p);

    /* Light Connections 232 */
      connect(Gain_Light_driver_233.y, Light_233.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_233.u);  connect(Light_Driver_232.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_232.p, Light_Driver_232.pin_p);
      connect(Light_232.n, GndDC.p);
      connect(Light_Driver_232.hPin_N, GndAC.pin);
      connect(Light_Driver_232.pin_n, GndDC.p);

    /* Light Connections 226 */
      connect(Gain_Light_driver_232.y, Light_232.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_232.u);  connect(Light_Driver_226.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_226.p, Light_Driver_226.pin_p);
      connect(Light_226.n, GndDC.p);
      connect(Light_Driver_226.hPin_N, GndAC.pin);
      connect(Light_Driver_226.pin_n, GndDC.p);

    /* Light Connections 225 */
      connect(Gain_Light_driver_226.y, Light_226.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_226.u);  connect(Light_Driver_225.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_225.p, Light_Driver_225.pin_p);
      connect(Light_225.n, GndDC.p);
      connect(Light_Driver_225.hPin_N, GndAC.pin);
      connect(Light_Driver_225.pin_n, GndDC.p);

    /* Light Connections 224 */
      connect(Gain_Light_driver_225.y, Light_225.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_225.u);  connect(Light_Driver_224.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_224.p, Light_Driver_224.pin_p);
      connect(Light_224.n, GndDC.p);
      connect(Light_Driver_224.hPin_N, GndAC.pin);
      connect(Light_Driver_224.pin_n, GndDC.p);

    /* Light Connections 223 */
      connect(Gain_Light_driver_224.y, Light_224.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_224.u);  connect(Light_Driver_223.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_223.p, Light_Driver_223.pin_p);
      connect(Light_223.n, GndDC.p);
      connect(Light_Driver_223.hPin_N, GndAC.pin);
      connect(Light_Driver_223.pin_n, GndDC.p);

    /* Light Connections 222 */
      connect(Gain_Light_driver_223.y, Light_223.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_223.u);  connect(Light_Driver_222.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_222.p, Light_Driver_222.pin_p);
      connect(Light_222.n, GndDC.p);
      connect(Light_Driver_222.hPin_N, GndAC.pin);
      connect(Light_Driver_222.pin_n, GndDC.p);

    /* Light Connections 221 */
      connect(Gain_Light_driver_222.y, Light_222.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_222.u);  connect(Light_Driver_221.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_221.p, Light_Driver_221.pin_p);
      connect(Light_221.n, GndDC.p);
      connect(Light_Driver_221.hPin_N, GndAC.pin);
      connect(Light_Driver_221.pin_n, GndDC.p);

    /* Light Connections 220 */
      connect(Gain_Light_driver_221.y, Light_221.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_221.u);  connect(Light_Driver_220.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_220.p, Light_Driver_220.pin_p);
      connect(Light_220.n, GndDC.p);
      connect(Light_Driver_220.hPin_N, GndAC.pin);
      connect(Light_Driver_220.pin_n, GndDC.p);

    /* Light Connections 219 */
      connect(Gain_Light_driver_220.y, Light_220.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_220.u);  connect(Light_Driver_219.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_219.p, Light_Driver_219.pin_p);
      connect(Light_219.n, GndDC.p);
      connect(Light_Driver_219.hPin_N, GndAC.pin);
      connect(Light_Driver_219.pin_n, GndDC.p);

    /* Light Connections 204 */
      connect(Gain_Light_driver_219.y, Light_219.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_219.u);  connect(Light_Driver_204.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_204.p, Light_Driver_204.pin_p);
      connect(Light_204.n, GndDC.p);
      connect(Light_Driver_204.hPin_N, GndAC.pin);
      connect(Light_Driver_204.pin_n, GndDC.p);

    /* Light Connections 203 */
      connect(Gain_Light_driver_204.y, Light_204.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_204.u);  connect(Light_Driver_203.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_203.p, Light_Driver_203.pin_p);
      connect(Light_203.n, GndDC.p);
      connect(Light_Driver_203.hPin_N, GndAC.pin);
      connect(Light_Driver_203.pin_n, GndDC.p);

    /* Light Connections 202 */
      connect(Gain_Light_driver_203.y, Light_203.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_203.u);  connect(Light_Driver_202.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_202.p, Light_Driver_202.pin_p);
      connect(Light_202.n, GndDC.p);
      connect(Light_Driver_202.hPin_N, GndAC.pin);
      connect(Light_Driver_202.pin_n, GndDC.p);

    /* Light Connections 201 */
      connect(Gain_Light_driver_202.y, Light_202.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_202.u);  connect(Light_Driver_201.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_201.p, Light_Driver_201.pin_p);
      connect(Light_201.n, GndDC.p);
      connect(Light_Driver_201.hPin_N, GndAC.pin);
      connect(Light_Driver_201.pin_n, GndDC.p);

    /* Light Connections 200 */
      connect(Gain_Light_driver_201.y, Light_201.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_201.u);  connect(Light_Driver_200.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_200.p, Light_Driver_200.pin_p);
      connect(Light_200.n, GndDC.p);
      connect(Light_Driver_200.hPin_N, GndAC.pin);
      connect(Light_Driver_200.pin_n, GndDC.p);

    /* Light Connections 199 */
      connect(Gain_Light_driver_200.y, Light_200.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_200.u);  connect(Light_Driver_199.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_199.p, Light_Driver_199.pin_p);
      connect(Light_199.n, GndDC.p);
      connect(Light_Driver_199.hPin_N, GndAC.pin);
      connect(Light_Driver_199.pin_n, GndDC.p);

    /* Light Connections 190 */
      connect(Gain_Light_driver_199.y, Light_199.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_199.u);  connect(Light_Driver_190.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_190.p, Light_Driver_190.pin_p);
      connect(Light_190.n, GndDC.p);
      connect(Light_Driver_190.hPin_N, GndAC.pin);
      connect(Light_Driver_190.pin_n, GndDC.p);

    /* Light Connections 189 */
      connect(Gain_Light_driver_190.y, Light_190.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_190.u);  connect(Light_Driver_189.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_189.p, Light_Driver_189.pin_p);
      connect(Light_189.n, GndDC.p);
      connect(Light_Driver_189.hPin_N, GndAC.pin);
      connect(Light_Driver_189.pin_n, GndDC.p);

    /* Light Connections 187 */
      connect(Gain_Light_driver_189.y, Light_189.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_189.u);  connect(Light_Driver_187.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_187.p, Light_Driver_187.pin_p);
      connect(Light_187.n, GndDC.p);
      connect(Light_Driver_187.hPin_N, GndAC.pin);
      connect(Light_Driver_187.pin_n, GndDC.p);

    /* Light Connections 183 */
      connect(Gain_Light_driver_187.y, Light_187.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_187.u);  connect(Light_Driver_183.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_183.p, Light_Driver_183.pin_p);
      connect(Light_183.n, GndDC.p);
      connect(Light_Driver_183.hPin_N, GndAC.pin);
      connect(Light_Driver_183.pin_n, GndDC.p);

    /* Light Connections 182 */
      connect(Gain_Light_driver_183.y, Light_183.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_183.u);  connect(Light_Driver_182.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_182.p, Light_Driver_182.pin_p);
      connect(Light_182.n, GndDC.p);
      connect(Light_Driver_182.hPin_N, GndAC.pin);
      connect(Light_Driver_182.pin_n, GndDC.p);

    /* Light Connections 181 */
      connect(Gain_Light_driver_182.y, Light_182.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_182.u);  connect(Light_Driver_181.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_181.p, Light_Driver_181.pin_p);
      connect(Light_181.n, GndDC.p);
      connect(Light_Driver_181.hPin_N, GndAC.pin);
      connect(Light_Driver_181.pin_n, GndDC.p);

    /* Light Connections 180 */
      connect(Gain_Light_driver_181.y, Light_181.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_181.u);  connect(Light_Driver_180.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_180.p, Light_Driver_180.pin_p);
      connect(Light_180.n, GndDC.p);
      connect(Light_Driver_180.hPin_N, GndAC.pin);
      connect(Light_Driver_180.pin_n, GndDC.p);

    /* Light Connections 179 */
      connect(Gain_Light_driver_180.y, Light_180.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_180.u);  connect(Light_Driver_179.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_179.p, Light_Driver_179.pin_p);
      connect(Light_179.n, GndDC.p);
      connect(Light_Driver_179.hPin_N, GndAC.pin);
      connect(Light_Driver_179.pin_n, GndDC.p);

    /* Light Connections 178 */
      connect(Gain_Light_driver_179.y, Light_179.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_179.u);  connect(Light_Driver_178.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_178.p, Light_Driver_178.pin_p);
      connect(Light_178.n, GndDC.p);
      connect(Light_Driver_178.hPin_N, GndAC.pin);
      connect(Light_Driver_178.pin_n, GndDC.p);

    /* Light Connections 177 */
      connect(Gain_Light_driver_178.y, Light_178.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_178.u);  connect(Light_Driver_177.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_177.p, Light_Driver_177.pin_p);
      connect(Light_177.n, GndDC.p);
      connect(Light_Driver_177.hPin_N, GndAC.pin);
      connect(Light_Driver_177.pin_n, GndDC.p);

    /* Light Connections 176 */
      connect(Gain_Light_driver_177.y, Light_177.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_177.u);  connect(Light_Driver_176.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_176.p, Light_Driver_176.pin_p);
      connect(Light_176.n, GndDC.p);
      connect(Light_Driver_176.hPin_N, GndAC.pin);
      connect(Light_Driver_176.pin_n, GndDC.p);

    /* Light Connections 175 */
      connect(Gain_Light_driver_176.y, Light_176.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_176.u);  connect(Light_Driver_175.hPin_L,  cable_light_L1_2A.pin_p);
      connect(Light_175.p, Light_Driver_175.pin_p);
      connect(Light_175.n, GndDC.p);
      connect(Light_Driver_175.hPin_N, GndAC.pin);
      connect(Light_Driver_175.pin_n, GndDC.p);

      connect(Gain_Light_driver_175.y, Light_175.u);
      connect(combiTimeTable_L1_Zn1_Lights.y[1], Gain_Light_driver_175.u);

      annotation ();
    end Light_Panel_L1_2A;

    model Light_Panel_L1_1C
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L1_1C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            43)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Core_Lights(
        tableOnFile=true,
        tableName="L1-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn1_Lights(
        tableOnFile=true,
        tableName="L1-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn2_Lights(
        tableOnFile=true,
        tableName="L1-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn3_Lights(
        tableOnFile=true,
        tableName="L1-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn4_Lights(
        tableOnFile=true,
        tableName="L1-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 278 */
      HPF.DC.Variable_DC_Load Light_278;

    /* Light Model 277 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_278(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_278(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_277;

    /* Light Model 276 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_277(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_277(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_276;

    /* Light Model 275 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_276(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_276(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_275;

    /* Light Model 274 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_275(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_275(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_274;

    /* Light Model 273 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_274(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_274(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_273;

    /* Light Model 272 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_273(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_273(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_272;

    /* Light Model 271 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_272(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_272(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_271;

    /* Light Model 270 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_271(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_271(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_270;

    /* Light Model 269 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_270(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_270(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_269;

    /* Light Model 268 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_269(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_269(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_268;

    /* Light Model 267 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_268(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_268(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_267;

    /* Light Model 266 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_267(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_267(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_266;

    /* Light Model 265 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_266(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_266(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_265;

    /* Light Model 264 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_265(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_265(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_264;

    /* Light Model 263 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_264(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_264(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_263;

    /* Light Model 262 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_263(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_263(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_262;

    /* Light Model 261 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_262(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_262(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_261;

    /* Light Model 260 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_261(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_261(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_260;

    /* Light Model 259 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_260(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_260(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_259;

    /* Light Model 258 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_259(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_259(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_258;

    /* Light Model 257 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_258(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_258(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_257;

    /* Light Model 256 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_257(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_257(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_256;

    /* Light Model 240 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_256(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_256(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_240;

    /* Light Model 238 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_240(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_240(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_238;

    /* Light Model 237 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_238(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_238(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_237;

    /* Light Model 236 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_237(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_237(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_236;

    /* Light Model 230 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_236(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_236(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_230;

    /* Light Model 229 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_230(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_230(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_229;

    /* Light Model 228 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_229(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_229(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_228;

    /* Light Model 227 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_228(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_228(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_227;

    /* Light Model 218 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_227(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_227(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_218;

    /* Light Model 217 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_218(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_218(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_217;

    /* Light Model 216 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_217(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_217(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_216;

    /* Light Model 215 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_216(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_216(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_215;

    /* Light Model 214 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_215(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_215(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_214;

    /* Light Model 213 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_214(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_214(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_213;

    /* Light Model 212 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_213(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_213(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_212;

    /* Light Model 211 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_212(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_212(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_211;

    /* Light Model 210 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_211(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_211(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_210;

    /* Light Model 209 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_210(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_210(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_209;

    /* Light Model 208 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_209(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_209(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_208;

    /* Light Model 207 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_208(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_208(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_207;

    /* Light Model 206 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_207(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_207(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_206;

    /* Light Model 205 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_206(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_206(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_205;

    /* Light Model 195 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_205(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_205(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_195;

    /* Light Model 194 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_195(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_195(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_194;

    /* Light Model 193 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_194(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_194(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_193;

    /* Light Model 192 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_193(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_193(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_192;

    /* Light Model 191 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_192(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_192(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_191;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_191(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_191(k=21) annotation (HideResult=true);

    equation
      connect(cable_light_L1_1C.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 278 */
      connect(Light_Driver_278.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_278.p, Light_Driver_278.pin_p);
      connect(Light_278.n, GndDC.p);
      connect(Light_Driver_278.hPin_N, GndAC.pin);
      connect(Light_Driver_278.pin_n, GndDC.p);

    /* Light Connections 277 */
      connect(Gain_Light_driver_278.y, Light_278.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_278.u);  connect(Light_Driver_277.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_277.p, Light_Driver_277.pin_p);
      connect(Light_277.n, GndDC.p);
      connect(Light_Driver_277.hPin_N, GndAC.pin);
      connect(Light_Driver_277.pin_n, GndDC.p);

    /* Light Connections 276 */
      connect(Gain_Light_driver_277.y, Light_277.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_277.u);  connect(Light_Driver_276.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_276.p, Light_Driver_276.pin_p);
      connect(Light_276.n, GndDC.p);
      connect(Light_Driver_276.hPin_N, GndAC.pin);
      connect(Light_Driver_276.pin_n, GndDC.p);

    /* Light Connections 275 */
      connect(Gain_Light_driver_276.y, Light_276.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_276.u);  connect(Light_Driver_275.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_275.p, Light_Driver_275.pin_p);
      connect(Light_275.n, GndDC.p);
      connect(Light_Driver_275.hPin_N, GndAC.pin);
      connect(Light_Driver_275.pin_n, GndDC.p);

    /* Light Connections 274 */
      connect(Gain_Light_driver_275.y, Light_275.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_275.u);  connect(Light_Driver_274.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_274.p, Light_Driver_274.pin_p);
      connect(Light_274.n, GndDC.p);
      connect(Light_Driver_274.hPin_N, GndAC.pin);
      connect(Light_Driver_274.pin_n, GndDC.p);

    /* Light Connections 273 */
      connect(Gain_Light_driver_274.y, Light_274.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_274.u);  connect(Light_Driver_273.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_273.p, Light_Driver_273.pin_p);
      connect(Light_273.n, GndDC.p);
      connect(Light_Driver_273.hPin_N, GndAC.pin);
      connect(Light_Driver_273.pin_n, GndDC.p);

    /* Light Connections 272 */
      connect(Gain_Light_driver_273.y, Light_273.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_273.u);  connect(Light_Driver_272.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_272.p, Light_Driver_272.pin_p);
      connect(Light_272.n, GndDC.p);
      connect(Light_Driver_272.hPin_N, GndAC.pin);
      connect(Light_Driver_272.pin_n, GndDC.p);

    /* Light Connections 271 */
      connect(Gain_Light_driver_272.y, Light_272.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_272.u);  connect(Light_Driver_271.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_271.p, Light_Driver_271.pin_p);
      connect(Light_271.n, GndDC.p);
      connect(Light_Driver_271.hPin_N, GndAC.pin);
      connect(Light_Driver_271.pin_n, GndDC.p);

    /* Light Connections 270 */
      connect(Gain_Light_driver_271.y, Light_271.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_271.u);  connect(Light_Driver_270.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_270.p, Light_Driver_270.pin_p);
      connect(Light_270.n, GndDC.p);
      connect(Light_Driver_270.hPin_N, GndAC.pin);
      connect(Light_Driver_270.pin_n, GndDC.p);

    /* Light Connections 269 */
      connect(Gain_Light_driver_270.y, Light_270.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_270.u);  connect(Light_Driver_269.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_269.p, Light_Driver_269.pin_p);
      connect(Light_269.n, GndDC.p);
      connect(Light_Driver_269.hPin_N, GndAC.pin);
      connect(Light_Driver_269.pin_n, GndDC.p);

    /* Light Connections 268 */
      connect(Gain_Light_driver_269.y, Light_269.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_269.u);  connect(Light_Driver_268.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_268.p, Light_Driver_268.pin_p);
      connect(Light_268.n, GndDC.p);
      connect(Light_Driver_268.hPin_N, GndAC.pin);
      connect(Light_Driver_268.pin_n, GndDC.p);

    /* Light Connections 267 */
      connect(Gain_Light_driver_268.y, Light_268.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_268.u);  connect(Light_Driver_267.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_267.p, Light_Driver_267.pin_p);
      connect(Light_267.n, GndDC.p);
      connect(Light_Driver_267.hPin_N, GndAC.pin);
      connect(Light_Driver_267.pin_n, GndDC.p);

    /* Light Connections 266 */
      connect(Gain_Light_driver_267.y, Light_267.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_267.u);  connect(Light_Driver_266.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_266.p, Light_Driver_266.pin_p);
      connect(Light_266.n, GndDC.p);
      connect(Light_Driver_266.hPin_N, GndAC.pin);
      connect(Light_Driver_266.pin_n, GndDC.p);

    /* Light Connections 265 */
      connect(Gain_Light_driver_266.y, Light_266.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_266.u);  connect(Light_Driver_265.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_265.p, Light_Driver_265.pin_p);
      connect(Light_265.n, GndDC.p);
      connect(Light_Driver_265.hPin_N, GndAC.pin);
      connect(Light_Driver_265.pin_n, GndDC.p);

    /* Light Connections 264 */
      connect(Gain_Light_driver_265.y, Light_265.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_265.u);  connect(Light_Driver_264.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_264.p, Light_Driver_264.pin_p);
      connect(Light_264.n, GndDC.p);
      connect(Light_Driver_264.hPin_N, GndAC.pin);
      connect(Light_Driver_264.pin_n, GndDC.p);

    /* Light Connections 263 */
      connect(Gain_Light_driver_264.y, Light_264.u);
      connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_264.u);  connect(Light_Driver_263.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_263.p, Light_Driver_263.pin_p);
      connect(Light_263.n, GndDC.p);
      connect(Light_Driver_263.hPin_N, GndAC.pin);
      connect(Light_Driver_263.pin_n, GndDC.p);

    /* Light Connections 262 */
      connect(Gain_Light_driver_263.y, Light_263.u);
      connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_263.u);  connect(Light_Driver_262.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_262.p, Light_Driver_262.pin_p);
      connect(Light_262.n, GndDC.p);
      connect(Light_Driver_262.hPin_N, GndAC.pin);
      connect(Light_Driver_262.pin_n, GndDC.p);

    /* Light Connections 261 */
      connect(Gain_Light_driver_262.y, Light_262.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_262.u);  connect(Light_Driver_261.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_261.p, Light_Driver_261.pin_p);
      connect(Light_261.n, GndDC.p);
      connect(Light_Driver_261.hPin_N, GndAC.pin);
      connect(Light_Driver_261.pin_n, GndDC.p);

    /* Light Connections 260 */
      connect(Gain_Light_driver_261.y, Light_261.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_261.u);  connect(Light_Driver_260.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_260.p, Light_Driver_260.pin_p);
      connect(Light_260.n, GndDC.p);
      connect(Light_Driver_260.hPin_N, GndAC.pin);
      connect(Light_Driver_260.pin_n, GndDC.p);

    /* Light Connections 259 */
      connect(Gain_Light_driver_260.y, Light_260.u);
      connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_260.u);  connect(Light_Driver_259.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_259.p, Light_Driver_259.pin_p);
      connect(Light_259.n, GndDC.p);
      connect(Light_Driver_259.hPin_N, GndAC.pin);
      connect(Light_Driver_259.pin_n, GndDC.p);

    /* Light Connections 258 */
      connect(Gain_Light_driver_259.y, Light_259.u);
      connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_259.u);  connect(Light_Driver_258.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_258.p, Light_Driver_258.pin_p);
      connect(Light_258.n, GndDC.p);
      connect(Light_Driver_258.hPin_N, GndAC.pin);
      connect(Light_Driver_258.pin_n, GndDC.p);

    /* Light Connections 257 */
      connect(Gain_Light_driver_258.y, Light_258.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_258.u);  connect(Light_Driver_257.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_257.p, Light_Driver_257.pin_p);
      connect(Light_257.n, GndDC.p);
      connect(Light_Driver_257.hPin_N, GndAC.pin);
      connect(Light_Driver_257.pin_n, GndDC.p);

    /* Light Connections 256 */
      connect(Gain_Light_driver_257.y, Light_257.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_257.u);  connect(Light_Driver_256.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_256.p, Light_Driver_256.pin_p);
      connect(Light_256.n, GndDC.p);
      connect(Light_Driver_256.hPin_N, GndAC.pin);
      connect(Light_Driver_256.pin_n, GndDC.p);

    /* Light Connections 240 */
      connect(Gain_Light_driver_256.y, Light_256.u);
      connect(combiTimeTable_L1_Zn2_Lights.y[1], Gain_Light_driver_256.u);  connect(Light_Driver_240.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_240.p, Light_Driver_240.pin_p);
      connect(Light_240.n, GndDC.p);
      connect(Light_Driver_240.hPin_N, GndAC.pin);
      connect(Light_Driver_240.pin_n, GndDC.p);

    /* Light Connections 238 */
      connect(Gain_Light_driver_240.y, Light_240.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_240.u);  connect(Light_Driver_238.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_238.p, Light_Driver_238.pin_p);
      connect(Light_238.n, GndDC.p);
      connect(Light_Driver_238.hPin_N, GndAC.pin);
      connect(Light_Driver_238.pin_n, GndDC.p);

    /* Light Connections 237 */
      connect(Gain_Light_driver_238.y, Light_238.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_238.u);  connect(Light_Driver_237.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_237.p, Light_Driver_237.pin_p);
      connect(Light_237.n, GndDC.p);
      connect(Light_Driver_237.hPin_N, GndAC.pin);
      connect(Light_Driver_237.pin_n, GndDC.p);

    /* Light Connections 236 */
      connect(Gain_Light_driver_237.y, Light_237.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_237.u);  connect(Light_Driver_236.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_236.p, Light_Driver_236.pin_p);
      connect(Light_236.n, GndDC.p);
      connect(Light_Driver_236.hPin_N, GndAC.pin);
      connect(Light_Driver_236.pin_n, GndDC.p);

    /* Light Connections 230 */
      connect(Gain_Light_driver_236.y, Light_236.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_236.u);  connect(Light_Driver_230.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_230.p, Light_Driver_230.pin_p);
      connect(Light_230.n, GndDC.p);
      connect(Light_Driver_230.hPin_N, GndAC.pin);
      connect(Light_Driver_230.pin_n, GndDC.p);

    /* Light Connections 229 */
      connect(Gain_Light_driver_230.y, Light_230.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_230.u);  connect(Light_Driver_229.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_229.p, Light_Driver_229.pin_p);
      connect(Light_229.n, GndDC.p);
      connect(Light_Driver_229.hPin_N, GndAC.pin);
      connect(Light_Driver_229.pin_n, GndDC.p);

    /* Light Connections 228 */
      connect(Gain_Light_driver_229.y, Light_229.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_229.u);  connect(Light_Driver_228.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_228.p, Light_Driver_228.pin_p);
      connect(Light_228.n, GndDC.p);
      connect(Light_Driver_228.hPin_N, GndAC.pin);
      connect(Light_Driver_228.pin_n, GndDC.p);

    /* Light Connections 227 */
      connect(Gain_Light_driver_228.y, Light_228.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_228.u);  connect(Light_Driver_227.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_227.p, Light_Driver_227.pin_p);
      connect(Light_227.n, GndDC.p);
      connect(Light_Driver_227.hPin_N, GndAC.pin);
      connect(Light_Driver_227.pin_n, GndDC.p);

    /* Light Connections 218 */
      connect(Gain_Light_driver_227.y, Light_227.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_227.u);  connect(Light_Driver_218.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_218.p, Light_Driver_218.pin_p);
      connect(Light_218.n, GndDC.p);
      connect(Light_Driver_218.hPin_N, GndAC.pin);
      connect(Light_Driver_218.pin_n, GndDC.p);

    /* Light Connections 217 */
      connect(Gain_Light_driver_218.y, Light_218.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_218.u);  connect(Light_Driver_217.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_217.p, Light_Driver_217.pin_p);
      connect(Light_217.n, GndDC.p);
      connect(Light_Driver_217.hPin_N, GndAC.pin);
      connect(Light_Driver_217.pin_n, GndDC.p);

    /* Light Connections 216 */
      connect(Gain_Light_driver_217.y, Light_217.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_217.u);  connect(Light_Driver_216.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_216.p, Light_Driver_216.pin_p);
      connect(Light_216.n, GndDC.p);
      connect(Light_Driver_216.hPin_N, GndAC.pin);
      connect(Light_Driver_216.pin_n, GndDC.p);

    /* Light Connections 215 */
      connect(Gain_Light_driver_216.y, Light_216.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_216.u);  connect(Light_Driver_215.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_215.p, Light_Driver_215.pin_p);
      connect(Light_215.n, GndDC.p);
      connect(Light_Driver_215.hPin_N, GndAC.pin);
      connect(Light_Driver_215.pin_n, GndDC.p);

    /* Light Connections 214 */
      connect(Gain_Light_driver_215.y, Light_215.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_215.u);  connect(Light_Driver_214.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_214.p, Light_Driver_214.pin_p);
      connect(Light_214.n, GndDC.p);
      connect(Light_Driver_214.hPin_N, GndAC.pin);
      connect(Light_Driver_214.pin_n, GndDC.p);

    /* Light Connections 213 */
      connect(Gain_Light_driver_214.y, Light_214.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_214.u);  connect(Light_Driver_213.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_213.p, Light_Driver_213.pin_p);
      connect(Light_213.n, GndDC.p);
      connect(Light_Driver_213.hPin_N, GndAC.pin);
      connect(Light_Driver_213.pin_n, GndDC.p);

    /* Light Connections 212 */
      connect(Gain_Light_driver_213.y, Light_213.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_213.u);  connect(Light_Driver_212.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_212.p, Light_Driver_212.pin_p);
      connect(Light_212.n, GndDC.p);
      connect(Light_Driver_212.hPin_N, GndAC.pin);
      connect(Light_Driver_212.pin_n, GndDC.p);

    /* Light Connections 211 */
      connect(Gain_Light_driver_212.y, Light_212.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_212.u);  connect(Light_Driver_211.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_211.p, Light_Driver_211.pin_p);
      connect(Light_211.n, GndDC.p);
      connect(Light_Driver_211.hPin_N, GndAC.pin);
      connect(Light_Driver_211.pin_n, GndDC.p);

    /* Light Connections 210 */
      connect(Gain_Light_driver_211.y, Light_211.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_211.u);  connect(Light_Driver_210.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_210.p, Light_Driver_210.pin_p);
      connect(Light_210.n, GndDC.p);
      connect(Light_Driver_210.hPin_N, GndAC.pin);
      connect(Light_Driver_210.pin_n, GndDC.p);

    /* Light Connections 209 */
      connect(Gain_Light_driver_210.y, Light_210.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_210.u);  connect(Light_Driver_209.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_209.p, Light_Driver_209.pin_p);
      connect(Light_209.n, GndDC.p);
      connect(Light_Driver_209.hPin_N, GndAC.pin);
      connect(Light_Driver_209.pin_n, GndDC.p);

    /* Light Connections 208 */
      connect(Gain_Light_driver_209.y, Light_209.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_209.u);  connect(Light_Driver_208.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_208.p, Light_Driver_208.pin_p);
      connect(Light_208.n, GndDC.p);
      connect(Light_Driver_208.hPin_N, GndAC.pin);
      connect(Light_Driver_208.pin_n, GndDC.p);

    /* Light Connections 207 */
      connect(Gain_Light_driver_208.y, Light_208.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_208.u);  connect(Light_Driver_207.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_207.p, Light_Driver_207.pin_p);
      connect(Light_207.n, GndDC.p);
      connect(Light_Driver_207.hPin_N, GndAC.pin);
      connect(Light_Driver_207.pin_n, GndDC.p);

    /* Light Connections 206 */
      connect(Gain_Light_driver_207.y, Light_207.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_207.u);  connect(Light_Driver_206.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_206.p, Light_Driver_206.pin_p);
      connect(Light_206.n, GndDC.p);
      connect(Light_Driver_206.hPin_N, GndAC.pin);
      connect(Light_Driver_206.pin_n, GndDC.p);

    /* Light Connections 205 */
      connect(Gain_Light_driver_206.y, Light_206.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_206.u);  connect(Light_Driver_205.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_205.p, Light_Driver_205.pin_p);
      connect(Light_205.n, GndDC.p);
      connect(Light_Driver_205.hPin_N, GndAC.pin);
      connect(Light_Driver_205.pin_n, GndDC.p);

    /* Light Connections 195 */
      connect(Gain_Light_driver_205.y, Light_205.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_205.u);  connect(Light_Driver_195.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_195.p, Light_Driver_195.pin_p);
      connect(Light_195.n, GndDC.p);
      connect(Light_Driver_195.hPin_N, GndAC.pin);
      connect(Light_Driver_195.pin_n, GndDC.p);

    /* Light Connections 194 */
      connect(Gain_Light_driver_195.y, Light_195.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_195.u);  connect(Light_Driver_194.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_194.p, Light_Driver_194.pin_p);
      connect(Light_194.n, GndDC.p);
      connect(Light_Driver_194.hPin_N, GndAC.pin);
      connect(Light_Driver_194.pin_n, GndDC.p);

    /* Light Connections 193 */
      connect(Gain_Light_driver_194.y, Light_194.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_194.u);  connect(Light_Driver_193.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_193.p, Light_Driver_193.pin_p);
      connect(Light_193.n, GndDC.p);
      connect(Light_Driver_193.hPin_N, GndAC.pin);
      connect(Light_Driver_193.pin_n, GndDC.p);

    /* Light Connections 192 */
      connect(Gain_Light_driver_193.y, Light_193.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_193.u);  connect(Light_Driver_192.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_192.p, Light_Driver_192.pin_p);
      connect(Light_192.n, GndDC.p);
      connect(Light_Driver_192.hPin_N, GndAC.pin);
      connect(Light_Driver_192.pin_n, GndDC.p);

    /* Light Connections 191 */
      connect(Gain_Light_driver_192.y, Light_192.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_192.u);  connect(Light_Driver_191.hPin_L,  cable_light_L1_1C.pin_p);
      connect(Light_191.p, Light_Driver_191.pin_p);
      connect(Light_191.n, GndDC.p);
      connect(Light_Driver_191.hPin_N, GndAC.pin);
      connect(Light_Driver_191.pin_n, GndDC.p);

      connect(Gain_Light_driver_191.y, Light_191.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_191.u);

      annotation ();
    end Light_Panel_L1_1C;

    model Light_Panel_L1_1B
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L1_1B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            52)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Core_Lights(
        tableOnFile=true,
        tableName="L1-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn1_Lights(
        tableOnFile=true,
        tableName="L1-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn2_Lights(
        tableOnFile=true,
        tableName="L1-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn3_Lights(
        tableOnFile=true,
        tableName="L1-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn4_Lights(
        tableOnFile=true,
        tableName="L1-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 286 */
      HPF.DC.Variable_DC_Load Light_286;

    /* Light Model 285 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_286(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_286(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_285;

    /* Light Model 284 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_285(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_285(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_284;

    /* Light Model 283 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_284(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_284(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_283;

    /* Light Model 282 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_283(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_283(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_282;

    /* Light Model 281 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_282(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_282(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_281;

    /* Light Model 280 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_281(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_281(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_280;

    /* Light Model 279 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_280(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_280(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_279;

    /* Light Model 198 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_279(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_279(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_198;

    /* Light Model 197 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_198(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_198(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_197;

    /* Light Model 196 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_197(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_197(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_196;

    /* Light Model 188 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_196(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_196(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_188;

    /* Light Model 99 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_188(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_188(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_99;

    /* Light Model 98 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_99(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_99(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_98;

    /* Light Model 97 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_98(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_98(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_97;

    /* Light Model 96 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_97(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_97(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_96;

    /* Light Model 52 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_96(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_96(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_52;

    /* Light Model 51 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_52(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_52(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_51;

    /* Light Model 50 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_51(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_51(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_50;

    /* Light Model 49 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_50(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_50(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_49;

    /* Light Model 48 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_49(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_49(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_48;

    /* Light Model 47 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_48(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_48(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_47;

    /* Light Model 46 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_47(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_47(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_46;

    /* Light Model 45 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_46(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_46(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_45;

    /* Light Model 35 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_45(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_45(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_35;

    /* Light Model 33 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_35(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_35(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_33;

    /* Light Model 24 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_33(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_33(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_24;

    /* Light Model 23 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_24(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_24(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_23;

    /* Light Model 22 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_23(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_23(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_22;

    /* Light Model 21 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_22(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_22(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_21;

    /* Light Model 20 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_21(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_21(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_20;

    /* Light Model 19 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_20(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_20(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_19;

    /* Light Model 18 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_19(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_19(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_18;

    /* Light Model 17 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_18(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_18(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_17;

    /* Light Model 16 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_17(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_17(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_16;

    /* Light Model 15 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_16(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_16(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_15;

    /* Light Model 14 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_15(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_15(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_14;

    /* Light Model 13 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_14(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_14(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_13;

    /* Light Model 12 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_13(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_13(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_12;

    /* Light Model 11 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_12(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_12(k=20) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_11;

    /* Light Model 10 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_11(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_11(k=20) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_10;

    /* Light Model 9 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_10(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_10(k=20) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_9;

    /* Light Model 8 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_9(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_9(k=20) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_8;

    /* Light Model 7 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_8(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_8(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_7;

    /* Light Model 6 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_7(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_7(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_6;

    /* Light Model 5 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_6(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_6(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_5;

    /* Light Model 4 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_5(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_5(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_4;

    /* Light Model 3 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_4(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_4(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_3;

    /* Light Model 2 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_3(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_3(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_2;

    /* Light Model 1 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_2(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_2(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_1;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_1(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_1(k=21) annotation (HideResult=true);

    equation
      connect(cable_light_L1_1B.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 286 */
      connect(Light_Driver_286.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_286.p, Light_Driver_286.pin_p);
      connect(Light_286.n, GndDC.p);
      connect(Light_Driver_286.hPin_N, GndAC.pin);
      connect(Light_Driver_286.pin_n, GndDC.p);

    /* Light Connections 285 */
      connect(Gain_Light_driver_286.y, Light_286.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_286.u);  connect(Light_Driver_285.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_285.p, Light_Driver_285.pin_p);
      connect(Light_285.n, GndDC.p);
      connect(Light_Driver_285.hPin_N, GndAC.pin);
      connect(Light_Driver_285.pin_n, GndDC.p);

    /* Light Connections 284 */
      connect(Gain_Light_driver_285.y, Light_285.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_285.u);  connect(Light_Driver_284.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_284.p, Light_Driver_284.pin_p);
      connect(Light_284.n, GndDC.p);
      connect(Light_Driver_284.hPin_N, GndAC.pin);
      connect(Light_Driver_284.pin_n, GndDC.p);

    /* Light Connections 283 */
      connect(Gain_Light_driver_284.y, Light_284.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_284.u);  connect(Light_Driver_283.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_283.p, Light_Driver_283.pin_p);
      connect(Light_283.n, GndDC.p);
      connect(Light_Driver_283.hPin_N, GndAC.pin);
      connect(Light_Driver_283.pin_n, GndDC.p);

    /* Light Connections 282 */
      connect(Gain_Light_driver_283.y, Light_283.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_283.u);  connect(Light_Driver_282.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_282.p, Light_Driver_282.pin_p);
      connect(Light_282.n, GndDC.p);
      connect(Light_Driver_282.hPin_N, GndAC.pin);
      connect(Light_Driver_282.pin_n, GndDC.p);

    /* Light Connections 281 */
      connect(Gain_Light_driver_282.y, Light_282.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_282.u);  connect(Light_Driver_281.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_281.p, Light_Driver_281.pin_p);
      connect(Light_281.n, GndDC.p);
      connect(Light_Driver_281.hPin_N, GndAC.pin);
      connect(Light_Driver_281.pin_n, GndDC.p);

    /* Light Connections 280 */
      connect(Gain_Light_driver_281.y, Light_281.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_281.u);  connect(Light_Driver_280.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_280.p, Light_Driver_280.pin_p);
      connect(Light_280.n, GndDC.p);
      connect(Light_Driver_280.hPin_N, GndAC.pin);
      connect(Light_Driver_280.pin_n, GndDC.p);

    /* Light Connections 279 */
      connect(Gain_Light_driver_280.y, Light_280.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_280.u);  connect(Light_Driver_279.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_279.p, Light_Driver_279.pin_p);
      connect(Light_279.n, GndDC.p);
      connect(Light_Driver_279.hPin_N, GndAC.pin);
      connect(Light_Driver_279.pin_n, GndDC.p);

    /* Light Connections 198 */
      connect(Gain_Light_driver_279.y, Light_279.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_279.u);  connect(Light_Driver_198.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_198.p, Light_Driver_198.pin_p);
      connect(Light_198.n, GndDC.p);
      connect(Light_Driver_198.hPin_N, GndAC.pin);
      connect(Light_Driver_198.pin_n, GndDC.p);

    /* Light Connections 197 */
      connect(Gain_Light_driver_198.y, Light_198.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_198.u);  connect(Light_Driver_197.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_197.p, Light_Driver_197.pin_p);
      connect(Light_197.n, GndDC.p);
      connect(Light_Driver_197.hPin_N, GndAC.pin);
      connect(Light_Driver_197.pin_n, GndDC.p);

    /* Light Connections 196 */
      connect(Gain_Light_driver_197.y, Light_197.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_197.u);  connect(Light_Driver_196.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_196.p, Light_Driver_196.pin_p);
      connect(Light_196.n, GndDC.p);
      connect(Light_Driver_196.hPin_N, GndAC.pin);
      connect(Light_Driver_196.pin_n, GndDC.p);

    /* Light Connections 188 */
      connect(Gain_Light_driver_196.y, Light_196.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_196.u);  connect(Light_Driver_188.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_188.p, Light_Driver_188.pin_p);
      connect(Light_188.n, GndDC.p);
      connect(Light_Driver_188.hPin_N, GndAC.pin);
      connect(Light_Driver_188.pin_n, GndDC.p);

    /* Light Connections 99 */
      connect(Gain_Light_driver_188.y, Light_188.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_188.u);  connect(Light_Driver_99.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_99.p, Light_Driver_99.pin_p);
      connect(Light_99.n, GndDC.p);
      connect(Light_Driver_99.hPin_N, GndAC.pin);
      connect(Light_Driver_99.pin_n, GndDC.p);

    /* Light Connections 98 */
      connect(Gain_Light_driver_99.y, Light_99.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_99.u);  connect(Light_Driver_98.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_98.p, Light_Driver_98.pin_p);
      connect(Light_98.n, GndDC.p);
      connect(Light_Driver_98.hPin_N, GndAC.pin);
      connect(Light_Driver_98.pin_n, GndDC.p);

    /* Light Connections 97 */
      connect(Gain_Light_driver_98.y, Light_98.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_98.u);  connect(Light_Driver_97.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_97.p, Light_Driver_97.pin_p);
      connect(Light_97.n, GndDC.p);
      connect(Light_Driver_97.hPin_N, GndAC.pin);
      connect(Light_Driver_97.pin_n, GndDC.p);

    /* Light Connections 96 */
      connect(Gain_Light_driver_97.y, Light_97.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_97.u);  connect(Light_Driver_96.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_96.p, Light_Driver_96.pin_p);
      connect(Light_96.n, GndDC.p);
      connect(Light_Driver_96.hPin_N, GndAC.pin);
      connect(Light_Driver_96.pin_n, GndDC.p);

    /* Light Connections 52 */
      connect(Gain_Light_driver_96.y, Light_96.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_96.u);  connect(Light_Driver_52.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_52.p, Light_Driver_52.pin_p);
      connect(Light_52.n, GndDC.p);
      connect(Light_Driver_52.hPin_N, GndAC.pin);
      connect(Light_Driver_52.pin_n, GndDC.p);

    /* Light Connections 51 */
      connect(Gain_Light_driver_52.y, Light_52.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_52.u);  connect(Light_Driver_51.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_51.p, Light_Driver_51.pin_p);
      connect(Light_51.n, GndDC.p);
      connect(Light_Driver_51.hPin_N, GndAC.pin);
      connect(Light_Driver_51.pin_n, GndDC.p);

    /* Light Connections 50 */
      connect(Gain_Light_driver_51.y, Light_51.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_51.u);  connect(Light_Driver_50.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_50.p, Light_Driver_50.pin_p);
      connect(Light_50.n, GndDC.p);
      connect(Light_Driver_50.hPin_N, GndAC.pin);
      connect(Light_Driver_50.pin_n, GndDC.p);

    /* Light Connections 49 */
      connect(Gain_Light_driver_50.y, Light_50.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_50.u);  connect(Light_Driver_49.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_49.p, Light_Driver_49.pin_p);
      connect(Light_49.n, GndDC.p);
      connect(Light_Driver_49.hPin_N, GndAC.pin);
      connect(Light_Driver_49.pin_n, GndDC.p);

    /* Light Connections 48 */
      connect(Gain_Light_driver_49.y, Light_49.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_49.u);  connect(Light_Driver_48.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_48.p, Light_Driver_48.pin_p);
      connect(Light_48.n, GndDC.p);
      connect(Light_Driver_48.hPin_N, GndAC.pin);
      connect(Light_Driver_48.pin_n, GndDC.p);

    /* Light Connections 47 */
      connect(Gain_Light_driver_48.y, Light_48.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_48.u);  connect(Light_Driver_47.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_47.p, Light_Driver_47.pin_p);
      connect(Light_47.n, GndDC.p);
      connect(Light_Driver_47.hPin_N, GndAC.pin);
      connect(Light_Driver_47.pin_n, GndDC.p);

    /* Light Connections 46 */
      connect(Gain_Light_driver_47.y, Light_47.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_47.u);  connect(Light_Driver_46.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_46.p, Light_Driver_46.pin_p);
      connect(Light_46.n, GndDC.p);
      connect(Light_Driver_46.hPin_N, GndAC.pin);
      connect(Light_Driver_46.pin_n, GndDC.p);

    /* Light Connections 45 */
      connect(Gain_Light_driver_46.y, Light_46.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_46.u);  connect(Light_Driver_45.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_45.p, Light_Driver_45.pin_p);
      connect(Light_45.n, GndDC.p);
      connect(Light_Driver_45.hPin_N, GndAC.pin);
      connect(Light_Driver_45.pin_n, GndDC.p);

    /* Light Connections 35 */
      connect(Gain_Light_driver_45.y, Light_45.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_45.u);  connect(Light_Driver_35.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_35.p, Light_Driver_35.pin_p);
      connect(Light_35.n, GndDC.p);
      connect(Light_Driver_35.hPin_N, GndAC.pin);
      connect(Light_Driver_35.pin_n, GndDC.p);

    /* Light Connections 33 */
      connect(Gain_Light_driver_35.y, Light_35.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_35.u);  connect(Light_Driver_33.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_33.p, Light_Driver_33.pin_p);
      connect(Light_33.n, GndDC.p);
      connect(Light_Driver_33.hPin_N, GndAC.pin);
      connect(Light_Driver_33.pin_n, GndDC.p);

    /* Light Connections 24 */
      connect(Gain_Light_driver_33.y, Light_33.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_33.u);  connect(Light_Driver_24.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_24.p, Light_Driver_24.pin_p);
      connect(Light_24.n, GndDC.p);
      connect(Light_Driver_24.hPin_N, GndAC.pin);
      connect(Light_Driver_24.pin_n, GndDC.p);

    /* Light Connections 23 */
      connect(Gain_Light_driver_24.y, Light_24.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_24.u);  connect(Light_Driver_23.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_23.p, Light_Driver_23.pin_p);
      connect(Light_23.n, GndDC.p);
      connect(Light_Driver_23.hPin_N, GndAC.pin);
      connect(Light_Driver_23.pin_n, GndDC.p);

    /* Light Connections 22 */
      connect(Gain_Light_driver_23.y, Light_23.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_23.u);  connect(Light_Driver_22.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_22.p, Light_Driver_22.pin_p);
      connect(Light_22.n, GndDC.p);
      connect(Light_Driver_22.hPin_N, GndAC.pin);
      connect(Light_Driver_22.pin_n, GndDC.p);

    /* Light Connections 21 */
      connect(Gain_Light_driver_22.y, Light_22.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_22.u);  connect(Light_Driver_21.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_21.p, Light_Driver_21.pin_p);
      connect(Light_21.n, GndDC.p);
      connect(Light_Driver_21.hPin_N, GndAC.pin);
      connect(Light_Driver_21.pin_n, GndDC.p);

    /* Light Connections 20 */
      connect(Gain_Light_driver_21.y, Light_21.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_21.u);  connect(Light_Driver_20.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_20.p, Light_Driver_20.pin_p);
      connect(Light_20.n, GndDC.p);
      connect(Light_Driver_20.hPin_N, GndAC.pin);
      connect(Light_Driver_20.pin_n, GndDC.p);

    /* Light Connections 19 */
      connect(Gain_Light_driver_20.y, Light_20.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_20.u);  connect(Light_Driver_19.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_19.p, Light_Driver_19.pin_p);
      connect(Light_19.n, GndDC.p);
      connect(Light_Driver_19.hPin_N, GndAC.pin);
      connect(Light_Driver_19.pin_n, GndDC.p);

    /* Light Connections 18 */
      connect(Gain_Light_driver_19.y, Light_19.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_19.u);  connect(Light_Driver_18.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_18.p, Light_Driver_18.pin_p);
      connect(Light_18.n, GndDC.p);
      connect(Light_Driver_18.hPin_N, GndAC.pin);
      connect(Light_Driver_18.pin_n, GndDC.p);

    /* Light Connections 17 */
      connect(Gain_Light_driver_18.y, Light_18.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_18.u);  connect(Light_Driver_17.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_17.p, Light_Driver_17.pin_p);
      connect(Light_17.n, GndDC.p);
      connect(Light_Driver_17.hPin_N, GndAC.pin);
      connect(Light_Driver_17.pin_n, GndDC.p);

    /* Light Connections 16 */
      connect(Gain_Light_driver_17.y, Light_17.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_17.u);  connect(Light_Driver_16.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_16.p, Light_Driver_16.pin_p);
      connect(Light_16.n, GndDC.p);
      connect(Light_Driver_16.hPin_N, GndAC.pin);
      connect(Light_Driver_16.pin_n, GndDC.p);

    /* Light Connections 15 */
      connect(Gain_Light_driver_16.y, Light_16.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_16.u);  connect(Light_Driver_15.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_15.p, Light_Driver_15.pin_p);
      connect(Light_15.n, GndDC.p);
      connect(Light_Driver_15.hPin_N, GndAC.pin);
      connect(Light_Driver_15.pin_n, GndDC.p);

    /* Light Connections 14 */
      connect(Gain_Light_driver_15.y, Light_15.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_15.u);  connect(Light_Driver_14.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_14.p, Light_Driver_14.pin_p);
      connect(Light_14.n, GndDC.p);
      connect(Light_Driver_14.hPin_N, GndAC.pin);
      connect(Light_Driver_14.pin_n, GndDC.p);

    /* Light Connections 13 */
      connect(Gain_Light_driver_14.y, Light_14.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_14.u);  connect(Light_Driver_13.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_13.p, Light_Driver_13.pin_p);
      connect(Light_13.n, GndDC.p);
      connect(Light_Driver_13.hPin_N, GndAC.pin);
      connect(Light_Driver_13.pin_n, GndDC.p);

    /* Light Connections 12 */
      connect(Gain_Light_driver_13.y, Light_13.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_13.u);  connect(Light_Driver_12.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_12.p, Light_Driver_12.pin_p);
      connect(Light_12.n, GndDC.p);
      connect(Light_Driver_12.hPin_N, GndAC.pin);
      connect(Light_Driver_12.pin_n, GndDC.p);

    /* Light Connections 11 */
      connect(Gain_Light_driver_12.y, Light_12.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_12.u);  connect(Light_Driver_11.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_11.p, Light_Driver_11.pin_p);
      connect(Light_11.n, GndDC.p);
      connect(Light_Driver_11.hPin_N, GndAC.pin);
      connect(Light_Driver_11.pin_n, GndDC.p);

    /* Light Connections 10 */
      connect(Gain_Light_driver_11.y, Light_11.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_11.u);  connect(Light_Driver_10.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_10.p, Light_Driver_10.pin_p);
      connect(Light_10.n, GndDC.p);
      connect(Light_Driver_10.hPin_N, GndAC.pin);
      connect(Light_Driver_10.pin_n, GndDC.p);

    /* Light Connections 9 */
      connect(Gain_Light_driver_10.y, Light_10.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_10.u);  connect(Light_Driver_9.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_9.p, Light_Driver_9.pin_p);
      connect(Light_9.n, GndDC.p);
      connect(Light_Driver_9.hPin_N, GndAC.pin);
      connect(Light_Driver_9.pin_n, GndDC.p);

    /* Light Connections 8 */
      connect(Gain_Light_driver_9.y, Light_9.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_9.u);  connect(Light_Driver_8.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_8.p, Light_Driver_8.pin_p);
      connect(Light_8.n, GndDC.p);
      connect(Light_Driver_8.hPin_N, GndAC.pin);
      connect(Light_Driver_8.pin_n, GndDC.p);

    /* Light Connections 7 */
      connect(Gain_Light_driver_8.y, Light_8.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_8.u);  connect(Light_Driver_7.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_7.p, Light_Driver_7.pin_p);
      connect(Light_7.n, GndDC.p);
      connect(Light_Driver_7.hPin_N, GndAC.pin);
      connect(Light_Driver_7.pin_n, GndDC.p);

    /* Light Connections 6 */
      connect(Gain_Light_driver_7.y, Light_7.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_7.u);  connect(Light_Driver_6.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_6.p, Light_Driver_6.pin_p);
      connect(Light_6.n, GndDC.p);
      connect(Light_Driver_6.hPin_N, GndAC.pin);
      connect(Light_Driver_6.pin_n, GndDC.p);

    /* Light Connections 5 */
      connect(Gain_Light_driver_6.y, Light_6.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_6.u);  connect(Light_Driver_5.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_5.p, Light_Driver_5.pin_p);
      connect(Light_5.n, GndDC.p);
      connect(Light_Driver_5.hPin_N, GndAC.pin);
      connect(Light_Driver_5.pin_n, GndDC.p);

    /* Light Connections 4 */
      connect(Gain_Light_driver_5.y, Light_5.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_5.u);  connect(Light_Driver_4.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_4.p, Light_Driver_4.pin_p);
      connect(Light_4.n, GndDC.p);
      connect(Light_Driver_4.hPin_N, GndAC.pin);
      connect(Light_Driver_4.pin_n, GndDC.p);

    /* Light Connections 3 */
      connect(Gain_Light_driver_4.y, Light_4.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_4.u);  connect(Light_Driver_3.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_3.p, Light_Driver_3.pin_p);
      connect(Light_3.n, GndDC.p);
      connect(Light_Driver_3.hPin_N, GndAC.pin);
      connect(Light_Driver_3.pin_n, GndDC.p);

    /* Light Connections 2 */
      connect(Gain_Light_driver_3.y, Light_3.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_3.u);  connect(Light_Driver_2.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_2.p, Light_Driver_2.pin_p);
      connect(Light_2.n, GndDC.p);
      connect(Light_Driver_2.hPin_N, GndAC.pin);
      connect(Light_Driver_2.pin_n, GndDC.p);

    /* Light Connections 1 */
      connect(Gain_Light_driver_2.y, Light_2.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_2.u);  connect(Light_Driver_1.hPin_L,  cable_light_L1_1B.pin_p);
      connect(Light_1.p, Light_Driver_1.pin_p);
      connect(Light_1.n, GndDC.p);
      connect(Light_Driver_1.hPin_N, GndAC.pin);
      connect(Light_Driver_1.pin_n, GndDC.p);

      connect(Gain_Light_driver_1.y, Light_1.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_1.u);

      annotation ();
    end Light_Panel_L1_1B;

    model Light_Panel_L1_1A
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L1_1A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            61)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Core_Lights(
        tableOnFile=true,
        tableName="L1-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn1_Lights(
        tableOnFile=true,
        tableName="L1-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn2_Lights(
        tableOnFile=true,
        tableName="L1-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn3_Lights(
        tableOnFile=true,
        tableName="L1-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Zn4_Lights(
        tableOnFile=true,
        tableName="L1-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 130 */
      HPF.DC.Variable_DC_Load Light_130;

    /* Light Model 129 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_130(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_130(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_129;

    /* Light Model 128 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_129(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_129(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_128;

    /* Light Model 127 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_128(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_128(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_127;

    /* Light Model 126 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_127(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_127(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_126;

    /* Light Model 125 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_126(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_126(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_125;

    /* Light Model 124 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_125(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_125(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_124;

    /* Light Model 123 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_124(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_124(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_123;

    /* Light Model 122 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_123(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_123(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_122;

    /* Light Model 121 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_122(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_122(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_121;

    /* Light Model 120 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_121(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_121(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_120;

    /* Light Model 119 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_120(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_120(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_119;

    /* Light Model 118 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_119(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_119(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_118;

    /* Light Model 117 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_118(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_118(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_117;

    /* Light Model 116 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_117(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_117(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_116;

    /* Light Model 115 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_116(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_116(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_115;

    /* Light Model 114 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_115(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_115(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_114;

    /* Light Model 113 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_114(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_114(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_113;

    /* Light Model 112 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_113(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_113(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_112;

    /* Light Model 111 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_112(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_112(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_111;

    /* Light Model 110 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_111(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_111(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_110;

    /* Light Model 109 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_110(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_110(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_109;

    /* Light Model 108 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_109(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_109(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_108;

    /* Light Model 105 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_108(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_108(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_105;

    /* Light Model 103 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_105(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_105(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_103;

    /* Light Model 102 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_103(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_103(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_102;

    /* Light Model 100 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_102(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_102(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_100;

    /* Light Model 92 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_100(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_100(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_92;

    /* Light Model 91 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_92(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_92(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_91;

    /* Light Model 90 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_91(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_91(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_90;

    /* Light Model 89 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_90(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_90(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_89;

    /* Light Model 88 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_89(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_89(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_88;

    /* Light Model 87 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_88(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_88(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_87;

    /* Light Model 86 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_87(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_87(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_86;

    /* Light Model 85 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_86(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_86(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_85;

    /* Light Model 84 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_85(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_85(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_84;

    /* Light Model 83 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_84(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_84(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_83;

    /* Light Model 82 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_83(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_83(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_82;

    /* Light Model 81 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_82(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_82(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_81;

    /* Light Model 73 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_81(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_81(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_73;

    /* Light Model 72 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_73(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_73(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_72;

    /* Light Model 64 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_72(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_72(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_64;

    /* Light Model 63 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_64(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_64(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_63;

    /* Light Model 62 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_63(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_63(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_62;

    /* Light Model 61 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_62(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_62(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_61;

    /* Light Model 44 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_61(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_61(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_44;

    /* Light Model 43 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_44(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_44(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_43;

    /* Light Model 37 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_43(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_43(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_37;

    /* Light Model 32 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_37(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_37(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_32;

    /* Light Model 31 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_32(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_32(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_31;

    /* Light Model 30 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_31(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_31(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_30;

    /* Light Model 29 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_30(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_30(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_29;

    /* Light Model 28 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_29(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_29(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_28;

    /* Light Model 27 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_28(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_28(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_27;

    /* Light Model 26 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_27(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_27(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_26;

    /* Light Model 25 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_26(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_26(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_25;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_25(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_25(k=21) annotation (HideResult=true);

    equation
      connect(cable_light_L1_1A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 130 */
      connect(Light_Driver_130.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_130.p, Light_Driver_130.pin_p);
      connect(Light_130.n, GndDC.p);
      connect(Light_Driver_130.hPin_N, GndAC.pin);
      connect(Light_Driver_130.pin_n, GndDC.p);

    /* Light Connections 129 */
      connect(Gain_Light_driver_130.y, Light_130.u);
      connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_130.u);  connect(Light_Driver_129.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_129.p, Light_Driver_129.pin_p);
      connect(Light_129.n, GndDC.p);
      connect(Light_Driver_129.hPin_N, GndAC.pin);
      connect(Light_Driver_129.pin_n, GndDC.p);

    /* Light Connections 128 */
      connect(Gain_Light_driver_129.y, Light_129.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_129.u);  connect(Light_Driver_128.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_128.p, Light_Driver_128.pin_p);
      connect(Light_128.n, GndDC.p);
      connect(Light_Driver_128.hPin_N, GndAC.pin);
      connect(Light_Driver_128.pin_n, GndDC.p);

    /* Light Connections 127 */
      connect(Gain_Light_driver_128.y, Light_128.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_128.u);  connect(Light_Driver_127.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_127.p, Light_Driver_127.pin_p);
      connect(Light_127.n, GndDC.p);
      connect(Light_Driver_127.hPin_N, GndAC.pin);
      connect(Light_Driver_127.pin_n, GndDC.p);

    /* Light Connections 126 */
      connect(Gain_Light_driver_127.y, Light_127.u);
      connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_127.u);  connect(Light_Driver_126.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_126.p, Light_Driver_126.pin_p);
      connect(Light_126.n, GndDC.p);
      connect(Light_Driver_126.hPin_N, GndAC.pin);
      connect(Light_Driver_126.pin_n, GndDC.p);

    /* Light Connections 125 */
      connect(Gain_Light_driver_126.y, Light_126.u);
      connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_126.u);  connect(Light_Driver_125.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_125.p, Light_Driver_125.pin_p);
      connect(Light_125.n, GndDC.p);
      connect(Light_Driver_125.hPin_N, GndAC.pin);
      connect(Light_Driver_125.pin_n, GndDC.p);

    /* Light Connections 124 */
      connect(Gain_Light_driver_125.y, Light_125.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_125.u);  connect(Light_Driver_124.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_124.p, Light_Driver_124.pin_p);
      connect(Light_124.n, GndDC.p);
      connect(Light_Driver_124.hPin_N, GndAC.pin);
      connect(Light_Driver_124.pin_n, GndDC.p);

    /* Light Connections 123 */
      connect(Gain_Light_driver_124.y, Light_124.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_124.u);  connect(Light_Driver_123.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_123.p, Light_Driver_123.pin_p);
      connect(Light_123.n, GndDC.p);
      connect(Light_Driver_123.hPin_N, GndAC.pin);
      connect(Light_Driver_123.pin_n, GndDC.p);

    /* Light Connections 122 */
      connect(Gain_Light_driver_123.y, Light_123.u);
      connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_123.u);  connect(Light_Driver_122.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_122.p, Light_Driver_122.pin_p);
      connect(Light_122.n, GndDC.p);
      connect(Light_Driver_122.hPin_N, GndAC.pin);
      connect(Light_Driver_122.pin_n, GndDC.p);

    /* Light Connections 121 */
      connect(Gain_Light_driver_122.y, Light_122.u);
      connect(combiTimeTable_L1_Zn4_Lights.y[1], Gain_Light_driver_122.u);  connect(Light_Driver_121.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_121.p, Light_Driver_121.pin_p);
      connect(Light_121.n, GndDC.p);
      connect(Light_Driver_121.hPin_N, GndAC.pin);
      connect(Light_Driver_121.pin_n, GndDC.p);

    /* Light Connections 120 */
      connect(Gain_Light_driver_121.y, Light_121.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_121.u);  connect(Light_Driver_120.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_120.p, Light_Driver_120.pin_p);
      connect(Light_120.n, GndDC.p);
      connect(Light_Driver_120.hPin_N, GndAC.pin);
      connect(Light_Driver_120.pin_n, GndDC.p);

    /* Light Connections 119 */
      connect(Gain_Light_driver_120.y, Light_120.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_120.u);  connect(Light_Driver_119.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_119.p, Light_Driver_119.pin_p);
      connect(Light_119.n, GndDC.p);
      connect(Light_Driver_119.hPin_N, GndAC.pin);
      connect(Light_Driver_119.pin_n, GndDC.p);

    /* Light Connections 118 */
      connect(Gain_Light_driver_119.y, Light_119.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_119.u);  connect(Light_Driver_118.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_118.p, Light_Driver_118.pin_p);
      connect(Light_118.n, GndDC.p);
      connect(Light_Driver_118.hPin_N, GndAC.pin);
      connect(Light_Driver_118.pin_n, GndDC.p);

    /* Light Connections 117 */
      connect(Gain_Light_driver_118.y, Light_118.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_118.u);  connect(Light_Driver_117.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_117.p, Light_Driver_117.pin_p);
      connect(Light_117.n, GndDC.p);
      connect(Light_Driver_117.hPin_N, GndAC.pin);
      connect(Light_Driver_117.pin_n, GndDC.p);

    /* Light Connections 116 */
      connect(Gain_Light_driver_117.y, Light_117.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_117.u);  connect(Light_Driver_116.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_116.p, Light_Driver_116.pin_p);
      connect(Light_116.n, GndDC.p);
      connect(Light_Driver_116.hPin_N, GndAC.pin);
      connect(Light_Driver_116.pin_n, GndDC.p);

    /* Light Connections 115 */
      connect(Gain_Light_driver_116.y, Light_116.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_116.u);  connect(Light_Driver_115.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_115.p, Light_Driver_115.pin_p);
      connect(Light_115.n, GndDC.p);
      connect(Light_Driver_115.hPin_N, GndAC.pin);
      connect(Light_Driver_115.pin_n, GndDC.p);

    /* Light Connections 114 */
      connect(Gain_Light_driver_115.y, Light_115.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_115.u);  connect(Light_Driver_114.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_114.p, Light_Driver_114.pin_p);
      connect(Light_114.n, GndDC.p);
      connect(Light_Driver_114.hPin_N, GndAC.pin);
      connect(Light_Driver_114.pin_n, GndDC.p);

    /* Light Connections 113 */
      connect(Gain_Light_driver_114.y, Light_114.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_114.u);  connect(Light_Driver_113.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_113.p, Light_Driver_113.pin_p);
      connect(Light_113.n, GndDC.p);
      connect(Light_Driver_113.hPin_N, GndAC.pin);
      connect(Light_Driver_113.pin_n, GndDC.p);

    /* Light Connections 112 */
      connect(Gain_Light_driver_113.y, Light_113.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_113.u);  connect(Light_Driver_112.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_112.p, Light_Driver_112.pin_p);
      connect(Light_112.n, GndDC.p);
      connect(Light_Driver_112.hPin_N, GndAC.pin);
      connect(Light_Driver_112.pin_n, GndDC.p);

    /* Light Connections 111 */
      connect(Gain_Light_driver_112.y, Light_112.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_112.u);  connect(Light_Driver_111.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_111.p, Light_Driver_111.pin_p);
      connect(Light_111.n, GndDC.p);
      connect(Light_Driver_111.hPin_N, GndAC.pin);
      connect(Light_Driver_111.pin_n, GndDC.p);

    /* Light Connections 110 */
      connect(Gain_Light_driver_111.y, Light_111.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_111.u);  connect(Light_Driver_110.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_110.p, Light_Driver_110.pin_p);
      connect(Light_110.n, GndDC.p);
      connect(Light_Driver_110.hPin_N, GndAC.pin);
      connect(Light_Driver_110.pin_n, GndDC.p);

    /* Light Connections 109 */
      connect(Gain_Light_driver_110.y, Light_110.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_110.u);  connect(Light_Driver_109.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_109.p, Light_Driver_109.pin_p);
      connect(Light_109.n, GndDC.p);
      connect(Light_Driver_109.hPin_N, GndAC.pin);
      connect(Light_Driver_109.pin_n, GndDC.p);

    /* Light Connections 108 */
      connect(Gain_Light_driver_109.y, Light_109.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_109.u);  connect(Light_Driver_108.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_108.p, Light_Driver_108.pin_p);
      connect(Light_108.n, GndDC.p);
      connect(Light_Driver_108.hPin_N, GndAC.pin);
      connect(Light_Driver_108.pin_n, GndDC.p);

    /* Light Connections 105 */
      connect(Gain_Light_driver_108.y, Light_108.u);
      connect(combiTimeTable_L1_Zn3_Lights.y[1], Gain_Light_driver_108.u);  connect(Light_Driver_105.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_105.p, Light_Driver_105.pin_p);
      connect(Light_105.n, GndDC.p);
      connect(Light_Driver_105.hPin_N, GndAC.pin);
      connect(Light_Driver_105.pin_n, GndDC.p);

    /* Light Connections 103 */
      connect(Gain_Light_driver_105.y, Light_105.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_105.u);  connect(Light_Driver_103.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_103.p, Light_Driver_103.pin_p);
      connect(Light_103.n, GndDC.p);
      connect(Light_Driver_103.hPin_N, GndAC.pin);
      connect(Light_Driver_103.pin_n, GndDC.p);

    /* Light Connections 102 */
      connect(Gain_Light_driver_103.y, Light_103.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_103.u);  connect(Light_Driver_102.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_102.p, Light_Driver_102.pin_p);
      connect(Light_102.n, GndDC.p);
      connect(Light_Driver_102.hPin_N, GndAC.pin);
      connect(Light_Driver_102.pin_n, GndDC.p);

    /* Light Connections 100 */
      connect(Gain_Light_driver_102.y, Light_102.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_102.u);  connect(Light_Driver_100.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_100.p, Light_Driver_100.pin_p);
      connect(Light_100.n, GndDC.p);
      connect(Light_Driver_100.hPin_N, GndAC.pin);
      connect(Light_Driver_100.pin_n, GndDC.p);

    /* Light Connections 92 */
      connect(Gain_Light_driver_100.y, Light_100.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_100.u);  connect(Light_Driver_92.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_92.p, Light_Driver_92.pin_p);
      connect(Light_92.n, GndDC.p);
      connect(Light_Driver_92.hPin_N, GndAC.pin);
      connect(Light_Driver_92.pin_n, GndDC.p);

    /* Light Connections 91 */
      connect(Gain_Light_driver_92.y, Light_92.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_92.u);  connect(Light_Driver_91.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_91.p, Light_Driver_91.pin_p);
      connect(Light_91.n, GndDC.p);
      connect(Light_Driver_91.hPin_N, GndAC.pin);
      connect(Light_Driver_91.pin_n, GndDC.p);

    /* Light Connections 90 */
      connect(Gain_Light_driver_91.y, Light_91.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_91.u);  connect(Light_Driver_90.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_90.p, Light_Driver_90.pin_p);
      connect(Light_90.n, GndDC.p);
      connect(Light_Driver_90.hPin_N, GndAC.pin);
      connect(Light_Driver_90.pin_n, GndDC.p);

    /* Light Connections 89 */
      connect(Gain_Light_driver_90.y, Light_90.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_90.u);  connect(Light_Driver_89.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_89.p, Light_Driver_89.pin_p);
      connect(Light_89.n, GndDC.p);
      connect(Light_Driver_89.hPin_N, GndAC.pin);
      connect(Light_Driver_89.pin_n, GndDC.p);

    /* Light Connections 88 */
      connect(Gain_Light_driver_89.y, Light_89.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_89.u);  connect(Light_Driver_88.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_88.p, Light_Driver_88.pin_p);
      connect(Light_88.n, GndDC.p);
      connect(Light_Driver_88.hPin_N, GndAC.pin);
      connect(Light_Driver_88.pin_n, GndDC.p);

    /* Light Connections 87 */
      connect(Gain_Light_driver_88.y, Light_88.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_88.u);  connect(Light_Driver_87.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_87.p, Light_Driver_87.pin_p);
      connect(Light_87.n, GndDC.p);
      connect(Light_Driver_87.hPin_N, GndAC.pin);
      connect(Light_Driver_87.pin_n, GndDC.p);

    /* Light Connections 86 */
      connect(Gain_Light_driver_87.y, Light_87.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_87.u);  connect(Light_Driver_86.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_86.p, Light_Driver_86.pin_p);
      connect(Light_86.n, GndDC.p);
      connect(Light_Driver_86.hPin_N, GndAC.pin);
      connect(Light_Driver_86.pin_n, GndDC.p);

    /* Light Connections 85 */
      connect(Gain_Light_driver_86.y, Light_86.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_86.u);  connect(Light_Driver_85.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_85.p, Light_Driver_85.pin_p);
      connect(Light_85.n, GndDC.p);
      connect(Light_Driver_85.hPin_N, GndAC.pin);
      connect(Light_Driver_85.pin_n, GndDC.p);

    /* Light Connections 84 */
      connect(Gain_Light_driver_85.y, Light_85.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_85.u);  connect(Light_Driver_84.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_84.p, Light_Driver_84.pin_p);
      connect(Light_84.n, GndDC.p);
      connect(Light_Driver_84.hPin_N, GndAC.pin);
      connect(Light_Driver_84.pin_n, GndDC.p);

    /* Light Connections 83 */
      connect(Gain_Light_driver_84.y, Light_84.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_84.u);  connect(Light_Driver_83.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_83.p, Light_Driver_83.pin_p);
      connect(Light_83.n, GndDC.p);
      connect(Light_Driver_83.hPin_N, GndAC.pin);
      connect(Light_Driver_83.pin_n, GndDC.p);

    /* Light Connections 82 */
      connect(Gain_Light_driver_83.y, Light_83.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_83.u);  connect(Light_Driver_82.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_82.p, Light_Driver_82.pin_p);
      connect(Light_82.n, GndDC.p);
      connect(Light_Driver_82.hPin_N, GndAC.pin);
      connect(Light_Driver_82.pin_n, GndDC.p);

    /* Light Connections 81 */
      connect(Gain_Light_driver_82.y, Light_82.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_82.u);  connect(Light_Driver_81.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_81.p, Light_Driver_81.pin_p);
      connect(Light_81.n, GndDC.p);
      connect(Light_Driver_81.hPin_N, GndAC.pin);
      connect(Light_Driver_81.pin_n, GndDC.p);

    /* Light Connections 73 */
      connect(Gain_Light_driver_81.y, Light_81.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_81.u);  connect(Light_Driver_73.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_73.p, Light_Driver_73.pin_p);
      connect(Light_73.n, GndDC.p);
      connect(Light_Driver_73.hPin_N, GndAC.pin);
      connect(Light_Driver_73.pin_n, GndDC.p);

    /* Light Connections 72 */
      connect(Gain_Light_driver_73.y, Light_73.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_73.u);  connect(Light_Driver_72.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_72.p, Light_Driver_72.pin_p);
      connect(Light_72.n, GndDC.p);
      connect(Light_Driver_72.hPin_N, GndAC.pin);
      connect(Light_Driver_72.pin_n, GndDC.p);

    /* Light Connections 64 */
      connect(Gain_Light_driver_72.y, Light_72.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_72.u);  connect(Light_Driver_64.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_64.p, Light_Driver_64.pin_p);
      connect(Light_64.n, GndDC.p);
      connect(Light_Driver_64.hPin_N, GndAC.pin);
      connect(Light_Driver_64.pin_n, GndDC.p);

    /* Light Connections 63 */
      connect(Gain_Light_driver_64.y, Light_64.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_64.u);  connect(Light_Driver_63.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_63.p, Light_Driver_63.pin_p);
      connect(Light_63.n, GndDC.p);
      connect(Light_Driver_63.hPin_N, GndAC.pin);
      connect(Light_Driver_63.pin_n, GndDC.p);

    /* Light Connections 62 */
      connect(Gain_Light_driver_63.y, Light_63.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_63.u);  connect(Light_Driver_62.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_62.p, Light_Driver_62.pin_p);
      connect(Light_62.n, GndDC.p);
      connect(Light_Driver_62.hPin_N, GndAC.pin);
      connect(Light_Driver_62.pin_n, GndDC.p);

    /* Light Connections 61 */
      connect(Gain_Light_driver_62.y, Light_62.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_62.u);  connect(Light_Driver_61.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_61.p, Light_Driver_61.pin_p);
      connect(Light_61.n, GndDC.p);
      connect(Light_Driver_61.hPin_N, GndAC.pin);
      connect(Light_Driver_61.pin_n, GndDC.p);

    /* Light Connections 44 */
      connect(Gain_Light_driver_61.y, Light_61.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_61.u);  connect(Light_Driver_44.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_44.p, Light_Driver_44.pin_p);
      connect(Light_44.n, GndDC.p);
      connect(Light_Driver_44.hPin_N, GndAC.pin);
      connect(Light_Driver_44.pin_n, GndDC.p);

    /* Light Connections 43 */
      connect(Gain_Light_driver_44.y, Light_44.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_44.u);  connect(Light_Driver_43.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_43.p, Light_Driver_43.pin_p);
      connect(Light_43.n, GndDC.p);
      connect(Light_Driver_43.hPin_N, GndAC.pin);
      connect(Light_Driver_43.pin_n, GndDC.p);

    /* Light Connections 37 */
      connect(Gain_Light_driver_43.y, Light_43.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_43.u);  connect(Light_Driver_37.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_37.p, Light_Driver_37.pin_p);
      connect(Light_37.n, GndDC.p);
      connect(Light_Driver_37.hPin_N, GndAC.pin);
      connect(Light_Driver_37.pin_n, GndDC.p);

    /* Light Connections 32 */
      connect(Gain_Light_driver_37.y, Light_37.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_37.u);  connect(Light_Driver_32.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_32.p, Light_Driver_32.pin_p);
      connect(Light_32.n, GndDC.p);
      connect(Light_Driver_32.hPin_N, GndAC.pin);
      connect(Light_Driver_32.pin_n, GndDC.p);

    /* Light Connections 31 */
      connect(Gain_Light_driver_32.y, Light_32.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_32.u);  connect(Light_Driver_31.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_31.p, Light_Driver_31.pin_p);
      connect(Light_31.n, GndDC.p);
      connect(Light_Driver_31.hPin_N, GndAC.pin);
      connect(Light_Driver_31.pin_n, GndDC.p);

    /* Light Connections 30 */
      connect(Gain_Light_driver_31.y, Light_31.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_31.u);  connect(Light_Driver_30.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_30.p, Light_Driver_30.pin_p);
      connect(Light_30.n, GndDC.p);
      connect(Light_Driver_30.hPin_N, GndAC.pin);
      connect(Light_Driver_30.pin_n, GndDC.p);

    /* Light Connections 29 */
      connect(Gain_Light_driver_30.y, Light_30.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_30.u);  connect(Light_Driver_29.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_29.p, Light_Driver_29.pin_p);
      connect(Light_29.n, GndDC.p);
      connect(Light_Driver_29.hPin_N, GndAC.pin);
      connect(Light_Driver_29.pin_n, GndDC.p);

    /* Light Connections 28 */
      connect(Gain_Light_driver_29.y, Light_29.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_29.u);  connect(Light_Driver_28.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_28.p, Light_Driver_28.pin_p);
      connect(Light_28.n, GndDC.p);
      connect(Light_Driver_28.hPin_N, GndAC.pin);
      connect(Light_Driver_28.pin_n, GndDC.p);

    /* Light Connections 27 */
      connect(Gain_Light_driver_28.y, Light_28.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_28.u);  connect(Light_Driver_27.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_27.p, Light_Driver_27.pin_p);
      connect(Light_27.n, GndDC.p);
      connect(Light_Driver_27.hPin_N, GndAC.pin);
      connect(Light_Driver_27.pin_n, GndDC.p);

    /* Light Connections 26 */
      connect(Gain_Light_driver_27.y, Light_27.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_27.u);  connect(Light_Driver_26.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_26.p, Light_Driver_26.pin_p);
      connect(Light_26.n, GndDC.p);
      connect(Light_Driver_26.hPin_N, GndAC.pin);
      connect(Light_Driver_26.pin_n, GndDC.p);

    /* Light Connections 25 */
      connect(Gain_Light_driver_26.y, Light_26.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_26.u);  connect(Light_Driver_25.hPin_L,  cable_light_L1_1A.pin_p);
      connect(Light_25.p, Light_Driver_25.pin_p);
      connect(Light_25.n, GndDC.p);
      connect(Light_Driver_25.hPin_N, GndAC.pin);
      connect(Light_Driver_25.pin_n, GndDC.p);

      connect(Gain_Light_driver_25.y, Light_25.u);
      connect(combiTimeTable_L1_Core_Lights.y[1], Gain_Light_driver_25.u);

      annotation ();
    end Light_Panel_L1_1A;

    model Light_Panel_L2_2C
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L2_2C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            58)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Core_Lights(
        tableOnFile=true,
        tableName="L2-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn1_Lights(
        tableOnFile=true,
        tableName="L2-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn2_Lights(
        tableOnFile=true,
        tableName="L2-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn3_Lights(
        tableOnFile=true,
        tableName="L2-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn4_Lights(
        tableOnFile=true,
        tableName="L2-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 556 */
      HPF.DC.Variable_DC_Load Light_556;

    /* Light Model 555 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_556(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_556(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_555;

    /* Light Model 554 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_555(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_555(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_554;

    /* Light Model 553 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_554(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_554(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_553;

    /* Light Model 552 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_553(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_553(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_552;

    /* Light Model 551 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_552(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_552(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_551;

    /* Light Model 550 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_551(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_551(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_550;

    /* Light Model 549 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_550(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_550(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_549;

    /* Light Model 548 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_549(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_549(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_548;

    /* Light Model 547 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_548(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_548(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_547;

    /* Light Model 545 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_547(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_547(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_545;

    /* Light Model 534 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_545(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_545(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_534;

    /* Light Model 529 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_534(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_534(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_529;

    /* Light Model 524 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_529(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_529(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_524;

    /* Light Model 523 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_524(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_524(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_523;

    /* Light Model 522 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_523(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_523(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_522;

    /* Light Model 521 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_522(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_522(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_521;

    /* Light Model 520 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_521(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_521(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_520;

    /* Light Model 519 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_520(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_520(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_519;

    /* Light Model 518 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_519(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_519(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_518;

    /* Light Model 517 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_518(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_518(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_517;

    /* Light Model 516 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_517(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_517(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_516;

    /* Light Model 515 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_516(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_516(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_515;

    /* Light Model 366 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_515(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_515(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_366;

    /* Light Model 365 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_366(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_366(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_365;

    /* Light Model 364 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_365(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_365(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_364;

    /* Light Model 363 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_364(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_364(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_363;

    /* Light Model 362 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_363(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_363(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_362;

    /* Light Model 361 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_362(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_362(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_361;

    /* Light Model 360 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_361(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_361(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_360;

    /* Light Model 359 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_360(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_360(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_359;

    /* Light Model 358 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_359(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_359(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_358;

    /* Light Model 357 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_358(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_358(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_357;

    /* Light Model 356 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_357(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_357(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_356;

    /* Light Model 355 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_356(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_356(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_355;

    /* Light Model 316 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_355(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_355(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_316;

    /* Light Model 315 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_316(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_316(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_315;

    /* Light Model 314 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_315(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_315(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_314;

    /* Light Model 313 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_314(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_314(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_313;

    /* Light Model 312 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_313(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_313(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_312;

    /* Light Model 311 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_312(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_312(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_311;

    /* Light Model 306 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_311(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_311(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_306;

    /* Light Model 305 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_306(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_306(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_305;

    /* Light Model 304 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_305(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_305(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_304;

    /* Light Model 303 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_304(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_304(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_303;

    /* Light Model 301 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_303(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_303(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_301;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_301(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_301(k=22) annotation (HideResult=true);

    equation
      connect(cable_light_L2_2C.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 556 */
      connect(Light_Driver_556.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_556.p, Light_Driver_556.pin_p);
      connect(Light_556.n, GndDC.p);
      connect(Light_Driver_556.hPin_N, GndAC.pin);
      connect(Light_Driver_556.pin_n, GndDC.p);

    /* Light Connections 555 */
      connect(Gain_Light_driver_556.y, Light_556.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_556.u);  connect(Light_Driver_555.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_555.p, Light_Driver_555.pin_p);
      connect(Light_555.n, GndDC.p);
      connect(Light_Driver_555.hPin_N, GndAC.pin);
      connect(Light_Driver_555.pin_n, GndDC.p);

    /* Light Connections 554 */
      connect(Gain_Light_driver_555.y, Light_555.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_555.u);  connect(Light_Driver_554.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_554.p, Light_Driver_554.pin_p);
      connect(Light_554.n, GndDC.p);
      connect(Light_Driver_554.hPin_N, GndAC.pin);
      connect(Light_Driver_554.pin_n, GndDC.p);

    /* Light Connections 553 */
      connect(Gain_Light_driver_554.y, Light_554.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_554.u);  connect(Light_Driver_553.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_553.p, Light_Driver_553.pin_p);
      connect(Light_553.n, GndDC.p);
      connect(Light_Driver_553.hPin_N, GndAC.pin);
      connect(Light_Driver_553.pin_n, GndDC.p);

    /* Light Connections 552 */
      connect(Gain_Light_driver_553.y, Light_553.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_553.u);  connect(Light_Driver_552.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_552.p, Light_Driver_552.pin_p);
      connect(Light_552.n, GndDC.p);
      connect(Light_Driver_552.hPin_N, GndAC.pin);
      connect(Light_Driver_552.pin_n, GndDC.p);

    /* Light Connections 551 */
      connect(Gain_Light_driver_552.y, Light_552.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_552.u);  connect(Light_Driver_551.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_551.p, Light_Driver_551.pin_p);
      connect(Light_551.n, GndDC.p);
      connect(Light_Driver_551.hPin_N, GndAC.pin);
      connect(Light_Driver_551.pin_n, GndDC.p);

    /* Light Connections 550 */
      connect(Gain_Light_driver_551.y, Light_551.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_551.u);  connect(Light_Driver_550.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_550.p, Light_Driver_550.pin_p);
      connect(Light_550.n, GndDC.p);
      connect(Light_Driver_550.hPin_N, GndAC.pin);
      connect(Light_Driver_550.pin_n, GndDC.p);

    /* Light Connections 549 */
      connect(Gain_Light_driver_550.y, Light_550.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_550.u);  connect(Light_Driver_549.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_549.p, Light_Driver_549.pin_p);
      connect(Light_549.n, GndDC.p);
      connect(Light_Driver_549.hPin_N, GndAC.pin);
      connect(Light_Driver_549.pin_n, GndDC.p);

    /* Light Connections 548 */
      connect(Gain_Light_driver_549.y, Light_549.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_549.u);  connect(Light_Driver_548.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_548.p, Light_Driver_548.pin_p);
      connect(Light_548.n, GndDC.p);
      connect(Light_Driver_548.hPin_N, GndAC.pin);
      connect(Light_Driver_548.pin_n, GndDC.p);

    /* Light Connections 547 */
      connect(Gain_Light_driver_548.y, Light_548.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_548.u);  connect(Light_Driver_547.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_547.p, Light_Driver_547.pin_p);
      connect(Light_547.n, GndDC.p);
      connect(Light_Driver_547.hPin_N, GndAC.pin);
      connect(Light_Driver_547.pin_n, GndDC.p);

    /* Light Connections 545 */
      connect(Gain_Light_driver_547.y, Light_547.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_547.u);  connect(Light_Driver_545.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_545.p, Light_Driver_545.pin_p);
      connect(Light_545.n, GndDC.p);
      connect(Light_Driver_545.hPin_N, GndAC.pin);
      connect(Light_Driver_545.pin_n, GndDC.p);

    /* Light Connections 534 */
      connect(Gain_Light_driver_545.y, Light_545.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_545.u);  connect(Light_Driver_534.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_534.p, Light_Driver_534.pin_p);
      connect(Light_534.n, GndDC.p);
      connect(Light_Driver_534.hPin_N, GndAC.pin);
      connect(Light_Driver_534.pin_n, GndDC.p);

    /* Light Connections 529 */
      connect(Gain_Light_driver_534.y, Light_534.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_534.u);  connect(Light_Driver_529.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_529.p, Light_Driver_529.pin_p);
      connect(Light_529.n, GndDC.p);
      connect(Light_Driver_529.hPin_N, GndAC.pin);
      connect(Light_Driver_529.pin_n, GndDC.p);

    /* Light Connections 524 */
      connect(Gain_Light_driver_529.y, Light_529.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_529.u);  connect(Light_Driver_524.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_524.p, Light_Driver_524.pin_p);
      connect(Light_524.n, GndDC.p);
      connect(Light_Driver_524.hPin_N, GndAC.pin);
      connect(Light_Driver_524.pin_n, GndDC.p);

    /* Light Connections 523 */
      connect(Gain_Light_driver_524.y, Light_524.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_524.u);  connect(Light_Driver_523.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_523.p, Light_Driver_523.pin_p);
      connect(Light_523.n, GndDC.p);
      connect(Light_Driver_523.hPin_N, GndAC.pin);
      connect(Light_Driver_523.pin_n, GndDC.p);

    /* Light Connections 522 */
      connect(Gain_Light_driver_523.y, Light_523.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_523.u);  connect(Light_Driver_522.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_522.p, Light_Driver_522.pin_p);
      connect(Light_522.n, GndDC.p);
      connect(Light_Driver_522.hPin_N, GndAC.pin);
      connect(Light_Driver_522.pin_n, GndDC.p);

    /* Light Connections 521 */
      connect(Gain_Light_driver_522.y, Light_522.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_522.u);  connect(Light_Driver_521.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_521.p, Light_Driver_521.pin_p);
      connect(Light_521.n, GndDC.p);
      connect(Light_Driver_521.hPin_N, GndAC.pin);
      connect(Light_Driver_521.pin_n, GndDC.p);

    /* Light Connections 520 */
      connect(Gain_Light_driver_521.y, Light_521.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_521.u);  connect(Light_Driver_520.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_520.p, Light_Driver_520.pin_p);
      connect(Light_520.n, GndDC.p);
      connect(Light_Driver_520.hPin_N, GndAC.pin);
      connect(Light_Driver_520.pin_n, GndDC.p);

    /* Light Connections 519 */
      connect(Gain_Light_driver_520.y, Light_520.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_520.u);  connect(Light_Driver_519.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_519.p, Light_Driver_519.pin_p);
      connect(Light_519.n, GndDC.p);
      connect(Light_Driver_519.hPin_N, GndAC.pin);
      connect(Light_Driver_519.pin_n, GndDC.p);

    /* Light Connections 518 */
      connect(Gain_Light_driver_519.y, Light_519.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_519.u);  connect(Light_Driver_518.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_518.p, Light_Driver_518.pin_p);
      connect(Light_518.n, GndDC.p);
      connect(Light_Driver_518.hPin_N, GndAC.pin);
      connect(Light_Driver_518.pin_n, GndDC.p);

    /* Light Connections 517 */
      connect(Gain_Light_driver_518.y, Light_518.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_518.u);  connect(Light_Driver_517.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_517.p, Light_Driver_517.pin_p);
      connect(Light_517.n, GndDC.p);
      connect(Light_Driver_517.hPin_N, GndAC.pin);
      connect(Light_Driver_517.pin_n, GndDC.p);

    /* Light Connections 516 */
      connect(Gain_Light_driver_517.y, Light_517.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_517.u);  connect(Light_Driver_516.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_516.p, Light_Driver_516.pin_p);
      connect(Light_516.n, GndDC.p);
      connect(Light_Driver_516.hPin_N, GndAC.pin);
      connect(Light_Driver_516.pin_n, GndDC.p);

    /* Light Connections 515 */
      connect(Gain_Light_driver_516.y, Light_516.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_516.u);  connect(Light_Driver_515.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_515.p, Light_Driver_515.pin_p);
      connect(Light_515.n, GndDC.p);
      connect(Light_Driver_515.hPin_N, GndAC.pin);
      connect(Light_Driver_515.pin_n, GndDC.p);

    /* Light Connections 366 */
      connect(Gain_Light_driver_515.y, Light_515.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_515.u);  connect(Light_Driver_366.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_366.p, Light_Driver_366.pin_p);
      connect(Light_366.n, GndDC.p);
      connect(Light_Driver_366.hPin_N, GndAC.pin);
      connect(Light_Driver_366.pin_n, GndDC.p);

    /* Light Connections 365 */
      connect(Gain_Light_driver_366.y, Light_366.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_366.u);  connect(Light_Driver_365.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_365.p, Light_Driver_365.pin_p);
      connect(Light_365.n, GndDC.p);
      connect(Light_Driver_365.hPin_N, GndAC.pin);
      connect(Light_Driver_365.pin_n, GndDC.p);

    /* Light Connections 364 */
      connect(Gain_Light_driver_365.y, Light_365.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_365.u);  connect(Light_Driver_364.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_364.p, Light_Driver_364.pin_p);
      connect(Light_364.n, GndDC.p);
      connect(Light_Driver_364.hPin_N, GndAC.pin);
      connect(Light_Driver_364.pin_n, GndDC.p);

    /* Light Connections 363 */
      connect(Gain_Light_driver_364.y, Light_364.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_364.u);  connect(Light_Driver_363.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_363.p, Light_Driver_363.pin_p);
      connect(Light_363.n, GndDC.p);
      connect(Light_Driver_363.hPin_N, GndAC.pin);
      connect(Light_Driver_363.pin_n, GndDC.p);

    /* Light Connections 362 */
      connect(Gain_Light_driver_363.y, Light_363.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_363.u);  connect(Light_Driver_362.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_362.p, Light_Driver_362.pin_p);
      connect(Light_362.n, GndDC.p);
      connect(Light_Driver_362.hPin_N, GndAC.pin);
      connect(Light_Driver_362.pin_n, GndDC.p);

    /* Light Connections 361 */
      connect(Gain_Light_driver_362.y, Light_362.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_362.u);  connect(Light_Driver_361.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_361.p, Light_Driver_361.pin_p);
      connect(Light_361.n, GndDC.p);
      connect(Light_Driver_361.hPin_N, GndAC.pin);
      connect(Light_Driver_361.pin_n, GndDC.p);

    /* Light Connections 360 */
      connect(Gain_Light_driver_361.y, Light_361.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_361.u);  connect(Light_Driver_360.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_360.p, Light_Driver_360.pin_p);
      connect(Light_360.n, GndDC.p);
      connect(Light_Driver_360.hPin_N, GndAC.pin);
      connect(Light_Driver_360.pin_n, GndDC.p);

    /* Light Connections 359 */
      connect(Gain_Light_driver_360.y, Light_360.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_360.u);  connect(Light_Driver_359.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_359.p, Light_Driver_359.pin_p);
      connect(Light_359.n, GndDC.p);
      connect(Light_Driver_359.hPin_N, GndAC.pin);
      connect(Light_Driver_359.pin_n, GndDC.p);

    /* Light Connections 358 */
      connect(Gain_Light_driver_359.y, Light_359.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_359.u);  connect(Light_Driver_358.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_358.p, Light_Driver_358.pin_p);
      connect(Light_358.n, GndDC.p);
      connect(Light_Driver_358.hPin_N, GndAC.pin);
      connect(Light_Driver_358.pin_n, GndDC.p);

    /* Light Connections 357 */
      connect(Gain_Light_driver_358.y, Light_358.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_358.u);  connect(Light_Driver_357.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_357.p, Light_Driver_357.pin_p);
      connect(Light_357.n, GndDC.p);
      connect(Light_Driver_357.hPin_N, GndAC.pin);
      connect(Light_Driver_357.pin_n, GndDC.p);

    /* Light Connections 356 */
      connect(Gain_Light_driver_357.y, Light_357.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_357.u);  connect(Light_Driver_356.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_356.p, Light_Driver_356.pin_p);
      connect(Light_356.n, GndDC.p);
      connect(Light_Driver_356.hPin_N, GndAC.pin);
      connect(Light_Driver_356.pin_n, GndDC.p);

    /* Light Connections 355 */
      connect(Gain_Light_driver_356.y, Light_356.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_356.u);  connect(Light_Driver_355.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_355.p, Light_Driver_355.pin_p);
      connect(Light_355.n, GndDC.p);
      connect(Light_Driver_355.hPin_N, GndAC.pin);
      connect(Light_Driver_355.pin_n, GndDC.p);

    /* Light Connections 316 */
      connect(Gain_Light_driver_355.y, Light_355.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_355.u);  connect(Light_Driver_316.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_316.p, Light_Driver_316.pin_p);
      connect(Light_316.n, GndDC.p);
      connect(Light_Driver_316.hPin_N, GndAC.pin);
      connect(Light_Driver_316.pin_n, GndDC.p);

    /* Light Connections 315 */
      connect(Gain_Light_driver_316.y, Light_316.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_316.u);  connect(Light_Driver_315.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_315.p, Light_Driver_315.pin_p);
      connect(Light_315.n, GndDC.p);
      connect(Light_Driver_315.hPin_N, GndAC.pin);
      connect(Light_Driver_315.pin_n, GndDC.p);

    /* Light Connections 314 */
      connect(Gain_Light_driver_315.y, Light_315.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_315.u);  connect(Light_Driver_314.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_314.p, Light_Driver_314.pin_p);
      connect(Light_314.n, GndDC.p);
      connect(Light_Driver_314.hPin_N, GndAC.pin);
      connect(Light_Driver_314.pin_n, GndDC.p);

    /* Light Connections 313 */
      connect(Gain_Light_driver_314.y, Light_314.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_314.u);  connect(Light_Driver_313.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_313.p, Light_Driver_313.pin_p);
      connect(Light_313.n, GndDC.p);
      connect(Light_Driver_313.hPin_N, GndAC.pin);
      connect(Light_Driver_313.pin_n, GndDC.p);

    /* Light Connections 312 */
      connect(Gain_Light_driver_313.y, Light_313.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_313.u);  connect(Light_Driver_312.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_312.p, Light_Driver_312.pin_p);
      connect(Light_312.n, GndDC.p);
      connect(Light_Driver_312.hPin_N, GndAC.pin);
      connect(Light_Driver_312.pin_n, GndDC.p);

    /* Light Connections 311 */
      connect(Gain_Light_driver_312.y, Light_312.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_312.u);  connect(Light_Driver_311.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_311.p, Light_Driver_311.pin_p);
      connect(Light_311.n, GndDC.p);
      connect(Light_Driver_311.hPin_N, GndAC.pin);
      connect(Light_Driver_311.pin_n, GndDC.p);

    /* Light Connections 306 */
      connect(Gain_Light_driver_311.y, Light_311.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_311.u);  connect(Light_Driver_306.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_306.p, Light_Driver_306.pin_p);
      connect(Light_306.n, GndDC.p);
      connect(Light_Driver_306.hPin_N, GndAC.pin);
      connect(Light_Driver_306.pin_n, GndDC.p);

    /* Light Connections 305 */
      connect(Gain_Light_driver_306.y, Light_306.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_306.u);  connect(Light_Driver_305.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_305.p, Light_Driver_305.pin_p);
      connect(Light_305.n, GndDC.p);
      connect(Light_Driver_305.hPin_N, GndAC.pin);
      connect(Light_Driver_305.pin_n, GndDC.p);

    /* Light Connections 304 */
      connect(Gain_Light_driver_305.y, Light_305.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_305.u);  connect(Light_Driver_304.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_304.p, Light_Driver_304.pin_p);
      connect(Light_304.n, GndDC.p);
      connect(Light_Driver_304.hPin_N, GndAC.pin);
      connect(Light_Driver_304.pin_n, GndDC.p);

    /* Light Connections 303 */
      connect(Gain_Light_driver_304.y, Light_304.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_304.u);  connect(Light_Driver_303.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_303.p, Light_Driver_303.pin_p);
      connect(Light_303.n, GndDC.p);
      connect(Light_Driver_303.hPin_N, GndAC.pin);
      connect(Light_Driver_303.pin_n, GndDC.p);

    /* Light Connections 301 */
      connect(Gain_Light_driver_303.y, Light_303.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_303.u);  connect(Light_Driver_301.hPin_L,  cable_light_L2_2C.pin_p);
      connect(Light_301.p, Light_Driver_301.pin_p);
      connect(Light_301.n, GndDC.p);
      connect(Light_Driver_301.hPin_N, GndAC.pin);
      connect(Light_Driver_301.pin_n, GndDC.p);

      connect(Gain_Light_driver_301.y, Light_301.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_301.u);

      annotation ();
    end Light_Panel_L2_2C;

    model Light_Panel_L2_2B
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L2_2B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            67)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Core_Lights(
        tableOnFile=true,
        tableName="L2-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn1_Lights(
        tableOnFile=true,
        tableName="L2-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn2_Lights(
        tableOnFile=true,
        tableName="L2-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn3_Lights(
        tableOnFile=true,
        tableName="L2-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn4_Lights(
        tableOnFile=true,
        tableName="L2-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 546 */
      HPF.DC.Variable_DC_Load Light_546;

    /* Light Model 544 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_546(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_546(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_544;

    /* Light Model 543 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_544(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_544(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_543;

    /* Light Model 390 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_543(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_543(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_390;

    /* Light Model 389 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_390(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_390(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_389;

    /* Light Model 388 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_389(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_389(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_388;

    /* Light Model 387 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_388(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_388(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_387;

    /* Light Model 386 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_387(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_387(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_386;

    /* Light Model 385 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_386(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_386(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_385;

    /* Light Model 384 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_385(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_385(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_384;

    /* Light Model 383 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_384(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_384(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_383;

    /* Light Model 382 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_383(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_383(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_382;

    /* Light Model 381 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_382(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_382(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_381;

    /* Light Model 380 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_381(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_381(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_380;

    /* Light Model 379 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_380(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_380(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_379;

    /* Light Model 378 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_379(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_379(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_378;

    /* Light Model 377 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_378(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_378(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_377;

    /* Light Model 376 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_377(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_377(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_376;

    /* Light Model 375 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_376(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_376(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_375;

    /* Light Model 374 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_375(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_375(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_374;

    /* Light Model 373 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_374(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_374(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_373;

    /* Light Model 372 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_373(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_373(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_372;

    /* Light Model 371 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_372(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_372(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_371;

    /* Light Model 370 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_371(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_371(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_370;

    /* Light Model 369 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_370(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_370(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_369;

    /* Light Model 368 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_369(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_369(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_368;

    /* Light Model 367 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_368(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_368(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_367;

    /* Light Model 354 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_367(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_367(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_354;

    /* Light Model 351 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_354(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_354(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_351;

    /* Light Model 350 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_351(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_351(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_350;

    /* Light Model 349 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_350(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_350(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_349;

    /* Light Model 348 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_349(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_349(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_348;

    /* Light Model 347 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_348(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_348(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_347;

    /* Light Model 332 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_347(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_347(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_332;

    /* Light Model 331 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_332(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_332(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_331;

    /* Light Model 330 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_331(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_331(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_330;

    /* Light Model 329 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_330(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_330(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_329;

    /* Light Model 328 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_329(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_329(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_328;

    /* Light Model 300 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_328(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_328(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_300;

    /* Light Model 298 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_300(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_300(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_298;

    /* Light Model 297 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_298(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_298(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_297;

    /* Light Model 296 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_297(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_297(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_296;

    /* Light Model 295 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_296(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_296(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_295;

    /* Light Model 294 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_295(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_295(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_294;

    /* Light Model 293 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_294(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_294(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_293;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_293(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_293(k=21) annotation (HideResult=true);

    equation
      connect(cable_light_L2_2B.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 546 */
      connect(Light_Driver_546.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_546.p, Light_Driver_546.pin_p);
      connect(Light_546.n, GndDC.p);
      connect(Light_Driver_546.hPin_N, GndAC.pin);
      connect(Light_Driver_546.pin_n, GndDC.p);

    /* Light Connections 544 */
      connect(Gain_Light_driver_546.y, Light_546.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_546.u);  connect(Light_Driver_544.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_544.p, Light_Driver_544.pin_p);
      connect(Light_544.n, GndDC.p);
      connect(Light_Driver_544.hPin_N, GndAC.pin);
      connect(Light_Driver_544.pin_n, GndDC.p);

    /* Light Connections 543 */
      connect(Gain_Light_driver_544.y, Light_544.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_544.u);  connect(Light_Driver_543.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_543.p, Light_Driver_543.pin_p);
      connect(Light_543.n, GndDC.p);
      connect(Light_Driver_543.hPin_N, GndAC.pin);
      connect(Light_Driver_543.pin_n, GndDC.p);

    /* Light Connections 390 */
      connect(Gain_Light_driver_543.y, Light_543.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_543.u);  connect(Light_Driver_390.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_390.p, Light_Driver_390.pin_p);
      connect(Light_390.n, GndDC.p);
      connect(Light_Driver_390.hPin_N, GndAC.pin);
      connect(Light_Driver_390.pin_n, GndDC.p);

    /* Light Connections 389 */
      connect(Gain_Light_driver_390.y, Light_390.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_390.u);  connect(Light_Driver_389.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_389.p, Light_Driver_389.pin_p);
      connect(Light_389.n, GndDC.p);
      connect(Light_Driver_389.hPin_N, GndAC.pin);
      connect(Light_Driver_389.pin_n, GndDC.p);

    /* Light Connections 388 */
      connect(Gain_Light_driver_389.y, Light_389.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_389.u);  connect(Light_Driver_388.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_388.p, Light_Driver_388.pin_p);
      connect(Light_388.n, GndDC.p);
      connect(Light_Driver_388.hPin_N, GndAC.pin);
      connect(Light_Driver_388.pin_n, GndDC.p);

    /* Light Connections 387 */
      connect(Gain_Light_driver_388.y, Light_388.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_388.u);  connect(Light_Driver_387.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_387.p, Light_Driver_387.pin_p);
      connect(Light_387.n, GndDC.p);
      connect(Light_Driver_387.hPin_N, GndAC.pin);
      connect(Light_Driver_387.pin_n, GndDC.p);

    /* Light Connections 386 */
      connect(Gain_Light_driver_387.y, Light_387.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_387.u);  connect(Light_Driver_386.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_386.p, Light_Driver_386.pin_p);
      connect(Light_386.n, GndDC.p);
      connect(Light_Driver_386.hPin_N, GndAC.pin);
      connect(Light_Driver_386.pin_n, GndDC.p);

    /* Light Connections 385 */
      connect(Gain_Light_driver_386.y, Light_386.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_386.u);  connect(Light_Driver_385.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_385.p, Light_Driver_385.pin_p);
      connect(Light_385.n, GndDC.p);
      connect(Light_Driver_385.hPin_N, GndAC.pin);
      connect(Light_Driver_385.pin_n, GndDC.p);

    /* Light Connections 384 */
      connect(Gain_Light_driver_385.y, Light_385.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_385.u);  connect(Light_Driver_384.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_384.p, Light_Driver_384.pin_p);
      connect(Light_384.n, GndDC.p);
      connect(Light_Driver_384.hPin_N, GndAC.pin);
      connect(Light_Driver_384.pin_n, GndDC.p);

    /* Light Connections 383 */
      connect(Gain_Light_driver_384.y, Light_384.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_384.u);  connect(Light_Driver_383.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_383.p, Light_Driver_383.pin_p);
      connect(Light_383.n, GndDC.p);
      connect(Light_Driver_383.hPin_N, GndAC.pin);
      connect(Light_Driver_383.pin_n, GndDC.p);

    /* Light Connections 382 */
      connect(Gain_Light_driver_383.y, Light_383.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_383.u);  connect(Light_Driver_382.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_382.p, Light_Driver_382.pin_p);
      connect(Light_382.n, GndDC.p);
      connect(Light_Driver_382.hPin_N, GndAC.pin);
      connect(Light_Driver_382.pin_n, GndDC.p);

    /* Light Connections 381 */
      connect(Gain_Light_driver_382.y, Light_382.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_382.u);  connect(Light_Driver_381.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_381.p, Light_Driver_381.pin_p);
      connect(Light_381.n, GndDC.p);
      connect(Light_Driver_381.hPin_N, GndAC.pin);
      connect(Light_Driver_381.pin_n, GndDC.p);

    /* Light Connections 380 */
      connect(Gain_Light_driver_381.y, Light_381.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_381.u);  connect(Light_Driver_380.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_380.p, Light_Driver_380.pin_p);
      connect(Light_380.n, GndDC.p);
      connect(Light_Driver_380.hPin_N, GndAC.pin);
      connect(Light_Driver_380.pin_n, GndDC.p);

    /* Light Connections 379 */
      connect(Gain_Light_driver_380.y, Light_380.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_380.u);  connect(Light_Driver_379.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_379.p, Light_Driver_379.pin_p);
      connect(Light_379.n, GndDC.p);
      connect(Light_Driver_379.hPin_N, GndAC.pin);
      connect(Light_Driver_379.pin_n, GndDC.p);

    /* Light Connections 378 */
      connect(Gain_Light_driver_379.y, Light_379.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_379.u);  connect(Light_Driver_378.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_378.p, Light_Driver_378.pin_p);
      connect(Light_378.n, GndDC.p);
      connect(Light_Driver_378.hPin_N, GndAC.pin);
      connect(Light_Driver_378.pin_n, GndDC.p);

    /* Light Connections 377 */
      connect(Gain_Light_driver_378.y, Light_378.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_378.u);  connect(Light_Driver_377.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_377.p, Light_Driver_377.pin_p);
      connect(Light_377.n, GndDC.p);
      connect(Light_Driver_377.hPin_N, GndAC.pin);
      connect(Light_Driver_377.pin_n, GndDC.p);

    /* Light Connections 376 */
      connect(Gain_Light_driver_377.y, Light_377.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_377.u);  connect(Light_Driver_376.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_376.p, Light_Driver_376.pin_p);
      connect(Light_376.n, GndDC.p);
      connect(Light_Driver_376.hPin_N, GndAC.pin);
      connect(Light_Driver_376.pin_n, GndDC.p);

    /* Light Connections 375 */
      connect(Gain_Light_driver_376.y, Light_376.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_376.u);  connect(Light_Driver_375.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_375.p, Light_Driver_375.pin_p);
      connect(Light_375.n, GndDC.p);
      connect(Light_Driver_375.hPin_N, GndAC.pin);
      connect(Light_Driver_375.pin_n, GndDC.p);

    /* Light Connections 374 */
      connect(Gain_Light_driver_375.y, Light_375.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_375.u);  connect(Light_Driver_374.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_374.p, Light_Driver_374.pin_p);
      connect(Light_374.n, GndDC.p);
      connect(Light_Driver_374.hPin_N, GndAC.pin);
      connect(Light_Driver_374.pin_n, GndDC.p);

    /* Light Connections 373 */
      connect(Gain_Light_driver_374.y, Light_374.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_374.u);  connect(Light_Driver_373.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_373.p, Light_Driver_373.pin_p);
      connect(Light_373.n, GndDC.p);
      connect(Light_Driver_373.hPin_N, GndAC.pin);
      connect(Light_Driver_373.pin_n, GndDC.p);

    /* Light Connections 372 */
      connect(Gain_Light_driver_373.y, Light_373.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_373.u);  connect(Light_Driver_372.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_372.p, Light_Driver_372.pin_p);
      connect(Light_372.n, GndDC.p);
      connect(Light_Driver_372.hPin_N, GndAC.pin);
      connect(Light_Driver_372.pin_n, GndDC.p);

    /* Light Connections 371 */
      connect(Gain_Light_driver_372.y, Light_372.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_372.u);  connect(Light_Driver_371.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_371.p, Light_Driver_371.pin_p);
      connect(Light_371.n, GndDC.p);
      connect(Light_Driver_371.hPin_N, GndAC.pin);
      connect(Light_Driver_371.pin_n, GndDC.p);

    /* Light Connections 370 */
      connect(Gain_Light_driver_371.y, Light_371.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_371.u);  connect(Light_Driver_370.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_370.p, Light_Driver_370.pin_p);
      connect(Light_370.n, GndDC.p);
      connect(Light_Driver_370.hPin_N, GndAC.pin);
      connect(Light_Driver_370.pin_n, GndDC.p);

    /* Light Connections 369 */
      connect(Gain_Light_driver_370.y, Light_370.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_370.u);  connect(Light_Driver_369.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_369.p, Light_Driver_369.pin_p);
      connect(Light_369.n, GndDC.p);
      connect(Light_Driver_369.hPin_N, GndAC.pin);
      connect(Light_Driver_369.pin_n, GndDC.p);

    /* Light Connections 368 */
      connect(Gain_Light_driver_369.y, Light_369.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_369.u);  connect(Light_Driver_368.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_368.p, Light_Driver_368.pin_p);
      connect(Light_368.n, GndDC.p);
      connect(Light_Driver_368.hPin_N, GndAC.pin);
      connect(Light_Driver_368.pin_n, GndDC.p);

    /* Light Connections 367 */
      connect(Gain_Light_driver_368.y, Light_368.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_368.u);  connect(Light_Driver_367.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_367.p, Light_Driver_367.pin_p);
      connect(Light_367.n, GndDC.p);
      connect(Light_Driver_367.hPin_N, GndAC.pin);
      connect(Light_Driver_367.pin_n, GndDC.p);

    /* Light Connections 354 */
      connect(Gain_Light_driver_367.y, Light_367.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_367.u);  connect(Light_Driver_354.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_354.p, Light_Driver_354.pin_p);
      connect(Light_354.n, GndDC.p);
      connect(Light_Driver_354.hPin_N, GndAC.pin);
      connect(Light_Driver_354.pin_n, GndDC.p);

    /* Light Connections 351 */
      connect(Gain_Light_driver_354.y, Light_354.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_354.u);  connect(Light_Driver_351.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_351.p, Light_Driver_351.pin_p);
      connect(Light_351.n, GndDC.p);
      connect(Light_Driver_351.hPin_N, GndAC.pin);
      connect(Light_Driver_351.pin_n, GndDC.p);

    /* Light Connections 350 */
      connect(Gain_Light_driver_351.y, Light_351.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_351.u);  connect(Light_Driver_350.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_350.p, Light_Driver_350.pin_p);
      connect(Light_350.n, GndDC.p);
      connect(Light_Driver_350.hPin_N, GndAC.pin);
      connect(Light_Driver_350.pin_n, GndDC.p);

    /* Light Connections 349 */
      connect(Gain_Light_driver_350.y, Light_350.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_350.u);  connect(Light_Driver_349.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_349.p, Light_Driver_349.pin_p);
      connect(Light_349.n, GndDC.p);
      connect(Light_Driver_349.hPin_N, GndAC.pin);
      connect(Light_Driver_349.pin_n, GndDC.p);

    /* Light Connections 348 */
      connect(Gain_Light_driver_349.y, Light_349.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_349.u);  connect(Light_Driver_348.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_348.p, Light_Driver_348.pin_p);
      connect(Light_348.n, GndDC.p);
      connect(Light_Driver_348.hPin_N, GndAC.pin);
      connect(Light_Driver_348.pin_n, GndDC.p);

    /* Light Connections 347 */
      connect(Gain_Light_driver_348.y, Light_348.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_348.u);  connect(Light_Driver_347.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_347.p, Light_Driver_347.pin_p);
      connect(Light_347.n, GndDC.p);
      connect(Light_Driver_347.hPin_N, GndAC.pin);
      connect(Light_Driver_347.pin_n, GndDC.p);

    /* Light Connections 332 */
      connect(Gain_Light_driver_347.y, Light_347.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_347.u);  connect(Light_Driver_332.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_332.p, Light_Driver_332.pin_p);
      connect(Light_332.n, GndDC.p);
      connect(Light_Driver_332.hPin_N, GndAC.pin);
      connect(Light_Driver_332.pin_n, GndDC.p);

    /* Light Connections 331 */
      connect(Gain_Light_driver_332.y, Light_332.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_332.u);  connect(Light_Driver_331.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_331.p, Light_Driver_331.pin_p);
      connect(Light_331.n, GndDC.p);
      connect(Light_Driver_331.hPin_N, GndAC.pin);
      connect(Light_Driver_331.pin_n, GndDC.p);

    /* Light Connections 330 */
      connect(Gain_Light_driver_331.y, Light_331.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_331.u);  connect(Light_Driver_330.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_330.p, Light_Driver_330.pin_p);
      connect(Light_330.n, GndDC.p);
      connect(Light_Driver_330.hPin_N, GndAC.pin);
      connect(Light_Driver_330.pin_n, GndDC.p);

    /* Light Connections 329 */
      connect(Gain_Light_driver_330.y, Light_330.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_330.u);  connect(Light_Driver_329.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_329.p, Light_Driver_329.pin_p);
      connect(Light_329.n, GndDC.p);
      connect(Light_Driver_329.hPin_N, GndAC.pin);
      connect(Light_Driver_329.pin_n, GndDC.p);

    /* Light Connections 328 */
      connect(Gain_Light_driver_329.y, Light_329.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_329.u);  connect(Light_Driver_328.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_328.p, Light_Driver_328.pin_p);
      connect(Light_328.n, GndDC.p);
      connect(Light_Driver_328.hPin_N, GndAC.pin);
      connect(Light_Driver_328.pin_n, GndDC.p);

    /* Light Connections 300 */
      connect(Gain_Light_driver_328.y, Light_328.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_328.u);  connect(Light_Driver_300.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_300.p, Light_Driver_300.pin_p);
      connect(Light_300.n, GndDC.p);
      connect(Light_Driver_300.hPin_N, GndAC.pin);
      connect(Light_Driver_300.pin_n, GndDC.p);

    /* Light Connections 298 */
      connect(Gain_Light_driver_300.y, Light_300.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_300.u);  connect(Light_Driver_298.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_298.p, Light_Driver_298.pin_p);
      connect(Light_298.n, GndDC.p);
      connect(Light_Driver_298.hPin_N, GndAC.pin);
      connect(Light_Driver_298.pin_n, GndDC.p);

    /* Light Connections 297 */
      connect(Gain_Light_driver_298.y, Light_298.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_298.u);  connect(Light_Driver_297.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_297.p, Light_Driver_297.pin_p);
      connect(Light_297.n, GndDC.p);
      connect(Light_Driver_297.hPin_N, GndAC.pin);
      connect(Light_Driver_297.pin_n, GndDC.p);

    /* Light Connections 296 */
      connect(Gain_Light_driver_297.y, Light_297.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_297.u);  connect(Light_Driver_296.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_296.p, Light_Driver_296.pin_p);
      connect(Light_296.n, GndDC.p);
      connect(Light_Driver_296.hPin_N, GndAC.pin);
      connect(Light_Driver_296.pin_n, GndDC.p);

    /* Light Connections 295 */
      connect(Gain_Light_driver_296.y, Light_296.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_296.u);  connect(Light_Driver_295.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_295.p, Light_Driver_295.pin_p);
      connect(Light_295.n, GndDC.p);
      connect(Light_Driver_295.hPin_N, GndAC.pin);
      connect(Light_Driver_295.pin_n, GndDC.p);

    /* Light Connections 294 */
      connect(Gain_Light_driver_295.y, Light_295.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_295.u);  connect(Light_Driver_294.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_294.p, Light_Driver_294.pin_p);
      connect(Light_294.n, GndDC.p);
      connect(Light_Driver_294.hPin_N, GndAC.pin);
      connect(Light_Driver_294.pin_n, GndDC.p);

    /* Light Connections 293 */
      connect(Gain_Light_driver_294.y, Light_294.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_294.u);  connect(Light_Driver_293.hPin_L,  cable_light_L2_2B.pin_p);
      connect(Light_293.p, Light_Driver_293.pin_p);
      connect(Light_293.n, GndDC.p);
      connect(Light_Driver_293.hPin_N, GndAC.pin);
      connect(Light_Driver_293.pin_n, GndDC.p);

      connect(Gain_Light_driver_293.y, Light_293.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_293.u);

      annotation ();
    end Light_Panel_L2_2B;

    model Light_Panel_L2_2A
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L2_2A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            76)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Core_Lights(
        tableOnFile=true,
        tableName="L2-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn1_Lights(
        tableOnFile=true,
        tableName="L2-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn2_Lights(
        tableOnFile=true,
        tableName="L2-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn3_Lights(
        tableOnFile=true,
        tableName="L2-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn4_Lights(
        tableOnFile=true,
        tableName="L2-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 563 */
      HPF.DC.Variable_DC_Load Light_563;

    /* Light Model 562 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_563(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_563(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_562;

    /* Light Model 561 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_562(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_562(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_561;

    /* Light Model 560 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_561(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_561(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_560;

    /* Light Model 559 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_560(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_560(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_559;

    /* Light Model 558 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_559(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_559(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_558;

    /* Light Model 557 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_558(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_558(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_557;

    /* Light Model 422 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_557(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_557(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_422;

    /* Light Model 417 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_422(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_422(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_417;

    /* Light Model 412 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_417(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_417(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_412;

    /* Light Model 411 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_412(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_412(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_411;

    /* Light Model 410 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_411(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_411(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_410;

    /* Light Model 409 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_410(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_410(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_409;

    /* Light Model 408 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_409(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_409(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_408;

    /* Light Model 407 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_408(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_408(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_407;

    /* Light Model 406 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_407(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_407(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_406;

    /* Light Model 405 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_406(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_406(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_405;

    /* Light Model 404 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_405(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_405(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_404;

    /* Light Model 403 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_404(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_404(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_403;

    /* Light Model 402 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_403(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_403(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_402;

    /* Light Model 401 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_402(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_402(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_401;

    /* Light Model 400 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_401(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_401(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_400;

    /* Light Model 399 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_400(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_400(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_399;

    /* Light Model 398 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_399(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_399(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_398;

    /* Light Model 397 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_398(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_398(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_397;

    /* Light Model 396 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_397(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_397(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_396;

    /* Light Model 395 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_396(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_396(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_395;

    /* Light Model 394 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_395(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_395(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_394;

    /* Light Model 393 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_394(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_394(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_393;

    /* Light Model 392 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_393(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_393(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_392;

    /* Light Model 391 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_392(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_392(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_391;

    /* Light Model 353 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_391(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_391(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_353;

    /* Light Model 345 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_353(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_353(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_345;

    /* Light Model 344 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_345(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_345(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_344;

    /* Light Model 342 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_344(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_344(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_342;

    /* Light Model 341 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_342(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_342(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_341;

    /* Light Model 340 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_341(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_341(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_340;

    /* Light Model 339 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_340(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_340(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_339;

    /* Light Model 338 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_339(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_339(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_338;

    /* Light Model 337 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_338(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_338(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_337;

    /* Light Model 336 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_337(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_337(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_336;

    /* Light Model 335 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_336(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_336(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_335;

    /* Light Model 334 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_335(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_335(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_334;

    /* Light Model 333 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_334(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_334(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_333;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_333(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_333(k=40) annotation (HideResult=true);

    equation
      connect(cable_light_L2_2A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 563 */
      connect(Light_Driver_563.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_563.p, Light_Driver_563.pin_p);
      connect(Light_563.n, GndDC.p);
      connect(Light_Driver_563.hPin_N, GndAC.pin);
      connect(Light_Driver_563.pin_n, GndDC.p);

    /* Light Connections 562 */
      connect(Gain_Light_driver_563.y, Light_563.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_563.u);  connect(Light_Driver_562.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_562.p, Light_Driver_562.pin_p);
      connect(Light_562.n, GndDC.p);
      connect(Light_Driver_562.hPin_N, GndAC.pin);
      connect(Light_Driver_562.pin_n, GndDC.p);

    /* Light Connections 561 */
      connect(Gain_Light_driver_562.y, Light_562.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_562.u);  connect(Light_Driver_561.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_561.p, Light_Driver_561.pin_p);
      connect(Light_561.n, GndDC.p);
      connect(Light_Driver_561.hPin_N, GndAC.pin);
      connect(Light_Driver_561.pin_n, GndDC.p);

    /* Light Connections 560 */
      connect(Gain_Light_driver_561.y, Light_561.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_561.u);  connect(Light_Driver_560.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_560.p, Light_Driver_560.pin_p);
      connect(Light_560.n, GndDC.p);
      connect(Light_Driver_560.hPin_N, GndAC.pin);
      connect(Light_Driver_560.pin_n, GndDC.p);

    /* Light Connections 559 */
      connect(Gain_Light_driver_560.y, Light_560.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_560.u);  connect(Light_Driver_559.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_559.p, Light_Driver_559.pin_p);
      connect(Light_559.n, GndDC.p);
      connect(Light_Driver_559.hPin_N, GndAC.pin);
      connect(Light_Driver_559.pin_n, GndDC.p);

    /* Light Connections 558 */
      connect(Gain_Light_driver_559.y, Light_559.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_559.u);  connect(Light_Driver_558.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_558.p, Light_Driver_558.pin_p);
      connect(Light_558.n, GndDC.p);
      connect(Light_Driver_558.hPin_N, GndAC.pin);
      connect(Light_Driver_558.pin_n, GndDC.p);

    /* Light Connections 557 */
      connect(Gain_Light_driver_558.y, Light_558.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_558.u);  connect(Light_Driver_557.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_557.p, Light_Driver_557.pin_p);
      connect(Light_557.n, GndDC.p);
      connect(Light_Driver_557.hPin_N, GndAC.pin);
      connect(Light_Driver_557.pin_n, GndDC.p);

    /* Light Connections 422 */
      connect(Gain_Light_driver_557.y, Light_557.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_557.u);  connect(Light_Driver_422.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_422.p, Light_Driver_422.pin_p);
      connect(Light_422.n, GndDC.p);
      connect(Light_Driver_422.hPin_N, GndAC.pin);
      connect(Light_Driver_422.pin_n, GndDC.p);

    /* Light Connections 417 */
      connect(Gain_Light_driver_422.y, Light_422.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_422.u);  connect(Light_Driver_417.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_417.p, Light_Driver_417.pin_p);
      connect(Light_417.n, GndDC.p);
      connect(Light_Driver_417.hPin_N, GndAC.pin);
      connect(Light_Driver_417.pin_n, GndDC.p);

    /* Light Connections 412 */
      connect(Gain_Light_driver_417.y, Light_417.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_417.u);  connect(Light_Driver_412.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_412.p, Light_Driver_412.pin_p);
      connect(Light_412.n, GndDC.p);
      connect(Light_Driver_412.hPin_N, GndAC.pin);
      connect(Light_Driver_412.pin_n, GndDC.p);

    /* Light Connections 411 */
      connect(Gain_Light_driver_412.y, Light_412.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_412.u);  connect(Light_Driver_411.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_411.p, Light_Driver_411.pin_p);
      connect(Light_411.n, GndDC.p);
      connect(Light_Driver_411.hPin_N, GndAC.pin);
      connect(Light_Driver_411.pin_n, GndDC.p);

    /* Light Connections 410 */
      connect(Gain_Light_driver_411.y, Light_411.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_411.u);  connect(Light_Driver_410.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_410.p, Light_Driver_410.pin_p);
      connect(Light_410.n, GndDC.p);
      connect(Light_Driver_410.hPin_N, GndAC.pin);
      connect(Light_Driver_410.pin_n, GndDC.p);

    /* Light Connections 409 */
      connect(Gain_Light_driver_410.y, Light_410.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_410.u);  connect(Light_Driver_409.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_409.p, Light_Driver_409.pin_p);
      connect(Light_409.n, GndDC.p);
      connect(Light_Driver_409.hPin_N, GndAC.pin);
      connect(Light_Driver_409.pin_n, GndDC.p);

    /* Light Connections 408 */
      connect(Gain_Light_driver_409.y, Light_409.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_409.u);  connect(Light_Driver_408.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_408.p, Light_Driver_408.pin_p);
      connect(Light_408.n, GndDC.p);
      connect(Light_Driver_408.hPin_N, GndAC.pin);
      connect(Light_Driver_408.pin_n, GndDC.p);

    /* Light Connections 407 */
      connect(Gain_Light_driver_408.y, Light_408.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_408.u);  connect(Light_Driver_407.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_407.p, Light_Driver_407.pin_p);
      connect(Light_407.n, GndDC.p);
      connect(Light_Driver_407.hPin_N, GndAC.pin);
      connect(Light_Driver_407.pin_n, GndDC.p);

    /* Light Connections 406 */
      connect(Gain_Light_driver_407.y, Light_407.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_407.u);  connect(Light_Driver_406.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_406.p, Light_Driver_406.pin_p);
      connect(Light_406.n, GndDC.p);
      connect(Light_Driver_406.hPin_N, GndAC.pin);
      connect(Light_Driver_406.pin_n, GndDC.p);

    /* Light Connections 405 */
      connect(Gain_Light_driver_406.y, Light_406.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_406.u);  connect(Light_Driver_405.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_405.p, Light_Driver_405.pin_p);
      connect(Light_405.n, GndDC.p);
      connect(Light_Driver_405.hPin_N, GndAC.pin);
      connect(Light_Driver_405.pin_n, GndDC.p);

    /* Light Connections 404 */
      connect(Gain_Light_driver_405.y, Light_405.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_405.u);  connect(Light_Driver_404.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_404.p, Light_Driver_404.pin_p);
      connect(Light_404.n, GndDC.p);
      connect(Light_Driver_404.hPin_N, GndAC.pin);
      connect(Light_Driver_404.pin_n, GndDC.p);

    /* Light Connections 403 */
      connect(Gain_Light_driver_404.y, Light_404.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_404.u);  connect(Light_Driver_403.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_403.p, Light_Driver_403.pin_p);
      connect(Light_403.n, GndDC.p);
      connect(Light_Driver_403.hPin_N, GndAC.pin);
      connect(Light_Driver_403.pin_n, GndDC.p);

    /* Light Connections 402 */
      connect(Gain_Light_driver_403.y, Light_403.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_403.u);  connect(Light_Driver_402.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_402.p, Light_Driver_402.pin_p);
      connect(Light_402.n, GndDC.p);
      connect(Light_Driver_402.hPin_N, GndAC.pin);
      connect(Light_Driver_402.pin_n, GndDC.p);

    /* Light Connections 401 */
      connect(Gain_Light_driver_402.y, Light_402.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_402.u);  connect(Light_Driver_401.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_401.p, Light_Driver_401.pin_p);
      connect(Light_401.n, GndDC.p);
      connect(Light_Driver_401.hPin_N, GndAC.pin);
      connect(Light_Driver_401.pin_n, GndDC.p);

    /* Light Connections 400 */
      connect(Gain_Light_driver_401.y, Light_401.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_401.u);  connect(Light_Driver_400.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_400.p, Light_Driver_400.pin_p);
      connect(Light_400.n, GndDC.p);
      connect(Light_Driver_400.hPin_N, GndAC.pin);
      connect(Light_Driver_400.pin_n, GndDC.p);

    /* Light Connections 399 */
      connect(Gain_Light_driver_400.y, Light_400.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_400.u);  connect(Light_Driver_399.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_399.p, Light_Driver_399.pin_p);
      connect(Light_399.n, GndDC.p);
      connect(Light_Driver_399.hPin_N, GndAC.pin);
      connect(Light_Driver_399.pin_n, GndDC.p);

    /* Light Connections 398 */
      connect(Gain_Light_driver_399.y, Light_399.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_399.u);  connect(Light_Driver_398.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_398.p, Light_Driver_398.pin_p);
      connect(Light_398.n, GndDC.p);
      connect(Light_Driver_398.hPin_N, GndAC.pin);
      connect(Light_Driver_398.pin_n, GndDC.p);

    /* Light Connections 397 */
      connect(Gain_Light_driver_398.y, Light_398.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_398.u);  connect(Light_Driver_397.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_397.p, Light_Driver_397.pin_p);
      connect(Light_397.n, GndDC.p);
      connect(Light_Driver_397.hPin_N, GndAC.pin);
      connect(Light_Driver_397.pin_n, GndDC.p);

    /* Light Connections 396 */
      connect(Gain_Light_driver_397.y, Light_397.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_397.u);  connect(Light_Driver_396.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_396.p, Light_Driver_396.pin_p);
      connect(Light_396.n, GndDC.p);
      connect(Light_Driver_396.hPin_N, GndAC.pin);
      connect(Light_Driver_396.pin_n, GndDC.p);

    /* Light Connections 395 */
      connect(Gain_Light_driver_396.y, Light_396.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_396.u);  connect(Light_Driver_395.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_395.p, Light_Driver_395.pin_p);
      connect(Light_395.n, GndDC.p);
      connect(Light_Driver_395.hPin_N, GndAC.pin);
      connect(Light_Driver_395.pin_n, GndDC.p);

    /* Light Connections 394 */
      connect(Gain_Light_driver_395.y, Light_395.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_395.u);  connect(Light_Driver_394.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_394.p, Light_Driver_394.pin_p);
      connect(Light_394.n, GndDC.p);
      connect(Light_Driver_394.hPin_N, GndAC.pin);
      connect(Light_Driver_394.pin_n, GndDC.p);

    /* Light Connections 393 */
      connect(Gain_Light_driver_394.y, Light_394.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_394.u);  connect(Light_Driver_393.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_393.p, Light_Driver_393.pin_p);
      connect(Light_393.n, GndDC.p);
      connect(Light_Driver_393.hPin_N, GndAC.pin);
      connect(Light_Driver_393.pin_n, GndDC.p);

    /* Light Connections 392 */
      connect(Gain_Light_driver_393.y, Light_393.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_393.u);  connect(Light_Driver_392.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_392.p, Light_Driver_392.pin_p);
      connect(Light_392.n, GndDC.p);
      connect(Light_Driver_392.hPin_N, GndAC.pin);
      connect(Light_Driver_392.pin_n, GndDC.p);

    /* Light Connections 391 */
      connect(Gain_Light_driver_392.y, Light_392.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_392.u);  connect(Light_Driver_391.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_391.p, Light_Driver_391.pin_p);
      connect(Light_391.n, GndDC.p);
      connect(Light_Driver_391.hPin_N, GndAC.pin);
      connect(Light_Driver_391.pin_n, GndDC.p);

    /* Light Connections 353 */
      connect(Gain_Light_driver_391.y, Light_391.u);
      connect(combiTimeTable_L2_Zn1_Lights.y[1], Gain_Light_driver_391.u);  connect(Light_Driver_353.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_353.p, Light_Driver_353.pin_p);
      connect(Light_353.n, GndDC.p);
      connect(Light_Driver_353.hPin_N, GndAC.pin);
      connect(Light_Driver_353.pin_n, GndDC.p);

    /* Light Connections 345 */
      connect(Gain_Light_driver_353.y, Light_353.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_353.u);  connect(Light_Driver_345.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_345.p, Light_Driver_345.pin_p);
      connect(Light_345.n, GndDC.p);
      connect(Light_Driver_345.hPin_N, GndAC.pin);
      connect(Light_Driver_345.pin_n, GndDC.p);

    /* Light Connections 344 */
      connect(Gain_Light_driver_345.y, Light_345.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_345.u);  connect(Light_Driver_344.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_344.p, Light_Driver_344.pin_p);
      connect(Light_344.n, GndDC.p);
      connect(Light_Driver_344.hPin_N, GndAC.pin);
      connect(Light_Driver_344.pin_n, GndDC.p);

    /* Light Connections 342 */
      connect(Gain_Light_driver_344.y, Light_344.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_344.u);  connect(Light_Driver_342.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_342.p, Light_Driver_342.pin_p);
      connect(Light_342.n, GndDC.p);
      connect(Light_Driver_342.hPin_N, GndAC.pin);
      connect(Light_Driver_342.pin_n, GndDC.p);

    /* Light Connections 341 */
      connect(Gain_Light_driver_342.y, Light_342.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_342.u);  connect(Light_Driver_341.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_341.p, Light_Driver_341.pin_p);
      connect(Light_341.n, GndDC.p);
      connect(Light_Driver_341.hPin_N, GndAC.pin);
      connect(Light_Driver_341.pin_n, GndDC.p);

    /* Light Connections 340 */
      connect(Gain_Light_driver_341.y, Light_341.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_341.u);  connect(Light_Driver_340.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_340.p, Light_Driver_340.pin_p);
      connect(Light_340.n, GndDC.p);
      connect(Light_Driver_340.hPin_N, GndAC.pin);
      connect(Light_Driver_340.pin_n, GndDC.p);

    /* Light Connections 339 */
      connect(Gain_Light_driver_340.y, Light_340.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_340.u);  connect(Light_Driver_339.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_339.p, Light_Driver_339.pin_p);
      connect(Light_339.n, GndDC.p);
      connect(Light_Driver_339.hPin_N, GndAC.pin);
      connect(Light_Driver_339.pin_n, GndDC.p);

    /* Light Connections 338 */
      connect(Gain_Light_driver_339.y, Light_339.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_339.u);  connect(Light_Driver_338.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_338.p, Light_Driver_338.pin_p);
      connect(Light_338.n, GndDC.p);
      connect(Light_Driver_338.hPin_N, GndAC.pin);
      connect(Light_Driver_338.pin_n, GndDC.p);

    /* Light Connections 337 */
      connect(Gain_Light_driver_338.y, Light_338.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_338.u);  connect(Light_Driver_337.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_337.p, Light_Driver_337.pin_p);
      connect(Light_337.n, GndDC.p);
      connect(Light_Driver_337.hPin_N, GndAC.pin);
      connect(Light_Driver_337.pin_n, GndDC.p);

    /* Light Connections 336 */
      connect(Gain_Light_driver_337.y, Light_337.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_337.u);  connect(Light_Driver_336.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_336.p, Light_Driver_336.pin_p);
      connect(Light_336.n, GndDC.p);
      connect(Light_Driver_336.hPin_N, GndAC.pin);
      connect(Light_Driver_336.pin_n, GndDC.p);

    /* Light Connections 335 */
      connect(Gain_Light_driver_336.y, Light_336.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_336.u);  connect(Light_Driver_335.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_335.p, Light_Driver_335.pin_p);
      connect(Light_335.n, GndDC.p);
      connect(Light_Driver_335.hPin_N, GndAC.pin);
      connect(Light_Driver_335.pin_n, GndDC.p);

    /* Light Connections 334 */
      connect(Gain_Light_driver_335.y, Light_335.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_335.u);  connect(Light_Driver_334.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_334.p, Light_Driver_334.pin_p);
      connect(Light_334.n, GndDC.p);
      connect(Light_Driver_334.hPin_N, GndAC.pin);
      connect(Light_Driver_334.pin_n, GndDC.p);

    /* Light Connections 333 */
      connect(Gain_Light_driver_334.y, Light_334.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_334.u);  connect(Light_Driver_333.hPin_L,  cable_light_L2_2A.pin_p);
      connect(Light_333.p, Light_Driver_333.pin_p);
      connect(Light_333.n, GndDC.p);
      connect(Light_Driver_333.hPin_N, GndAC.pin);
      connect(Light_Driver_333.pin_n, GndDC.p);

      connect(Gain_Light_driver_333.y, Light_333.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_333.u);

      annotation ();
    end Light_Panel_L2_2A;

    model Light_Panel_L2_1C
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L2_1C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            58)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Core_Lights(
        tableOnFile=true,
        tableName="L2-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn1_Lights(
        tableOnFile=true,
        tableName="L2-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn2_Lights(
        tableOnFile=true,
        tableName="L2-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn3_Lights(
        tableOnFile=true,
        tableName="L2-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn4_Lights(
        tableOnFile=true,
        tableName="L2-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 514 */
      HPF.DC.Variable_DC_Load Light_514;

    /* Light Model 513 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_514(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_514(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_513;

    /* Light Model 512 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_513(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_513(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_512;

    /* Light Model 511 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_512(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_512(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_511;

    /* Light Model 510 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_511(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_511(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_510;

    /* Light Model 509 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_510(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_510(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_509;

    /* Light Model 508 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_509(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_509(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_508;

    /* Light Model 507 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_508(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_508(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_507;

    /* Light Model 506 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_507(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_507(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_506;

    /* Light Model 505 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_506(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_506(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_505;

    /* Light Model 504 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_505(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_505(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_504;

    /* Light Model 503 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_504(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_504(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_503;

    /* Light Model 502 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_503(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_503(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_502;

    /* Light Model 501 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_502(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_502(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_501;

    /* Light Model 500 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_501(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_501(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_500;

    /* Light Model 499 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_500(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_500(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_499;

    /* Light Model 442 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_499(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_499(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_442;

    /* Light Model 441 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_442(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_442(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_441;

    /* Light Model 440 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_441(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_441(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_440;

    /* Light Model 439 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_440(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_440(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_439;

    /* Light Model 438 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_439(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_439(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_438;

    /* Light Model 437 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_438(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_438(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_437;

    /* Light Model 436 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_437(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_437(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_436;

    /* Light Model 435 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_436(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_436(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_435;

    /* Light Model 434 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_435(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_435(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_434;

    /* Light Model 433 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_434(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_434(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_433;

    /* Light Model 432 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_433(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_433(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_432;

    /* Light Model 431 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_432(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_432(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_431;

    /* Light Model 430 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_431(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_431(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_430;

    /* Light Model 429 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_430(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_430(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_429;

    /* Light Model 428 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_429(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_429(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_428;

    /* Light Model 427 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_428(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_428(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_427;

    /* Light Model 426 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_427(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_427(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_426;

    /* Light Model 425 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_426(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_426(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_425;

    /* Light Model 424 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_425(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_425(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_424;

    /* Light Model 423 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_424(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_424(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_423;

    /* Light Model 421 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_423(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_423(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_421;

    /* Light Model 420 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_421(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_421(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_420;

    /* Light Model 419 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_420(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_420(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_419;

    /* Light Model 418 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_419(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_419(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_418;

    /* Light Model 416 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_418(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_418(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_416;

    /* Light Model 415 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_416(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_416(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_415;

    /* Light Model 414 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_415(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_415(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_414;

    /* Light Model 413 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_414(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_414(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_413;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_413(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_413(k=31) annotation (HideResult=true);

    equation
      connect(cable_light_L2_1C.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 514 */
      connect(Light_Driver_514.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_514.p, Light_Driver_514.pin_p);
      connect(Light_514.n, GndDC.p);
      connect(Light_Driver_514.hPin_N, GndAC.pin);
      connect(Light_Driver_514.pin_n, GndDC.p);

    /* Light Connections 513 */
      connect(Gain_Light_driver_514.y, Light_514.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_514.u);  connect(Light_Driver_513.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_513.p, Light_Driver_513.pin_p);
      connect(Light_513.n, GndDC.p);
      connect(Light_Driver_513.hPin_N, GndAC.pin);
      connect(Light_Driver_513.pin_n, GndDC.p);

    /* Light Connections 512 */
      connect(Gain_Light_driver_513.y, Light_513.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_513.u);  connect(Light_Driver_512.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_512.p, Light_Driver_512.pin_p);
      connect(Light_512.n, GndDC.p);
      connect(Light_Driver_512.hPin_N, GndAC.pin);
      connect(Light_Driver_512.pin_n, GndDC.p);

    /* Light Connections 511 */
      connect(Gain_Light_driver_512.y, Light_512.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_512.u);  connect(Light_Driver_511.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_511.p, Light_Driver_511.pin_p);
      connect(Light_511.n, GndDC.p);
      connect(Light_Driver_511.hPin_N, GndAC.pin);
      connect(Light_Driver_511.pin_n, GndDC.p);

    /* Light Connections 510 */
      connect(Gain_Light_driver_511.y, Light_511.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_511.u);  connect(Light_Driver_510.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_510.p, Light_Driver_510.pin_p);
      connect(Light_510.n, GndDC.p);
      connect(Light_Driver_510.hPin_N, GndAC.pin);
      connect(Light_Driver_510.pin_n, GndDC.p);

    /* Light Connections 509 */
      connect(Gain_Light_driver_510.y, Light_510.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_510.u);  connect(Light_Driver_509.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_509.p, Light_Driver_509.pin_p);
      connect(Light_509.n, GndDC.p);
      connect(Light_Driver_509.hPin_N, GndAC.pin);
      connect(Light_Driver_509.pin_n, GndDC.p);

    /* Light Connections 508 */
      connect(Gain_Light_driver_509.y, Light_509.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_509.u);  connect(Light_Driver_508.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_508.p, Light_Driver_508.pin_p);
      connect(Light_508.n, GndDC.p);
      connect(Light_Driver_508.hPin_N, GndAC.pin);
      connect(Light_Driver_508.pin_n, GndDC.p);

    /* Light Connections 507 */
      connect(Gain_Light_driver_508.y, Light_508.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_508.u);  connect(Light_Driver_507.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_507.p, Light_Driver_507.pin_p);
      connect(Light_507.n, GndDC.p);
      connect(Light_Driver_507.hPin_N, GndAC.pin);
      connect(Light_Driver_507.pin_n, GndDC.p);

    /* Light Connections 506 */
      connect(Gain_Light_driver_507.y, Light_507.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_507.u);  connect(Light_Driver_506.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_506.p, Light_Driver_506.pin_p);
      connect(Light_506.n, GndDC.p);
      connect(Light_Driver_506.hPin_N, GndAC.pin);
      connect(Light_Driver_506.pin_n, GndDC.p);

    /* Light Connections 505 */
      connect(Gain_Light_driver_506.y, Light_506.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_506.u);  connect(Light_Driver_505.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_505.p, Light_Driver_505.pin_p);
      connect(Light_505.n, GndDC.p);
      connect(Light_Driver_505.hPin_N, GndAC.pin);
      connect(Light_Driver_505.pin_n, GndDC.p);

    /* Light Connections 504 */
      connect(Gain_Light_driver_505.y, Light_505.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_505.u);  connect(Light_Driver_504.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_504.p, Light_Driver_504.pin_p);
      connect(Light_504.n, GndDC.p);
      connect(Light_Driver_504.hPin_N, GndAC.pin);
      connect(Light_Driver_504.pin_n, GndDC.p);

    /* Light Connections 503 */
      connect(Gain_Light_driver_504.y, Light_504.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_504.u);  connect(Light_Driver_503.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_503.p, Light_Driver_503.pin_p);
      connect(Light_503.n, GndDC.p);
      connect(Light_Driver_503.hPin_N, GndAC.pin);
      connect(Light_Driver_503.pin_n, GndDC.p);

    /* Light Connections 502 */
      connect(Gain_Light_driver_503.y, Light_503.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_503.u);  connect(Light_Driver_502.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_502.p, Light_Driver_502.pin_p);
      connect(Light_502.n, GndDC.p);
      connect(Light_Driver_502.hPin_N, GndAC.pin);
      connect(Light_Driver_502.pin_n, GndDC.p);

    /* Light Connections 501 */
      connect(Gain_Light_driver_502.y, Light_502.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_502.u);  connect(Light_Driver_501.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_501.p, Light_Driver_501.pin_p);
      connect(Light_501.n, GndDC.p);
      connect(Light_Driver_501.hPin_N, GndAC.pin);
      connect(Light_Driver_501.pin_n, GndDC.p);

    /* Light Connections 500 */
      connect(Gain_Light_driver_501.y, Light_501.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_501.u);  connect(Light_Driver_500.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_500.p, Light_Driver_500.pin_p);
      connect(Light_500.n, GndDC.p);
      connect(Light_Driver_500.hPin_N, GndAC.pin);
      connect(Light_Driver_500.pin_n, GndDC.p);

    /* Light Connections 499 */
      connect(Gain_Light_driver_500.y, Light_500.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_500.u);  connect(Light_Driver_499.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_499.p, Light_Driver_499.pin_p);
      connect(Light_499.n, GndDC.p);
      connect(Light_Driver_499.hPin_N, GndAC.pin);
      connect(Light_Driver_499.pin_n, GndDC.p);

    /* Light Connections 442 */
      connect(Gain_Light_driver_499.y, Light_499.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_499.u);  connect(Light_Driver_442.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_442.p, Light_Driver_442.pin_p);
      connect(Light_442.n, GndDC.p);
      connect(Light_Driver_442.hPin_N, GndAC.pin);
      connect(Light_Driver_442.pin_n, GndDC.p);

    /* Light Connections 441 */
      connect(Gain_Light_driver_442.y, Light_442.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_442.u);  connect(Light_Driver_441.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_441.p, Light_Driver_441.pin_p);
      connect(Light_441.n, GndDC.p);
      connect(Light_Driver_441.hPin_N, GndAC.pin);
      connect(Light_Driver_441.pin_n, GndDC.p);

    /* Light Connections 440 */
      connect(Gain_Light_driver_441.y, Light_441.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_441.u);  connect(Light_Driver_440.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_440.p, Light_Driver_440.pin_p);
      connect(Light_440.n, GndDC.p);
      connect(Light_Driver_440.hPin_N, GndAC.pin);
      connect(Light_Driver_440.pin_n, GndDC.p);

    /* Light Connections 439 */
      connect(Gain_Light_driver_440.y, Light_440.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_440.u);  connect(Light_Driver_439.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_439.p, Light_Driver_439.pin_p);
      connect(Light_439.n, GndDC.p);
      connect(Light_Driver_439.hPin_N, GndAC.pin);
      connect(Light_Driver_439.pin_n, GndDC.p);

    /* Light Connections 438 */
      connect(Gain_Light_driver_439.y, Light_439.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_439.u);  connect(Light_Driver_438.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_438.p, Light_Driver_438.pin_p);
      connect(Light_438.n, GndDC.p);
      connect(Light_Driver_438.hPin_N, GndAC.pin);
      connect(Light_Driver_438.pin_n, GndDC.p);

    /* Light Connections 437 */
      connect(Gain_Light_driver_438.y, Light_438.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_438.u);  connect(Light_Driver_437.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_437.p, Light_Driver_437.pin_p);
      connect(Light_437.n, GndDC.p);
      connect(Light_Driver_437.hPin_N, GndAC.pin);
      connect(Light_Driver_437.pin_n, GndDC.p);

    /* Light Connections 436 */
      connect(Gain_Light_driver_437.y, Light_437.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_437.u);  connect(Light_Driver_436.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_436.p, Light_Driver_436.pin_p);
      connect(Light_436.n, GndDC.p);
      connect(Light_Driver_436.hPin_N, GndAC.pin);
      connect(Light_Driver_436.pin_n, GndDC.p);

    /* Light Connections 435 */
      connect(Gain_Light_driver_436.y, Light_436.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_436.u);  connect(Light_Driver_435.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_435.p, Light_Driver_435.pin_p);
      connect(Light_435.n, GndDC.p);
      connect(Light_Driver_435.hPin_N, GndAC.pin);
      connect(Light_Driver_435.pin_n, GndDC.p);

    /* Light Connections 434 */
      connect(Gain_Light_driver_435.y, Light_435.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_435.u);  connect(Light_Driver_434.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_434.p, Light_Driver_434.pin_p);
      connect(Light_434.n, GndDC.p);
      connect(Light_Driver_434.hPin_N, GndAC.pin);
      connect(Light_Driver_434.pin_n, GndDC.p);

    /* Light Connections 433 */
      connect(Gain_Light_driver_434.y, Light_434.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_434.u);  connect(Light_Driver_433.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_433.p, Light_Driver_433.pin_p);
      connect(Light_433.n, GndDC.p);
      connect(Light_Driver_433.hPin_N, GndAC.pin);
      connect(Light_Driver_433.pin_n, GndDC.p);

    /* Light Connections 432 */
      connect(Gain_Light_driver_433.y, Light_433.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_433.u);  connect(Light_Driver_432.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_432.p, Light_Driver_432.pin_p);
      connect(Light_432.n, GndDC.p);
      connect(Light_Driver_432.hPin_N, GndAC.pin);
      connect(Light_Driver_432.pin_n, GndDC.p);

    /* Light Connections 431 */
      connect(Gain_Light_driver_432.y, Light_432.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_432.u);  connect(Light_Driver_431.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_431.p, Light_Driver_431.pin_p);
      connect(Light_431.n, GndDC.p);
      connect(Light_Driver_431.hPin_N, GndAC.pin);
      connect(Light_Driver_431.pin_n, GndDC.p);

    /* Light Connections 430 */
      connect(Gain_Light_driver_431.y, Light_431.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_431.u);  connect(Light_Driver_430.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_430.p, Light_Driver_430.pin_p);
      connect(Light_430.n, GndDC.p);
      connect(Light_Driver_430.hPin_N, GndAC.pin);
      connect(Light_Driver_430.pin_n, GndDC.p);

    /* Light Connections 429 */
      connect(Gain_Light_driver_430.y, Light_430.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_430.u);  connect(Light_Driver_429.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_429.p, Light_Driver_429.pin_p);
      connect(Light_429.n, GndDC.p);
      connect(Light_Driver_429.hPin_N, GndAC.pin);
      connect(Light_Driver_429.pin_n, GndDC.p);

    /* Light Connections 428 */
      connect(Gain_Light_driver_429.y, Light_429.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_429.u);  connect(Light_Driver_428.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_428.p, Light_Driver_428.pin_p);
      connect(Light_428.n, GndDC.p);
      connect(Light_Driver_428.hPin_N, GndAC.pin);
      connect(Light_Driver_428.pin_n, GndDC.p);

    /* Light Connections 427 */
      connect(Gain_Light_driver_428.y, Light_428.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_428.u);  connect(Light_Driver_427.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_427.p, Light_Driver_427.pin_p);
      connect(Light_427.n, GndDC.p);
      connect(Light_Driver_427.hPin_N, GndAC.pin);
      connect(Light_Driver_427.pin_n, GndDC.p);

    /* Light Connections 426 */
      connect(Gain_Light_driver_427.y, Light_427.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_427.u);  connect(Light_Driver_426.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_426.p, Light_Driver_426.pin_p);
      connect(Light_426.n, GndDC.p);
      connect(Light_Driver_426.hPin_N, GndAC.pin);
      connect(Light_Driver_426.pin_n, GndDC.p);

    /* Light Connections 425 */
      connect(Gain_Light_driver_426.y, Light_426.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_426.u);  connect(Light_Driver_425.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_425.p, Light_Driver_425.pin_p);
      connect(Light_425.n, GndDC.p);
      connect(Light_Driver_425.hPin_N, GndAC.pin);
      connect(Light_Driver_425.pin_n, GndDC.p);

    /* Light Connections 424 */
      connect(Gain_Light_driver_425.y, Light_425.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_425.u);  connect(Light_Driver_424.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_424.p, Light_Driver_424.pin_p);
      connect(Light_424.n, GndDC.p);
      connect(Light_Driver_424.hPin_N, GndAC.pin);
      connect(Light_Driver_424.pin_n, GndDC.p);

    /* Light Connections 423 */
      connect(Gain_Light_driver_424.y, Light_424.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_424.u);  connect(Light_Driver_423.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_423.p, Light_Driver_423.pin_p);
      connect(Light_423.n, GndDC.p);
      connect(Light_Driver_423.hPin_N, GndAC.pin);
      connect(Light_Driver_423.pin_n, GndDC.p);

    /* Light Connections 421 */
      connect(Gain_Light_driver_423.y, Light_423.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_423.u);  connect(Light_Driver_421.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_421.p, Light_Driver_421.pin_p);
      connect(Light_421.n, GndDC.p);
      connect(Light_Driver_421.hPin_N, GndAC.pin);
      connect(Light_Driver_421.pin_n, GndDC.p);

    /* Light Connections 420 */
      connect(Gain_Light_driver_421.y, Light_421.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_421.u);  connect(Light_Driver_420.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_420.p, Light_Driver_420.pin_p);
      connect(Light_420.n, GndDC.p);
      connect(Light_Driver_420.hPin_N, GndAC.pin);
      connect(Light_Driver_420.pin_n, GndDC.p);

    /* Light Connections 419 */
      connect(Gain_Light_driver_420.y, Light_420.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_420.u);  connect(Light_Driver_419.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_419.p, Light_Driver_419.pin_p);
      connect(Light_419.n, GndDC.p);
      connect(Light_Driver_419.hPin_N, GndAC.pin);
      connect(Light_Driver_419.pin_n, GndDC.p);

    /* Light Connections 418 */
      connect(Gain_Light_driver_419.y, Light_419.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_419.u);  connect(Light_Driver_418.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_418.p, Light_Driver_418.pin_p);
      connect(Light_418.n, GndDC.p);
      connect(Light_Driver_418.hPin_N, GndAC.pin);
      connect(Light_Driver_418.pin_n, GndDC.p);

    /* Light Connections 416 */
      connect(Gain_Light_driver_418.y, Light_418.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_418.u);  connect(Light_Driver_416.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_416.p, Light_Driver_416.pin_p);
      connect(Light_416.n, GndDC.p);
      connect(Light_Driver_416.hPin_N, GndAC.pin);
      connect(Light_Driver_416.pin_n, GndDC.p);

    /* Light Connections 415 */
      connect(Gain_Light_driver_416.y, Light_416.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_416.u);  connect(Light_Driver_415.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_415.p, Light_Driver_415.pin_p);
      connect(Light_415.n, GndDC.p);
      connect(Light_Driver_415.hPin_N, GndAC.pin);
      connect(Light_Driver_415.pin_n, GndDC.p);

    /* Light Connections 414 */
      connect(Gain_Light_driver_415.y, Light_415.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_415.u);  connect(Light_Driver_414.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_414.p, Light_Driver_414.pin_p);
      connect(Light_414.n, GndDC.p);
      connect(Light_Driver_414.hPin_N, GndAC.pin);
      connect(Light_Driver_414.pin_n, GndDC.p);

    /* Light Connections 413 */
      connect(Gain_Light_driver_414.y, Light_414.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_414.u);  connect(Light_Driver_413.hPin_L,  cable_light_L2_1C.pin_p);
      connect(Light_413.p, Light_Driver_413.pin_p);
      connect(Light_413.n, GndDC.p);
      connect(Light_Driver_413.hPin_N, GndAC.pin);
      connect(Light_Driver_413.pin_n, GndDC.p);

      connect(Gain_Light_driver_413.y, Light_413.u);
      connect(combiTimeTable_L2_Zn2_Lights.y[1], Gain_Light_driver_413.u);

      annotation ();
    end Light_Panel_L2_1C;

    model Light_Panel_L2_1B
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L2_1B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            67)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Core_Lights(
        tableOnFile=true,
        tableName="L2-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn1_Lights(
        tableOnFile=true,
        tableName="L2-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn2_Lights(
        tableOnFile=true,
        tableName="L2-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn3_Lights(
        tableOnFile=true,
        tableName="L2-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn4_Lights(
        tableOnFile=true,
        tableName="L2-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 498 */
      HPF.DC.Variable_DC_Load Light_498;

    /* Light Model 497 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_498(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_498(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_497;

    /* Light Model 496 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_497(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_497(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_496;

    /* Light Model 495 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_496(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_496(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_495;

    /* Light Model 494 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_495(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_495(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_494;

    /* Light Model 493 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_494(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_494(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_493;

    /* Light Model 492 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_493(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_493(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_492;

    /* Light Model 491 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_492(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_492(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_491;

    /* Light Model 490 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_491(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_491(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_490;

    /* Light Model 489 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_490(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_490(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_489;

    /* Light Model 488 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_489(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_489(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_488;

    /* Light Model 487 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_488(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_488(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_487;

    /* Light Model 486 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_487(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_487(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_486;

    /* Light Model 485 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_486(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_486(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_485;

    /* Light Model 484 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_485(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_485(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_484;

    /* Light Model 483 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_484(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_484(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_483;

    /* Light Model 482 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_483(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_483(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_482;

    /* Light Model 481 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_482(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_482(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_481;

    /* Light Model 480 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_481(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_481(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_480;

    /* Light Model 479 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_480(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_480(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_479;

    /* Light Model 478 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_479(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_479(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_478;

    /* Light Model 477 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_478(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_478(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_477;

    /* Light Model 476 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_477(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_477(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_476;

    /* Light Model 475 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_476(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_476(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_475;

    /* Light Model 474 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_475(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_475(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_474;

    /* Light Model 473 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_474(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_474(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_473;

    /* Light Model 472 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_473(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_473(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_472;

    /* Light Model 471 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_472(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_472(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_471;

    /* Light Model 470 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_471(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_471(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_470;

    /* Light Model 469 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_470(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_470(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_469;

    /* Light Model 468 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_469(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_469(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_468;

    /* Light Model 467 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_468(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_468(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_467;

    /* Light Model 452 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_467(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_467(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_452;

    /* Light Model 451 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_452(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_452(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_451;

    /* Light Model 450 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_451(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_451(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_450;

    /* Light Model 449 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_450(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_450(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_449;

    /* Light Model 448 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_449(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_449(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_448;

    /* Light Model 447 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_448(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_448(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_447;

    /* Light Model 446 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_447(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_447(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_446;

    /* Light Model 445 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_446(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_446(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_445;

    /* Light Model 444 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_445(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_445(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_444;

    /* Light Model 443 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_444(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_444(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_443;

    /* Light Model 352 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_443(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_443(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_352;

    /* Light Model 346 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_352(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_352(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_346;

    /* Light Model 343 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_346(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_346(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_343;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_343(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_343(k=22) annotation (HideResult=true);

    equation
      connect(cable_light_L2_1B.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 498 */
      connect(Light_Driver_498.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_498.p, Light_Driver_498.pin_p);
      connect(Light_498.n, GndDC.p);
      connect(Light_Driver_498.hPin_N, GndAC.pin);
      connect(Light_Driver_498.pin_n, GndDC.p);

    /* Light Connections 497 */
      connect(Gain_Light_driver_498.y, Light_498.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_498.u);  connect(Light_Driver_497.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_497.p, Light_Driver_497.pin_p);
      connect(Light_497.n, GndDC.p);
      connect(Light_Driver_497.hPin_N, GndAC.pin);
      connect(Light_Driver_497.pin_n, GndDC.p);

    /* Light Connections 496 */
      connect(Gain_Light_driver_497.y, Light_497.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_497.u);  connect(Light_Driver_496.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_496.p, Light_Driver_496.pin_p);
      connect(Light_496.n, GndDC.p);
      connect(Light_Driver_496.hPin_N, GndAC.pin);
      connect(Light_Driver_496.pin_n, GndDC.p);

    /* Light Connections 495 */
      connect(Gain_Light_driver_496.y, Light_496.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_496.u);  connect(Light_Driver_495.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_495.p, Light_Driver_495.pin_p);
      connect(Light_495.n, GndDC.p);
      connect(Light_Driver_495.hPin_N, GndAC.pin);
      connect(Light_Driver_495.pin_n, GndDC.p);

    /* Light Connections 494 */
      connect(Gain_Light_driver_495.y, Light_495.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_495.u);  connect(Light_Driver_494.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_494.p, Light_Driver_494.pin_p);
      connect(Light_494.n, GndDC.p);
      connect(Light_Driver_494.hPin_N, GndAC.pin);
      connect(Light_Driver_494.pin_n, GndDC.p);

    /* Light Connections 493 */
      connect(Gain_Light_driver_494.y, Light_494.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_494.u);  connect(Light_Driver_493.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_493.p, Light_Driver_493.pin_p);
      connect(Light_493.n, GndDC.p);
      connect(Light_Driver_493.hPin_N, GndAC.pin);
      connect(Light_Driver_493.pin_n, GndDC.p);

    /* Light Connections 492 */
      connect(Gain_Light_driver_493.y, Light_493.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_493.u);  connect(Light_Driver_492.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_492.p, Light_Driver_492.pin_p);
      connect(Light_492.n, GndDC.p);
      connect(Light_Driver_492.hPin_N, GndAC.pin);
      connect(Light_Driver_492.pin_n, GndDC.p);

    /* Light Connections 491 */
      connect(Gain_Light_driver_492.y, Light_492.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_492.u);  connect(Light_Driver_491.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_491.p, Light_Driver_491.pin_p);
      connect(Light_491.n, GndDC.p);
      connect(Light_Driver_491.hPin_N, GndAC.pin);
      connect(Light_Driver_491.pin_n, GndDC.p);

    /* Light Connections 490 */
      connect(Gain_Light_driver_491.y, Light_491.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_491.u);  connect(Light_Driver_490.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_490.p, Light_Driver_490.pin_p);
      connect(Light_490.n, GndDC.p);
      connect(Light_Driver_490.hPin_N, GndAC.pin);
      connect(Light_Driver_490.pin_n, GndDC.p);

    /* Light Connections 489 */
      connect(Gain_Light_driver_490.y, Light_490.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_490.u);  connect(Light_Driver_489.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_489.p, Light_Driver_489.pin_p);
      connect(Light_489.n, GndDC.p);
      connect(Light_Driver_489.hPin_N, GndAC.pin);
      connect(Light_Driver_489.pin_n, GndDC.p);

    /* Light Connections 488 */
      connect(Gain_Light_driver_489.y, Light_489.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_489.u);  connect(Light_Driver_488.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_488.p, Light_Driver_488.pin_p);
      connect(Light_488.n, GndDC.p);
      connect(Light_Driver_488.hPin_N, GndAC.pin);
      connect(Light_Driver_488.pin_n, GndDC.p);

    /* Light Connections 487 */
      connect(Gain_Light_driver_488.y, Light_488.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_488.u);  connect(Light_Driver_487.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_487.p, Light_Driver_487.pin_p);
      connect(Light_487.n, GndDC.p);
      connect(Light_Driver_487.hPin_N, GndAC.pin);
      connect(Light_Driver_487.pin_n, GndDC.p);

    /* Light Connections 486 */
      connect(Gain_Light_driver_487.y, Light_487.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_487.u);  connect(Light_Driver_486.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_486.p, Light_Driver_486.pin_p);
      connect(Light_486.n, GndDC.p);
      connect(Light_Driver_486.hPin_N, GndAC.pin);
      connect(Light_Driver_486.pin_n, GndDC.p);

    /* Light Connections 485 */
      connect(Gain_Light_driver_486.y, Light_486.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_486.u);  connect(Light_Driver_485.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_485.p, Light_Driver_485.pin_p);
      connect(Light_485.n, GndDC.p);
      connect(Light_Driver_485.hPin_N, GndAC.pin);
      connect(Light_Driver_485.pin_n, GndDC.p);

    /* Light Connections 484 */
      connect(Gain_Light_driver_485.y, Light_485.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_485.u);  connect(Light_Driver_484.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_484.p, Light_Driver_484.pin_p);
      connect(Light_484.n, GndDC.p);
      connect(Light_Driver_484.hPin_N, GndAC.pin);
      connect(Light_Driver_484.pin_n, GndDC.p);

    /* Light Connections 483 */
      connect(Gain_Light_driver_484.y, Light_484.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_484.u);  connect(Light_Driver_483.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_483.p, Light_Driver_483.pin_p);
      connect(Light_483.n, GndDC.p);
      connect(Light_Driver_483.hPin_N, GndAC.pin);
      connect(Light_Driver_483.pin_n, GndDC.p);

    /* Light Connections 482 */
      connect(Gain_Light_driver_483.y, Light_483.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_483.u);  connect(Light_Driver_482.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_482.p, Light_Driver_482.pin_p);
      connect(Light_482.n, GndDC.p);
      connect(Light_Driver_482.hPin_N, GndAC.pin);
      connect(Light_Driver_482.pin_n, GndDC.p);

    /* Light Connections 481 */
      connect(Gain_Light_driver_482.y, Light_482.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_482.u);  connect(Light_Driver_481.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_481.p, Light_Driver_481.pin_p);
      connect(Light_481.n, GndDC.p);
      connect(Light_Driver_481.hPin_N, GndAC.pin);
      connect(Light_Driver_481.pin_n, GndDC.p);

    /* Light Connections 480 */
      connect(Gain_Light_driver_481.y, Light_481.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_481.u);  connect(Light_Driver_480.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_480.p, Light_Driver_480.pin_p);
      connect(Light_480.n, GndDC.p);
      connect(Light_Driver_480.hPin_N, GndAC.pin);
      connect(Light_Driver_480.pin_n, GndDC.p);

    /* Light Connections 479 */
      connect(Gain_Light_driver_480.y, Light_480.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_480.u);  connect(Light_Driver_479.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_479.p, Light_Driver_479.pin_p);
      connect(Light_479.n, GndDC.p);
      connect(Light_Driver_479.hPin_N, GndAC.pin);
      connect(Light_Driver_479.pin_n, GndDC.p);

    /* Light Connections 478 */
      connect(Gain_Light_driver_479.y, Light_479.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_479.u);  connect(Light_Driver_478.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_478.p, Light_Driver_478.pin_p);
      connect(Light_478.n, GndDC.p);
      connect(Light_Driver_478.hPin_N, GndAC.pin);
      connect(Light_Driver_478.pin_n, GndDC.p);

    /* Light Connections 477 */
      connect(Gain_Light_driver_478.y, Light_478.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_478.u);  connect(Light_Driver_477.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_477.p, Light_Driver_477.pin_p);
      connect(Light_477.n, GndDC.p);
      connect(Light_Driver_477.hPin_N, GndAC.pin);
      connect(Light_Driver_477.pin_n, GndDC.p);

    /* Light Connections 476 */
      connect(Gain_Light_driver_477.y, Light_477.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_477.u);  connect(Light_Driver_476.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_476.p, Light_Driver_476.pin_p);
      connect(Light_476.n, GndDC.p);
      connect(Light_Driver_476.hPin_N, GndAC.pin);
      connect(Light_Driver_476.pin_n, GndDC.p);

    /* Light Connections 475 */
      connect(Gain_Light_driver_476.y, Light_476.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_476.u);  connect(Light_Driver_475.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_475.p, Light_Driver_475.pin_p);
      connect(Light_475.n, GndDC.p);
      connect(Light_Driver_475.hPin_N, GndAC.pin);
      connect(Light_Driver_475.pin_n, GndDC.p);

    /* Light Connections 474 */
      connect(Gain_Light_driver_475.y, Light_475.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_475.u);  connect(Light_Driver_474.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_474.p, Light_Driver_474.pin_p);
      connect(Light_474.n, GndDC.p);
      connect(Light_Driver_474.hPin_N, GndAC.pin);
      connect(Light_Driver_474.pin_n, GndDC.p);

    /* Light Connections 473 */
      connect(Gain_Light_driver_474.y, Light_474.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_474.u);  connect(Light_Driver_473.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_473.p, Light_Driver_473.pin_p);
      connect(Light_473.n, GndDC.p);
      connect(Light_Driver_473.hPin_N, GndAC.pin);
      connect(Light_Driver_473.pin_n, GndDC.p);

    /* Light Connections 472 */
      connect(Gain_Light_driver_473.y, Light_473.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_473.u);  connect(Light_Driver_472.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_472.p, Light_Driver_472.pin_p);
      connect(Light_472.n, GndDC.p);
      connect(Light_Driver_472.hPin_N, GndAC.pin);
      connect(Light_Driver_472.pin_n, GndDC.p);

    /* Light Connections 471 */
      connect(Gain_Light_driver_472.y, Light_472.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_472.u);  connect(Light_Driver_471.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_471.p, Light_Driver_471.pin_p);
      connect(Light_471.n, GndDC.p);
      connect(Light_Driver_471.hPin_N, GndAC.pin);
      connect(Light_Driver_471.pin_n, GndDC.p);

    /* Light Connections 470 */
      connect(Gain_Light_driver_471.y, Light_471.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_471.u);  connect(Light_Driver_470.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_470.p, Light_Driver_470.pin_p);
      connect(Light_470.n, GndDC.p);
      connect(Light_Driver_470.hPin_N, GndAC.pin);
      connect(Light_Driver_470.pin_n, GndDC.p);

    /* Light Connections 469 */
      connect(Gain_Light_driver_470.y, Light_470.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_470.u);  connect(Light_Driver_469.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_469.p, Light_Driver_469.pin_p);
      connect(Light_469.n, GndDC.p);
      connect(Light_Driver_469.hPin_N, GndAC.pin);
      connect(Light_Driver_469.pin_n, GndDC.p);

    /* Light Connections 468 */
      connect(Gain_Light_driver_469.y, Light_469.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_469.u);  connect(Light_Driver_468.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_468.p, Light_Driver_468.pin_p);
      connect(Light_468.n, GndDC.p);
      connect(Light_Driver_468.hPin_N, GndAC.pin);
      connect(Light_Driver_468.pin_n, GndDC.p);

    /* Light Connections 467 */
      connect(Gain_Light_driver_468.y, Light_468.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_468.u);  connect(Light_Driver_467.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_467.p, Light_Driver_467.pin_p);
      connect(Light_467.n, GndDC.p);
      connect(Light_Driver_467.hPin_N, GndAC.pin);
      connect(Light_Driver_467.pin_n, GndDC.p);

    /* Light Connections 452 */
      connect(Gain_Light_driver_467.y, Light_467.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_467.u);  connect(Light_Driver_452.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_452.p, Light_Driver_452.pin_p);
      connect(Light_452.n, GndDC.p);
      connect(Light_Driver_452.hPin_N, GndAC.pin);
      connect(Light_Driver_452.pin_n, GndDC.p);

    /* Light Connections 451 */
      connect(Gain_Light_driver_452.y, Light_452.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_452.u);  connect(Light_Driver_451.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_451.p, Light_Driver_451.pin_p);
      connect(Light_451.n, GndDC.p);
      connect(Light_Driver_451.hPin_N, GndAC.pin);
      connect(Light_Driver_451.pin_n, GndDC.p);

    /* Light Connections 450 */
      connect(Gain_Light_driver_451.y, Light_451.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_451.u);  connect(Light_Driver_450.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_450.p, Light_Driver_450.pin_p);
      connect(Light_450.n, GndDC.p);
      connect(Light_Driver_450.hPin_N, GndAC.pin);
      connect(Light_Driver_450.pin_n, GndDC.p);

    /* Light Connections 449 */
      connect(Gain_Light_driver_450.y, Light_450.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_450.u);  connect(Light_Driver_449.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_449.p, Light_Driver_449.pin_p);
      connect(Light_449.n, GndDC.p);
      connect(Light_Driver_449.hPin_N, GndAC.pin);
      connect(Light_Driver_449.pin_n, GndDC.p);

    /* Light Connections 448 */
      connect(Gain_Light_driver_449.y, Light_449.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_449.u);  connect(Light_Driver_448.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_448.p, Light_Driver_448.pin_p);
      connect(Light_448.n, GndDC.p);
      connect(Light_Driver_448.hPin_N, GndAC.pin);
      connect(Light_Driver_448.pin_n, GndDC.p);

    /* Light Connections 447 */
      connect(Gain_Light_driver_448.y, Light_448.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_448.u);  connect(Light_Driver_447.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_447.p, Light_Driver_447.pin_p);
      connect(Light_447.n, GndDC.p);
      connect(Light_Driver_447.hPin_N, GndAC.pin);
      connect(Light_Driver_447.pin_n, GndDC.p);

    /* Light Connections 446 */
      connect(Gain_Light_driver_447.y, Light_447.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_447.u);  connect(Light_Driver_446.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_446.p, Light_Driver_446.pin_p);
      connect(Light_446.n, GndDC.p);
      connect(Light_Driver_446.hPin_N, GndAC.pin);
      connect(Light_Driver_446.pin_n, GndDC.p);

    /* Light Connections 445 */
      connect(Gain_Light_driver_446.y, Light_446.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_446.u);  connect(Light_Driver_445.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_445.p, Light_Driver_445.pin_p);
      connect(Light_445.n, GndDC.p);
      connect(Light_Driver_445.hPin_N, GndAC.pin);
      connect(Light_Driver_445.pin_n, GndDC.p);

    /* Light Connections 444 */
      connect(Gain_Light_driver_445.y, Light_445.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_445.u);  connect(Light_Driver_444.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_444.p, Light_Driver_444.pin_p);
      connect(Light_444.n, GndDC.p);
      connect(Light_Driver_444.hPin_N, GndAC.pin);
      connect(Light_Driver_444.pin_n, GndDC.p);

    /* Light Connections 443 */
      connect(Gain_Light_driver_444.y, Light_444.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_444.u);  connect(Light_Driver_443.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_443.p, Light_Driver_443.pin_p);
      connect(Light_443.n, GndDC.p);
      connect(Light_Driver_443.hPin_N, GndAC.pin);
      connect(Light_Driver_443.pin_n, GndDC.p);

    /* Light Connections 352 */
      connect(Gain_Light_driver_443.y, Light_443.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_443.u);  connect(Light_Driver_352.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_352.p, Light_Driver_352.pin_p);
      connect(Light_352.n, GndDC.p);
      connect(Light_Driver_352.hPin_N, GndAC.pin);
      connect(Light_Driver_352.pin_n, GndDC.p);

    /* Light Connections 346 */
      connect(Gain_Light_driver_352.y, Light_352.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_352.u);  connect(Light_Driver_346.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_346.p, Light_Driver_346.pin_p);
      connect(Light_346.n, GndDC.p);
      connect(Light_Driver_346.hPin_N, GndAC.pin);
      connect(Light_Driver_346.pin_n, GndDC.p);

    /* Light Connections 343 */
      connect(Gain_Light_driver_346.y, Light_346.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_346.u);  connect(Light_Driver_343.hPin_L,  cable_light_L2_1B.pin_p);
      connect(Light_343.p, Light_Driver_343.pin_p);
      connect(Light_343.n, GndDC.p);
      connect(Light_Driver_343.hPin_N, GndAC.pin);
      connect(Light_Driver_343.pin_n, GndDC.p);

      connect(Gain_Light_driver_343.y, Light_343.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_343.u);

      annotation ();
    end Light_Panel_L2_1B;

    model Light_Panel_L2_1A
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L2_1A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            76)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Core_Lights(
        tableOnFile=true,
        tableName="L2-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn1_Lights(
        tableOnFile=true,
        tableName="L2-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn2_Lights(
        tableOnFile=true,
        tableName="L2-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn3_Lights(
        tableOnFile=true,
        tableName="L2-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Zn4_Lights(
        tableOnFile=true,
        tableName="L2-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 542 */
      HPF.DC.Variable_DC_Load Light_542;

    /* Light Model 541 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_542(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_542(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_541;

    /* Light Model 540 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_541(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_541(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_540;

    /* Light Model 539 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_540(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_540(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_539;

    /* Light Model 538 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_539(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_539(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_538;

    /* Light Model 537 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_538(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_538(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_537;

    /* Light Model 536 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_537(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_537(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_536;

    /* Light Model 535 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_536(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_536(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_535;

    /* Light Model 533 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_535(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_535(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_533;

    /* Light Model 532 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_533(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_533(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_532;

    /* Light Model 531 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_532(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_532(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_531;

    /* Light Model 530 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_531(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_531(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_530;

    /* Light Model 528 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_530(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_530(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_528;

    /* Light Model 527 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_528(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_528(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_527;

    /* Light Model 526 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_527(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_527(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_526;

    /* Light Model 525 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_526(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_526(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_525;

    /* Light Model 466 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_525(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_525(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_466;

    /* Light Model 465 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_466(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_466(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_465;

    /* Light Model 464 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_465(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_465(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_464;

    /* Light Model 463 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_464(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_464(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_463;

    /* Light Model 462 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_463(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_463(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_462;

    /* Light Model 461 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_462(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_462(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_461;

    /* Light Model 460 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_461(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_461(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_460;

    /* Light Model 459 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_460(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_460(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_459;

    /* Light Model 458 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_459(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_459(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_458;

    /* Light Model 457 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_458(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_458(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_457;

    /* Light Model 456 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_457(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_457(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_456;

    /* Light Model 455 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_456(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_456(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_455;

    /* Light Model 454 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_455(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_455(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_454;

    /* Light Model 453 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_454(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_454(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_453;

    /* Light Model 327 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_453(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_453(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_327;

    /* Light Model 326 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_327(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_327(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_326;

    /* Light Model 325 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_326(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_326(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_325;

    /* Light Model 324 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_325(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_325(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_324;

    /* Light Model 323 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_324(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_324(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_323;

    /* Light Model 322 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_323(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_323(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_322;

    /* Light Model 321 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_322(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_322(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_321;

    /* Light Model 320 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_321(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_321(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_320;

    /* Light Model 319 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_320(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_320(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_319;

    /* Light Model 318 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_319(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_319(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_318;

    /* Light Model 317 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_318(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_318(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_317;

    /* Light Model 310 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_317(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_317(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_310;

    /* Light Model 309 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_310(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_310(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_309;

    /* Light Model 308 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_309(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_309(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_308;

    /* Light Model 307 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_308(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_308(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_307;

    /* Light Model 302 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_307(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_307(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_302;

    /* Light Model 299 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_302(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_302(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_299;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_299(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_299(k=35) annotation (HideResult=true);

    equation
      connect(cable_light_L2_1A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 542 */
      connect(Light_Driver_542.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_542.p, Light_Driver_542.pin_p);
      connect(Light_542.n, GndDC.p);
      connect(Light_Driver_542.hPin_N, GndAC.pin);
      connect(Light_Driver_542.pin_n, GndDC.p);

    /* Light Connections 541 */
      connect(Gain_Light_driver_542.y, Light_542.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_542.u);  connect(Light_Driver_541.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_541.p, Light_Driver_541.pin_p);
      connect(Light_541.n, GndDC.p);
      connect(Light_Driver_541.hPin_N, GndAC.pin);
      connect(Light_Driver_541.pin_n, GndDC.p);

    /* Light Connections 540 */
      connect(Gain_Light_driver_541.y, Light_541.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_541.u);  connect(Light_Driver_540.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_540.p, Light_Driver_540.pin_p);
      connect(Light_540.n, GndDC.p);
      connect(Light_Driver_540.hPin_N, GndAC.pin);
      connect(Light_Driver_540.pin_n, GndDC.p);

    /* Light Connections 539 */
      connect(Gain_Light_driver_540.y, Light_540.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_540.u);  connect(Light_Driver_539.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_539.p, Light_Driver_539.pin_p);
      connect(Light_539.n, GndDC.p);
      connect(Light_Driver_539.hPin_N, GndAC.pin);
      connect(Light_Driver_539.pin_n, GndDC.p);

    /* Light Connections 538 */
      connect(Gain_Light_driver_539.y, Light_539.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_539.u);  connect(Light_Driver_538.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_538.p, Light_Driver_538.pin_p);
      connect(Light_538.n, GndDC.p);
      connect(Light_Driver_538.hPin_N, GndAC.pin);
      connect(Light_Driver_538.pin_n, GndDC.p);

    /* Light Connections 537 */
      connect(Gain_Light_driver_538.y, Light_538.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_538.u);  connect(Light_Driver_537.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_537.p, Light_Driver_537.pin_p);
      connect(Light_537.n, GndDC.p);
      connect(Light_Driver_537.hPin_N, GndAC.pin);
      connect(Light_Driver_537.pin_n, GndDC.p);

    /* Light Connections 536 */
      connect(Gain_Light_driver_537.y, Light_537.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_537.u);  connect(Light_Driver_536.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_536.p, Light_Driver_536.pin_p);
      connect(Light_536.n, GndDC.p);
      connect(Light_Driver_536.hPin_N, GndAC.pin);
      connect(Light_Driver_536.pin_n, GndDC.p);

    /* Light Connections 535 */
      connect(Gain_Light_driver_536.y, Light_536.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_536.u);  connect(Light_Driver_535.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_535.p, Light_Driver_535.pin_p);
      connect(Light_535.n, GndDC.p);
      connect(Light_Driver_535.hPin_N, GndAC.pin);
      connect(Light_Driver_535.pin_n, GndDC.p);

    /* Light Connections 533 */
      connect(Gain_Light_driver_535.y, Light_535.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_535.u);  connect(Light_Driver_533.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_533.p, Light_Driver_533.pin_p);
      connect(Light_533.n, GndDC.p);
      connect(Light_Driver_533.hPin_N, GndAC.pin);
      connect(Light_Driver_533.pin_n, GndDC.p);

    /* Light Connections 532 */
      connect(Gain_Light_driver_533.y, Light_533.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_533.u);  connect(Light_Driver_532.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_532.p, Light_Driver_532.pin_p);
      connect(Light_532.n, GndDC.p);
      connect(Light_Driver_532.hPin_N, GndAC.pin);
      connect(Light_Driver_532.pin_n, GndDC.p);

    /* Light Connections 531 */
      connect(Gain_Light_driver_532.y, Light_532.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_532.u);  connect(Light_Driver_531.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_531.p, Light_Driver_531.pin_p);
      connect(Light_531.n, GndDC.p);
      connect(Light_Driver_531.hPin_N, GndAC.pin);
      connect(Light_Driver_531.pin_n, GndDC.p);

    /* Light Connections 530 */
      connect(Gain_Light_driver_531.y, Light_531.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_531.u);  connect(Light_Driver_530.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_530.p, Light_Driver_530.pin_p);
      connect(Light_530.n, GndDC.p);
      connect(Light_Driver_530.hPin_N, GndAC.pin);
      connect(Light_Driver_530.pin_n, GndDC.p);

    /* Light Connections 528 */
      connect(Gain_Light_driver_530.y, Light_530.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_530.u);  connect(Light_Driver_528.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_528.p, Light_Driver_528.pin_p);
      connect(Light_528.n, GndDC.p);
      connect(Light_Driver_528.hPin_N, GndAC.pin);
      connect(Light_Driver_528.pin_n, GndDC.p);

    /* Light Connections 527 */
      connect(Gain_Light_driver_528.y, Light_528.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_528.u);  connect(Light_Driver_527.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_527.p, Light_Driver_527.pin_p);
      connect(Light_527.n, GndDC.p);
      connect(Light_Driver_527.hPin_N, GndAC.pin);
      connect(Light_Driver_527.pin_n, GndDC.p);

    /* Light Connections 526 */
      connect(Gain_Light_driver_527.y, Light_527.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_527.u);  connect(Light_Driver_526.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_526.p, Light_Driver_526.pin_p);
      connect(Light_526.n, GndDC.p);
      connect(Light_Driver_526.hPin_N, GndAC.pin);
      connect(Light_Driver_526.pin_n, GndDC.p);

    /* Light Connections 525 */
      connect(Gain_Light_driver_526.y, Light_526.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_526.u);  connect(Light_Driver_525.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_525.p, Light_Driver_525.pin_p);
      connect(Light_525.n, GndDC.p);
      connect(Light_Driver_525.hPin_N, GndAC.pin);
      connect(Light_Driver_525.pin_n, GndDC.p);

    /* Light Connections 466 */
      connect(Gain_Light_driver_525.y, Light_525.u);
      connect(combiTimeTable_L2_Zn4_Lights.y[1], Gain_Light_driver_525.u);  connect(Light_Driver_466.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_466.p, Light_Driver_466.pin_p);
      connect(Light_466.n, GndDC.p);
      connect(Light_Driver_466.hPin_N, GndAC.pin);
      connect(Light_Driver_466.pin_n, GndDC.p);

    /* Light Connections 465 */
      connect(Gain_Light_driver_466.y, Light_466.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_466.u);  connect(Light_Driver_465.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_465.p, Light_Driver_465.pin_p);
      connect(Light_465.n, GndDC.p);
      connect(Light_Driver_465.hPin_N, GndAC.pin);
      connect(Light_Driver_465.pin_n, GndDC.p);

    /* Light Connections 464 */
      connect(Gain_Light_driver_465.y, Light_465.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_465.u);  connect(Light_Driver_464.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_464.p, Light_Driver_464.pin_p);
      connect(Light_464.n, GndDC.p);
      connect(Light_Driver_464.hPin_N, GndAC.pin);
      connect(Light_Driver_464.pin_n, GndDC.p);

    /* Light Connections 463 */
      connect(Gain_Light_driver_464.y, Light_464.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_464.u);  connect(Light_Driver_463.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_463.p, Light_Driver_463.pin_p);
      connect(Light_463.n, GndDC.p);
      connect(Light_Driver_463.hPin_N, GndAC.pin);
      connect(Light_Driver_463.pin_n, GndDC.p);

    /* Light Connections 462 */
      connect(Gain_Light_driver_463.y, Light_463.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_463.u);  connect(Light_Driver_462.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_462.p, Light_Driver_462.pin_p);
      connect(Light_462.n, GndDC.p);
      connect(Light_Driver_462.hPin_N, GndAC.pin);
      connect(Light_Driver_462.pin_n, GndDC.p);

    /* Light Connections 461 */
      connect(Gain_Light_driver_462.y, Light_462.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_462.u);  connect(Light_Driver_461.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_461.p, Light_Driver_461.pin_p);
      connect(Light_461.n, GndDC.p);
      connect(Light_Driver_461.hPin_N, GndAC.pin);
      connect(Light_Driver_461.pin_n, GndDC.p);

    /* Light Connections 460 */
      connect(Gain_Light_driver_461.y, Light_461.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_461.u);  connect(Light_Driver_460.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_460.p, Light_Driver_460.pin_p);
      connect(Light_460.n, GndDC.p);
      connect(Light_Driver_460.hPin_N, GndAC.pin);
      connect(Light_Driver_460.pin_n, GndDC.p);

    /* Light Connections 459 */
      connect(Gain_Light_driver_460.y, Light_460.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_460.u);  connect(Light_Driver_459.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_459.p, Light_Driver_459.pin_p);
      connect(Light_459.n, GndDC.p);
      connect(Light_Driver_459.hPin_N, GndAC.pin);
      connect(Light_Driver_459.pin_n, GndDC.p);

    /* Light Connections 458 */
      connect(Gain_Light_driver_459.y, Light_459.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_459.u);  connect(Light_Driver_458.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_458.p, Light_Driver_458.pin_p);
      connect(Light_458.n, GndDC.p);
      connect(Light_Driver_458.hPin_N, GndAC.pin);
      connect(Light_Driver_458.pin_n, GndDC.p);

    /* Light Connections 457 */
      connect(Gain_Light_driver_458.y, Light_458.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_458.u);  connect(Light_Driver_457.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_457.p, Light_Driver_457.pin_p);
      connect(Light_457.n, GndDC.p);
      connect(Light_Driver_457.hPin_N, GndAC.pin);
      connect(Light_Driver_457.pin_n, GndDC.p);

    /* Light Connections 456 */
      connect(Gain_Light_driver_457.y, Light_457.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_457.u);  connect(Light_Driver_456.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_456.p, Light_Driver_456.pin_p);
      connect(Light_456.n, GndDC.p);
      connect(Light_Driver_456.hPin_N, GndAC.pin);
      connect(Light_Driver_456.pin_n, GndDC.p);

    /* Light Connections 455 */
      connect(Gain_Light_driver_456.y, Light_456.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_456.u);  connect(Light_Driver_455.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_455.p, Light_Driver_455.pin_p);
      connect(Light_455.n, GndDC.p);
      connect(Light_Driver_455.hPin_N, GndAC.pin);
      connect(Light_Driver_455.pin_n, GndDC.p);

    /* Light Connections 454 */
      connect(Gain_Light_driver_455.y, Light_455.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_455.u);  connect(Light_Driver_454.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_454.p, Light_Driver_454.pin_p);
      connect(Light_454.n, GndDC.p);
      connect(Light_Driver_454.hPin_N, GndAC.pin);
      connect(Light_Driver_454.pin_n, GndDC.p);

    /* Light Connections 453 */
      connect(Gain_Light_driver_454.y, Light_454.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_454.u);  connect(Light_Driver_453.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_453.p, Light_Driver_453.pin_p);
      connect(Light_453.n, GndDC.p);
      connect(Light_Driver_453.hPin_N, GndAC.pin);
      connect(Light_Driver_453.pin_n, GndDC.p);

    /* Light Connections 327 */
      connect(Gain_Light_driver_453.y, Light_453.u);
      connect(combiTimeTable_L2_Zn3_Lights.y[1], Gain_Light_driver_453.u);  connect(Light_Driver_327.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_327.p, Light_Driver_327.pin_p);
      connect(Light_327.n, GndDC.p);
      connect(Light_Driver_327.hPin_N, GndAC.pin);
      connect(Light_Driver_327.pin_n, GndDC.p);

    /* Light Connections 326 */
      connect(Gain_Light_driver_327.y, Light_327.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_327.u);  connect(Light_Driver_326.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_326.p, Light_Driver_326.pin_p);
      connect(Light_326.n, GndDC.p);
      connect(Light_Driver_326.hPin_N, GndAC.pin);
      connect(Light_Driver_326.pin_n, GndDC.p);

    /* Light Connections 325 */
      connect(Gain_Light_driver_326.y, Light_326.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_326.u);  connect(Light_Driver_325.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_325.p, Light_Driver_325.pin_p);
      connect(Light_325.n, GndDC.p);
      connect(Light_Driver_325.hPin_N, GndAC.pin);
      connect(Light_Driver_325.pin_n, GndDC.p);

    /* Light Connections 324 */
      connect(Gain_Light_driver_325.y, Light_325.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_325.u);  connect(Light_Driver_324.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_324.p, Light_Driver_324.pin_p);
      connect(Light_324.n, GndDC.p);
      connect(Light_Driver_324.hPin_N, GndAC.pin);
      connect(Light_Driver_324.pin_n, GndDC.p);

    /* Light Connections 323 */
      connect(Gain_Light_driver_324.y, Light_324.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_324.u);  connect(Light_Driver_323.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_323.p, Light_Driver_323.pin_p);
      connect(Light_323.n, GndDC.p);
      connect(Light_Driver_323.hPin_N, GndAC.pin);
      connect(Light_Driver_323.pin_n, GndDC.p);

    /* Light Connections 322 */
      connect(Gain_Light_driver_323.y, Light_323.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_323.u);  connect(Light_Driver_322.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_322.p, Light_Driver_322.pin_p);
      connect(Light_322.n, GndDC.p);
      connect(Light_Driver_322.hPin_N, GndAC.pin);
      connect(Light_Driver_322.pin_n, GndDC.p);

    /* Light Connections 321 */
      connect(Gain_Light_driver_322.y, Light_322.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_322.u);  connect(Light_Driver_321.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_321.p, Light_Driver_321.pin_p);
      connect(Light_321.n, GndDC.p);
      connect(Light_Driver_321.hPin_N, GndAC.pin);
      connect(Light_Driver_321.pin_n, GndDC.p);

    /* Light Connections 320 */
      connect(Gain_Light_driver_321.y, Light_321.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_321.u);  connect(Light_Driver_320.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_320.p, Light_Driver_320.pin_p);
      connect(Light_320.n, GndDC.p);
      connect(Light_Driver_320.hPin_N, GndAC.pin);
      connect(Light_Driver_320.pin_n, GndDC.p);

    /* Light Connections 319 */
      connect(Gain_Light_driver_320.y, Light_320.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_320.u);  connect(Light_Driver_319.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_319.p, Light_Driver_319.pin_p);
      connect(Light_319.n, GndDC.p);
      connect(Light_Driver_319.hPin_N, GndAC.pin);
      connect(Light_Driver_319.pin_n, GndDC.p);

    /* Light Connections 318 */
      connect(Gain_Light_driver_319.y, Light_319.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_319.u);  connect(Light_Driver_318.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_318.p, Light_Driver_318.pin_p);
      connect(Light_318.n, GndDC.p);
      connect(Light_Driver_318.hPin_N, GndAC.pin);
      connect(Light_Driver_318.pin_n, GndDC.p);

    /* Light Connections 317 */
      connect(Gain_Light_driver_318.y, Light_318.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_318.u);  connect(Light_Driver_317.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_317.p, Light_Driver_317.pin_p);
      connect(Light_317.n, GndDC.p);
      connect(Light_Driver_317.hPin_N, GndAC.pin);
      connect(Light_Driver_317.pin_n, GndDC.p);

    /* Light Connections 310 */
      connect(Gain_Light_driver_317.y, Light_317.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_317.u);  connect(Light_Driver_310.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_310.p, Light_Driver_310.pin_p);
      connect(Light_310.n, GndDC.p);
      connect(Light_Driver_310.hPin_N, GndAC.pin);
      connect(Light_Driver_310.pin_n, GndDC.p);

    /* Light Connections 309 */
      connect(Gain_Light_driver_310.y, Light_310.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_310.u);  connect(Light_Driver_309.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_309.p, Light_Driver_309.pin_p);
      connect(Light_309.n, GndDC.p);
      connect(Light_Driver_309.hPin_N, GndAC.pin);
      connect(Light_Driver_309.pin_n, GndDC.p);

    /* Light Connections 308 */
      connect(Gain_Light_driver_309.y, Light_309.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_309.u);  connect(Light_Driver_308.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_308.p, Light_Driver_308.pin_p);
      connect(Light_308.n, GndDC.p);
      connect(Light_Driver_308.hPin_N, GndAC.pin);
      connect(Light_Driver_308.pin_n, GndDC.p);

    /* Light Connections 307 */
      connect(Gain_Light_driver_308.y, Light_308.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_308.u);  connect(Light_Driver_307.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_307.p, Light_Driver_307.pin_p);
      connect(Light_307.n, GndDC.p);
      connect(Light_Driver_307.hPin_N, GndAC.pin);
      connect(Light_Driver_307.pin_n, GndDC.p);

    /* Light Connections 302 */
      connect(Gain_Light_driver_307.y, Light_307.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_307.u);  connect(Light_Driver_302.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_302.p, Light_Driver_302.pin_p);
      connect(Light_302.n, GndDC.p);
      connect(Light_Driver_302.hPin_N, GndAC.pin);
      connect(Light_Driver_302.pin_n, GndDC.p);

    /* Light Connections 299 */
      connect(Gain_Light_driver_302.y, Light_302.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_302.u);  connect(Light_Driver_299.hPin_L,  cable_light_L2_1A.pin_p);
      connect(Light_299.p, Light_Driver_299.pin_p);
      connect(Light_299.n, GndDC.p);
      connect(Light_Driver_299.hPin_N, GndAC.pin);
      connect(Light_Driver_299.pin_n, GndDC.p);

      connect(Gain_Light_driver_299.y, Light_299.u);
      connect(combiTimeTable_L2_Core_Lights.y[1], Gain_Light_driver_299.u);

      annotation ();
    end Light_Panel_L2_1A;

    model Light_Panel_L3_1A
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L3_1A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            91)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Core_Lights(
        tableOnFile=true,
        tableName="L3-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn1_Lights(
        tableOnFile=true,
        tableName="L3-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn2_Lights(
        tableOnFile=true,
        tableName="L3-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn3_Lights(
        tableOnFile=true,
        tableName="L3-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn4_Lights(
        tableOnFile=true,
        tableName="L3-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 805 */
      HPF.DC.Variable_DC_Load Light_805;

    /* Light Model 804 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_805(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_805(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_804;

    /* Light Model 803 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_804(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_804(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_803;

    /* Light Model 802 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_803(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_803(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_802;

    /* Light Model 801 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_802(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_802(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_801;

    /* Light Model 800 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_801(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_801(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_800;

    /* Light Model 799 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_800(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_800(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_799;

    /* Light Model 798 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_799(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_799(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_798;

    /* Light Model 797 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_798(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_798(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_797;

    /* Light Model 796 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_797(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_797(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_796;

    /* Light Model 795 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_796(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_796(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_795;

    /* Light Model 794 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_795(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_795(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_794;

    /* Light Model 751 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_794(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_794(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_751;

    /* Light Model 750 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_751(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_751(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_750;

    /* Light Model 735 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_750(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_750(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_735;

    /* Light Model 734 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_735(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_735(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_734;

    /* Light Model 674 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_734(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_734(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_674;

    /* Light Model 673 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_674(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_674(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_673;

    /* Light Model 672 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_673(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_673(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_672;

    /* Light Model 670 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_672(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_672(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_670;

    /* Light Model 669 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_670(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_670(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_669;

    /* Light Model 668 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_669(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_669(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_668;

    /* Light Model 667 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_668(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_668(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_667;

    /* Light Model 666 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_667(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_667(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_666;

    /* Light Model 665 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_666(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_666(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_665;

    /* Light Model 664 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_665(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_665(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_664;

    /* Light Model 663 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_664(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_664(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_663;

    /* Light Model 662 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_663(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_663(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_662;

    /* Light Model 661 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_662(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_662(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_661;

    /* Light Model 660 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_661(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_661(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_660;

    /* Light Model 659 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_660(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_660(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_659;

    /* Light Model 646 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_659(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_659(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_646;

    /* Light Model 642 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_646(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_646(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_642;

    /* Light Model 641 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_642(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_642(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_641;

    /* Light Model 640 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_641(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_641(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_640;

    /* Light Model 638 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_640(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_640(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_638;

    /* Light Model 637 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_638(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_638(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_637;

    /* Light Model 587 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_637(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_637(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_587;

    /* Light Model 586 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_587(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_587(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_586;

    /* Light Model 585 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_586(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_586(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_585;

    /* Light Model 584 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_585(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_585(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_584;

    /* Light Model 583 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_584(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_584(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_583;

    /* Light Model 582 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_583(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_583(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_582;

    /* Light Model 581 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_582(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_582(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_581;

    /* Light Model 580 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_581(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_581(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_580;

    /* Light Model 579 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_580(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_580(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_579;

    /* Light Model 578 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_579(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_579(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_578;

    /* Light Model 569 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_578(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_578(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_569;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_569(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_569(k=21) annotation (HideResult=true);

    equation
      connect(cable_light_L3_1A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 805 */
      connect(Light_Driver_805.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_805.p, Light_Driver_805.pin_p);
      connect(Light_805.n, GndDC.p);
      connect(Light_Driver_805.hPin_N, GndAC.pin);
      connect(Light_Driver_805.pin_n, GndDC.p);

    /* Light Connections 804 */
      connect(Gain_Light_driver_805.y, Light_805.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_805.u);  connect(Light_Driver_804.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_804.p, Light_Driver_804.pin_p);
      connect(Light_804.n, GndDC.p);
      connect(Light_Driver_804.hPin_N, GndAC.pin);
      connect(Light_Driver_804.pin_n, GndDC.p);

    /* Light Connections 803 */
      connect(Gain_Light_driver_804.y, Light_804.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_804.u);  connect(Light_Driver_803.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_803.p, Light_Driver_803.pin_p);
      connect(Light_803.n, GndDC.p);
      connect(Light_Driver_803.hPin_N, GndAC.pin);
      connect(Light_Driver_803.pin_n, GndDC.p);

    /* Light Connections 802 */
      connect(Gain_Light_driver_803.y, Light_803.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_803.u);  connect(Light_Driver_802.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_802.p, Light_Driver_802.pin_p);
      connect(Light_802.n, GndDC.p);
      connect(Light_Driver_802.hPin_N, GndAC.pin);
      connect(Light_Driver_802.pin_n, GndDC.p);

    /* Light Connections 801 */
      connect(Gain_Light_driver_802.y, Light_802.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_802.u);  connect(Light_Driver_801.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_801.p, Light_Driver_801.pin_p);
      connect(Light_801.n, GndDC.p);
      connect(Light_Driver_801.hPin_N, GndAC.pin);
      connect(Light_Driver_801.pin_n, GndDC.p);

    /* Light Connections 800 */
      connect(Gain_Light_driver_801.y, Light_801.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_801.u);  connect(Light_Driver_800.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_800.p, Light_Driver_800.pin_p);
      connect(Light_800.n, GndDC.p);
      connect(Light_Driver_800.hPin_N, GndAC.pin);
      connect(Light_Driver_800.pin_n, GndDC.p);

    /* Light Connections 799 */
      connect(Gain_Light_driver_800.y, Light_800.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_800.u);  connect(Light_Driver_799.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_799.p, Light_Driver_799.pin_p);
      connect(Light_799.n, GndDC.p);
      connect(Light_Driver_799.hPin_N, GndAC.pin);
      connect(Light_Driver_799.pin_n, GndDC.p);

    /* Light Connections 798 */
      connect(Gain_Light_driver_799.y, Light_799.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_799.u);  connect(Light_Driver_798.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_798.p, Light_Driver_798.pin_p);
      connect(Light_798.n, GndDC.p);
      connect(Light_Driver_798.hPin_N, GndAC.pin);
      connect(Light_Driver_798.pin_n, GndDC.p);

    /* Light Connections 797 */
      connect(Gain_Light_driver_798.y, Light_798.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_798.u);  connect(Light_Driver_797.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_797.p, Light_Driver_797.pin_p);
      connect(Light_797.n, GndDC.p);
      connect(Light_Driver_797.hPin_N, GndAC.pin);
      connect(Light_Driver_797.pin_n, GndDC.p);

    /* Light Connections 796 */
      connect(Gain_Light_driver_797.y, Light_797.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_797.u);  connect(Light_Driver_796.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_796.p, Light_Driver_796.pin_p);
      connect(Light_796.n, GndDC.p);
      connect(Light_Driver_796.hPin_N, GndAC.pin);
      connect(Light_Driver_796.pin_n, GndDC.p);

    /* Light Connections 795 */
      connect(Gain_Light_driver_796.y, Light_796.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_796.u);  connect(Light_Driver_795.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_795.p, Light_Driver_795.pin_p);
      connect(Light_795.n, GndDC.p);
      connect(Light_Driver_795.hPin_N, GndAC.pin);
      connect(Light_Driver_795.pin_n, GndDC.p);

    /* Light Connections 794 */
      connect(Gain_Light_driver_795.y, Light_795.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_795.u);  connect(Light_Driver_794.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_794.p, Light_Driver_794.pin_p);
      connect(Light_794.n, GndDC.p);
      connect(Light_Driver_794.hPin_N, GndAC.pin);
      connect(Light_Driver_794.pin_n, GndDC.p);

    /* Light Connections 751 */
      connect(Gain_Light_driver_794.y, Light_794.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_794.u);  connect(Light_Driver_751.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_751.p, Light_Driver_751.pin_p);
      connect(Light_751.n, GndDC.p);
      connect(Light_Driver_751.hPin_N, GndAC.pin);
      connect(Light_Driver_751.pin_n, GndDC.p);

    /* Light Connections 750 */
      connect(Gain_Light_driver_751.y, Light_751.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_751.u);  connect(Light_Driver_750.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_750.p, Light_Driver_750.pin_p);
      connect(Light_750.n, GndDC.p);
      connect(Light_Driver_750.hPin_N, GndAC.pin);
      connect(Light_Driver_750.pin_n, GndDC.p);

    /* Light Connections 735 */
      connect(Gain_Light_driver_750.y, Light_750.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_750.u);  connect(Light_Driver_735.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_735.p, Light_Driver_735.pin_p);
      connect(Light_735.n, GndDC.p);
      connect(Light_Driver_735.hPin_N, GndAC.pin);
      connect(Light_Driver_735.pin_n, GndDC.p);

    /* Light Connections 734 */
      connect(Gain_Light_driver_735.y, Light_735.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_735.u);  connect(Light_Driver_734.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_734.p, Light_Driver_734.pin_p);
      connect(Light_734.n, GndDC.p);
      connect(Light_Driver_734.hPin_N, GndAC.pin);
      connect(Light_Driver_734.pin_n, GndDC.p);

    /* Light Connections 674 */
      connect(Gain_Light_driver_734.y, Light_734.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_734.u);  connect(Light_Driver_674.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_674.p, Light_Driver_674.pin_p);
      connect(Light_674.n, GndDC.p);
      connect(Light_Driver_674.hPin_N, GndAC.pin);
      connect(Light_Driver_674.pin_n, GndDC.p);

    /* Light Connections 673 */
      connect(Gain_Light_driver_674.y, Light_674.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_674.u);  connect(Light_Driver_673.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_673.p, Light_Driver_673.pin_p);
      connect(Light_673.n, GndDC.p);
      connect(Light_Driver_673.hPin_N, GndAC.pin);
      connect(Light_Driver_673.pin_n, GndDC.p);

    /* Light Connections 672 */
      connect(Gain_Light_driver_673.y, Light_673.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_673.u);  connect(Light_Driver_672.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_672.p, Light_Driver_672.pin_p);
      connect(Light_672.n, GndDC.p);
      connect(Light_Driver_672.hPin_N, GndAC.pin);
      connect(Light_Driver_672.pin_n, GndDC.p);

    /* Light Connections 670 */
      connect(Gain_Light_driver_672.y, Light_672.u);
      connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_672.u);  connect(Light_Driver_670.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_670.p, Light_Driver_670.pin_p);
      connect(Light_670.n, GndDC.p);
      connect(Light_Driver_670.hPin_N, GndAC.pin);
      connect(Light_Driver_670.pin_n, GndDC.p);

    /* Light Connections 669 */
      connect(Gain_Light_driver_670.y, Light_670.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_670.u);  connect(Light_Driver_669.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_669.p, Light_Driver_669.pin_p);
      connect(Light_669.n, GndDC.p);
      connect(Light_Driver_669.hPin_N, GndAC.pin);
      connect(Light_Driver_669.pin_n, GndDC.p);

    /* Light Connections 668 */
      connect(Gain_Light_driver_669.y, Light_669.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_669.u);  connect(Light_Driver_668.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_668.p, Light_Driver_668.pin_p);
      connect(Light_668.n, GndDC.p);
      connect(Light_Driver_668.hPin_N, GndAC.pin);
      connect(Light_Driver_668.pin_n, GndDC.p);

    /* Light Connections 667 */
      connect(Gain_Light_driver_668.y, Light_668.u);
      connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_668.u);  connect(Light_Driver_667.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_667.p, Light_Driver_667.pin_p);
      connect(Light_667.n, GndDC.p);
      connect(Light_Driver_667.hPin_N, GndAC.pin);
      connect(Light_Driver_667.pin_n, GndDC.p);

    /* Light Connections 666 */
      connect(Gain_Light_driver_667.y, Light_667.u);
      connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_667.u);  connect(Light_Driver_666.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_666.p, Light_Driver_666.pin_p);
      connect(Light_666.n, GndDC.p);
      connect(Light_Driver_666.hPin_N, GndAC.pin);
      connect(Light_Driver_666.pin_n, GndDC.p);

    /* Light Connections 665 */
      connect(Gain_Light_driver_666.y, Light_666.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_666.u);  connect(Light_Driver_665.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_665.p, Light_Driver_665.pin_p);
      connect(Light_665.n, GndDC.p);
      connect(Light_Driver_665.hPin_N, GndAC.pin);
      connect(Light_Driver_665.pin_n, GndDC.p);

    /* Light Connections 664 */
      connect(Gain_Light_driver_665.y, Light_665.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_665.u);  connect(Light_Driver_664.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_664.p, Light_Driver_664.pin_p);
      connect(Light_664.n, GndDC.p);
      connect(Light_Driver_664.hPin_N, GndAC.pin);
      connect(Light_Driver_664.pin_n, GndDC.p);

    /* Light Connections 663 */
      connect(Gain_Light_driver_664.y, Light_664.u);
      connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_664.u);  connect(Light_Driver_663.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_663.p, Light_Driver_663.pin_p);
      connect(Light_663.n, GndDC.p);
      connect(Light_Driver_663.hPin_N, GndAC.pin);
      connect(Light_Driver_663.pin_n, GndDC.p);

    /* Light Connections 662 */
      connect(Gain_Light_driver_663.y, Light_663.u);
      connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_663.u);  connect(Light_Driver_662.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_662.p, Light_Driver_662.pin_p);
      connect(Light_662.n, GndDC.p);
      connect(Light_Driver_662.hPin_N, GndAC.pin);
      connect(Light_Driver_662.pin_n, GndDC.p);

    /* Light Connections 661 */
      connect(Gain_Light_driver_662.y, Light_662.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_662.u);  connect(Light_Driver_661.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_661.p, Light_Driver_661.pin_p);
      connect(Light_661.n, GndDC.p);
      connect(Light_Driver_661.hPin_N, GndAC.pin);
      connect(Light_Driver_661.pin_n, GndDC.p);

    /* Light Connections 660 */
      connect(Gain_Light_driver_661.y, Light_661.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_661.u);  connect(Light_Driver_660.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_660.p, Light_Driver_660.pin_p);
      connect(Light_660.n, GndDC.p);
      connect(Light_Driver_660.hPin_N, GndAC.pin);
      connect(Light_Driver_660.pin_n, GndDC.p);

    /* Light Connections 659 */
      connect(Gain_Light_driver_660.y, Light_660.u);
      connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_660.u);  connect(Light_Driver_659.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_659.p, Light_Driver_659.pin_p);
      connect(Light_659.n, GndDC.p);
      connect(Light_Driver_659.hPin_N, GndAC.pin);
      connect(Light_Driver_659.pin_n, GndDC.p);

    /* Light Connections 646 */
      connect(Gain_Light_driver_659.y, Light_659.u);
      connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_659.u);  connect(Light_Driver_646.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_646.p, Light_Driver_646.pin_p);
      connect(Light_646.n, GndDC.p);
      connect(Light_Driver_646.hPin_N, GndAC.pin);
      connect(Light_Driver_646.pin_n, GndDC.p);

    /* Light Connections 642 */
      connect(Gain_Light_driver_646.y, Light_646.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_646.u);  connect(Light_Driver_642.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_642.p, Light_Driver_642.pin_p);
      connect(Light_642.n, GndDC.p);
      connect(Light_Driver_642.hPin_N, GndAC.pin);
      connect(Light_Driver_642.pin_n, GndDC.p);

    /* Light Connections 641 */
      connect(Gain_Light_driver_642.y, Light_642.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_642.u);  connect(Light_Driver_641.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_641.p, Light_Driver_641.pin_p);
      connect(Light_641.n, GndDC.p);
      connect(Light_Driver_641.hPin_N, GndAC.pin);
      connect(Light_Driver_641.pin_n, GndDC.p);

    /* Light Connections 640 */
      connect(Gain_Light_driver_641.y, Light_641.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_641.u);  connect(Light_Driver_640.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_640.p, Light_Driver_640.pin_p);
      connect(Light_640.n, GndDC.p);
      connect(Light_Driver_640.hPin_N, GndAC.pin);
      connect(Light_Driver_640.pin_n, GndDC.p);

    /* Light Connections 638 */
      connect(Gain_Light_driver_640.y, Light_640.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_640.u);  connect(Light_Driver_638.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_638.p, Light_Driver_638.pin_p);
      connect(Light_638.n, GndDC.p);
      connect(Light_Driver_638.hPin_N, GndAC.pin);
      connect(Light_Driver_638.pin_n, GndDC.p);

    /* Light Connections 637 */
      connect(Gain_Light_driver_638.y, Light_638.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_638.u);  connect(Light_Driver_637.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_637.p, Light_Driver_637.pin_p);
      connect(Light_637.n, GndDC.p);
      connect(Light_Driver_637.hPin_N, GndAC.pin);
      connect(Light_Driver_637.pin_n, GndDC.p);

    /* Light Connections 587 */
      connect(Gain_Light_driver_637.y, Light_637.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_637.u);  connect(Light_Driver_587.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_587.p, Light_Driver_587.pin_p);
      connect(Light_587.n, GndDC.p);
      connect(Light_Driver_587.hPin_N, GndAC.pin);
      connect(Light_Driver_587.pin_n, GndDC.p);

    /* Light Connections 586 */
      connect(Gain_Light_driver_587.y, Light_587.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_587.u);  connect(Light_Driver_586.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_586.p, Light_Driver_586.pin_p);
      connect(Light_586.n, GndDC.p);
      connect(Light_Driver_586.hPin_N, GndAC.pin);
      connect(Light_Driver_586.pin_n, GndDC.p);

    /* Light Connections 585 */
      connect(Gain_Light_driver_586.y, Light_586.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_586.u);  connect(Light_Driver_585.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_585.p, Light_Driver_585.pin_p);
      connect(Light_585.n, GndDC.p);
      connect(Light_Driver_585.hPin_N, GndAC.pin);
      connect(Light_Driver_585.pin_n, GndDC.p);

    /* Light Connections 584 */
      connect(Gain_Light_driver_585.y, Light_585.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_585.u);  connect(Light_Driver_584.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_584.p, Light_Driver_584.pin_p);
      connect(Light_584.n, GndDC.p);
      connect(Light_Driver_584.hPin_N, GndAC.pin);
      connect(Light_Driver_584.pin_n, GndDC.p);

    /* Light Connections 583 */
      connect(Gain_Light_driver_584.y, Light_584.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_584.u);  connect(Light_Driver_583.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_583.p, Light_Driver_583.pin_p);
      connect(Light_583.n, GndDC.p);
      connect(Light_Driver_583.hPin_N, GndAC.pin);
      connect(Light_Driver_583.pin_n, GndDC.p);

    /* Light Connections 582 */
      connect(Gain_Light_driver_583.y, Light_583.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_583.u);  connect(Light_Driver_582.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_582.p, Light_Driver_582.pin_p);
      connect(Light_582.n, GndDC.p);
      connect(Light_Driver_582.hPin_N, GndAC.pin);
      connect(Light_Driver_582.pin_n, GndDC.p);

    /* Light Connections 581 */
      connect(Gain_Light_driver_582.y, Light_582.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_582.u);  connect(Light_Driver_581.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_581.p, Light_Driver_581.pin_p);
      connect(Light_581.n, GndDC.p);
      connect(Light_Driver_581.hPin_N, GndAC.pin);
      connect(Light_Driver_581.pin_n, GndDC.p);

    /* Light Connections 580 */
      connect(Gain_Light_driver_581.y, Light_581.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_581.u);  connect(Light_Driver_580.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_580.p, Light_Driver_580.pin_p);
      connect(Light_580.n, GndDC.p);
      connect(Light_Driver_580.hPin_N, GndAC.pin);
      connect(Light_Driver_580.pin_n, GndDC.p);

    /* Light Connections 579 */
      connect(Gain_Light_driver_580.y, Light_580.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_580.u);  connect(Light_Driver_579.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_579.p, Light_Driver_579.pin_p);
      connect(Light_579.n, GndDC.p);
      connect(Light_Driver_579.hPin_N, GndAC.pin);
      connect(Light_Driver_579.pin_n, GndDC.p);

    /* Light Connections 578 */
      connect(Gain_Light_driver_579.y, Light_579.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_579.u);  connect(Light_Driver_578.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_578.p, Light_Driver_578.pin_p);
      connect(Light_578.n, GndDC.p);
      connect(Light_Driver_578.hPin_N, GndAC.pin);
      connect(Light_Driver_578.pin_n, GndDC.p);

    /* Light Connections 569 */
      connect(Gain_Light_driver_578.y, Light_578.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_578.u);  connect(Light_Driver_569.hPin_L,  cable_light_L3_1A.pin_p);
      connect(Light_569.p, Light_Driver_569.pin_p);
      connect(Light_569.n, GndDC.p);
      connect(Light_Driver_569.hPin_N, GndAC.pin);
      connect(Light_Driver_569.pin_n, GndDC.p);

      connect(Gain_Light_driver_569.y, Light_569.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_569.u);

      annotation ();
    end Light_Panel_L3_1A;

    model Light_Panel_L3_1B
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L3_1B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            82)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Core_Lights(
        tableOnFile=true,
        tableName="L3-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn1_Lights(
        tableOnFile=true,
        tableName="L3-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn2_Lights(
        tableOnFile=true,
        tableName="L3-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn3_Lights(
        tableOnFile=true,
        tableName="L3-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn4_Lights(
        tableOnFile=true,
        tableName="L3-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 817 */
      HPF.DC.Variable_DC_Load Light_817;

    /* Light Model 816 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_817(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_817(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_816;

    /* Light Model 815 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_816(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_816(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_815;

    /* Light Model 814 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_815(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_815(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_814;

    /* Light Model 813 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_814(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_814(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_813;

    /* Light Model 812 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_813(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_813(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_812;

    /* Light Model 811 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_812(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_812(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_811;

    /* Light Model 810 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_811(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_811(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_810;

    /* Light Model 809 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_810(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_810(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_809;

    /* Light Model 808 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_809(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_809(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_808;

    /* Light Model 807 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_808(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_808(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_807;

    /* Light Model 806 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_807(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_807(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_806;

    /* Light Model 793 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_806(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_806(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_793;

    /* Light Model 645 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_793(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_793(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_645;

    /* Light Model 617 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_645(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_645(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_617;

    /* Light Model 616 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_617(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_617(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_616;

    /* Light Model 615 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_616(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_616(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_615;

    /* Light Model 614 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_615(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_615(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_614;

    /* Light Model 613 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_614(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_614(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_613;

    /* Light Model 612 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_613(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_613(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_612;

    /* Light Model 611 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_612(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_612(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_611;

    /* Light Model 610 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_611(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_611(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_610;

    /* Light Model 609 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_610(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_610(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_609;

    /* Light Model 608 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_609(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_609(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_608;

    /* Light Model 607 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_608(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_608(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_607;

    /* Light Model 606 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_607(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_607(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_606;

    /* Light Model 605 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_606(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_606(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_605;

    /* Light Model 604 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_605(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_605(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_604;

    /* Light Model 603 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_604(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_604(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_603;

    /* Light Model 602 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_603(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_603(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_602;

    /* Light Model 601 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_602(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_602(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_601;

    /* Light Model 600 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_601(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_601(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_600;

    /* Light Model 599 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_600(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_600(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_599;

    /* Light Model 598 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_599(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_599(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_598;

    /* Light Model 597 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_598(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_598(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_597;

    /* Light Model 596 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_597(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_597(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_596;

    /* Light Model 595 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_596(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_596(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_595;

    /* Light Model 594 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_595(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_595(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_594;

    /* Light Model 593 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_594(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_594(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_593;

    /* Light Model 592 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_593(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_593(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_592;

    /* Light Model 591 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_592(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_592(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_591;

    /* Light Model 590 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_591(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_591(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_590;

    /* Light Model 589 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_590(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_590(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_589;

    /* Light Model 588 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_589(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_589(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_588;

    /* Light Model 575 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_588(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_588(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_575;

    /* Light Model 574 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_575(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_575(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_574;

    /* Light Model 573 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_574(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_574(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_573;

    /* Light Model 572 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_573(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_573(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_572;

    /* Light Model 571 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_572(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_572(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_571;

    /* Light Model 570 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_571(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_571(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_570;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_570(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_570(k=21) annotation (HideResult=true);

    equation
      connect(cable_light_L3_1B.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 817 */
      connect(Light_Driver_817.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_817.p, Light_Driver_817.pin_p);
      connect(Light_817.n, GndDC.p);
      connect(Light_Driver_817.hPin_N, GndAC.pin);
      connect(Light_Driver_817.pin_n, GndDC.p);

    /* Light Connections 816 */
      connect(Gain_Light_driver_817.y, Light_817.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_817.u);  connect(Light_Driver_816.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_816.p, Light_Driver_816.pin_p);
      connect(Light_816.n, GndDC.p);
      connect(Light_Driver_816.hPin_N, GndAC.pin);
      connect(Light_Driver_816.pin_n, GndDC.p);

    /* Light Connections 815 */
      connect(Gain_Light_driver_816.y, Light_816.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_816.u);  connect(Light_Driver_815.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_815.p, Light_Driver_815.pin_p);
      connect(Light_815.n, GndDC.p);
      connect(Light_Driver_815.hPin_N, GndAC.pin);
      connect(Light_Driver_815.pin_n, GndDC.p);

    /* Light Connections 814 */
      connect(Gain_Light_driver_815.y, Light_815.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_815.u);  connect(Light_Driver_814.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_814.p, Light_Driver_814.pin_p);
      connect(Light_814.n, GndDC.p);
      connect(Light_Driver_814.hPin_N, GndAC.pin);
      connect(Light_Driver_814.pin_n, GndDC.p);

    /* Light Connections 813 */
      connect(Gain_Light_driver_814.y, Light_814.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_814.u);  connect(Light_Driver_813.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_813.p, Light_Driver_813.pin_p);
      connect(Light_813.n, GndDC.p);
      connect(Light_Driver_813.hPin_N, GndAC.pin);
      connect(Light_Driver_813.pin_n, GndDC.p);

    /* Light Connections 812 */
      connect(Gain_Light_driver_813.y, Light_813.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_813.u);  connect(Light_Driver_812.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_812.p, Light_Driver_812.pin_p);
      connect(Light_812.n, GndDC.p);
      connect(Light_Driver_812.hPin_N, GndAC.pin);
      connect(Light_Driver_812.pin_n, GndDC.p);

    /* Light Connections 811 */
      connect(Gain_Light_driver_812.y, Light_812.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_812.u);  connect(Light_Driver_811.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_811.p, Light_Driver_811.pin_p);
      connect(Light_811.n, GndDC.p);
      connect(Light_Driver_811.hPin_N, GndAC.pin);
      connect(Light_Driver_811.pin_n, GndDC.p);

    /* Light Connections 810 */
      connect(Gain_Light_driver_811.y, Light_811.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_811.u);  connect(Light_Driver_810.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_810.p, Light_Driver_810.pin_p);
      connect(Light_810.n, GndDC.p);
      connect(Light_Driver_810.hPin_N, GndAC.pin);
      connect(Light_Driver_810.pin_n, GndDC.p);

    /* Light Connections 809 */
      connect(Gain_Light_driver_810.y, Light_810.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_810.u);  connect(Light_Driver_809.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_809.p, Light_Driver_809.pin_p);
      connect(Light_809.n, GndDC.p);
      connect(Light_Driver_809.hPin_N, GndAC.pin);
      connect(Light_Driver_809.pin_n, GndDC.p);

    /* Light Connections 808 */
      connect(Gain_Light_driver_809.y, Light_809.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_809.u);  connect(Light_Driver_808.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_808.p, Light_Driver_808.pin_p);
      connect(Light_808.n, GndDC.p);
      connect(Light_Driver_808.hPin_N, GndAC.pin);
      connect(Light_Driver_808.pin_n, GndDC.p);

    /* Light Connections 807 */
      connect(Gain_Light_driver_808.y, Light_808.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_808.u);  connect(Light_Driver_807.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_807.p, Light_Driver_807.pin_p);
      connect(Light_807.n, GndDC.p);
      connect(Light_Driver_807.hPin_N, GndAC.pin);
      connect(Light_Driver_807.pin_n, GndDC.p);

    /* Light Connections 806 */
      connect(Gain_Light_driver_807.y, Light_807.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_807.u);  connect(Light_Driver_806.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_806.p, Light_Driver_806.pin_p);
      connect(Light_806.n, GndDC.p);
      connect(Light_Driver_806.hPin_N, GndAC.pin);
      connect(Light_Driver_806.pin_n, GndDC.p);

    /* Light Connections 793 */
      connect(Gain_Light_driver_806.y, Light_806.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_806.u);  connect(Light_Driver_793.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_793.p, Light_Driver_793.pin_p);
      connect(Light_793.n, GndDC.p);
      connect(Light_Driver_793.hPin_N, GndAC.pin);
      connect(Light_Driver_793.pin_n, GndDC.p);

    /* Light Connections 645 */
      connect(Gain_Light_driver_793.y, Light_793.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_793.u);  connect(Light_Driver_645.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_645.p, Light_Driver_645.pin_p);
      connect(Light_645.n, GndDC.p);
      connect(Light_Driver_645.hPin_N, GndAC.pin);
      connect(Light_Driver_645.pin_n, GndDC.p);

    /* Light Connections 617 */
      connect(Gain_Light_driver_645.y, Light_645.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_645.u);  connect(Light_Driver_617.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_617.p, Light_Driver_617.pin_p);
      connect(Light_617.n, GndDC.p);
      connect(Light_Driver_617.hPin_N, GndAC.pin);
      connect(Light_Driver_617.pin_n, GndDC.p);

    /* Light Connections 616 */
      connect(Gain_Light_driver_617.y, Light_617.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_617.u);  connect(Light_Driver_616.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_616.p, Light_Driver_616.pin_p);
      connect(Light_616.n, GndDC.p);
      connect(Light_Driver_616.hPin_N, GndAC.pin);
      connect(Light_Driver_616.pin_n, GndDC.p);

    /* Light Connections 615 */
      connect(Gain_Light_driver_616.y, Light_616.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_616.u);  connect(Light_Driver_615.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_615.p, Light_Driver_615.pin_p);
      connect(Light_615.n, GndDC.p);
      connect(Light_Driver_615.hPin_N, GndAC.pin);
      connect(Light_Driver_615.pin_n, GndDC.p);

    /* Light Connections 614 */
      connect(Gain_Light_driver_615.y, Light_615.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_615.u);  connect(Light_Driver_614.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_614.p, Light_Driver_614.pin_p);
      connect(Light_614.n, GndDC.p);
      connect(Light_Driver_614.hPin_N, GndAC.pin);
      connect(Light_Driver_614.pin_n, GndDC.p);

    /* Light Connections 613 */
      connect(Gain_Light_driver_614.y, Light_614.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_614.u);  connect(Light_Driver_613.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_613.p, Light_Driver_613.pin_p);
      connect(Light_613.n, GndDC.p);
      connect(Light_Driver_613.hPin_N, GndAC.pin);
      connect(Light_Driver_613.pin_n, GndDC.p);

    /* Light Connections 612 */
      connect(Gain_Light_driver_613.y, Light_613.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_613.u);  connect(Light_Driver_612.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_612.p, Light_Driver_612.pin_p);
      connect(Light_612.n, GndDC.p);
      connect(Light_Driver_612.hPin_N, GndAC.pin);
      connect(Light_Driver_612.pin_n, GndDC.p);

    /* Light Connections 611 */
      connect(Gain_Light_driver_612.y, Light_612.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_612.u);  connect(Light_Driver_611.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_611.p, Light_Driver_611.pin_p);
      connect(Light_611.n, GndDC.p);
      connect(Light_Driver_611.hPin_N, GndAC.pin);
      connect(Light_Driver_611.pin_n, GndDC.p);

    /* Light Connections 610 */
      connect(Gain_Light_driver_611.y, Light_611.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_611.u);  connect(Light_Driver_610.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_610.p, Light_Driver_610.pin_p);
      connect(Light_610.n, GndDC.p);
      connect(Light_Driver_610.hPin_N, GndAC.pin);
      connect(Light_Driver_610.pin_n, GndDC.p);

    /* Light Connections 609 */
      connect(Gain_Light_driver_610.y, Light_610.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_610.u);  connect(Light_Driver_609.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_609.p, Light_Driver_609.pin_p);
      connect(Light_609.n, GndDC.p);
      connect(Light_Driver_609.hPin_N, GndAC.pin);
      connect(Light_Driver_609.pin_n, GndDC.p);

    /* Light Connections 608 */
      connect(Gain_Light_driver_609.y, Light_609.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_609.u);  connect(Light_Driver_608.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_608.p, Light_Driver_608.pin_p);
      connect(Light_608.n, GndDC.p);
      connect(Light_Driver_608.hPin_N, GndAC.pin);
      connect(Light_Driver_608.pin_n, GndDC.p);

    /* Light Connections 607 */
      connect(Gain_Light_driver_608.y, Light_608.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_608.u);  connect(Light_Driver_607.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_607.p, Light_Driver_607.pin_p);
      connect(Light_607.n, GndDC.p);
      connect(Light_Driver_607.hPin_N, GndAC.pin);
      connect(Light_Driver_607.pin_n, GndDC.p);

    /* Light Connections 606 */
      connect(Gain_Light_driver_607.y, Light_607.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_607.u);  connect(Light_Driver_606.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_606.p, Light_Driver_606.pin_p);
      connect(Light_606.n, GndDC.p);
      connect(Light_Driver_606.hPin_N, GndAC.pin);
      connect(Light_Driver_606.pin_n, GndDC.p);

    /* Light Connections 605 */
      connect(Gain_Light_driver_606.y, Light_606.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_606.u);  connect(Light_Driver_605.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_605.p, Light_Driver_605.pin_p);
      connect(Light_605.n, GndDC.p);
      connect(Light_Driver_605.hPin_N, GndAC.pin);
      connect(Light_Driver_605.pin_n, GndDC.p);

    /* Light Connections 604 */
      connect(Gain_Light_driver_605.y, Light_605.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_605.u);  connect(Light_Driver_604.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_604.p, Light_Driver_604.pin_p);
      connect(Light_604.n, GndDC.p);
      connect(Light_Driver_604.hPin_N, GndAC.pin);
      connect(Light_Driver_604.pin_n, GndDC.p);

    /* Light Connections 603 */
      connect(Gain_Light_driver_604.y, Light_604.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_604.u);  connect(Light_Driver_603.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_603.p, Light_Driver_603.pin_p);
      connect(Light_603.n, GndDC.p);
      connect(Light_Driver_603.hPin_N, GndAC.pin);
      connect(Light_Driver_603.pin_n, GndDC.p);

    /* Light Connections 602 */
      connect(Gain_Light_driver_603.y, Light_603.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_603.u);  connect(Light_Driver_602.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_602.p, Light_Driver_602.pin_p);
      connect(Light_602.n, GndDC.p);
      connect(Light_Driver_602.hPin_N, GndAC.pin);
      connect(Light_Driver_602.pin_n, GndDC.p);

    /* Light Connections 601 */
      connect(Gain_Light_driver_602.y, Light_602.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_602.u);  connect(Light_Driver_601.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_601.p, Light_Driver_601.pin_p);
      connect(Light_601.n, GndDC.p);
      connect(Light_Driver_601.hPin_N, GndAC.pin);
      connect(Light_Driver_601.pin_n, GndDC.p);

    /* Light Connections 600 */
      connect(Gain_Light_driver_601.y, Light_601.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_601.u);  connect(Light_Driver_600.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_600.p, Light_Driver_600.pin_p);
      connect(Light_600.n, GndDC.p);
      connect(Light_Driver_600.hPin_N, GndAC.pin);
      connect(Light_Driver_600.pin_n, GndDC.p);

    /* Light Connections 599 */
      connect(Gain_Light_driver_600.y, Light_600.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_600.u);  connect(Light_Driver_599.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_599.p, Light_Driver_599.pin_p);
      connect(Light_599.n, GndDC.p);
      connect(Light_Driver_599.hPin_N, GndAC.pin);
      connect(Light_Driver_599.pin_n, GndDC.p);

    /* Light Connections 598 */
      connect(Gain_Light_driver_599.y, Light_599.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_599.u);  connect(Light_Driver_598.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_598.p, Light_Driver_598.pin_p);
      connect(Light_598.n, GndDC.p);
      connect(Light_Driver_598.hPin_N, GndAC.pin);
      connect(Light_Driver_598.pin_n, GndDC.p);

    /* Light Connections 597 */
      connect(Gain_Light_driver_598.y, Light_598.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_598.u);  connect(Light_Driver_597.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_597.p, Light_Driver_597.pin_p);
      connect(Light_597.n, GndDC.p);
      connect(Light_Driver_597.hPin_N, GndAC.pin);
      connect(Light_Driver_597.pin_n, GndDC.p);

    /* Light Connections 596 */
      connect(Gain_Light_driver_597.y, Light_597.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_597.u);  connect(Light_Driver_596.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_596.p, Light_Driver_596.pin_p);
      connect(Light_596.n, GndDC.p);
      connect(Light_Driver_596.hPin_N, GndAC.pin);
      connect(Light_Driver_596.pin_n, GndDC.p);

    /* Light Connections 595 */
      connect(Gain_Light_driver_596.y, Light_596.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_596.u);  connect(Light_Driver_595.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_595.p, Light_Driver_595.pin_p);
      connect(Light_595.n, GndDC.p);
      connect(Light_Driver_595.hPin_N, GndAC.pin);
      connect(Light_Driver_595.pin_n, GndDC.p);

    /* Light Connections 594 */
      connect(Gain_Light_driver_595.y, Light_595.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_595.u);  connect(Light_Driver_594.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_594.p, Light_Driver_594.pin_p);
      connect(Light_594.n, GndDC.p);
      connect(Light_Driver_594.hPin_N, GndAC.pin);
      connect(Light_Driver_594.pin_n, GndDC.p);

    /* Light Connections 593 */
      connect(Gain_Light_driver_594.y, Light_594.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_594.u);  connect(Light_Driver_593.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_593.p, Light_Driver_593.pin_p);
      connect(Light_593.n, GndDC.p);
      connect(Light_Driver_593.hPin_N, GndAC.pin);
      connect(Light_Driver_593.pin_n, GndDC.p);

    /* Light Connections 592 */
      connect(Gain_Light_driver_593.y, Light_593.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_593.u);  connect(Light_Driver_592.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_592.p, Light_Driver_592.pin_p);
      connect(Light_592.n, GndDC.p);
      connect(Light_Driver_592.hPin_N, GndAC.pin);
      connect(Light_Driver_592.pin_n, GndDC.p);

    /* Light Connections 591 */
      connect(Gain_Light_driver_592.y, Light_592.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_592.u);  connect(Light_Driver_591.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_591.p, Light_Driver_591.pin_p);
      connect(Light_591.n, GndDC.p);
      connect(Light_Driver_591.hPin_N, GndAC.pin);
      connect(Light_Driver_591.pin_n, GndDC.p);

    /* Light Connections 590 */
      connect(Gain_Light_driver_591.y, Light_591.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_591.u);  connect(Light_Driver_590.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_590.p, Light_Driver_590.pin_p);
      connect(Light_590.n, GndDC.p);
      connect(Light_Driver_590.hPin_N, GndAC.pin);
      connect(Light_Driver_590.pin_n, GndDC.p);

    /* Light Connections 589 */
      connect(Gain_Light_driver_590.y, Light_590.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_590.u);  connect(Light_Driver_589.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_589.p, Light_Driver_589.pin_p);
      connect(Light_589.n, GndDC.p);
      connect(Light_Driver_589.hPin_N, GndAC.pin);
      connect(Light_Driver_589.pin_n, GndDC.p);

    /* Light Connections 588 */
      connect(Gain_Light_driver_589.y, Light_589.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_589.u);  connect(Light_Driver_588.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_588.p, Light_Driver_588.pin_p);
      connect(Light_588.n, GndDC.p);
      connect(Light_Driver_588.hPin_N, GndAC.pin);
      connect(Light_Driver_588.pin_n, GndDC.p);

    /* Light Connections 575 */
      connect(Gain_Light_driver_588.y, Light_588.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_588.u);  connect(Light_Driver_575.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_575.p, Light_Driver_575.pin_p);
      connect(Light_575.n, GndDC.p);
      connect(Light_Driver_575.hPin_N, GndAC.pin);
      connect(Light_Driver_575.pin_n, GndDC.p);

    /* Light Connections 574 */
      connect(Gain_Light_driver_575.y, Light_575.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_575.u);  connect(Light_Driver_574.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_574.p, Light_Driver_574.pin_p);
      connect(Light_574.n, GndDC.p);
      connect(Light_Driver_574.hPin_N, GndAC.pin);
      connect(Light_Driver_574.pin_n, GndDC.p);

    /* Light Connections 573 */
      connect(Gain_Light_driver_574.y, Light_574.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_574.u);  connect(Light_Driver_573.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_573.p, Light_Driver_573.pin_p);
      connect(Light_573.n, GndDC.p);
      connect(Light_Driver_573.hPin_N, GndAC.pin);
      connect(Light_Driver_573.pin_n, GndDC.p);

    /* Light Connections 572 */
      connect(Gain_Light_driver_573.y, Light_573.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_573.u);  connect(Light_Driver_572.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_572.p, Light_Driver_572.pin_p);
      connect(Light_572.n, GndDC.p);
      connect(Light_Driver_572.hPin_N, GndAC.pin);
      connect(Light_Driver_572.pin_n, GndDC.p);

    /* Light Connections 571 */
      connect(Gain_Light_driver_572.y, Light_572.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_572.u);  connect(Light_Driver_571.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_571.p, Light_Driver_571.pin_p);
      connect(Light_571.n, GndDC.p);
      connect(Light_Driver_571.hPin_N, GndAC.pin);
      connect(Light_Driver_571.pin_n, GndDC.p);

    /* Light Connections 570 */
      connect(Gain_Light_driver_571.y, Light_571.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_571.u);  connect(Light_Driver_570.hPin_L,  cable_light_L3_1B.pin_p);
      connect(Light_570.p, Light_Driver_570.pin_p);
      connect(Light_570.n, GndDC.p);
      connect(Light_Driver_570.hPin_N, GndAC.pin);
      connect(Light_Driver_570.pin_n, GndDC.p);

      connect(Gain_Light_driver_570.y, Light_570.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_570.u);

      annotation ();
    end Light_Panel_L3_1B;

    model Light_Panel_L3_1C
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L3_1C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            73)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Core_Lights(
        tableOnFile=true,
        tableName="L3-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn1_Lights(
        tableOnFile=true,
        tableName="L3-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn2_Lights(
        tableOnFile=true,
        tableName="L3-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn3_Lights(
        tableOnFile=true,
        tableName="L3-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn4_Lights(
        tableOnFile=true,
        tableName="L3-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 841 */
      HPF.DC.Variable_DC_Load Light_841;

    /* Light Model 840 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_841(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_841(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_840;

    /* Light Model 839 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_840(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_840(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_839;

    /* Light Model 838 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_839(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_839(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_838;

    /* Light Model 837 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_838(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_838(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_837;

    /* Light Model 836 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_837(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_837(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_836;

    /* Light Model 835 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_836(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_836(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_835;

    /* Light Model 834 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_835(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_835(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_834;

    /* Light Model 833 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_834(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_834(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_833;

    /* Light Model 832 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_833(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_833(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_832;

    /* Light Model 831 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_832(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_832(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_831;

    /* Light Model 830 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_831(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_831(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_830;

    /* Light Model 829 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_830(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_830(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_829;

    /* Light Model 828 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_829(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_829(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_828;

    /* Light Model 827 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_828(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_828(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_827;

    /* Light Model 826 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_827(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_827(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_826;

    /* Light Model 825 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_826(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_826(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_825;

    /* Light Model 824 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_825(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_825(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_824;

    /* Light Model 823 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_824(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_824(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_823;

    /* Light Model 822 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_823(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_823(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_822;

    /* Light Model 821 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_822(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_822(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_821;

    /* Light Model 820 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_821(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_821(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_820;

    /* Light Model 819 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_820(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_820(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_819;

    /* Light Model 818 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_819(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_819(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_818;

    /* Light Model 780 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_818(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_818(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_780;

    /* Light Model 779 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_780(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_780(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_779;

    /* Light Model 778 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_779(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_779(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_778;

    /* Light Model 777 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_778(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_778(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_777;

    /* Light Model 729 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_777(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_777(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_729;

    /* Light Model 728 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_729(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_729(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_728;

    /* Light Model 636 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_728(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_728(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_636;

    /* Light Model 635 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_636(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_636(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_635;

    /* Light Model 634 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_635(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_635(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_634;

    /* Light Model 633 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_634(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_634(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_633;

    /* Light Model 632 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_633(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_633(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_632;

    /* Light Model 631 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_632(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_632(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_631;

    /* Light Model 630 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_631(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_631(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_630;

    /* Light Model 629 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_630(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_630(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_629;

    /* Light Model 628 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_629(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_629(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_628;

    /* Light Model 627 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_628(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_628(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_627;

    /* Light Model 626 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_627(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_627(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_626;

    /* Light Model 625 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_626(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_626(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_625;

    /* Light Model 624 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_625(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_625(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_624;

    /* Light Model 623 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_624(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_624(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_623;

    /* Light Model 622 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_623(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_623(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_622;

    /* Light Model 621 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_622(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_622(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_621;

    /* Light Model 620 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_621(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_621(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_620;

    /* Light Model 619 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_620(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_620(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_619;

    /* Light Model 618 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_619(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_619(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_618;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_618(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_618(k=31) annotation (HideResult=true);

    equation
      connect(cable_light_L3_1C.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 841 */
      connect(Light_Driver_841.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_841.p, Light_Driver_841.pin_p);
      connect(Light_841.n, GndDC.p);
      connect(Light_Driver_841.hPin_N, GndAC.pin);
      connect(Light_Driver_841.pin_n, GndDC.p);

    /* Light Connections 840 */
      connect(Gain_Light_driver_841.y, Light_841.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_841.u);  connect(Light_Driver_840.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_840.p, Light_Driver_840.pin_p);
      connect(Light_840.n, GndDC.p);
      connect(Light_Driver_840.hPin_N, GndAC.pin);
      connect(Light_Driver_840.pin_n, GndDC.p);

    /* Light Connections 839 */
      connect(Gain_Light_driver_840.y, Light_840.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_840.u);  connect(Light_Driver_839.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_839.p, Light_Driver_839.pin_p);
      connect(Light_839.n, GndDC.p);
      connect(Light_Driver_839.hPin_N, GndAC.pin);
      connect(Light_Driver_839.pin_n, GndDC.p);

    /* Light Connections 838 */
      connect(Gain_Light_driver_839.y, Light_839.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_839.u);  connect(Light_Driver_838.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_838.p, Light_Driver_838.pin_p);
      connect(Light_838.n, GndDC.p);
      connect(Light_Driver_838.hPin_N, GndAC.pin);
      connect(Light_Driver_838.pin_n, GndDC.p);

    /* Light Connections 837 */
      connect(Gain_Light_driver_838.y, Light_838.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_838.u);  connect(Light_Driver_837.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_837.p, Light_Driver_837.pin_p);
      connect(Light_837.n, GndDC.p);
      connect(Light_Driver_837.hPin_N, GndAC.pin);
      connect(Light_Driver_837.pin_n, GndDC.p);

    /* Light Connections 836 */
      connect(Gain_Light_driver_837.y, Light_837.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_837.u);  connect(Light_Driver_836.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_836.p, Light_Driver_836.pin_p);
      connect(Light_836.n, GndDC.p);
      connect(Light_Driver_836.hPin_N, GndAC.pin);
      connect(Light_Driver_836.pin_n, GndDC.p);

    /* Light Connections 835 */
      connect(Gain_Light_driver_836.y, Light_836.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_836.u);  connect(Light_Driver_835.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_835.p, Light_Driver_835.pin_p);
      connect(Light_835.n, GndDC.p);
      connect(Light_Driver_835.hPin_N, GndAC.pin);
      connect(Light_Driver_835.pin_n, GndDC.p);

    /* Light Connections 834 */
      connect(Gain_Light_driver_835.y, Light_835.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_835.u);  connect(Light_Driver_834.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_834.p, Light_Driver_834.pin_p);
      connect(Light_834.n, GndDC.p);
      connect(Light_Driver_834.hPin_N, GndAC.pin);
      connect(Light_Driver_834.pin_n, GndDC.p);

    /* Light Connections 833 */
      connect(Gain_Light_driver_834.y, Light_834.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_834.u);  connect(Light_Driver_833.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_833.p, Light_Driver_833.pin_p);
      connect(Light_833.n, GndDC.p);
      connect(Light_Driver_833.hPin_N, GndAC.pin);
      connect(Light_Driver_833.pin_n, GndDC.p);

    /* Light Connections 832 */
      connect(Gain_Light_driver_833.y, Light_833.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_833.u);  connect(Light_Driver_832.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_832.p, Light_Driver_832.pin_p);
      connect(Light_832.n, GndDC.p);
      connect(Light_Driver_832.hPin_N, GndAC.pin);
      connect(Light_Driver_832.pin_n, GndDC.p);

    /* Light Connections 831 */
      connect(Gain_Light_driver_832.y, Light_832.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_832.u);  connect(Light_Driver_831.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_831.p, Light_Driver_831.pin_p);
      connect(Light_831.n, GndDC.p);
      connect(Light_Driver_831.hPin_N, GndAC.pin);
      connect(Light_Driver_831.pin_n, GndDC.p);

    /* Light Connections 830 */
      connect(Gain_Light_driver_831.y, Light_831.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_831.u);  connect(Light_Driver_830.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_830.p, Light_Driver_830.pin_p);
      connect(Light_830.n, GndDC.p);
      connect(Light_Driver_830.hPin_N, GndAC.pin);
      connect(Light_Driver_830.pin_n, GndDC.p);

    /* Light Connections 829 */
      connect(Gain_Light_driver_830.y, Light_830.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_830.u);  connect(Light_Driver_829.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_829.p, Light_Driver_829.pin_p);
      connect(Light_829.n, GndDC.p);
      connect(Light_Driver_829.hPin_N, GndAC.pin);
      connect(Light_Driver_829.pin_n, GndDC.p);

    /* Light Connections 828 */
      connect(Gain_Light_driver_829.y, Light_829.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_829.u);  connect(Light_Driver_828.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_828.p, Light_Driver_828.pin_p);
      connect(Light_828.n, GndDC.p);
      connect(Light_Driver_828.hPin_N, GndAC.pin);
      connect(Light_Driver_828.pin_n, GndDC.p);

    /* Light Connections 827 */
      connect(Gain_Light_driver_828.y, Light_828.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_828.u);  connect(Light_Driver_827.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_827.p, Light_Driver_827.pin_p);
      connect(Light_827.n, GndDC.p);
      connect(Light_Driver_827.hPin_N, GndAC.pin);
      connect(Light_Driver_827.pin_n, GndDC.p);

    /* Light Connections 826 */
      connect(Gain_Light_driver_827.y, Light_827.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_827.u);  connect(Light_Driver_826.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_826.p, Light_Driver_826.pin_p);
      connect(Light_826.n, GndDC.p);
      connect(Light_Driver_826.hPin_N, GndAC.pin);
      connect(Light_Driver_826.pin_n, GndDC.p);

    /* Light Connections 825 */
      connect(Gain_Light_driver_826.y, Light_826.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_826.u);  connect(Light_Driver_825.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_825.p, Light_Driver_825.pin_p);
      connect(Light_825.n, GndDC.p);
      connect(Light_Driver_825.hPin_N, GndAC.pin);
      connect(Light_Driver_825.pin_n, GndDC.p);

    /* Light Connections 824 */
      connect(Gain_Light_driver_825.y, Light_825.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_825.u);  connect(Light_Driver_824.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_824.p, Light_Driver_824.pin_p);
      connect(Light_824.n, GndDC.p);
      connect(Light_Driver_824.hPin_N, GndAC.pin);
      connect(Light_Driver_824.pin_n, GndDC.p);

    /* Light Connections 823 */
      connect(Gain_Light_driver_824.y, Light_824.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_824.u);  connect(Light_Driver_823.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_823.p, Light_Driver_823.pin_p);
      connect(Light_823.n, GndDC.p);
      connect(Light_Driver_823.hPin_N, GndAC.pin);
      connect(Light_Driver_823.pin_n, GndDC.p);

    /* Light Connections 822 */
      connect(Gain_Light_driver_823.y, Light_823.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_823.u);  connect(Light_Driver_822.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_822.p, Light_Driver_822.pin_p);
      connect(Light_822.n, GndDC.p);
      connect(Light_Driver_822.hPin_N, GndAC.pin);
      connect(Light_Driver_822.pin_n, GndDC.p);

    /* Light Connections 821 */
      connect(Gain_Light_driver_822.y, Light_822.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_822.u);  connect(Light_Driver_821.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_821.p, Light_Driver_821.pin_p);
      connect(Light_821.n, GndDC.p);
      connect(Light_Driver_821.hPin_N, GndAC.pin);
      connect(Light_Driver_821.pin_n, GndDC.p);

    /* Light Connections 820 */
      connect(Gain_Light_driver_821.y, Light_821.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_821.u);  connect(Light_Driver_820.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_820.p, Light_Driver_820.pin_p);
      connect(Light_820.n, GndDC.p);
      connect(Light_Driver_820.hPin_N, GndAC.pin);
      connect(Light_Driver_820.pin_n, GndDC.p);

    /* Light Connections 819 */
      connect(Gain_Light_driver_820.y, Light_820.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_820.u);  connect(Light_Driver_819.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_819.p, Light_Driver_819.pin_p);
      connect(Light_819.n, GndDC.p);
      connect(Light_Driver_819.hPin_N, GndAC.pin);
      connect(Light_Driver_819.pin_n, GndDC.p);

    /* Light Connections 818 */
      connect(Gain_Light_driver_819.y, Light_819.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_819.u);  connect(Light_Driver_818.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_818.p, Light_Driver_818.pin_p);
      connect(Light_818.n, GndDC.p);
      connect(Light_Driver_818.hPin_N, GndAC.pin);
      connect(Light_Driver_818.pin_n, GndDC.p);

    /* Light Connections 780 */
      connect(Gain_Light_driver_818.y, Light_818.u);
      connect(combiTimeTable_L3_Zn3_Lights.y[1], Gain_Light_driver_818.u);  connect(Light_Driver_780.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_780.p, Light_Driver_780.pin_p);
      connect(Light_780.n, GndDC.p);
      connect(Light_Driver_780.hPin_N, GndAC.pin);
      connect(Light_Driver_780.pin_n, GndDC.p);

    /* Light Connections 779 */
      connect(Gain_Light_driver_780.y, Light_780.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_780.u);  connect(Light_Driver_779.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_779.p, Light_Driver_779.pin_p);
      connect(Light_779.n, GndDC.p);
      connect(Light_Driver_779.hPin_N, GndAC.pin);
      connect(Light_Driver_779.pin_n, GndDC.p);

    /* Light Connections 778 */
      connect(Gain_Light_driver_779.y, Light_779.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_779.u);  connect(Light_Driver_778.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_778.p, Light_Driver_778.pin_p);
      connect(Light_778.n, GndDC.p);
      connect(Light_Driver_778.hPin_N, GndAC.pin);
      connect(Light_Driver_778.pin_n, GndDC.p);

    /* Light Connections 777 */
      connect(Gain_Light_driver_778.y, Light_778.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_778.u);  connect(Light_Driver_777.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_777.p, Light_Driver_777.pin_p);
      connect(Light_777.n, GndDC.p);
      connect(Light_Driver_777.hPin_N, GndAC.pin);
      connect(Light_Driver_777.pin_n, GndDC.p);

    /* Light Connections 729 */
      connect(Gain_Light_driver_777.y, Light_777.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_777.u);  connect(Light_Driver_729.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_729.p, Light_Driver_729.pin_p);
      connect(Light_729.n, GndDC.p);
      connect(Light_Driver_729.hPin_N, GndAC.pin);
      connect(Light_Driver_729.pin_n, GndDC.p);

    /* Light Connections 728 */
      connect(Gain_Light_driver_729.y, Light_729.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_729.u);  connect(Light_Driver_728.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_728.p, Light_Driver_728.pin_p);
      connect(Light_728.n, GndDC.p);
      connect(Light_Driver_728.hPin_N, GndAC.pin);
      connect(Light_Driver_728.pin_n, GndDC.p);

    /* Light Connections 636 */
      connect(Gain_Light_driver_728.y, Light_728.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_728.u);  connect(Light_Driver_636.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_636.p, Light_Driver_636.pin_p);
      connect(Light_636.n, GndDC.p);
      connect(Light_Driver_636.hPin_N, GndAC.pin);
      connect(Light_Driver_636.pin_n, GndDC.p);

    /* Light Connections 635 */
      connect(Gain_Light_driver_636.y, Light_636.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_636.u);  connect(Light_Driver_635.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_635.p, Light_Driver_635.pin_p);
      connect(Light_635.n, GndDC.p);
      connect(Light_Driver_635.hPin_N, GndAC.pin);
      connect(Light_Driver_635.pin_n, GndDC.p);

    /* Light Connections 634 */
      connect(Gain_Light_driver_635.y, Light_635.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_635.u);  connect(Light_Driver_634.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_634.p, Light_Driver_634.pin_p);
      connect(Light_634.n, GndDC.p);
      connect(Light_Driver_634.hPin_N, GndAC.pin);
      connect(Light_Driver_634.pin_n, GndDC.p);

    /* Light Connections 633 */
      connect(Gain_Light_driver_634.y, Light_634.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_634.u);  connect(Light_Driver_633.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_633.p, Light_Driver_633.pin_p);
      connect(Light_633.n, GndDC.p);
      connect(Light_Driver_633.hPin_N, GndAC.pin);
      connect(Light_Driver_633.pin_n, GndDC.p);

    /* Light Connections 632 */
      connect(Gain_Light_driver_633.y, Light_633.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_633.u);  connect(Light_Driver_632.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_632.p, Light_Driver_632.pin_p);
      connect(Light_632.n, GndDC.p);
      connect(Light_Driver_632.hPin_N, GndAC.pin);
      connect(Light_Driver_632.pin_n, GndDC.p);

    /* Light Connections 631 */
      connect(Gain_Light_driver_632.y, Light_632.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_632.u);  connect(Light_Driver_631.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_631.p, Light_Driver_631.pin_p);
      connect(Light_631.n, GndDC.p);
      connect(Light_Driver_631.hPin_N, GndAC.pin);
      connect(Light_Driver_631.pin_n, GndDC.p);

    /* Light Connections 630 */
      connect(Gain_Light_driver_631.y, Light_631.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_631.u);  connect(Light_Driver_630.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_630.p, Light_Driver_630.pin_p);
      connect(Light_630.n, GndDC.p);
      connect(Light_Driver_630.hPin_N, GndAC.pin);
      connect(Light_Driver_630.pin_n, GndDC.p);

    /* Light Connections 629 */
      connect(Gain_Light_driver_630.y, Light_630.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_630.u);  connect(Light_Driver_629.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_629.p, Light_Driver_629.pin_p);
      connect(Light_629.n, GndDC.p);
      connect(Light_Driver_629.hPin_N, GndAC.pin);
      connect(Light_Driver_629.pin_n, GndDC.p);

    /* Light Connections 628 */
      connect(Gain_Light_driver_629.y, Light_629.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_629.u);  connect(Light_Driver_628.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_628.p, Light_Driver_628.pin_p);
      connect(Light_628.n, GndDC.p);
      connect(Light_Driver_628.hPin_N, GndAC.pin);
      connect(Light_Driver_628.pin_n, GndDC.p);

    /* Light Connections 627 */
      connect(Gain_Light_driver_628.y, Light_628.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_628.u);  connect(Light_Driver_627.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_627.p, Light_Driver_627.pin_p);
      connect(Light_627.n, GndDC.p);
      connect(Light_Driver_627.hPin_N, GndAC.pin);
      connect(Light_Driver_627.pin_n, GndDC.p);

    /* Light Connections 626 */
      connect(Gain_Light_driver_627.y, Light_627.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_627.u);  connect(Light_Driver_626.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_626.p, Light_Driver_626.pin_p);
      connect(Light_626.n, GndDC.p);
      connect(Light_Driver_626.hPin_N, GndAC.pin);
      connect(Light_Driver_626.pin_n, GndDC.p);

    /* Light Connections 625 */
      connect(Gain_Light_driver_626.y, Light_626.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_626.u);  connect(Light_Driver_625.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_625.p, Light_Driver_625.pin_p);
      connect(Light_625.n, GndDC.p);
      connect(Light_Driver_625.hPin_N, GndAC.pin);
      connect(Light_Driver_625.pin_n, GndDC.p);

    /* Light Connections 624 */
      connect(Gain_Light_driver_625.y, Light_625.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_625.u);  connect(Light_Driver_624.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_624.p, Light_Driver_624.pin_p);
      connect(Light_624.n, GndDC.p);
      connect(Light_Driver_624.hPin_N, GndAC.pin);
      connect(Light_Driver_624.pin_n, GndDC.p);

    /* Light Connections 623 */
      connect(Gain_Light_driver_624.y, Light_624.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_624.u);  connect(Light_Driver_623.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_623.p, Light_Driver_623.pin_p);
      connect(Light_623.n, GndDC.p);
      connect(Light_Driver_623.hPin_N, GndAC.pin);
      connect(Light_Driver_623.pin_n, GndDC.p);

    /* Light Connections 622 */
      connect(Gain_Light_driver_623.y, Light_623.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_623.u);  connect(Light_Driver_622.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_622.p, Light_Driver_622.pin_p);
      connect(Light_622.n, GndDC.p);
      connect(Light_Driver_622.hPin_N, GndAC.pin);
      connect(Light_Driver_622.pin_n, GndDC.p);

    /* Light Connections 621 */
      connect(Gain_Light_driver_622.y, Light_622.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_622.u);  connect(Light_Driver_621.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_621.p, Light_Driver_621.pin_p);
      connect(Light_621.n, GndDC.p);
      connect(Light_Driver_621.hPin_N, GndAC.pin);
      connect(Light_Driver_621.pin_n, GndDC.p);

    /* Light Connections 620 */
      connect(Gain_Light_driver_621.y, Light_621.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_621.u);  connect(Light_Driver_620.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_620.p, Light_Driver_620.pin_p);
      connect(Light_620.n, GndDC.p);
      connect(Light_Driver_620.hPin_N, GndAC.pin);
      connect(Light_Driver_620.pin_n, GndDC.p);

    /* Light Connections 619 */
      connect(Gain_Light_driver_620.y, Light_620.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_620.u);  connect(Light_Driver_619.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_619.p, Light_Driver_619.pin_p);
      connect(Light_619.n, GndDC.p);
      connect(Light_Driver_619.hPin_N, GndAC.pin);
      connect(Light_Driver_619.pin_n, GndDC.p);

    /* Light Connections 618 */
      connect(Gain_Light_driver_619.y, Light_619.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_619.u);  connect(Light_Driver_618.hPin_L,  cable_light_L3_1C.pin_p);
      connect(Light_618.p, Light_Driver_618.pin_p);
      connect(Light_618.n, GndDC.p);
      connect(Light_Driver_618.hPin_N, GndAC.pin);
      connect(Light_Driver_618.pin_n, GndDC.p);

      connect(Gain_Light_driver_618.y, Light_618.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_618.u);

      annotation ();
    end Light_Panel_L3_1C;

    model Light_Panel_L3_2A
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L3_2A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            91)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Core_Lights(
        tableOnFile=true,
        tableName="L3-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn1_Lights(
        tableOnFile=true,
        tableName="L3-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn2_Lights(
        tableOnFile=true,
        tableName="L3-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn3_Lights(
        tableOnFile=true,
        tableName="L3-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn4_Lights(
        tableOnFile=true,
        tableName="L3-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 742 */
      HPF.DC.Variable_DC_Load Light_742;

    /* Light Model 741 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_742(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_742(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_741;

    /* Light Model 740 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_741(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_741(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_740;

    /* Light Model 739 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_740(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_740(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_739;

    /* Light Model 738 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_739(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_739(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_738;

    /* Light Model 737 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_738(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_738(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_737;

    /* Light Model 736 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_737(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_737(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_736;

    /* Light Model 698 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_736(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_736(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_698;

    /* Light Model 697 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_698(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_698(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_697;

    /* Light Model 694 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_697(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_697(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_694;

    /* Light Model 693 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_694(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_694(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_693;

    /* Light Model 692 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_693(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_693(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_692;

    /* Light Model 691 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_692(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_692(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_691;

    /* Light Model 690 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_691(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_691(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_690;

    /* Light Model 689 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_690(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_690(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_689;

    /* Light Model 688 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_689(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_689(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_688;

    /* Light Model 687 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_688(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_688(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_687;

    /* Light Model 686 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_687(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_687(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_686;

    /* Light Model 685 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_686(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_686(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_685;

    /* Light Model 684 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_685(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_685(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_684;

    /* Light Model 683 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_684(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_684(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_683;

    /* Light Model 682 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_683(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_683(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_682;

    /* Light Model 681 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_682(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_682(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_681;

    /* Light Model 680 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_681(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_681(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_680;

    /* Light Model 679 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_680(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_680(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_679;

    /* Light Model 678 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_679(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_679(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_678;

    /* Light Model 677 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_678(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_678(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_677;

    /* Light Model 676 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_677(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_677(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_676;

    /* Light Model 675 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_676(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_676(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_675;

    /* Light Model 671 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_675(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_675(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_671;

    /* Light Model 658 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_671(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_671(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_658;

    /* Light Model 657 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_658(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_658(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_657;

    /* Light Model 656 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_657(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_657(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_656;

    /* Light Model 655 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_656(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_656(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_655;

    /* Light Model 654 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_655(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_655(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_654;

    /* Light Model 653 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_654(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_654(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_653;

    /* Light Model 652 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_653(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_653(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_652;

    /* Light Model 651 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_652(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_652(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_651;

    /* Light Model 650 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_651(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_651(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_650;

    /* Light Model 649 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_650(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_650(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_649;

    /* Light Model 648 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_649(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_649(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_648;

    /* Light Model 647 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_648(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_648(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_647;

    /* Light Model 639 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_647(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_647(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_639;

    /* Light Model 577 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_639(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_639(k=31) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_577;

    /* Light Model 576 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_577(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_577(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_576;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_576(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_576(k=22) annotation (HideResult=true);

    equation
      connect(cable_light_L3_2A.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 742 */
      connect(Light_Driver_742.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_742.p, Light_Driver_742.pin_p);
      connect(Light_742.n, GndDC.p);
      connect(Light_Driver_742.hPin_N, GndAC.pin);
      connect(Light_Driver_742.pin_n, GndDC.p);

    /* Light Connections 741 */
      connect(Gain_Light_driver_742.y, Light_742.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_742.u);  connect(Light_Driver_741.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_741.p, Light_Driver_741.pin_p);
      connect(Light_741.n, GndDC.p);
      connect(Light_Driver_741.hPin_N, GndAC.pin);
      connect(Light_Driver_741.pin_n, GndDC.p);

    /* Light Connections 740 */
      connect(Gain_Light_driver_741.y, Light_741.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_741.u);  connect(Light_Driver_740.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_740.p, Light_Driver_740.pin_p);
      connect(Light_740.n, GndDC.p);
      connect(Light_Driver_740.hPin_N, GndAC.pin);
      connect(Light_Driver_740.pin_n, GndDC.p);

    /* Light Connections 739 */
      connect(Gain_Light_driver_740.y, Light_740.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_740.u);  connect(Light_Driver_739.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_739.p, Light_Driver_739.pin_p);
      connect(Light_739.n, GndDC.p);
      connect(Light_Driver_739.hPin_N, GndAC.pin);
      connect(Light_Driver_739.pin_n, GndDC.p);

    /* Light Connections 738 */
      connect(Gain_Light_driver_739.y, Light_739.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_739.u);  connect(Light_Driver_738.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_738.p, Light_Driver_738.pin_p);
      connect(Light_738.n, GndDC.p);
      connect(Light_Driver_738.hPin_N, GndAC.pin);
      connect(Light_Driver_738.pin_n, GndDC.p);

    /* Light Connections 737 */
      connect(Gain_Light_driver_738.y, Light_738.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_738.u);  connect(Light_Driver_737.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_737.p, Light_Driver_737.pin_p);
      connect(Light_737.n, GndDC.p);
      connect(Light_Driver_737.hPin_N, GndAC.pin);
      connect(Light_Driver_737.pin_n, GndDC.p);

    /* Light Connections 736 */
      connect(Gain_Light_driver_737.y, Light_737.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_737.u);  connect(Light_Driver_736.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_736.p, Light_Driver_736.pin_p);
      connect(Light_736.n, GndDC.p);
      connect(Light_Driver_736.hPin_N, GndAC.pin);
      connect(Light_Driver_736.pin_n, GndDC.p);

    /* Light Connections 698 */
      connect(Gain_Light_driver_736.y, Light_736.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_736.u);  connect(Light_Driver_698.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_698.p, Light_Driver_698.pin_p);
      connect(Light_698.n, GndDC.p);
      connect(Light_Driver_698.hPin_N, GndAC.pin);
      connect(Light_Driver_698.pin_n, GndDC.p);

    /* Light Connections 697 */
      connect(Gain_Light_driver_698.y, Light_698.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_698.u);  connect(Light_Driver_697.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_697.p, Light_Driver_697.pin_p);
      connect(Light_697.n, GndDC.p);
      connect(Light_Driver_697.hPin_N, GndAC.pin);
      connect(Light_Driver_697.pin_n, GndDC.p);

    /* Light Connections 694 */
      connect(Gain_Light_driver_697.y, Light_697.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_697.u);  connect(Light_Driver_694.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_694.p, Light_Driver_694.pin_p);
      connect(Light_694.n, GndDC.p);
      connect(Light_Driver_694.hPin_N, GndAC.pin);
      connect(Light_Driver_694.pin_n, GndDC.p);

    /* Light Connections 693 */
      connect(Gain_Light_driver_694.y, Light_694.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_694.u);  connect(Light_Driver_693.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_693.p, Light_Driver_693.pin_p);
      connect(Light_693.n, GndDC.p);
      connect(Light_Driver_693.hPin_N, GndAC.pin);
      connect(Light_Driver_693.pin_n, GndDC.p);

    /* Light Connections 692 */
      connect(Gain_Light_driver_693.y, Light_693.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_693.u);  connect(Light_Driver_692.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_692.p, Light_Driver_692.pin_p);
      connect(Light_692.n, GndDC.p);
      connect(Light_Driver_692.hPin_N, GndAC.pin);
      connect(Light_Driver_692.pin_n, GndDC.p);

    /* Light Connections 691 */
      connect(Gain_Light_driver_692.y, Light_692.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_692.u);  connect(Light_Driver_691.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_691.p, Light_Driver_691.pin_p);
      connect(Light_691.n, GndDC.p);
      connect(Light_Driver_691.hPin_N, GndAC.pin);
      connect(Light_Driver_691.pin_n, GndDC.p);

    /* Light Connections 690 */
      connect(Gain_Light_driver_691.y, Light_691.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_691.u);  connect(Light_Driver_690.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_690.p, Light_Driver_690.pin_p);
      connect(Light_690.n, GndDC.p);
      connect(Light_Driver_690.hPin_N, GndAC.pin);
      connect(Light_Driver_690.pin_n, GndDC.p);

    /* Light Connections 689 */
      connect(Gain_Light_driver_690.y, Light_690.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_690.u);  connect(Light_Driver_689.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_689.p, Light_Driver_689.pin_p);
      connect(Light_689.n, GndDC.p);
      connect(Light_Driver_689.hPin_N, GndAC.pin);
      connect(Light_Driver_689.pin_n, GndDC.p);

    /* Light Connections 688 */
      connect(Gain_Light_driver_689.y, Light_689.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_689.u);  connect(Light_Driver_688.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_688.p, Light_Driver_688.pin_p);
      connect(Light_688.n, GndDC.p);
      connect(Light_Driver_688.hPin_N, GndAC.pin);
      connect(Light_Driver_688.pin_n, GndDC.p);

    /* Light Connections 687 */
      connect(Gain_Light_driver_688.y, Light_688.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_688.u);  connect(Light_Driver_687.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_687.p, Light_Driver_687.pin_p);
      connect(Light_687.n, GndDC.p);
      connect(Light_Driver_687.hPin_N, GndAC.pin);
      connect(Light_Driver_687.pin_n, GndDC.p);

    /* Light Connections 686 */
      connect(Gain_Light_driver_687.y, Light_687.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_687.u);  connect(Light_Driver_686.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_686.p, Light_Driver_686.pin_p);
      connect(Light_686.n, GndDC.p);
      connect(Light_Driver_686.hPin_N, GndAC.pin);
      connect(Light_Driver_686.pin_n, GndDC.p);

    /* Light Connections 685 */
      connect(Gain_Light_driver_686.y, Light_686.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_686.u);  connect(Light_Driver_685.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_685.p, Light_Driver_685.pin_p);
      connect(Light_685.n, GndDC.p);
      connect(Light_Driver_685.hPin_N, GndAC.pin);
      connect(Light_Driver_685.pin_n, GndDC.p);

    /* Light Connections 684 */
      connect(Gain_Light_driver_685.y, Light_685.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_685.u);  connect(Light_Driver_684.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_684.p, Light_Driver_684.pin_p);
      connect(Light_684.n, GndDC.p);
      connect(Light_Driver_684.hPin_N, GndAC.pin);
      connect(Light_Driver_684.pin_n, GndDC.p);

    /* Light Connections 683 */
      connect(Gain_Light_driver_684.y, Light_684.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_684.u);  connect(Light_Driver_683.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_683.p, Light_Driver_683.pin_p);
      connect(Light_683.n, GndDC.p);
      connect(Light_Driver_683.hPin_N, GndAC.pin);
      connect(Light_Driver_683.pin_n, GndDC.p);

    /* Light Connections 682 */
      connect(Gain_Light_driver_683.y, Light_683.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_683.u);  connect(Light_Driver_682.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_682.p, Light_Driver_682.pin_p);
      connect(Light_682.n, GndDC.p);
      connect(Light_Driver_682.hPin_N, GndAC.pin);
      connect(Light_Driver_682.pin_n, GndDC.p);

    /* Light Connections 681 */
      connect(Gain_Light_driver_682.y, Light_682.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_682.u);  connect(Light_Driver_681.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_681.p, Light_Driver_681.pin_p);
      connect(Light_681.n, GndDC.p);
      connect(Light_Driver_681.hPin_N, GndAC.pin);
      connect(Light_Driver_681.pin_n, GndDC.p);

    /* Light Connections 680 */
      connect(Gain_Light_driver_681.y, Light_681.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_681.u);  connect(Light_Driver_680.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_680.p, Light_Driver_680.pin_p);
      connect(Light_680.n, GndDC.p);
      connect(Light_Driver_680.hPin_N, GndAC.pin);
      connect(Light_Driver_680.pin_n, GndDC.p);

    /* Light Connections 679 */
      connect(Gain_Light_driver_680.y, Light_680.u);
      connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_680.u);  connect(Light_Driver_679.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_679.p, Light_Driver_679.pin_p);
      connect(Light_679.n, GndDC.p);
      connect(Light_Driver_679.hPin_N, GndAC.pin);
      connect(Light_Driver_679.pin_n, GndDC.p);

    /* Light Connections 678 */
      connect(Gain_Light_driver_679.y, Light_679.u);
      connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_679.u);  connect(Light_Driver_678.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_678.p, Light_Driver_678.pin_p);
      connect(Light_678.n, GndDC.p);
      connect(Light_Driver_678.hPin_N, GndAC.pin);
      connect(Light_Driver_678.pin_n, GndDC.p);

    /* Light Connections 677 */
      connect(Gain_Light_driver_678.y, Light_678.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_678.u);  connect(Light_Driver_677.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_677.p, Light_Driver_677.pin_p);
      connect(Light_677.n, GndDC.p);
      connect(Light_Driver_677.hPin_N, GndAC.pin);
      connect(Light_Driver_677.pin_n, GndDC.p);

    /* Light Connections 676 */
      connect(Gain_Light_driver_677.y, Light_677.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_677.u);  connect(Light_Driver_676.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_676.p, Light_Driver_676.pin_p);
      connect(Light_676.n, GndDC.p);
      connect(Light_Driver_676.hPin_N, GndAC.pin);
      connect(Light_Driver_676.pin_n, GndDC.p);

    /* Light Connections 675 */
      connect(Gain_Light_driver_676.y, Light_676.u);
      connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_676.u);  connect(Light_Driver_675.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_675.p, Light_Driver_675.pin_p);
      connect(Light_675.n, GndDC.p);
      connect(Light_Driver_675.hPin_N, GndAC.pin);
      connect(Light_Driver_675.pin_n, GndDC.p);

    /* Light Connections 671 */
      connect(Gain_Light_driver_675.y, Light_675.u);
      connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_675.u);  connect(Light_Driver_671.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_671.p, Light_Driver_671.pin_p);
      connect(Light_671.n, GndDC.p);
      connect(Light_Driver_671.hPin_N, GndAC.pin);
      connect(Light_Driver_671.pin_n, GndDC.p);

    /* Light Connections 658 */
      connect(Gain_Light_driver_671.y, Light_671.u);
      connect(combiTimeTable_L3_Zn4_Lights.y[1], Gain_Light_driver_671.u);  connect(Light_Driver_658.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_658.p, Light_Driver_658.pin_p);
      connect(Light_658.n, GndDC.p);
      connect(Light_Driver_658.hPin_N, GndAC.pin);
      connect(Light_Driver_658.pin_n, GndDC.p);

    /* Light Connections 657 */
      connect(Gain_Light_driver_658.y, Light_658.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_658.u);  connect(Light_Driver_657.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_657.p, Light_Driver_657.pin_p);
      connect(Light_657.n, GndDC.p);
      connect(Light_Driver_657.hPin_N, GndAC.pin);
      connect(Light_Driver_657.pin_n, GndDC.p);

    /* Light Connections 656 */
      connect(Gain_Light_driver_657.y, Light_657.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_657.u);  connect(Light_Driver_656.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_656.p, Light_Driver_656.pin_p);
      connect(Light_656.n, GndDC.p);
      connect(Light_Driver_656.hPin_N, GndAC.pin);
      connect(Light_Driver_656.pin_n, GndDC.p);

    /* Light Connections 655 */
      connect(Gain_Light_driver_656.y, Light_656.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_656.u);  connect(Light_Driver_655.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_655.p, Light_Driver_655.pin_p);
      connect(Light_655.n, GndDC.p);
      connect(Light_Driver_655.hPin_N, GndAC.pin);
      connect(Light_Driver_655.pin_n, GndDC.p);

    /* Light Connections 654 */
      connect(Gain_Light_driver_655.y, Light_655.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_655.u);  connect(Light_Driver_654.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_654.p, Light_Driver_654.pin_p);
      connect(Light_654.n, GndDC.p);
      connect(Light_Driver_654.hPin_N, GndAC.pin);
      connect(Light_Driver_654.pin_n, GndDC.p);

    /* Light Connections 653 */
      connect(Gain_Light_driver_654.y, Light_654.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_654.u);  connect(Light_Driver_653.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_653.p, Light_Driver_653.pin_p);
      connect(Light_653.n, GndDC.p);
      connect(Light_Driver_653.hPin_N, GndAC.pin);
      connect(Light_Driver_653.pin_n, GndDC.p);

    /* Light Connections 652 */
      connect(Gain_Light_driver_653.y, Light_653.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_653.u);  connect(Light_Driver_652.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_652.p, Light_Driver_652.pin_p);
      connect(Light_652.n, GndDC.p);
      connect(Light_Driver_652.hPin_N, GndAC.pin);
      connect(Light_Driver_652.pin_n, GndDC.p);

    /* Light Connections 651 */
      connect(Gain_Light_driver_652.y, Light_652.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_652.u);  connect(Light_Driver_651.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_651.p, Light_Driver_651.pin_p);
      connect(Light_651.n, GndDC.p);
      connect(Light_Driver_651.hPin_N, GndAC.pin);
      connect(Light_Driver_651.pin_n, GndDC.p);

    /* Light Connections 650 */
      connect(Gain_Light_driver_651.y, Light_651.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_651.u);  connect(Light_Driver_650.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_650.p, Light_Driver_650.pin_p);
      connect(Light_650.n, GndDC.p);
      connect(Light_Driver_650.hPin_N, GndAC.pin);
      connect(Light_Driver_650.pin_n, GndDC.p);

    /* Light Connections 649 */
      connect(Gain_Light_driver_650.y, Light_650.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_650.u);  connect(Light_Driver_649.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_649.p, Light_Driver_649.pin_p);
      connect(Light_649.n, GndDC.p);
      connect(Light_Driver_649.hPin_N, GndAC.pin);
      connect(Light_Driver_649.pin_n, GndDC.p);

    /* Light Connections 648 */
      connect(Gain_Light_driver_649.y, Light_649.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_649.u);  connect(Light_Driver_648.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_648.p, Light_Driver_648.pin_p);
      connect(Light_648.n, GndDC.p);
      connect(Light_Driver_648.hPin_N, GndAC.pin);
      connect(Light_Driver_648.pin_n, GndDC.p);

    /* Light Connections 647 */
      connect(Gain_Light_driver_648.y, Light_648.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_648.u);  connect(Light_Driver_647.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_647.p, Light_Driver_647.pin_p);
      connect(Light_647.n, GndDC.p);
      connect(Light_Driver_647.hPin_N, GndAC.pin);
      connect(Light_Driver_647.pin_n, GndDC.p);

    /* Light Connections 639 */
      connect(Gain_Light_driver_647.y, Light_647.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_647.u);  connect(Light_Driver_639.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_639.p, Light_Driver_639.pin_p);
      connect(Light_639.n, GndDC.p);
      connect(Light_Driver_639.hPin_N, GndAC.pin);
      connect(Light_Driver_639.pin_n, GndDC.p);

    /* Light Connections 577 */
      connect(Gain_Light_driver_639.y, Light_639.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_639.u);  connect(Light_Driver_577.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_577.p, Light_Driver_577.pin_p);
      connect(Light_577.n, GndDC.p);
      connect(Light_Driver_577.hPin_N, GndAC.pin);
      connect(Light_Driver_577.pin_n, GndDC.p);

    /* Light Connections 576 */
      connect(Gain_Light_driver_577.y, Light_577.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_577.u);  connect(Light_Driver_576.hPin_L,  cable_light_L3_2A.pin_p);
      connect(Light_576.p, Light_Driver_576.pin_p);
      connect(Light_576.n, GndDC.p);
      connect(Light_Driver_576.hPin_N, GndAC.pin);
      connect(Light_Driver_576.pin_n, GndDC.p);

      connect(Gain_Light_driver_576.y, Light_576.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_576.u);

      annotation ();
    end Light_Panel_L3_2A;

    model Light_Panel_L3_2B
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L3_2B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            82)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Core_Lights(
        tableOnFile=true,
        tableName="L3-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn1_Lights(
        tableOnFile=true,
        tableName="L3-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn2_Lights(
        tableOnFile=true,
        tableName="L3-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn3_Lights(
        tableOnFile=true,
        tableName="L3-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn4_Lights(
        tableOnFile=true,
        tableName="L3-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 792 */
      HPF.DC.Variable_DC_Load Light_792;

    /* Light Model 791 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_792(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_792(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_791;

    /* Light Model 790 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_791(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_791(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_790;

    /* Light Model 789 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_790(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_790(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_789;

    /* Light Model 747 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_789(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_789(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_747;

    /* Light Model 746 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_747(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_747(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_746;

    /* Light Model 745 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_746(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_746(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_745;

    /* Light Model 744 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_745(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_745(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_744;

    /* Light Model 743 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_744(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_744(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_743;

    /* Light Model 724 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_743(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_743(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_724;

    /* Light Model 723 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_724(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_724(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_723;

    /* Light Model 722 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_723(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_723(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_722;

    /* Light Model 721 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_722(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_722(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_721;

    /* Light Model 720 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_721(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_721(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_720;

    /* Light Model 719 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_720(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_720(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_719;

    /* Light Model 718 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_719(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_719(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_718;

    /* Light Model 717 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_718(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_718(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_717;

    /* Light Model 716 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_717(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_717(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_716;

    /* Light Model 715 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_716(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_716(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_715;

    /* Light Model 714 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_715(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_715(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_714;

    /* Light Model 713 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_714(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_714(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_713;

    /* Light Model 712 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_713(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_713(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_712;

    /* Light Model 711 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_712(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_712(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_711;

    /* Light Model 710 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_711(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_711(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_710;

    /* Light Model 709 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_710(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_710(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_709;

    /* Light Model 708 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_709(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_709(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_708;

    /* Light Model 707 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_708(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_708(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_707;

    /* Light Model 706 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_707(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_707(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_706;

    /* Light Model 705 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_706(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_706(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_705;

    /* Light Model 704 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_705(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_705(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_704;

    /* Light Model 703 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_704(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_704(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_703;

    /* Light Model 702 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_703(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_703(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_702;

    /* Light Model 701 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_702(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_702(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_701;

    /* Light Model 700 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_701(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_701(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_700;

    /* Light Model 699 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_700(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_700(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_699;

    /* Light Model 696 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_699(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_699(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_696;

    /* Light Model 695 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_696(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_696(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_695;

    /* Light Model 644 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_695(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_695(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_644;

    /* Light Model 643 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_644(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_644(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_643;

    /* Light Model 568 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_643(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_643(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_568;

    /* Light Model 567 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_568(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_568(k=35) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_567;

    /* Light Model 566 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_567(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_567(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_566;

    /* Light Model 565 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_566(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_566(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_565;

    /* Light Model 564 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_565(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_565(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_564;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_564(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_564(k=21) annotation (HideResult=true);

    equation
      connect(cable_light_L3_2B.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 792 */
      connect(Light_Driver_792.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_792.p, Light_Driver_792.pin_p);
      connect(Light_792.n, GndDC.p);
      connect(Light_Driver_792.hPin_N, GndAC.pin);
      connect(Light_Driver_792.pin_n, GndDC.p);

    /* Light Connections 791 */
      connect(Gain_Light_driver_792.y, Light_792.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_792.u);  connect(Light_Driver_791.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_791.p, Light_Driver_791.pin_p);
      connect(Light_791.n, GndDC.p);
      connect(Light_Driver_791.hPin_N, GndAC.pin);
      connect(Light_Driver_791.pin_n, GndDC.p);

    /* Light Connections 790 */
      connect(Gain_Light_driver_791.y, Light_791.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_791.u);  connect(Light_Driver_790.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_790.p, Light_Driver_790.pin_p);
      connect(Light_790.n, GndDC.p);
      connect(Light_Driver_790.hPin_N, GndAC.pin);
      connect(Light_Driver_790.pin_n, GndDC.p);

    /* Light Connections 789 */
      connect(Gain_Light_driver_790.y, Light_790.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_790.u);  connect(Light_Driver_789.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_789.p, Light_Driver_789.pin_p);
      connect(Light_789.n, GndDC.p);
      connect(Light_Driver_789.hPin_N, GndAC.pin);
      connect(Light_Driver_789.pin_n, GndDC.p);

    /* Light Connections 747 */
      connect(Gain_Light_driver_789.y, Light_789.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_789.u);  connect(Light_Driver_747.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_747.p, Light_Driver_747.pin_p);
      connect(Light_747.n, GndDC.p);
      connect(Light_Driver_747.hPin_N, GndAC.pin);
      connect(Light_Driver_747.pin_n, GndDC.p);

    /* Light Connections 746 */
      connect(Gain_Light_driver_747.y, Light_747.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_747.u);  connect(Light_Driver_746.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_746.p, Light_Driver_746.pin_p);
      connect(Light_746.n, GndDC.p);
      connect(Light_Driver_746.hPin_N, GndAC.pin);
      connect(Light_Driver_746.pin_n, GndDC.p);

    /* Light Connections 745 */
      connect(Gain_Light_driver_746.y, Light_746.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_746.u);  connect(Light_Driver_745.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_745.p, Light_Driver_745.pin_p);
      connect(Light_745.n, GndDC.p);
      connect(Light_Driver_745.hPin_N, GndAC.pin);
      connect(Light_Driver_745.pin_n, GndDC.p);

    /* Light Connections 744 */
      connect(Gain_Light_driver_745.y, Light_745.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_745.u);  connect(Light_Driver_744.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_744.p, Light_Driver_744.pin_p);
      connect(Light_744.n, GndDC.p);
      connect(Light_Driver_744.hPin_N, GndAC.pin);
      connect(Light_Driver_744.pin_n, GndDC.p);

    /* Light Connections 743 */
      connect(Gain_Light_driver_744.y, Light_744.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_744.u);  connect(Light_Driver_743.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_743.p, Light_Driver_743.pin_p);
      connect(Light_743.n, GndDC.p);
      connect(Light_Driver_743.hPin_N, GndAC.pin);
      connect(Light_Driver_743.pin_n, GndDC.p);

    /* Light Connections 724 */
      connect(Gain_Light_driver_743.y, Light_743.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_743.u);  connect(Light_Driver_724.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_724.p, Light_Driver_724.pin_p);
      connect(Light_724.n, GndDC.p);
      connect(Light_Driver_724.hPin_N, GndAC.pin);
      connect(Light_Driver_724.pin_n, GndDC.p);

    /* Light Connections 723 */
      connect(Gain_Light_driver_724.y, Light_724.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_724.u);  connect(Light_Driver_723.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_723.p, Light_Driver_723.pin_p);
      connect(Light_723.n, GndDC.p);
      connect(Light_Driver_723.hPin_N, GndAC.pin);
      connect(Light_Driver_723.pin_n, GndDC.p);

    /* Light Connections 722 */
      connect(Gain_Light_driver_723.y, Light_723.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_723.u);  connect(Light_Driver_722.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_722.p, Light_Driver_722.pin_p);
      connect(Light_722.n, GndDC.p);
      connect(Light_Driver_722.hPin_N, GndAC.pin);
      connect(Light_Driver_722.pin_n, GndDC.p);

    /* Light Connections 721 */
      connect(Gain_Light_driver_722.y, Light_722.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_722.u);  connect(Light_Driver_721.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_721.p, Light_Driver_721.pin_p);
      connect(Light_721.n, GndDC.p);
      connect(Light_Driver_721.hPin_N, GndAC.pin);
      connect(Light_Driver_721.pin_n, GndDC.p);

    /* Light Connections 720 */
      connect(Gain_Light_driver_721.y, Light_721.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_721.u);  connect(Light_Driver_720.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_720.p, Light_Driver_720.pin_p);
      connect(Light_720.n, GndDC.p);
      connect(Light_Driver_720.hPin_N, GndAC.pin);
      connect(Light_Driver_720.pin_n, GndDC.p);

    /* Light Connections 719 */
      connect(Gain_Light_driver_720.y, Light_720.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_720.u);  connect(Light_Driver_719.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_719.p, Light_Driver_719.pin_p);
      connect(Light_719.n, GndDC.p);
      connect(Light_Driver_719.hPin_N, GndAC.pin);
      connect(Light_Driver_719.pin_n, GndDC.p);

    /* Light Connections 718 */
      connect(Gain_Light_driver_719.y, Light_719.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_719.u);  connect(Light_Driver_718.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_718.p, Light_Driver_718.pin_p);
      connect(Light_718.n, GndDC.p);
      connect(Light_Driver_718.hPin_N, GndAC.pin);
      connect(Light_Driver_718.pin_n, GndDC.p);

    /* Light Connections 717 */
      connect(Gain_Light_driver_718.y, Light_718.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_718.u);  connect(Light_Driver_717.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_717.p, Light_Driver_717.pin_p);
      connect(Light_717.n, GndDC.p);
      connect(Light_Driver_717.hPin_N, GndAC.pin);
      connect(Light_Driver_717.pin_n, GndDC.p);

    /* Light Connections 716 */
      connect(Gain_Light_driver_717.y, Light_717.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_717.u);  connect(Light_Driver_716.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_716.p, Light_Driver_716.pin_p);
      connect(Light_716.n, GndDC.p);
      connect(Light_Driver_716.hPin_N, GndAC.pin);
      connect(Light_Driver_716.pin_n, GndDC.p);

    /* Light Connections 715 */
      connect(Gain_Light_driver_716.y, Light_716.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_716.u);  connect(Light_Driver_715.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_715.p, Light_Driver_715.pin_p);
      connect(Light_715.n, GndDC.p);
      connect(Light_Driver_715.hPin_N, GndAC.pin);
      connect(Light_Driver_715.pin_n, GndDC.p);

    /* Light Connections 714 */
      connect(Gain_Light_driver_715.y, Light_715.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_715.u);  connect(Light_Driver_714.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_714.p, Light_Driver_714.pin_p);
      connect(Light_714.n, GndDC.p);
      connect(Light_Driver_714.hPin_N, GndAC.pin);
      connect(Light_Driver_714.pin_n, GndDC.p);

    /* Light Connections 713 */
      connect(Gain_Light_driver_714.y, Light_714.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_714.u);  connect(Light_Driver_713.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_713.p, Light_Driver_713.pin_p);
      connect(Light_713.n, GndDC.p);
      connect(Light_Driver_713.hPin_N, GndAC.pin);
      connect(Light_Driver_713.pin_n, GndDC.p);

    /* Light Connections 712 */
      connect(Gain_Light_driver_713.y, Light_713.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_713.u);  connect(Light_Driver_712.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_712.p, Light_Driver_712.pin_p);
      connect(Light_712.n, GndDC.p);
      connect(Light_Driver_712.hPin_N, GndAC.pin);
      connect(Light_Driver_712.pin_n, GndDC.p);

    /* Light Connections 711 */
      connect(Gain_Light_driver_712.y, Light_712.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_712.u);  connect(Light_Driver_711.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_711.p, Light_Driver_711.pin_p);
      connect(Light_711.n, GndDC.p);
      connect(Light_Driver_711.hPin_N, GndAC.pin);
      connect(Light_Driver_711.pin_n, GndDC.p);

    /* Light Connections 710 */
      connect(Gain_Light_driver_711.y, Light_711.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_711.u);  connect(Light_Driver_710.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_710.p, Light_Driver_710.pin_p);
      connect(Light_710.n, GndDC.p);
      connect(Light_Driver_710.hPin_N, GndAC.pin);
      connect(Light_Driver_710.pin_n, GndDC.p);

    /* Light Connections 709 */
      connect(Gain_Light_driver_710.y, Light_710.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_710.u);  connect(Light_Driver_709.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_709.p, Light_Driver_709.pin_p);
      connect(Light_709.n, GndDC.p);
      connect(Light_Driver_709.hPin_N, GndAC.pin);
      connect(Light_Driver_709.pin_n, GndDC.p);

    /* Light Connections 708 */
      connect(Gain_Light_driver_709.y, Light_709.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_709.u);  connect(Light_Driver_708.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_708.p, Light_Driver_708.pin_p);
      connect(Light_708.n, GndDC.p);
      connect(Light_Driver_708.hPin_N, GndAC.pin);
      connect(Light_Driver_708.pin_n, GndDC.p);

    /* Light Connections 707 */
      connect(Gain_Light_driver_708.y, Light_708.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_708.u);  connect(Light_Driver_707.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_707.p, Light_Driver_707.pin_p);
      connect(Light_707.n, GndDC.p);
      connect(Light_Driver_707.hPin_N, GndAC.pin);
      connect(Light_Driver_707.pin_n, GndDC.p);

    /* Light Connections 706 */
      connect(Gain_Light_driver_707.y, Light_707.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_707.u);  connect(Light_Driver_706.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_706.p, Light_Driver_706.pin_p);
      connect(Light_706.n, GndDC.p);
      connect(Light_Driver_706.hPin_N, GndAC.pin);
      connect(Light_Driver_706.pin_n, GndDC.p);

    /* Light Connections 705 */
      connect(Gain_Light_driver_706.y, Light_706.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_706.u);  connect(Light_Driver_705.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_705.p, Light_Driver_705.pin_p);
      connect(Light_705.n, GndDC.p);
      connect(Light_Driver_705.hPin_N, GndAC.pin);
      connect(Light_Driver_705.pin_n, GndDC.p);

    /* Light Connections 704 */
      connect(Gain_Light_driver_705.y, Light_705.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_705.u);  connect(Light_Driver_704.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_704.p, Light_Driver_704.pin_p);
      connect(Light_704.n, GndDC.p);
      connect(Light_Driver_704.hPin_N, GndAC.pin);
      connect(Light_Driver_704.pin_n, GndDC.p);

    /* Light Connections 703 */
      connect(Gain_Light_driver_704.y, Light_704.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_704.u);  connect(Light_Driver_703.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_703.p, Light_Driver_703.pin_p);
      connect(Light_703.n, GndDC.p);
      connect(Light_Driver_703.hPin_N, GndAC.pin);
      connect(Light_Driver_703.pin_n, GndDC.p);

    /* Light Connections 702 */
      connect(Gain_Light_driver_703.y, Light_703.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_703.u);  connect(Light_Driver_702.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_702.p, Light_Driver_702.pin_p);
      connect(Light_702.n, GndDC.p);
      connect(Light_Driver_702.hPin_N, GndAC.pin);
      connect(Light_Driver_702.pin_n, GndDC.p);

    /* Light Connections 701 */
      connect(Gain_Light_driver_702.y, Light_702.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_702.u);  connect(Light_Driver_701.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_701.p, Light_Driver_701.pin_p);
      connect(Light_701.n, GndDC.p);
      connect(Light_Driver_701.hPin_N, GndAC.pin);
      connect(Light_Driver_701.pin_n, GndDC.p);

    /* Light Connections 700 */
      connect(Gain_Light_driver_701.y, Light_701.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_701.u);  connect(Light_Driver_700.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_700.p, Light_Driver_700.pin_p);
      connect(Light_700.n, GndDC.p);
      connect(Light_Driver_700.hPin_N, GndAC.pin);
      connect(Light_Driver_700.pin_n, GndDC.p);

    /* Light Connections 699 */
      connect(Gain_Light_driver_700.y, Light_700.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_700.u);  connect(Light_Driver_699.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_699.p, Light_Driver_699.pin_p);
      connect(Light_699.n, GndDC.p);
      connect(Light_Driver_699.hPin_N, GndAC.pin);
      connect(Light_Driver_699.pin_n, GndDC.p);

    /* Light Connections 696 */
      connect(Gain_Light_driver_699.y, Light_699.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_699.u);  connect(Light_Driver_696.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_696.p, Light_Driver_696.pin_p);
      connect(Light_696.n, GndDC.p);
      connect(Light_Driver_696.hPin_N, GndAC.pin);
      connect(Light_Driver_696.pin_n, GndDC.p);

    /* Light Connections 695 */
      connect(Gain_Light_driver_696.y, Light_696.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_696.u);  connect(Light_Driver_695.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_695.p, Light_Driver_695.pin_p);
      connect(Light_695.n, GndDC.p);
      connect(Light_Driver_695.hPin_N, GndAC.pin);
      connect(Light_Driver_695.pin_n, GndDC.p);

    /* Light Connections 644 */
      connect(Gain_Light_driver_695.y, Light_695.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_695.u);  connect(Light_Driver_644.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_644.p, Light_Driver_644.pin_p);
      connect(Light_644.n, GndDC.p);
      connect(Light_Driver_644.hPin_N, GndAC.pin);
      connect(Light_Driver_644.pin_n, GndDC.p);

    /* Light Connections 643 */
      connect(Gain_Light_driver_644.y, Light_644.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_644.u);  connect(Light_Driver_643.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_643.p, Light_Driver_643.pin_p);
      connect(Light_643.n, GndDC.p);
      connect(Light_Driver_643.hPin_N, GndAC.pin);
      connect(Light_Driver_643.pin_n, GndDC.p);

    /* Light Connections 568 */
      connect(Gain_Light_driver_643.y, Light_643.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_643.u);  connect(Light_Driver_568.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_568.p, Light_Driver_568.pin_p);
      connect(Light_568.n, GndDC.p);
      connect(Light_Driver_568.hPin_N, GndAC.pin);
      connect(Light_Driver_568.pin_n, GndDC.p);

    /* Light Connections 567 */
      connect(Gain_Light_driver_568.y, Light_568.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_568.u);  connect(Light_Driver_567.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_567.p, Light_Driver_567.pin_p);
      connect(Light_567.n, GndDC.p);
      connect(Light_Driver_567.hPin_N, GndAC.pin);
      connect(Light_Driver_567.pin_n, GndDC.p);

    /* Light Connections 566 */
      connect(Gain_Light_driver_567.y, Light_567.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_567.u);  connect(Light_Driver_566.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_566.p, Light_Driver_566.pin_p);
      connect(Light_566.n, GndDC.p);
      connect(Light_Driver_566.hPin_N, GndAC.pin);
      connect(Light_Driver_566.pin_n, GndDC.p);

    /* Light Connections 565 */
      connect(Gain_Light_driver_566.y, Light_566.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_566.u);  connect(Light_Driver_565.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_565.p, Light_Driver_565.pin_p);
      connect(Light_565.n, GndDC.p);
      connect(Light_Driver_565.hPin_N, GndAC.pin);
      connect(Light_Driver_565.pin_n, GndDC.p);

    /* Light Connections 564 */
      connect(Gain_Light_driver_565.y, Light_565.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_565.u);  connect(Light_Driver_564.hPin_L,  cable_light_L3_2B.pin_p);
      connect(Light_564.p, Light_Driver_564.pin_p);
      connect(Light_564.n, GndDC.p);
      connect(Light_Driver_564.hPin_N, GndAC.pin);
      connect(Light_Driver_564.pin_n, GndDC.p);

      connect(Gain_Light_driver_564.y, Light_564.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_564.u);

    end Light_Panel_L3_2B;

    model Light_Panel_L3_2C
      outer HPF.SystemDef systemDef;
      Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
        Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(visible = true, transformation(origin={-80,-14},   extent = {{-8, -8}, {8, 8}}, rotation = -90)));
      HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
        Placement(visible = true, transformation(extent={{-78,8},{-58,28}},         rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      HPF.Cables.NEC_CableModel cable_light_L3_2C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=
            73)
        annotation (Placement(transformation(extent={{-20,12},{-40,32}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Core_Lights(
        tableOnFile=true,
        tableName="L3-Core-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-74,70},{-54,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn1_Lights(
        tableOnFile=true,
        tableName="L3-Zn1-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-40,70},{-20,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn2_Lights(
        tableOnFile=true,
        tableName="L3-Zn2-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{-8,70},{12,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn3_Lights(
        tableOnFile=true,
        tableName="L3-Zn3-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{28,70},{48,90}})));

      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Zn4_Lights(
        tableOnFile=true,
        tableName="L3-Zn4-Lights",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_Light_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{64,70},{84,90}})));

    /* Insert models here */

    /* Light Model 844 */
      HPF.DC.Variable_DC_Load Light_844;

    /* Light Model 843 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_844(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_844(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_843;

    /* Light Model 842 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_843(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_843(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_842;

    /* Light Model 788 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_842(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_842(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_788;

    /* Light Model 787 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_788(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_788(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_787;

    /* Light Model 786 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_787(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_787(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_786;

    /* Light Model 785 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_786(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_786(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_785;

    /* Light Model 784 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_785(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_785(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_784;

    /* Light Model 783 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_784(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_784(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_783;

    /* Light Model 782 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_783(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_783(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_782;

    /* Light Model 781 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_782(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_782(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_781;

    /* Light Model 776 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_781(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_781(k=22) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_776;

    /* Light Model 775 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_776(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_776(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_775;

    /* Light Model 774 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_775(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_775(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_774;

    /* Light Model 773 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_774(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_774(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_773;

    /* Light Model 772 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_773(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_773(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_772;

    /* Light Model 771 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_772(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_772(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_771;

    /* Light Model 770 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_771(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_771(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_770;

    /* Light Model 769 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_770(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_770(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_769;

    /* Light Model 768 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_769(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_769(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_768;

    /* Light Model 767 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_768(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_768(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_767;

    /* Light Model 766 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_767(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_767(k=28) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_766;

    /* Light Model 765 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_766(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_766(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_765;

    /* Light Model 764 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_765(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_765(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_764;

    /* Light Model 763 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_764(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_764(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_763;

    /* Light Model 762 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_763(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_763(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_762;

    /* Light Model 761 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_762(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_762(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_761;

    /* Light Model 760 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_761(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_761(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_760;

    /* Light Model 759 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_760(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_760(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_759;

    /* Light Model 758 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_759(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_759(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_758;

    /* Light Model 757 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_758(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_758(k=25) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_757;

    /* Light Model 756 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_757(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_757(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_756;

    /* Light Model 755 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_756(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_756(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_755;

    /* Light Model 754 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_755(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_755(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_754;

    /* Light Model 753 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_754(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_754(k=40) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_753;

    /* Light Model 752 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_753(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_753(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_752;

    /* Light Model 749 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_752(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_752(k=42) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_749;

    /* Light Model 748 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_749(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_749(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_748;

    /* Light Model 733 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_748(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_748(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_733;

    /* Light Model 732 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_733(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_733(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_732;

    /* Light Model 731 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_732(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_732(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_731;

    /* Light Model 730 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_731(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_731(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_730;

    /* Light Model 727 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_730(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=30,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_730(k=21) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_727;

    /* Light Model 726 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_727(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_727(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_726;

    /* Light Model 725 */
      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_726(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_726(k=34) annotation (HideResult=true);
      HPF.DC.Variable_DC_Load Light_725;

      HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple Light_Driver_725(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=45,P_stby=1.047973212,alpha=0.007433973,beta=0.101408771,gamma=0.050936187);
      Modelica.Blocks.Math.Gain Gain_Light_driver_725(k=34) annotation (HideResult=true);

    equation
      connect(cable_light_L3_2C.pin_n, pin_p) annotation (Line(points={{-40,22},{-54,
              22},{-54,18},{-68,18}}, color={117,80,123}));

    /* Insert equation here */

    /* Light Connections 844 */
      connect(Light_Driver_844.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_844.p, Light_Driver_844.pin_p);
      connect(Light_844.n, GndDC.p);
      connect(Light_Driver_844.hPin_N, GndAC.pin);
      connect(Light_Driver_844.pin_n, GndDC.p);

    /* Light Connections 843 */
      connect(Gain_Light_driver_844.y, Light_844.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_844.u);  connect(Light_Driver_843.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_843.p, Light_Driver_843.pin_p);
      connect(Light_843.n, GndDC.p);
      connect(Light_Driver_843.hPin_N, GndAC.pin);
      connect(Light_Driver_843.pin_n, GndDC.p);

    /* Light Connections 842 */
      connect(Gain_Light_driver_843.y, Light_843.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_843.u);  connect(Light_Driver_842.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_842.p, Light_Driver_842.pin_p);
      connect(Light_842.n, GndDC.p);
      connect(Light_Driver_842.hPin_N, GndAC.pin);
      connect(Light_Driver_842.pin_n, GndDC.p);

    /* Light Connections 788 */
      connect(Gain_Light_driver_842.y, Light_842.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_842.u);  connect(Light_Driver_788.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_788.p, Light_Driver_788.pin_p);
      connect(Light_788.n, GndDC.p);
      connect(Light_Driver_788.hPin_N, GndAC.pin);
      connect(Light_Driver_788.pin_n, GndDC.p);

    /* Light Connections 787 */
      connect(Gain_Light_driver_788.y, Light_788.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_788.u);  connect(Light_Driver_787.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_787.p, Light_Driver_787.pin_p);
      connect(Light_787.n, GndDC.p);
      connect(Light_Driver_787.hPin_N, GndAC.pin);
      connect(Light_Driver_787.pin_n, GndDC.p);

    /* Light Connections 786 */
      connect(Gain_Light_driver_787.y, Light_787.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_787.u);  connect(Light_Driver_786.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_786.p, Light_Driver_786.pin_p);
      connect(Light_786.n, GndDC.p);
      connect(Light_Driver_786.hPin_N, GndAC.pin);
      connect(Light_Driver_786.pin_n, GndDC.p);

    /* Light Connections 785 */
      connect(Gain_Light_driver_786.y, Light_786.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_786.u);  connect(Light_Driver_785.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_785.p, Light_Driver_785.pin_p);
      connect(Light_785.n, GndDC.p);
      connect(Light_Driver_785.hPin_N, GndAC.pin);
      connect(Light_Driver_785.pin_n, GndDC.p);

    /* Light Connections 784 */
      connect(Gain_Light_driver_785.y, Light_785.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_785.u);  connect(Light_Driver_784.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_784.p, Light_Driver_784.pin_p);
      connect(Light_784.n, GndDC.p);
      connect(Light_Driver_784.hPin_N, GndAC.pin);
      connect(Light_Driver_784.pin_n, GndDC.p);

    /* Light Connections 783 */
      connect(Gain_Light_driver_784.y, Light_784.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_784.u);  connect(Light_Driver_783.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_783.p, Light_Driver_783.pin_p);
      connect(Light_783.n, GndDC.p);
      connect(Light_Driver_783.hPin_N, GndAC.pin);
      connect(Light_Driver_783.pin_n, GndDC.p);

    /* Light Connections 782 */
      connect(Gain_Light_driver_783.y, Light_783.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_783.u);  connect(Light_Driver_782.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_782.p, Light_Driver_782.pin_p);
      connect(Light_782.n, GndDC.p);
      connect(Light_Driver_782.hPin_N, GndAC.pin);
      connect(Light_Driver_782.pin_n, GndDC.p);

    /* Light Connections 781 */
      connect(Gain_Light_driver_782.y, Light_782.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_782.u);  connect(Light_Driver_781.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_781.p, Light_Driver_781.pin_p);
      connect(Light_781.n, GndDC.p);
      connect(Light_Driver_781.hPin_N, GndAC.pin);
      connect(Light_Driver_781.pin_n, GndDC.p);

    /* Light Connections 776 */
      connect(Gain_Light_driver_781.y, Light_781.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_781.u);  connect(Light_Driver_776.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_776.p, Light_Driver_776.pin_p);
      connect(Light_776.n, GndDC.p);
      connect(Light_Driver_776.hPin_N, GndAC.pin);
      connect(Light_Driver_776.pin_n, GndDC.p);

    /* Light Connections 775 */
      connect(Gain_Light_driver_776.y, Light_776.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_776.u);  connect(Light_Driver_775.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_775.p, Light_Driver_775.pin_p);
      connect(Light_775.n, GndDC.p);
      connect(Light_Driver_775.hPin_N, GndAC.pin);
      connect(Light_Driver_775.pin_n, GndDC.p);

    /* Light Connections 774 */
      connect(Gain_Light_driver_775.y, Light_775.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_775.u);  connect(Light_Driver_774.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_774.p, Light_Driver_774.pin_p);
      connect(Light_774.n, GndDC.p);
      connect(Light_Driver_774.hPin_N, GndAC.pin);
      connect(Light_Driver_774.pin_n, GndDC.p);

    /* Light Connections 773 */
      connect(Gain_Light_driver_774.y, Light_774.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_774.u);  connect(Light_Driver_773.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_773.p, Light_Driver_773.pin_p);
      connect(Light_773.n, GndDC.p);
      connect(Light_Driver_773.hPin_N, GndAC.pin);
      connect(Light_Driver_773.pin_n, GndDC.p);

    /* Light Connections 772 */
      connect(Gain_Light_driver_773.y, Light_773.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_773.u);  connect(Light_Driver_772.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_772.p, Light_Driver_772.pin_p);
      connect(Light_772.n, GndDC.p);
      connect(Light_Driver_772.hPin_N, GndAC.pin);
      connect(Light_Driver_772.pin_n, GndDC.p);

    /* Light Connections 771 */
      connect(Gain_Light_driver_772.y, Light_772.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_772.u);  connect(Light_Driver_771.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_771.p, Light_Driver_771.pin_p);
      connect(Light_771.n, GndDC.p);
      connect(Light_Driver_771.hPin_N, GndAC.pin);
      connect(Light_Driver_771.pin_n, GndDC.p);

    /* Light Connections 770 */
      connect(Gain_Light_driver_771.y, Light_771.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_771.u);  connect(Light_Driver_770.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_770.p, Light_Driver_770.pin_p);
      connect(Light_770.n, GndDC.p);
      connect(Light_Driver_770.hPin_N, GndAC.pin);
      connect(Light_Driver_770.pin_n, GndDC.p);

    /* Light Connections 769 */
      connect(Gain_Light_driver_770.y, Light_770.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_770.u);  connect(Light_Driver_769.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_769.p, Light_Driver_769.pin_p);
      connect(Light_769.n, GndDC.p);
      connect(Light_Driver_769.hPin_N, GndAC.pin);
      connect(Light_Driver_769.pin_n, GndDC.p);

    /* Light Connections 768 */
      connect(Gain_Light_driver_769.y, Light_769.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_769.u);  connect(Light_Driver_768.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_768.p, Light_Driver_768.pin_p);
      connect(Light_768.n, GndDC.p);
      connect(Light_Driver_768.hPin_N, GndAC.pin);
      connect(Light_Driver_768.pin_n, GndDC.p);

    /* Light Connections 767 */
      connect(Gain_Light_driver_768.y, Light_768.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_768.u);  connect(Light_Driver_767.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_767.p, Light_Driver_767.pin_p);
      connect(Light_767.n, GndDC.p);
      connect(Light_Driver_767.hPin_N, GndAC.pin);
      connect(Light_Driver_767.pin_n, GndDC.p);

    /* Light Connections 766 */
      connect(Gain_Light_driver_767.y, Light_767.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_767.u);  connect(Light_Driver_766.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_766.p, Light_Driver_766.pin_p);
      connect(Light_766.n, GndDC.p);
      connect(Light_Driver_766.hPin_N, GndAC.pin);
      connect(Light_Driver_766.pin_n, GndDC.p);

    /* Light Connections 765 */
      connect(Gain_Light_driver_766.y, Light_766.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_766.u);  connect(Light_Driver_765.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_765.p, Light_Driver_765.pin_p);
      connect(Light_765.n, GndDC.p);
      connect(Light_Driver_765.hPin_N, GndAC.pin);
      connect(Light_Driver_765.pin_n, GndDC.p);

    /* Light Connections 764 */
      connect(Gain_Light_driver_765.y, Light_765.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_765.u);  connect(Light_Driver_764.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_764.p, Light_Driver_764.pin_p);
      connect(Light_764.n, GndDC.p);
      connect(Light_Driver_764.hPin_N, GndAC.pin);
      connect(Light_Driver_764.pin_n, GndDC.p);

    /* Light Connections 763 */
      connect(Gain_Light_driver_764.y, Light_764.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_764.u);  connect(Light_Driver_763.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_763.p, Light_Driver_763.pin_p);
      connect(Light_763.n, GndDC.p);
      connect(Light_Driver_763.hPin_N, GndAC.pin);
      connect(Light_Driver_763.pin_n, GndDC.p);

    /* Light Connections 762 */
      connect(Gain_Light_driver_763.y, Light_763.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_763.u);  connect(Light_Driver_762.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_762.p, Light_Driver_762.pin_p);
      connect(Light_762.n, GndDC.p);
      connect(Light_Driver_762.hPin_N, GndAC.pin);
      connect(Light_Driver_762.pin_n, GndDC.p);

    /* Light Connections 761 */
      connect(Gain_Light_driver_762.y, Light_762.u);
      connect(combiTimeTable_L3_Zn2_Lights.y[1], Gain_Light_driver_762.u);  connect(Light_Driver_761.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_761.p, Light_Driver_761.pin_p);
      connect(Light_761.n, GndDC.p);
      connect(Light_Driver_761.hPin_N, GndAC.pin);
      connect(Light_Driver_761.pin_n, GndDC.p);

    /* Light Connections 760 */
      connect(Gain_Light_driver_761.y, Light_761.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_761.u);  connect(Light_Driver_760.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_760.p, Light_Driver_760.pin_p);
      connect(Light_760.n, GndDC.p);
      connect(Light_Driver_760.hPin_N, GndAC.pin);
      connect(Light_Driver_760.pin_n, GndDC.p);

    /* Light Connections 759 */
      connect(Gain_Light_driver_760.y, Light_760.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_760.u);  connect(Light_Driver_759.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_759.p, Light_Driver_759.pin_p);
      connect(Light_759.n, GndDC.p);
      connect(Light_Driver_759.hPin_N, GndAC.pin);
      connect(Light_Driver_759.pin_n, GndDC.p);

    /* Light Connections 758 */
      connect(Gain_Light_driver_759.y, Light_759.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_759.u);  connect(Light_Driver_758.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_758.p, Light_Driver_758.pin_p);
      connect(Light_758.n, GndDC.p);
      connect(Light_Driver_758.hPin_N, GndAC.pin);
      connect(Light_Driver_758.pin_n, GndDC.p);

    /* Light Connections 757 */
      connect(Gain_Light_driver_758.y, Light_758.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_758.u);  connect(Light_Driver_757.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_757.p, Light_Driver_757.pin_p);
      connect(Light_757.n, GndDC.p);
      connect(Light_Driver_757.hPin_N, GndAC.pin);
      connect(Light_Driver_757.pin_n, GndDC.p);

    /* Light Connections 756 */
      connect(Gain_Light_driver_757.y, Light_757.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_757.u);  connect(Light_Driver_756.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_756.p, Light_Driver_756.pin_p);
      connect(Light_756.n, GndDC.p);
      connect(Light_Driver_756.hPin_N, GndAC.pin);
      connect(Light_Driver_756.pin_n, GndDC.p);

    /* Light Connections 755 */
      connect(Gain_Light_driver_756.y, Light_756.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_756.u);  connect(Light_Driver_755.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_755.p, Light_Driver_755.pin_p);
      connect(Light_755.n, GndDC.p);
      connect(Light_Driver_755.hPin_N, GndAC.pin);
      connect(Light_Driver_755.pin_n, GndDC.p);

    /* Light Connections 754 */
      connect(Gain_Light_driver_755.y, Light_755.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_755.u);  connect(Light_Driver_754.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_754.p, Light_Driver_754.pin_p);
      connect(Light_754.n, GndDC.p);
      connect(Light_Driver_754.hPin_N, GndAC.pin);
      connect(Light_Driver_754.pin_n, GndDC.p);

    /* Light Connections 753 */
      connect(Gain_Light_driver_754.y, Light_754.u);
      connect(combiTimeTable_L3_Zn1_Lights.y[1], Gain_Light_driver_754.u);  connect(Light_Driver_753.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_753.p, Light_Driver_753.pin_p);
      connect(Light_753.n, GndDC.p);
      connect(Light_Driver_753.hPin_N, GndAC.pin);
      connect(Light_Driver_753.pin_n, GndDC.p);

    /* Light Connections 752 */
      connect(Gain_Light_driver_753.y, Light_753.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_753.u);  connect(Light_Driver_752.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_752.p, Light_Driver_752.pin_p);
      connect(Light_752.n, GndDC.p);
      connect(Light_Driver_752.hPin_N, GndAC.pin);
      connect(Light_Driver_752.pin_n, GndDC.p);

    /* Light Connections 749 */
      connect(Gain_Light_driver_752.y, Light_752.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_752.u);  connect(Light_Driver_749.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_749.p, Light_Driver_749.pin_p);
      connect(Light_749.n, GndDC.p);
      connect(Light_Driver_749.hPin_N, GndAC.pin);
      connect(Light_Driver_749.pin_n, GndDC.p);

    /* Light Connections 748 */
      connect(Gain_Light_driver_749.y, Light_749.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_749.u);  connect(Light_Driver_748.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_748.p, Light_Driver_748.pin_p);
      connect(Light_748.n, GndDC.p);
      connect(Light_Driver_748.hPin_N, GndAC.pin);
      connect(Light_Driver_748.pin_n, GndDC.p);

    /* Light Connections 733 */
      connect(Gain_Light_driver_748.y, Light_748.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_748.u);  connect(Light_Driver_733.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_733.p, Light_Driver_733.pin_p);
      connect(Light_733.n, GndDC.p);
      connect(Light_Driver_733.hPin_N, GndAC.pin);
      connect(Light_Driver_733.pin_n, GndDC.p);

    /* Light Connections 732 */
      connect(Gain_Light_driver_733.y, Light_733.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_733.u);  connect(Light_Driver_732.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_732.p, Light_Driver_732.pin_p);
      connect(Light_732.n, GndDC.p);
      connect(Light_Driver_732.hPin_N, GndAC.pin);
      connect(Light_Driver_732.pin_n, GndDC.p);

    /* Light Connections 731 */
      connect(Gain_Light_driver_732.y, Light_732.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_732.u);  connect(Light_Driver_731.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_731.p, Light_Driver_731.pin_p);
      connect(Light_731.n, GndDC.p);
      connect(Light_Driver_731.hPin_N, GndAC.pin);
      connect(Light_Driver_731.pin_n, GndDC.p);

    /* Light Connections 730 */
      connect(Gain_Light_driver_731.y, Light_731.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_731.u);  connect(Light_Driver_730.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_730.p, Light_Driver_730.pin_p);
      connect(Light_730.n, GndDC.p);
      connect(Light_Driver_730.hPin_N, GndAC.pin);
      connect(Light_Driver_730.pin_n, GndDC.p);

    /* Light Connections 727 */
      connect(Gain_Light_driver_730.y, Light_730.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_730.u);  connect(Light_Driver_727.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_727.p, Light_Driver_727.pin_p);
      connect(Light_727.n, GndDC.p);
      connect(Light_Driver_727.hPin_N, GndAC.pin);
      connect(Light_Driver_727.pin_n, GndDC.p);

    /* Light Connections 726 */
      connect(Gain_Light_driver_727.y, Light_727.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_727.u);  connect(Light_Driver_726.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_726.p, Light_Driver_726.pin_p);
      connect(Light_726.n, GndDC.p);
      connect(Light_Driver_726.hPin_N, GndAC.pin);
      connect(Light_Driver_726.pin_n, GndDC.p);

    /* Light Connections 725 */
      connect(Gain_Light_driver_726.y, Light_726.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_726.u);  connect(Light_Driver_725.hPin_L,  cable_light_L3_2C.pin_p);
      connect(Light_725.p, Light_Driver_725.pin_p);
      connect(Light_725.n, GndDC.p);
      connect(Light_Driver_725.hPin_N, GndAC.pin);
      connect(Light_Driver_725.pin_n, GndDC.p);

      connect(Gain_Light_driver_725.y, Light_725.u);
      connect(combiTimeTable_L3_Core_Lights.y[1], Gain_Light_driver_725.u);

      annotation ();
    end Light_Panel_L3_2C;
  end Conv_AC;
end San_Diego;
