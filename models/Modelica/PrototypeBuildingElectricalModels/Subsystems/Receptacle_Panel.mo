within PrototypeBuildingElectricalModels.Subsystems;
package Receptacle_Panel
  package San_Diego
    package AC_SD
      model MEL_Panel_L1A
        outer parameter Real PF;
        outer parameter Real PF1;
        /* parameter Real PF = 0.9; */

        outer HPF.SystemDef systemDef;
        Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
          Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        HPF.SinglePhase.Components.Ground GndAC annotation (
          Placement(visible = true, transformation(origin={-18,44},    extent = {{-8, -8}, {8, 8}}, rotation = -90)));
        HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
          Placement(visible = true, transformation(extent={{-120,-40},{-100,-20}},    rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
        HPF.Cables.NEC_CableModel cable_mels_L1_A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_4,
            length=15)
          annotation (Placement(transformation(extent={{-42,-40},{-62,-20}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_IT_Equipment(
          tableOnFile=true,
          tableName="L1-All-ITEquipment",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-92,72},{-72,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Laptop(
          tableOnFile=true,
          tableName="L1-All-Laptops",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-60,72},{-40,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_MFD(
          tableOnFile=true,
          tableName="L1-All-MFDs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-28,72},{-8,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Monitor(
          tableOnFile=true,
          tableName="L1-All-Monitors",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{10,72},{30,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Printer(
          tableOnFile=true,
          tableName="L1-All-Printers",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{40,72},{60,92}})));
        HPF.Loads.SinglePhase.AC_LoadIdeal1P other_general_plug(
          P_nom=2205,
          Q_nom=1068,
          V_nom=120) annotation (Placement(visible=true, transformation(
              origin={-4,12},
              extent={{-8,-8},{8,8}},
              rotation=90)));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Display(
          tableOnFile=true,
          tableName="L1-All-TVs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{72,72},{92,92}})));
        Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex
          annotation (Placement(transformation(extent={{-34,18},{-24,28}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_All_Plugs_General(
          tableOnFile=true,
          tableName="L1-All-Plugs-General",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-94,40},{-74,60}})));

        Modelica.Blocks.Math.Gain gain_gen_plugs_L1_A(k=2204.25)
          annotation (Placement(transformation(extent={{-66,44},{-54,56}})));
        Modelica.Blocks.Math.Gain gain1(k=PF1)
          annotation (Placement(transformation(extent={{-56,14},{-44,26}})));

      /* Insert models here */

      /* MEL_Model IT_Equipment_53 rcpt_ckt-L1_11A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_53(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_53(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_53;

      /* MEL_Model Laptop_49 rcpt_ckt-L1_11A */
        Modelica.Blocks.Math.Gain Gain_Laptop_49(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_49(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_49;

      /* MEL_Model Laptop_48 rcpt_ckt-L1_11A */
        Modelica.Blocks.Math.Gain Gain_Laptop_48(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_48(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_48;

      /* MEL_Model  cable_rcpt_ckt-L1_11A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_11A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=170.44);

      /* MEL_Model IT_Equipment_48 rcpt_ckt-L1_10A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_48(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_48(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_48;

      /* MEL_Model IT_Equipment_47 rcpt_ckt-L1_10A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_47(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_47(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_47;

      /* MEL_Model Laptop_44 rcpt_ckt-L1_10A */
        Modelica.Blocks.Math.Gain Gain_Laptop_44(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_44(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_44;

      /* MEL_Model Laptop_43 rcpt_ckt-L1_10A */
        Modelica.Blocks.Math.Gain Gain_Laptop_43(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_43(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_43;

      /* MEL_Model  cable_rcpt_ckt-L1_10A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_10A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=190.43);

      /* MEL_Model Monitor_28 rcpt_ckt-L1_9A */
        Modelica.Blocks.Math.Gain Gain_Monitor_28(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_28(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_28;

      /* MEL_Model Monitor_27 rcpt_ckt-L1_9A */
        Modelica.Blocks.Math.Gain Gain_Monitor_27(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_27(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_27;

      /* MEL_Model IT_Equipment_43 rcpt_ckt-L1_9A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_43(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_43(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_43;

      /* MEL_Model IT_Equipment_42 rcpt_ckt-L1_9A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_42(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_42(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_42;

      /* MEL_Model Laptop_40 rcpt_ckt-L1_9A */
        Modelica.Blocks.Math.Gain Gain_Laptop_40(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_40(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_40;

      /* MEL_Model Laptop_39 rcpt_ckt-L1_9A */
        Modelica.Blocks.Math.Gain Gain_Laptop_39(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_39(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_39;

      /* MEL_Model  cable_rcpt_ckt-L1_9A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_9A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=144.69);

      /* MEL_Model Monitor_23 rcpt_ckt-L1_8A */
        Modelica.Blocks.Math.Gain Gain_Monitor_23(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_23(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_23;

      /* MEL_Model IT_Equipment_38 rcpt_ckt-L1_8A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_38(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_38(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_38;

      /* MEL_Model IT_Equipment_37 rcpt_ckt-L1_8A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_37(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_37(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_37;

      /* MEL_Model Laptop_35 rcpt_ckt-L1_8A */
        Modelica.Blocks.Math.Gain Gain_Laptop_35(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_35(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_35;

      /* MEL_Model Laptop_34 rcpt_ckt-L1_8A */
        Modelica.Blocks.Math.Gain Gain_Laptop_34(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_34(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_34;

      /* MEL_Model  cable_rcpt_ckt-L1_8A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_8A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=151.87);

      /* MEL_Model Monitor_19 rcpt_ckt-L1_7A */
        Modelica.Blocks.Math.Gain Gain_Monitor_19(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_19(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_19;

      /* MEL_Model Monitor_18 rcpt_ckt-L1_7A */
        Modelica.Blocks.Math.Gain Gain_Monitor_18(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_18(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_18;

      /* MEL_Model IT_Equipment_32 rcpt_ckt-L1_7A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_32(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_32(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_32;

      /* MEL_Model IT_Equipment_31 rcpt_ckt-L1_7A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_31(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_31(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_31;

      /* MEL_Model Laptop_30 rcpt_ckt-L1_7A */
        Modelica.Blocks.Math.Gain Gain_Laptop_30(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_30(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_30;

      /* MEL_Model Laptop_29 rcpt_ckt-L1_7A */
        Modelica.Blocks.Math.Gain Gain_Laptop_29(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_29(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_29;

      /* MEL_Model  cable_rcpt_ckt-L1_7A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_7A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=126.24);

      /* MEL_Model Monitor_14 rcpt_ckt-L1_6A */
        Modelica.Blocks.Math.Gain Gain_Monitor_14(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_14(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_14;

      /* MEL_Model IT_Equipment_26 rcpt_ckt-L1_6A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_26(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_26(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_26;

      /* MEL_Model IT_Equipment_25 rcpt_ckt-L1_6A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_25(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_25(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_25;

      /* MEL_Model Laptop_25 rcpt_ckt-L1_6A */
        Modelica.Blocks.Math.Gain Gain_Laptop_25(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_25(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_25;

      /* MEL_Model Laptop_24 rcpt_ckt-L1_6A */
        Modelica.Blocks.Math.Gain Gain_Laptop_24(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_24(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_24;

      /* MEL_Model  cable_rcpt_ckt-L1_6A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_6A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=159.26);

      /* MEL_Model Printer_5 rcpt_ckt-L1_5A */
        Modelica.Blocks.Math.Gain Gain_Printer_5(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_5(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_5;

      /* MEL_Model Monitor_11 rcpt_ckt-L1_5A */
        Modelica.Blocks.Math.Gain Gain_Monitor_11(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_11(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_11;

      /* MEL_Model IT_Equipment_21 rcpt_ckt-L1_5A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_21(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_21(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_21;

      /* MEL_Model IT_Equipment_20 rcpt_ckt-L1_5A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_20(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_20(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_20;

      /* MEL_Model Laptop_18 rcpt_ckt-L1_5A */
        Modelica.Blocks.Math.Gain Gain_Laptop_18(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_18(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_18;

      /* MEL_Model Laptop_17 rcpt_ckt-L1_5A */
        Modelica.Blocks.Math.Gain Gain_Laptop_17(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_17(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_17;

      /* MEL_Model  cable_rcpt_ckt-L1_5A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_5A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=91.4);

      /* MEL_Model Printer_4 rcpt_ckt-L1_4A */
        Modelica.Blocks.Math.Gain Gain_Printer_4(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_4(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_4;

      /* MEL_Model Monitor_9 rcpt_ckt-L1_4A */
        Modelica.Blocks.Math.Gain Gain_Monitor_9(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_9(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_9;

      /* MEL_Model IT_Equipment_15 rcpt_ckt-L1_4A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_15(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_15(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_15;

      /* MEL_Model Laptop_13 rcpt_ckt-L1_4A */
        Modelica.Blocks.Math.Gain Gain_Laptop_13(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_13(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_13;

      /* MEL_Model  cable_rcpt_ckt-L1_4A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_4A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=23.9);

      /* MEL_Model Monitor_6 rcpt_ckt-L1_3A */
        Modelica.Blocks.Math.Gain Gain_Monitor_6(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_6(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_6;

      /* MEL_Model IT_Equipment_12 rcpt_ckt-L1_3A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_12(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_12(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_12;

      /* MEL_Model IT_Equipment_11 rcpt_ckt-L1_3A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_11(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_11(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_11;

      /* MEL_Model Laptop_9 rcpt_ckt-L1_3A */
        Modelica.Blocks.Math.Gain Gain_Laptop_9(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_9(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_9;

      /* MEL_Model Laptop_8 rcpt_ckt-L1_3A */
        Modelica.Blocks.Math.Gain Gain_Laptop_8(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_8(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_8;

      /* MEL_Model  cable_rcpt_ckt-L1_3A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_3A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=68.07);

      /* MEL_Model Monitor_3 rcpt_ckt-L1_2A */
        Modelica.Blocks.Math.Gain Gain_Monitor_3(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_3(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_3;

      /* MEL_Model Monitor_2 rcpt_ckt-L1_2A */
        Modelica.Blocks.Math.Gain Gain_Monitor_2(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_2(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_2;

      /* MEL_Model IT_Equipment_7 rcpt_ckt-L1_2A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_7(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_7(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_7;

      /* MEL_Model IT_Equipment_6 rcpt_ckt-L1_2A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_6(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_6(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_6;

      /* MEL_Model Laptop_4 rcpt_ckt-L1_2A */
        Modelica.Blocks.Math.Gain Gain_Laptop_4(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_4(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_4;

      /* MEL_Model  cable_rcpt_ckt-L1_2A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_2A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=33.28);

      /* MEL_Model MFD_1 rcpt_ckt-L1_1A */
        Modelica.Blocks.Math.Gain Gain_MFD_1(k=621) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_MFD_1(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=621,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load MFD_1;

      /* MEL_Model Display_1 rcpt_ckt-L1_1A */
        Modelica.Blocks.Math.Gain Gain_Display_1(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_1(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_1;

      /* MEL_Model Monitor_1 rcpt_ckt-L1_1A */
        Modelica.Blocks.Math.Gain Gain_Monitor_1(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_1(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_1;

      /* MEL_Model IT_Equipment_2 rcpt_ckt-L1_1A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_2(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_2(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_2;

      /* MEL_Model IT_Equipment_1 rcpt_ckt-L1_1A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_1(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_1(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_1;

      /* MEL_Model Laptop_1 rcpt_ckt-L1_1A */
        Modelica.Blocks.Math.Gain Gain_Laptop_1(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_1(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_1;

      /* MEL_Model  cable_rcpt_ckt-L1_1A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_1A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=104.12);

      equation
        connect(cable_mels_L1_A.pin_n, pin_p)
          annotation (Line(points={{-62,-30},{-110,-30}}, color={117,80,123}));
        connect(cable_mels_L1_A.pin_p, other_general_plug.hPin_L)
          annotation (Line(points={{-42,-30},{-4,-30},{-4,4}}, color={92,53,102}));
        connect(GndAC.pin, other_general_plug.hPin_N) annotation (Line(points={{-10,
                44},{-8,44},{-8,38},{-4,38},{-4,20}}, color={92,53,102}));
        connect(realToComplex.y, other_general_plug.S_input) annotation (Line(points={{-23.5,
                23},{-8,23},{-8,12.16}},        color={85,170,255}));
        connect(combiTimeTable_L1_All_Plugs_General.y[1], gain_gen_plugs_L1_A.u)
          annotation (Line(points={{-73,50},{-67.2,50}}, color={0,0,127}));
        connect(gain_gen_plugs_L1_A.y, realToComplex.re) annotation (Line(points={{-53.4,
                50},{-48,50},{-48,40},{-35,40},{-35,26}}, color={0,0,127}));
        connect(gain1.y, realToComplex.im)
          annotation (Line(points={{-43.4,20},{-35,20}}, color={0,0,127}));
        connect(gain1.u, realToComplex.re) annotation (Line(points={{-57.2,20},{-62,20},
                {-62,36},{-35,36},{-35,26}}, color={0,0,127}));

      /* Insert equation here */

      /* MEL_Connect IT_Equipment_53 rcpt_ckt-L1_11A */
        connect(IT_Equipment_53.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_53.pin_p, IT_Equipment_53.p);
        connect(MEL_Conv_IT_Equipment_53.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_53.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_53.hPin_L, cable_rcpt_cktL1_11A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_53.u);
        connect(IT_Equipment_53.u, Gain_IT_Equipment_53.y);

      /* MEL_Connect Laptop_49 rcpt_ckt-L1_11A */
        connect(Laptop_49.n, GndDC.p);
        connect(MEL_Conv_Laptop_49.pin_p, Laptop_49.p);
        connect(MEL_Conv_Laptop_49.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_49.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_49.hPin_L, cable_rcpt_cktL1_11A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_49.u);
        connect(Laptop_49.u, Gain_Laptop_49.y);

      /* MEL_Connect Laptop_48 rcpt_ckt-L1_11A */
        connect(Laptop_48.n, GndDC.p);
        connect(MEL_Conv_Laptop_48.pin_p, Laptop_48.p);
        connect(MEL_Conv_Laptop_48.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_48.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_48.hPin_L, cable_rcpt_cktL1_11A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_48.u);
        connect(Laptop_48.u, Gain_Laptop_48.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_11A */
        connect(cable_rcpt_cktL1_11A.pin_n, cable_mels_L1_A.pin_p);

      /* MEL_Connect IT_Equipment_48 rcpt_ckt-L1_10A */
        connect(IT_Equipment_48.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_48.pin_p, IT_Equipment_48.p);
        connect(MEL_Conv_IT_Equipment_48.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_48.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_48.hPin_L, cable_rcpt_cktL1_10A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_48.u);
        connect(IT_Equipment_48.u, Gain_IT_Equipment_48.y);

      /* MEL_Connect IT_Equipment_47 rcpt_ckt-L1_10A */
        connect(IT_Equipment_47.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_47.pin_p, IT_Equipment_47.p);
        connect(MEL_Conv_IT_Equipment_47.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_47.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_47.hPin_L, cable_rcpt_cktL1_10A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_47.u);
        connect(IT_Equipment_47.u, Gain_IT_Equipment_47.y);

      /* MEL_Connect Laptop_44 rcpt_ckt-L1_10A */
        connect(Laptop_44.n, GndDC.p);
        connect(MEL_Conv_Laptop_44.pin_p, Laptop_44.p);
        connect(MEL_Conv_Laptop_44.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_44.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_44.hPin_L, cable_rcpt_cktL1_10A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_44.u);
        connect(Laptop_44.u, Gain_Laptop_44.y);

      /* MEL_Connect Laptop_43 rcpt_ckt-L1_10A */
        connect(Laptop_43.n, GndDC.p);
        connect(MEL_Conv_Laptop_43.pin_p, Laptop_43.p);
        connect(MEL_Conv_Laptop_43.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_43.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_43.hPin_L, cable_rcpt_cktL1_10A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_43.u);
        connect(Laptop_43.u, Gain_Laptop_43.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_10A */
        connect(cable_rcpt_cktL1_10A.pin_n, cable_mels_L1_A.pin_p);

      /* MEL_Connect Monitor_28 rcpt_ckt-L1_9A */
        connect(Monitor_28.n, GndDC.p);
        connect(MEL_Conv_Monitor_28.pin_p, Monitor_28.p);
        connect(MEL_Conv_Monitor_28.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_28.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_28.hPin_L, cable_rcpt_cktL1_9A.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_28.u);
        connect(Monitor_28.u, Gain_Monitor_28.y);

      /* MEL_Connect Monitor_27 rcpt_ckt-L1_9A */
        connect(Monitor_27.n, GndDC.p);
        connect(MEL_Conv_Monitor_27.pin_p, Monitor_27.p);
        connect(MEL_Conv_Monitor_27.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_27.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_27.hPin_L, cable_rcpt_cktL1_9A.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_27.u);
        connect(Monitor_27.u, Gain_Monitor_27.y);

      /* MEL_Connect IT_Equipment_43 rcpt_ckt-L1_9A */
        connect(IT_Equipment_43.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_43.pin_p, IT_Equipment_43.p);
        connect(MEL_Conv_IT_Equipment_43.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_43.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_43.hPin_L, cable_rcpt_cktL1_9A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_43.u);
        connect(IT_Equipment_43.u, Gain_IT_Equipment_43.y);

      /* MEL_Connect IT_Equipment_42 rcpt_ckt-L1_9A */
        connect(IT_Equipment_42.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_42.pin_p, IT_Equipment_42.p);
        connect(MEL_Conv_IT_Equipment_42.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_42.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_42.hPin_L, cable_rcpt_cktL1_9A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_42.u);
        connect(IT_Equipment_42.u, Gain_IT_Equipment_42.y);

      /* MEL_Connect Laptop_40 rcpt_ckt-L1_9A */
        connect(Laptop_40.n, GndDC.p);
        connect(MEL_Conv_Laptop_40.pin_p, Laptop_40.p);
        connect(MEL_Conv_Laptop_40.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_40.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_40.hPin_L, cable_rcpt_cktL1_9A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_40.u);
        connect(Laptop_40.u, Gain_Laptop_40.y);

      /* MEL_Connect Laptop_39 rcpt_ckt-L1_9A */
        connect(Laptop_39.n, GndDC.p);
        connect(MEL_Conv_Laptop_39.pin_p, Laptop_39.p);
        connect(MEL_Conv_Laptop_39.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_39.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_39.hPin_L, cable_rcpt_cktL1_9A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_39.u);
        connect(Laptop_39.u, Gain_Laptop_39.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_9A */
        connect(cable_rcpt_cktL1_9A.pin_n, cable_mels_L1_A.pin_p);

      /* MEL_Connect Monitor_23 rcpt_ckt-L1_8A */
        connect(Monitor_23.n, GndDC.p);
        connect(MEL_Conv_Monitor_23.pin_p, Monitor_23.p);
        connect(MEL_Conv_Monitor_23.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_23.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_23.hPin_L, cable_rcpt_cktL1_8A.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_23.u);
        connect(Monitor_23.u, Gain_Monitor_23.y);

      /* MEL_Connect IT_Equipment_38 rcpt_ckt-L1_8A */
        connect(IT_Equipment_38.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_38.pin_p, IT_Equipment_38.p);
        connect(MEL_Conv_IT_Equipment_38.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_38.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_38.hPin_L, cable_rcpt_cktL1_8A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_38.u);
        connect(IT_Equipment_38.u, Gain_IT_Equipment_38.y);

      /* MEL_Connect IT_Equipment_37 rcpt_ckt-L1_8A */
        connect(IT_Equipment_37.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_37.pin_p, IT_Equipment_37.p);
        connect(MEL_Conv_IT_Equipment_37.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_37.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_37.hPin_L, cable_rcpt_cktL1_8A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_37.u);
        connect(IT_Equipment_37.u, Gain_IT_Equipment_37.y);

      /* MEL_Connect Laptop_35 rcpt_ckt-L1_8A */
        connect(Laptop_35.n, GndDC.p);
        connect(MEL_Conv_Laptop_35.pin_p, Laptop_35.p);
        connect(MEL_Conv_Laptop_35.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_35.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_35.hPin_L, cable_rcpt_cktL1_8A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_35.u);
        connect(Laptop_35.u, Gain_Laptop_35.y);

      /* MEL_Connect Laptop_34 rcpt_ckt-L1_8A */
        connect(Laptop_34.n, GndDC.p);
        connect(MEL_Conv_Laptop_34.pin_p, Laptop_34.p);
        connect(MEL_Conv_Laptop_34.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_34.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_34.hPin_L, cable_rcpt_cktL1_8A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_34.u);
        connect(Laptop_34.u, Gain_Laptop_34.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_8A */
        connect(cable_rcpt_cktL1_8A.pin_n, cable_mels_L1_A.pin_p);

      /* MEL_Connect Monitor_19 rcpt_ckt-L1_7A */
        connect(Monitor_19.n, GndDC.p);
        connect(MEL_Conv_Monitor_19.pin_p, Monitor_19.p);
        connect(MEL_Conv_Monitor_19.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_19.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_19.hPin_L, cable_rcpt_cktL1_7A.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_19.u);
        connect(Monitor_19.u, Gain_Monitor_19.y);

      /* MEL_Connect Monitor_18 rcpt_ckt-L1_7A */
        connect(Monitor_18.n, GndDC.p);
        connect(MEL_Conv_Monitor_18.pin_p, Monitor_18.p);
        connect(MEL_Conv_Monitor_18.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_18.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_18.hPin_L, cable_rcpt_cktL1_7A.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_18.u);
        connect(Monitor_18.u, Gain_Monitor_18.y);

      /* MEL_Connect IT_Equipment_32 rcpt_ckt-L1_7A */
        connect(IT_Equipment_32.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_32.pin_p, IT_Equipment_32.p);
        connect(MEL_Conv_IT_Equipment_32.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_32.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_32.hPin_L, cable_rcpt_cktL1_7A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_32.u);
        connect(IT_Equipment_32.u, Gain_IT_Equipment_32.y);

      /* MEL_Connect IT_Equipment_31 rcpt_ckt-L1_7A */
        connect(IT_Equipment_31.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_31.pin_p, IT_Equipment_31.p);
        connect(MEL_Conv_IT_Equipment_31.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_31.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_31.hPin_L, cable_rcpt_cktL1_7A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_31.u);
        connect(IT_Equipment_31.u, Gain_IT_Equipment_31.y);

      /* MEL_Connect Laptop_30 rcpt_ckt-L1_7A */
        connect(Laptop_30.n, GndDC.p);
        connect(MEL_Conv_Laptop_30.pin_p, Laptop_30.p);
        connect(MEL_Conv_Laptop_30.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_30.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_30.hPin_L, cable_rcpt_cktL1_7A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_30.u);
        connect(Laptop_30.u, Gain_Laptop_30.y);

      /* MEL_Connect Laptop_29 rcpt_ckt-L1_7A */
        connect(Laptop_29.n, GndDC.p);
        connect(MEL_Conv_Laptop_29.pin_p, Laptop_29.p);
        connect(MEL_Conv_Laptop_29.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_29.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_29.hPin_L, cable_rcpt_cktL1_7A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_29.u);
        connect(Laptop_29.u, Gain_Laptop_29.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_7A */
        connect(cable_rcpt_cktL1_7A.pin_n, cable_mels_L1_A.pin_p);

      /* MEL_Connect Monitor_14 rcpt_ckt-L1_6A */
        connect(Monitor_14.n, GndDC.p);
        connect(MEL_Conv_Monitor_14.pin_p, Monitor_14.p);
        connect(MEL_Conv_Monitor_14.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_14.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_14.hPin_L, cable_rcpt_cktL1_6A.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_14.u);
        connect(Monitor_14.u, Gain_Monitor_14.y);

      /* MEL_Connect IT_Equipment_26 rcpt_ckt-L1_6A */
        connect(IT_Equipment_26.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_26.pin_p, IT_Equipment_26.p);
        connect(MEL_Conv_IT_Equipment_26.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_26.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_26.hPin_L, cable_rcpt_cktL1_6A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_26.u);
        connect(IT_Equipment_26.u, Gain_IT_Equipment_26.y);

      /* MEL_Connect IT_Equipment_25 rcpt_ckt-L1_6A */
        connect(IT_Equipment_25.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_25.pin_p, IT_Equipment_25.p);
        connect(MEL_Conv_IT_Equipment_25.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_25.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_25.hPin_L, cable_rcpt_cktL1_6A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_25.u);
        connect(IT_Equipment_25.u, Gain_IT_Equipment_25.y);

      /* MEL_Connect Laptop_25 rcpt_ckt-L1_6A */
        connect(Laptop_25.n, GndDC.p);
        connect(MEL_Conv_Laptop_25.pin_p, Laptop_25.p);
        connect(MEL_Conv_Laptop_25.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_25.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_25.hPin_L, cable_rcpt_cktL1_6A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_25.u);
        connect(Laptop_25.u, Gain_Laptop_25.y);

      /* MEL_Connect Laptop_24 rcpt_ckt-L1_6A */
        connect(Laptop_24.n, GndDC.p);
        connect(MEL_Conv_Laptop_24.pin_p, Laptop_24.p);
        connect(MEL_Conv_Laptop_24.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_24.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_24.hPin_L, cable_rcpt_cktL1_6A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_24.u);
        connect(Laptop_24.u, Gain_Laptop_24.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_6A */
        connect(cable_rcpt_cktL1_6A.pin_n, cable_mels_L1_A.pin_p);

      /* MEL_Connect Printer_5 rcpt_ckt-L1_5A */
        connect(Printer_5.n, GndDC.p);
        connect(MEL_Conv_Printer_5.pin_p, Printer_5.p);
        connect(MEL_Conv_Printer_5.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_5.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_5.hPin_L, cable_rcpt_cktL1_5A.pin_p);
        connect(combiTimeTable_L1_Printer.y[1], Gain_Printer_5.u);
        connect(Printer_5.u, Gain_Printer_5.y);

      /* MEL_Connect Monitor_11 rcpt_ckt-L1_5A */
        connect(Monitor_11.n, GndDC.p);
        connect(MEL_Conv_Monitor_11.pin_p, Monitor_11.p);
        connect(MEL_Conv_Monitor_11.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_11.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_11.hPin_L, cable_rcpt_cktL1_5A.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_11.u);
        connect(Monitor_11.u, Gain_Monitor_11.y);

      /* MEL_Connect IT_Equipment_21 rcpt_ckt-L1_5A */
        connect(IT_Equipment_21.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_21.pin_p, IT_Equipment_21.p);
        connect(MEL_Conv_IT_Equipment_21.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_21.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_21.hPin_L, cable_rcpt_cktL1_5A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_21.u);
        connect(IT_Equipment_21.u, Gain_IT_Equipment_21.y);

      /* MEL_Connect IT_Equipment_20 rcpt_ckt-L1_5A */
        connect(IT_Equipment_20.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_20.pin_p, IT_Equipment_20.p);
        connect(MEL_Conv_IT_Equipment_20.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_20.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_20.hPin_L, cable_rcpt_cktL1_5A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_20.u);
        connect(IT_Equipment_20.u, Gain_IT_Equipment_20.y);

      /* MEL_Connect Laptop_18 rcpt_ckt-L1_5A */
        connect(Laptop_18.n, GndDC.p);
        connect(MEL_Conv_Laptop_18.pin_p, Laptop_18.p);
        connect(MEL_Conv_Laptop_18.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_18.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_18.hPin_L, cable_rcpt_cktL1_5A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_18.u);
        connect(Laptop_18.u, Gain_Laptop_18.y);

      /* MEL_Connect Laptop_17 rcpt_ckt-L1_5A */
        connect(Laptop_17.n, GndDC.p);
        connect(MEL_Conv_Laptop_17.pin_p, Laptop_17.p);
        connect(MEL_Conv_Laptop_17.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_17.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_17.hPin_L, cable_rcpt_cktL1_5A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_17.u);
        connect(Laptop_17.u, Gain_Laptop_17.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_5A */
        connect(cable_rcpt_cktL1_5A.pin_n, cable_mels_L1_A.pin_p);

      /* MEL_Connect Printer_4 rcpt_ckt-L1_4A */
        connect(Printer_4.n, GndDC.p);
        connect(MEL_Conv_Printer_4.pin_p, Printer_4.p);
        connect(MEL_Conv_Printer_4.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_4.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_4.hPin_L, cable_rcpt_cktL1_4A.pin_p);
        connect(combiTimeTable_L1_Printer.y[1], Gain_Printer_4.u);
        connect(Printer_4.u, Gain_Printer_4.y);

      /* MEL_Connect Monitor_9 rcpt_ckt-L1_4A */
        connect(Monitor_9.n, GndDC.p);
        connect(MEL_Conv_Monitor_9.pin_p, Monitor_9.p);
        connect(MEL_Conv_Monitor_9.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_9.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_9.hPin_L, cable_rcpt_cktL1_4A.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_9.u);
        connect(Monitor_9.u, Gain_Monitor_9.y);

      /* MEL_Connect IT_Equipment_15 rcpt_ckt-L1_4A */
        connect(IT_Equipment_15.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_15.pin_p, IT_Equipment_15.p);
        connect(MEL_Conv_IT_Equipment_15.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_15.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_15.hPin_L, cable_rcpt_cktL1_4A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_15.u);
        connect(IT_Equipment_15.u, Gain_IT_Equipment_15.y);

      /* MEL_Connect Laptop_13 rcpt_ckt-L1_4A */
        connect(Laptop_13.n, GndDC.p);
        connect(MEL_Conv_Laptop_13.pin_p, Laptop_13.p);
        connect(MEL_Conv_Laptop_13.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_13.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_13.hPin_L, cable_rcpt_cktL1_4A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_13.u);
        connect(Laptop_13.u, Gain_Laptop_13.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_4A */
        connect(cable_rcpt_cktL1_4A.pin_n, cable_mels_L1_A.pin_p);

      /* MEL_Connect Monitor_6 rcpt_ckt-L1_3A */
        connect(Monitor_6.n, GndDC.p);
        connect(MEL_Conv_Monitor_6.pin_p, Monitor_6.p);
        connect(MEL_Conv_Monitor_6.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_6.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_6.hPin_L, cable_rcpt_cktL1_3A.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_6.u);
        connect(Monitor_6.u, Gain_Monitor_6.y);

      /* MEL_Connect IT_Equipment_12 rcpt_ckt-L1_3A */
        connect(IT_Equipment_12.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_12.pin_p, IT_Equipment_12.p);
        connect(MEL_Conv_IT_Equipment_12.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_12.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_12.hPin_L, cable_rcpt_cktL1_3A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_12.u);
        connect(IT_Equipment_12.u, Gain_IT_Equipment_12.y);

      /* MEL_Connect IT_Equipment_11 rcpt_ckt-L1_3A */
        connect(IT_Equipment_11.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_11.pin_p, IT_Equipment_11.p);
        connect(MEL_Conv_IT_Equipment_11.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_11.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_11.hPin_L, cable_rcpt_cktL1_3A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_11.u);
        connect(IT_Equipment_11.u, Gain_IT_Equipment_11.y);

      /* MEL_Connect Laptop_9 rcpt_ckt-L1_3A */
        connect(Laptop_9.n, GndDC.p);
        connect(MEL_Conv_Laptop_9.pin_p, Laptop_9.p);
        connect(MEL_Conv_Laptop_9.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_9.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_9.hPin_L, cable_rcpt_cktL1_3A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_9.u);
        connect(Laptop_9.u, Gain_Laptop_9.y);

      /* MEL_Connect Laptop_8 rcpt_ckt-L1_3A */
        connect(Laptop_8.n, GndDC.p);
        connect(MEL_Conv_Laptop_8.pin_p, Laptop_8.p);
        connect(MEL_Conv_Laptop_8.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_8.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_8.hPin_L, cable_rcpt_cktL1_3A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_8.u);
        connect(Laptop_8.u, Gain_Laptop_8.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_3A */
        connect(cable_rcpt_cktL1_3A.pin_n, cable_mels_L1_A.pin_p);

      /* MEL_Connect Monitor_3 rcpt_ckt-L1_2A */
        connect(Monitor_3.n, GndDC.p);
        connect(MEL_Conv_Monitor_3.pin_p, Monitor_3.p);
        connect(MEL_Conv_Monitor_3.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_3.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_3.hPin_L, cable_rcpt_cktL1_2A.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_3.u);
        connect(Monitor_3.u, Gain_Monitor_3.y);

      /* MEL_Connect Monitor_2 rcpt_ckt-L1_2A */
        connect(Monitor_2.n, GndDC.p);
        connect(MEL_Conv_Monitor_2.pin_p, Monitor_2.p);
        connect(MEL_Conv_Monitor_2.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_2.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_2.hPin_L, cable_rcpt_cktL1_2A.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_2.u);
        connect(Monitor_2.u, Gain_Monitor_2.y);

      /* MEL_Connect IT_Equipment_7 rcpt_ckt-L1_2A */
        connect(IT_Equipment_7.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_7.pin_p, IT_Equipment_7.p);
        connect(MEL_Conv_IT_Equipment_7.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_7.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_7.hPin_L, cable_rcpt_cktL1_2A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_7.u);
        connect(IT_Equipment_7.u, Gain_IT_Equipment_7.y);

      /* MEL_Connect IT_Equipment_6 rcpt_ckt-L1_2A */
        connect(IT_Equipment_6.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_6.pin_p, IT_Equipment_6.p);
        connect(MEL_Conv_IT_Equipment_6.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_6.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_6.hPin_L, cable_rcpt_cktL1_2A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_6.u);
        connect(IT_Equipment_6.u, Gain_IT_Equipment_6.y);

      /* MEL_Connect Laptop_4 rcpt_ckt-L1_2A */
        connect(Laptop_4.n, GndDC.p);
        connect(MEL_Conv_Laptop_4.pin_p, Laptop_4.p);
        connect(MEL_Conv_Laptop_4.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_4.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_4.hPin_L, cable_rcpt_cktL1_2A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_4.u);
        connect(Laptop_4.u, Gain_Laptop_4.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_2A */
        connect(cable_rcpt_cktL1_2A.pin_n, cable_mels_L1_A.pin_p);

      /* MEL_Connect MFD_1 rcpt_ckt-L1_1A */
        connect(MFD_1.n, GndDC.p);
        connect(MEL_Conv_MFD_1.pin_p, MFD_1.p);
        connect(MEL_Conv_MFD_1.hPin_N, GndAC.pin);
        connect(MEL_Conv_MFD_1.pin_n, GndDC.p);
        connect(MEL_Conv_MFD_1.hPin_L, cable_rcpt_cktL1_1A.pin_p);
        connect(combiTimeTable_L1_MFD.y[1], Gain_MFD_1.u);
        connect(MFD_1.u, Gain_MFD_1.y);

      /* MEL_Connect Display_1 rcpt_ckt-L1_1A */
        connect(Display_1.n, GndDC.p);
        connect(MEL_Conv_Display_1.pin_p, Display_1.p);
        connect(MEL_Conv_Display_1.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_1.pin_n, GndDC.p);
        connect(MEL_Conv_Display_1.hPin_L, cable_rcpt_cktL1_1A.pin_p);
        connect(combiTimeTable_L1_Display.y[1], Gain_Display_1.u);
        connect(Display_1.u, Gain_Display_1.y);

      /* MEL_Connect Monitor_1 rcpt_ckt-L1_1A */
        connect(Monitor_1.n, GndDC.p);
        connect(MEL_Conv_Monitor_1.pin_p, Monitor_1.p);
        connect(MEL_Conv_Monitor_1.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_1.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_1.hPin_L, cable_rcpt_cktL1_1A.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_1.u);
        connect(Monitor_1.u, Gain_Monitor_1.y);

      /* MEL_Connect IT_Equipment_2 rcpt_ckt-L1_1A */
        connect(IT_Equipment_2.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_2.pin_p, IT_Equipment_2.p);
        connect(MEL_Conv_IT_Equipment_2.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_2.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_2.hPin_L, cable_rcpt_cktL1_1A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_2.u);
        connect(IT_Equipment_2.u, Gain_IT_Equipment_2.y);

      /* MEL_Connect IT_Equipment_1 rcpt_ckt-L1_1A */
        connect(IT_Equipment_1.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_1.pin_p, IT_Equipment_1.p);
        connect(MEL_Conv_IT_Equipment_1.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_1.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_1.hPin_L, cable_rcpt_cktL1_1A.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_1.u);
        connect(IT_Equipment_1.u, Gain_IT_Equipment_1.y);

      /* MEL_Connect Laptop_1 rcpt_ckt-L1_1A */
        connect(Laptop_1.n, GndDC.p);
        connect(MEL_Conv_Laptop_1.pin_p, Laptop_1.p);
        connect(MEL_Conv_Laptop_1.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_1.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_1.hPin_L, cable_rcpt_cktL1_1A.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_1.u);
        connect(Laptop_1.u, Gain_Laptop_1.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_1A */
        connect(cable_rcpt_cktL1_1A.pin_n, cable_mels_L1_A.pin_p);

        annotation ();
      end MEL_Panel_L1A;

      model MEL_Panel_L1B
        outer parameter Real PF;
        outer parameter Real PF1;
        /* parameter Real PF = 0.9; */

        outer HPF.SystemDef systemDef;
        Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
          Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        HPF.SinglePhase.Components.Ground GndAC annotation (
          Placement(visible = true, transformation(origin={-18,44},    extent = {{-8, -8}, {8, 8}}, rotation = -90)));
        HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
          Placement(visible = true, transformation(extent={{-120,-40},{-100,-20}},    rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
        HPF.Cables.NEC_CableModel cable_mels_L1_B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_4,
            length=15)
          annotation (Placement(transformation(extent={{-42,-40},{-62,-20}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_IT_Equipment(
          tableOnFile=true,
          tableName="L1-All-ITEquipment",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-92,72},{-72,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Laptop(
          tableOnFile=true,
          tableName="L1-All-Laptops",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-60,72},{-40,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_MFD(
          tableOnFile=true,
          tableName="L1-All-MFDs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-28,72},{-8,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Monitor(
          tableOnFile=true,
          tableName="L1-All-Monitors",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{10,72},{30,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Printer(
          tableOnFile=true,
          tableName="L1-All-Printers",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{40,72},{60,92}})));
        HPF.Loads.SinglePhase.AC_LoadIdeal1P other_general_plug(
          P_nom=2205,
          Q_nom=1068,
          V_nom=120) annotation (Placement(visible=true, transformation(
              origin={-4,12},
              extent={{-8,-8},{8,8}},
              rotation=90)));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Display(
          tableOnFile=true,
          tableName="L1-All-TVs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{72,72},{92,92}})));
        Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex
          annotation (Placement(transformation(extent={{-34,18},{-24,28}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_All_Plugs_General(
          tableOnFile=true,
          tableName="L1-All-Plugs-General",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-94,40},{-74,60}})));

        Modelica.Blocks.Math.Gain gain_gen_plugs_L1_A(k=2204.25)
          annotation (Placement(transformation(extent={{-66,44},{-54,56}})));
        Modelica.Blocks.Math.Gain gain1(k=PF1)
          annotation (Placement(transformation(extent={{-56,14},{-44,26}})));

      /* Insert models here */

      /* MEL_Model Monitor_33 rcpt_ckt-L1_11B */
        Modelica.Blocks.Math.Gain Gain_Monitor_33(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_33(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_33;

      /* MEL_Model IT_Equipment_54 rcpt_ckt-L1_11B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_54(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_54(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_54;

      /* MEL_Model Laptop_50 rcpt_ckt-L1_11B */
        Modelica.Blocks.Math.Gain Gain_Laptop_50(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_50(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_50;

      /* MEL_Model  cable_rcpt_ckt-L1_11B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_11B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=150.53);

      /* MEL_Model Monitor_31 rcpt_ckt-L1_10B */
        Modelica.Blocks.Math.Gain Gain_Monitor_31(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_31(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_31;

      /* MEL_Model IT_Equipment_50 rcpt_ckt-L1_10B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_50(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_50(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_50;

      /* MEL_Model IT_Equipment_49 rcpt_ckt-L1_10B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_49(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_49(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_49;

      /* MEL_Model Laptop_46 rcpt_ckt-L1_10B */
        Modelica.Blocks.Math.Gain Gain_Laptop_46(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_46(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_46;

      /* MEL_Model Laptop_45 rcpt_ckt-L1_10B */
        Modelica.Blocks.Math.Gain Gain_Laptop_45(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_45(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_45;

      /* MEL_Model  cable_rcpt_ckt-L1_10B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_10B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=178.81);

      /* MEL_Model Printer_8 rcpt_ckt-L1_9B */
        Modelica.Blocks.Math.Gain Gain_Printer_8(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_8(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_8;

      /* MEL_Model Monitor_29 rcpt_ckt-L1_9B */
        Modelica.Blocks.Math.Gain Gain_Monitor_29(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_29(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_29;

      /* MEL_Model IT_Equipment_44 rcpt_ckt-L1_9B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_44(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_44(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_44;

      /* MEL_Model Laptop_41 rcpt_ckt-L1_9B */
        Modelica.Blocks.Math.Gain Gain_Laptop_41(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_41(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_41;

      /* MEL_Model  cable_rcpt_ckt-L1_9B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_9B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=161.76);

      /* MEL_Model Monitor_25 rcpt_ckt-L1_8B */
        Modelica.Blocks.Math.Gain Gain_Monitor_25(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_25(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_25;

      /* MEL_Model Monitor_24 rcpt_ckt-L1_8B */
        Modelica.Blocks.Math.Gain Gain_Monitor_24(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_24(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_24;

      /* MEL_Model IT_Equipment_39 rcpt_ckt-L1_8B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_39(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_39(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_39;

      /* MEL_Model Laptop_36 rcpt_ckt-L1_8B */
        Modelica.Blocks.Math.Gain Gain_Laptop_36(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_36(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_36;

      /* MEL_Model  cable_rcpt_ckt-L1_8B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_8B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=149.01);

      /* MEL_Model Monitor_20 rcpt_ckt-L1_7B */
        Modelica.Blocks.Math.Gain Gain_Monitor_20(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_20(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_20;

      /* MEL_Model IT_Equipment_34 rcpt_ckt-L1_7B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_34(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_34(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_34;

      /* MEL_Model IT_Equipment_33 rcpt_ckt-L1_7B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_33(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_33(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_33;

      /* MEL_Model Laptop_32 rcpt_ckt-L1_7B */
        Modelica.Blocks.Math.Gain Gain_Laptop_32(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_32(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_32;

      /* MEL_Model Laptop_31 rcpt_ckt-L1_7B */
        Modelica.Blocks.Math.Gain Gain_Laptop_31(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_31(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_31;

      /* MEL_Model  cable_rcpt_ckt-L1_7B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_7B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=114.44);

      /* MEL_Model Printer_6 rcpt_ckt-L1_6B */
        Modelica.Blocks.Math.Gain Gain_Printer_6(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_6(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_6;

      /* MEL_Model Monitor_16 rcpt_ckt-L1_6B */
        Modelica.Blocks.Math.Gain Gain_Monitor_16(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_16(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_16;

      /* MEL_Model Monitor_15 rcpt_ckt-L1_6B */
        Modelica.Blocks.Math.Gain Gain_Monitor_15(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_15(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_15;

      /* MEL_Model IT_Equipment_28 rcpt_ckt-L1_6B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_28(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_28(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_28;

      /* MEL_Model IT_Equipment_27 rcpt_ckt-L1_6B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_27(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_27(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_27;

      /* MEL_Model Laptop_26 rcpt_ckt-L1_6B */
        Modelica.Blocks.Math.Gain Gain_Laptop_26(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_26(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_26;

      /* MEL_Model  cable_rcpt_ckt-L1_6B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_6B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=154.94);

      /* MEL_Model IT_Equipment_22 rcpt_ckt-L1_5B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_22(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_22(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_22;

      /* MEL_Model Laptop_21 rcpt_ckt-L1_5B */
        Modelica.Blocks.Math.Gain Gain_Laptop_21(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_21(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_21;

      /* MEL_Model Laptop_20 rcpt_ckt-L1_5B */
        Modelica.Blocks.Math.Gain Gain_Laptop_20(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_20(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_20;

      /* MEL_Model Laptop_19 rcpt_ckt-L1_5B */
        Modelica.Blocks.Math.Gain Gain_Laptop_19(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_19(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_19;

      /* MEL_Model  cable_rcpt_ckt-L1_5B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_5B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=169.18);

      /* MEL_Model MFD_2 rcpt_ckt-L1_4B */
        Modelica.Blocks.Math.Gain Gain_MFD_2(k=621) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_MFD_2(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=621,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load MFD_2;

      /* MEL_Model IT_Equipment_17 rcpt_ckt-L1_4B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_17(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_17(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_17;

      /* MEL_Model IT_Equipment_16 rcpt_ckt-L1_4B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_16(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_16(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_16;

      /* MEL_Model Laptop_15 rcpt_ckt-L1_4B */
        Modelica.Blocks.Math.Gain Gain_Laptop_15(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_15(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_15;

      /* MEL_Model Laptop_14 rcpt_ckt-L1_4B */
        Modelica.Blocks.Math.Gain Gain_Laptop_14(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_14(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_14;

      /* MEL_Model  cable_rcpt_ckt-L1_4B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_4B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=34.83);

      /* MEL_Model Monitor_8 rcpt_ckt-L1_3B */
        Modelica.Blocks.Math.Gain Gain_Monitor_8(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_8(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_8;

      /* MEL_Model Monitor_7 rcpt_ckt-L1_3B */
        Modelica.Blocks.Math.Gain Gain_Monitor_7(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_7(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_7;

      /* MEL_Model IT_Equipment_14 rcpt_ckt-L1_3B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_14(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_14(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_14;

      /* MEL_Model IT_Equipment_13 rcpt_ckt-L1_3B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_13(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_13(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_13;

      /* MEL_Model Laptop_10 rcpt_ckt-L1_3B */
        Modelica.Blocks.Math.Gain Gain_Laptop_10(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_10(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_10;

      /* MEL_Model  cable_rcpt_ckt-L1_3B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_3B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=53.4);

      /* MEL_Model Monitor_4 rcpt_ckt-L1_2B */
        Modelica.Blocks.Math.Gain Gain_Monitor_4(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_4(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_4;

      /* MEL_Model IT_Equipment_9 rcpt_ckt-L1_2B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_9(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_9(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_9;

      /* MEL_Model IT_Equipment_8 rcpt_ckt-L1_2B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_8(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_8(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_8;

      /* MEL_Model Laptop_6 rcpt_ckt-L1_2B */
        Modelica.Blocks.Math.Gain Gain_Laptop_6(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_6(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_6;

      /* MEL_Model Laptop_5 rcpt_ckt-L1_2B */
        Modelica.Blocks.Math.Gain Gain_Laptop_5(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_5(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_5;

      /* MEL_Model  cable_rcpt_ckt-L1_2B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_2B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=22.86);

      /* MEL_Model Printer_1 rcpt_ckt-L1_1B */
        Modelica.Blocks.Math.Gain Gain_Printer_1(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_1(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_1;

      /* MEL_Model Display_2 rcpt_ckt-L1_1B */
        Modelica.Blocks.Math.Gain Gain_Display_2(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_2(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_2;

      /* MEL_Model IT_Equipment_3 rcpt_ckt-L1_1B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_3(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_3(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_3;

      /* MEL_Model Laptop_2 rcpt_ckt-L1_1B */
        Modelica.Blocks.Math.Gain Gain_Laptop_2(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_2(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_2;

      /* MEL_Model  cable_rcpt_ckt-L1_1B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_1B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=127.63);

      equation
        connect(cable_mels_L1_B.pin_n, pin_p)
          annotation (Line(points={{-62,-30},{-110,-30}}, color={117,80,123}));
        connect(cable_mels_L1_B.pin_p, other_general_plug.hPin_L)
          annotation (Line(points={{-42,-30},{-4,-30},{-4,4}}, color={92,53,102}));
        connect(GndAC.pin, other_general_plug.hPin_N) annotation (Line(points={{-10,
                44},{-8,44},{-8,38},{-4,38},{-4,20}}, color={92,53,102}));
        connect(realToComplex.y, other_general_plug.S_input) annotation (Line(points={{-23.5,
                23},{-8,23},{-8,12.16}},        color={85,170,255}));
        connect(combiTimeTable_L1_All_Plugs_General.y[1], gain_gen_plugs_L1_A.u)
          annotation (Line(points={{-73,50},{-67.2,50}}, color={0,0,127}));
        connect(gain_gen_plugs_L1_A.y, realToComplex.re) annotation (Line(points={{-53.4,
                50},{-48,50},{-48,40},{-35,40},{-35,26}}, color={0,0,127}));
        connect(gain1.y, realToComplex.im)
          annotation (Line(points={{-43.4,20},{-35,20}}, color={0,0,127}));
        connect(gain1.u, realToComplex.re) annotation (Line(points={{-57.2,20},{-62,20},
                {-62,36},{-35,36},{-35,26}}, color={0,0,127}));

      /* Insert equation here */

      /* MEL_Connect Monitor_33 rcpt_ckt-L1_11B */
        connect(Monitor_33.n, GndDC.p);
        connect(MEL_Conv_Monitor_33.pin_p, Monitor_33.p);
        connect(MEL_Conv_Monitor_33.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_33.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_33.hPin_L, cable_rcpt_cktL1_11B.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_33.u);
        connect(Monitor_33.u, Gain_Monitor_33.y);

      /* MEL_Connect IT_Equipment_54 rcpt_ckt-L1_11B */
        connect(IT_Equipment_54.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_54.pin_p, IT_Equipment_54.p);
        connect(MEL_Conv_IT_Equipment_54.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_54.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_54.hPin_L, cable_rcpt_cktL1_11B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_54.u);
        connect(IT_Equipment_54.u, Gain_IT_Equipment_54.y);

      /* MEL_Connect Laptop_50 rcpt_ckt-L1_11B */
        connect(Laptop_50.n, GndDC.p);
        connect(MEL_Conv_Laptop_50.pin_p, Laptop_50.p);
        connect(MEL_Conv_Laptop_50.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_50.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_50.hPin_L, cable_rcpt_cktL1_11B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_50.u);
        connect(Laptop_50.u, Gain_Laptop_50.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_11B */
        connect(cable_rcpt_cktL1_11B.pin_n, cable_mels_L1_B.pin_p);

      /* MEL_Connect Monitor_31 rcpt_ckt-L1_10B */
        connect(Monitor_31.n, GndDC.p);
        connect(MEL_Conv_Monitor_31.pin_p, Monitor_31.p);
        connect(MEL_Conv_Monitor_31.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_31.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_31.hPin_L, cable_rcpt_cktL1_10B.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_31.u);
        connect(Monitor_31.u, Gain_Monitor_31.y);

      /* MEL_Connect IT_Equipment_50 rcpt_ckt-L1_10B */
        connect(IT_Equipment_50.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_50.pin_p, IT_Equipment_50.p);
        connect(MEL_Conv_IT_Equipment_50.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_50.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_50.hPin_L, cable_rcpt_cktL1_10B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_50.u);
        connect(IT_Equipment_50.u, Gain_IT_Equipment_50.y);

      /* MEL_Connect IT_Equipment_49 rcpt_ckt-L1_10B */
        connect(IT_Equipment_49.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_49.pin_p, IT_Equipment_49.p);
        connect(MEL_Conv_IT_Equipment_49.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_49.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_49.hPin_L, cable_rcpt_cktL1_10B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_49.u);
        connect(IT_Equipment_49.u, Gain_IT_Equipment_49.y);

      /* MEL_Connect Laptop_46 rcpt_ckt-L1_10B */
        connect(Laptop_46.n, GndDC.p);
        connect(MEL_Conv_Laptop_46.pin_p, Laptop_46.p);
        connect(MEL_Conv_Laptop_46.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_46.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_46.hPin_L, cable_rcpt_cktL1_10B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_46.u);
        connect(Laptop_46.u, Gain_Laptop_46.y);

      /* MEL_Connect Laptop_45 rcpt_ckt-L1_10B */
        connect(Laptop_45.n, GndDC.p);
        connect(MEL_Conv_Laptop_45.pin_p, Laptop_45.p);
        connect(MEL_Conv_Laptop_45.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_45.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_45.hPin_L, cable_rcpt_cktL1_10B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_45.u);
        connect(Laptop_45.u, Gain_Laptop_45.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_10B */
        connect(cable_rcpt_cktL1_10B.pin_n, cable_mels_L1_B.pin_p);

      /* MEL_Connect Printer_8 rcpt_ckt-L1_9B */
        connect(Printer_8.n, GndDC.p);
        connect(MEL_Conv_Printer_8.pin_p, Printer_8.p);
        connect(MEL_Conv_Printer_8.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_8.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_8.hPin_L, cable_rcpt_cktL1_9B.pin_p);
        connect(combiTimeTable_L1_Printer.y[1], Gain_Printer_8.u);
        connect(Printer_8.u, Gain_Printer_8.y);

      /* MEL_Connect Monitor_29 rcpt_ckt-L1_9B */
        connect(Monitor_29.n, GndDC.p);
        connect(MEL_Conv_Monitor_29.pin_p, Monitor_29.p);
        connect(MEL_Conv_Monitor_29.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_29.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_29.hPin_L, cable_rcpt_cktL1_9B.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_29.u);
        connect(Monitor_29.u, Gain_Monitor_29.y);

      /* MEL_Connect IT_Equipment_44 rcpt_ckt-L1_9B */
        connect(IT_Equipment_44.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_44.pin_p, IT_Equipment_44.p);
        connect(MEL_Conv_IT_Equipment_44.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_44.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_44.hPin_L, cable_rcpt_cktL1_9B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_44.u);
        connect(IT_Equipment_44.u, Gain_IT_Equipment_44.y);

      /* MEL_Connect Laptop_41 rcpt_ckt-L1_9B */
        connect(Laptop_41.n, GndDC.p);
        connect(MEL_Conv_Laptop_41.pin_p, Laptop_41.p);
        connect(MEL_Conv_Laptop_41.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_41.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_41.hPin_L, cable_rcpt_cktL1_9B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_41.u);
        connect(Laptop_41.u, Gain_Laptop_41.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_9B */
        connect(cable_rcpt_cktL1_9B.pin_n, cable_mels_L1_B.pin_p);

      /* MEL_Connect Monitor_25 rcpt_ckt-L1_8B */
        connect(Monitor_25.n, GndDC.p);
        connect(MEL_Conv_Monitor_25.pin_p, Monitor_25.p);
        connect(MEL_Conv_Monitor_25.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_25.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_25.hPin_L, cable_rcpt_cktL1_8B.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_25.u);
        connect(Monitor_25.u, Gain_Monitor_25.y);

      /* MEL_Connect Monitor_24 rcpt_ckt-L1_8B */
        connect(Monitor_24.n, GndDC.p);
        connect(MEL_Conv_Monitor_24.pin_p, Monitor_24.p);
        connect(MEL_Conv_Monitor_24.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_24.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_24.hPin_L, cable_rcpt_cktL1_8B.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_24.u);
        connect(Monitor_24.u, Gain_Monitor_24.y);

      /* MEL_Connect IT_Equipment_39 rcpt_ckt-L1_8B */
        connect(IT_Equipment_39.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_39.pin_p, IT_Equipment_39.p);
        connect(MEL_Conv_IT_Equipment_39.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_39.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_39.hPin_L, cable_rcpt_cktL1_8B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_39.u);
        connect(IT_Equipment_39.u, Gain_IT_Equipment_39.y);

      /* MEL_Connect Laptop_36 rcpt_ckt-L1_8B */
        connect(Laptop_36.n, GndDC.p);
        connect(MEL_Conv_Laptop_36.pin_p, Laptop_36.p);
        connect(MEL_Conv_Laptop_36.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_36.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_36.hPin_L, cable_rcpt_cktL1_8B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_36.u);
        connect(Laptop_36.u, Gain_Laptop_36.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_8B */
        connect(cable_rcpt_cktL1_8B.pin_n, cable_mels_L1_B.pin_p);

      /* MEL_Connect Monitor_20 rcpt_ckt-L1_7B */
        connect(Monitor_20.n, GndDC.p);
        connect(MEL_Conv_Monitor_20.pin_p, Monitor_20.p);
        connect(MEL_Conv_Monitor_20.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_20.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_20.hPin_L, cable_rcpt_cktL1_7B.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_20.u);
        connect(Monitor_20.u, Gain_Monitor_20.y);

      /* MEL_Connect IT_Equipment_34 rcpt_ckt-L1_7B */
        connect(IT_Equipment_34.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_34.pin_p, IT_Equipment_34.p);
        connect(MEL_Conv_IT_Equipment_34.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_34.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_34.hPin_L, cable_rcpt_cktL1_7B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_34.u);
        connect(IT_Equipment_34.u, Gain_IT_Equipment_34.y);

      /* MEL_Connect IT_Equipment_33 rcpt_ckt-L1_7B */
        connect(IT_Equipment_33.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_33.pin_p, IT_Equipment_33.p);
        connect(MEL_Conv_IT_Equipment_33.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_33.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_33.hPin_L, cable_rcpt_cktL1_7B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_33.u);
        connect(IT_Equipment_33.u, Gain_IT_Equipment_33.y);

      /* MEL_Connect Laptop_32 rcpt_ckt-L1_7B */
        connect(Laptop_32.n, GndDC.p);
        connect(MEL_Conv_Laptop_32.pin_p, Laptop_32.p);
        connect(MEL_Conv_Laptop_32.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_32.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_32.hPin_L, cable_rcpt_cktL1_7B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_32.u);
        connect(Laptop_32.u, Gain_Laptop_32.y);

      /* MEL_Connect Laptop_31 rcpt_ckt-L1_7B */
        connect(Laptop_31.n, GndDC.p);
        connect(MEL_Conv_Laptop_31.pin_p, Laptop_31.p);
        connect(MEL_Conv_Laptop_31.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_31.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_31.hPin_L, cable_rcpt_cktL1_7B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_31.u);
        connect(Laptop_31.u, Gain_Laptop_31.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_7B */
        connect(cable_rcpt_cktL1_7B.pin_n, cable_mels_L1_B.pin_p);

      /* MEL_Connect Printer_6 rcpt_ckt-L1_6B */
        connect(Printer_6.n, GndDC.p);
        connect(MEL_Conv_Printer_6.pin_p, Printer_6.p);
        connect(MEL_Conv_Printer_6.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_6.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_6.hPin_L, cable_rcpt_cktL1_6B.pin_p);
        connect(combiTimeTable_L1_Printer.y[1], Gain_Printer_6.u);
        connect(Printer_6.u, Gain_Printer_6.y);

      /* MEL_Connect Monitor_16 rcpt_ckt-L1_6B */
        connect(Monitor_16.n, GndDC.p);
        connect(MEL_Conv_Monitor_16.pin_p, Monitor_16.p);
        connect(MEL_Conv_Monitor_16.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_16.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_16.hPin_L, cable_rcpt_cktL1_6B.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_16.u);
        connect(Monitor_16.u, Gain_Monitor_16.y);

      /* MEL_Connect Monitor_15 rcpt_ckt-L1_6B */
        connect(Monitor_15.n, GndDC.p);
        connect(MEL_Conv_Monitor_15.pin_p, Monitor_15.p);
        connect(MEL_Conv_Monitor_15.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_15.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_15.hPin_L, cable_rcpt_cktL1_6B.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_15.u);
        connect(Monitor_15.u, Gain_Monitor_15.y);

      /* MEL_Connect IT_Equipment_28 rcpt_ckt-L1_6B */
        connect(IT_Equipment_28.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_28.pin_p, IT_Equipment_28.p);
        connect(MEL_Conv_IT_Equipment_28.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_28.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_28.hPin_L, cable_rcpt_cktL1_6B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_28.u);
        connect(IT_Equipment_28.u, Gain_IT_Equipment_28.y);

      /* MEL_Connect IT_Equipment_27 rcpt_ckt-L1_6B */
        connect(IT_Equipment_27.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_27.pin_p, IT_Equipment_27.p);
        connect(MEL_Conv_IT_Equipment_27.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_27.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_27.hPin_L, cable_rcpt_cktL1_6B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_27.u);
        connect(IT_Equipment_27.u, Gain_IT_Equipment_27.y);

      /* MEL_Connect Laptop_26 rcpt_ckt-L1_6B */
        connect(Laptop_26.n, GndDC.p);
        connect(MEL_Conv_Laptop_26.pin_p, Laptop_26.p);
        connect(MEL_Conv_Laptop_26.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_26.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_26.hPin_L, cable_rcpt_cktL1_6B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_26.u);
        connect(Laptop_26.u, Gain_Laptop_26.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_6B */
        connect(cable_rcpt_cktL1_6B.pin_n, cable_mels_L1_B.pin_p);

      /* MEL_Connect IT_Equipment_22 rcpt_ckt-L1_5B */
        connect(IT_Equipment_22.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_22.pin_p, IT_Equipment_22.p);
        connect(MEL_Conv_IT_Equipment_22.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_22.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_22.hPin_L, cable_rcpt_cktL1_5B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_22.u);
        connect(IT_Equipment_22.u, Gain_IT_Equipment_22.y);

      /* MEL_Connect Laptop_21 rcpt_ckt-L1_5B */
        connect(Laptop_21.n, GndDC.p);
        connect(MEL_Conv_Laptop_21.pin_p, Laptop_21.p);
        connect(MEL_Conv_Laptop_21.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_21.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_21.hPin_L, cable_rcpt_cktL1_5B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_21.u);
        connect(Laptop_21.u, Gain_Laptop_21.y);

      /* MEL_Connect Laptop_20 rcpt_ckt-L1_5B */
        connect(Laptop_20.n, GndDC.p);
        connect(MEL_Conv_Laptop_20.pin_p, Laptop_20.p);
        connect(MEL_Conv_Laptop_20.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_20.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_20.hPin_L, cable_rcpt_cktL1_5B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_20.u);
        connect(Laptop_20.u, Gain_Laptop_20.y);

      /* MEL_Connect Laptop_19 rcpt_ckt-L1_5B */
        connect(Laptop_19.n, GndDC.p);
        connect(MEL_Conv_Laptop_19.pin_p, Laptop_19.p);
        connect(MEL_Conv_Laptop_19.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_19.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_19.hPin_L, cable_rcpt_cktL1_5B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_19.u);
        connect(Laptop_19.u, Gain_Laptop_19.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_5B */
        connect(cable_rcpt_cktL1_5B.pin_n, cable_mels_L1_B.pin_p);

      /* MEL_Connect MFD_2 rcpt_ckt-L1_4B */
        connect(MFD_2.n, GndDC.p);
        connect(MEL_Conv_MFD_2.pin_p, MFD_2.p);
        connect(MEL_Conv_MFD_2.hPin_N, GndAC.pin);
        connect(MEL_Conv_MFD_2.pin_n, GndDC.p);
        connect(MEL_Conv_MFD_2.hPin_L, cable_rcpt_cktL1_4B.pin_p);
        connect(combiTimeTable_L1_MFD.y[1], Gain_MFD_2.u);
        connect(MFD_2.u, Gain_MFD_2.y);

      /* MEL_Connect IT_Equipment_17 rcpt_ckt-L1_4B */
        connect(IT_Equipment_17.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_17.pin_p, IT_Equipment_17.p);
        connect(MEL_Conv_IT_Equipment_17.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_17.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_17.hPin_L, cable_rcpt_cktL1_4B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_17.u);
        connect(IT_Equipment_17.u, Gain_IT_Equipment_17.y);

      /* MEL_Connect IT_Equipment_16 rcpt_ckt-L1_4B */
        connect(IT_Equipment_16.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_16.pin_p, IT_Equipment_16.p);
        connect(MEL_Conv_IT_Equipment_16.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_16.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_16.hPin_L, cable_rcpt_cktL1_4B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_16.u);
        connect(IT_Equipment_16.u, Gain_IT_Equipment_16.y);

      /* MEL_Connect Laptop_15 rcpt_ckt-L1_4B */
        connect(Laptop_15.n, GndDC.p);
        connect(MEL_Conv_Laptop_15.pin_p, Laptop_15.p);
        connect(MEL_Conv_Laptop_15.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_15.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_15.hPin_L, cable_rcpt_cktL1_4B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_15.u);
        connect(Laptop_15.u, Gain_Laptop_15.y);

      /* MEL_Connect Laptop_14 rcpt_ckt-L1_4B */
        connect(Laptop_14.n, GndDC.p);
        connect(MEL_Conv_Laptop_14.pin_p, Laptop_14.p);
        connect(MEL_Conv_Laptop_14.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_14.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_14.hPin_L, cable_rcpt_cktL1_4B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_14.u);
        connect(Laptop_14.u, Gain_Laptop_14.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_4B */
        connect(cable_rcpt_cktL1_4B.pin_n, cable_mels_L1_B.pin_p);

      /* MEL_Connect Monitor_8 rcpt_ckt-L1_3B */
        connect(Monitor_8.n, GndDC.p);
        connect(MEL_Conv_Monitor_8.pin_p, Monitor_8.p);
        connect(MEL_Conv_Monitor_8.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_8.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_8.hPin_L, cable_rcpt_cktL1_3B.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_8.u);
        connect(Monitor_8.u, Gain_Monitor_8.y);

      /* MEL_Connect Monitor_7 rcpt_ckt-L1_3B */
        connect(Monitor_7.n, GndDC.p);
        connect(MEL_Conv_Monitor_7.pin_p, Monitor_7.p);
        connect(MEL_Conv_Monitor_7.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_7.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_7.hPin_L, cable_rcpt_cktL1_3B.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_7.u);
        connect(Monitor_7.u, Gain_Monitor_7.y);

      /* MEL_Connect IT_Equipment_14 rcpt_ckt-L1_3B */
        connect(IT_Equipment_14.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_14.pin_p, IT_Equipment_14.p);
        connect(MEL_Conv_IT_Equipment_14.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_14.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_14.hPin_L, cable_rcpt_cktL1_3B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_14.u);
        connect(IT_Equipment_14.u, Gain_IT_Equipment_14.y);

      /* MEL_Connect IT_Equipment_13 rcpt_ckt-L1_3B */
        connect(IT_Equipment_13.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_13.pin_p, IT_Equipment_13.p);
        connect(MEL_Conv_IT_Equipment_13.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_13.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_13.hPin_L, cable_rcpt_cktL1_3B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_13.u);
        connect(IT_Equipment_13.u, Gain_IT_Equipment_13.y);

      /* MEL_Connect Laptop_10 rcpt_ckt-L1_3B */
        connect(Laptop_10.n, GndDC.p);
        connect(MEL_Conv_Laptop_10.pin_p, Laptop_10.p);
        connect(MEL_Conv_Laptop_10.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_10.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_10.hPin_L, cable_rcpt_cktL1_3B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_10.u);
        connect(Laptop_10.u, Gain_Laptop_10.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_3B */
        connect(cable_rcpt_cktL1_3B.pin_n, cable_mels_L1_B.pin_p);

      /* MEL_Connect Monitor_4 rcpt_ckt-L1_2B */
        connect(Monitor_4.n, GndDC.p);
        connect(MEL_Conv_Monitor_4.pin_p, Monitor_4.p);
        connect(MEL_Conv_Monitor_4.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_4.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_4.hPin_L, cable_rcpt_cktL1_2B.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_4.u);
        connect(Monitor_4.u, Gain_Monitor_4.y);

      /* MEL_Connect IT_Equipment_9 rcpt_ckt-L1_2B */
        connect(IT_Equipment_9.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_9.pin_p, IT_Equipment_9.p);
        connect(MEL_Conv_IT_Equipment_9.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_9.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_9.hPin_L, cable_rcpt_cktL1_2B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_9.u);
        connect(IT_Equipment_9.u, Gain_IT_Equipment_9.y);

      /* MEL_Connect IT_Equipment_8 rcpt_ckt-L1_2B */
        connect(IT_Equipment_8.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_8.pin_p, IT_Equipment_8.p);
        connect(MEL_Conv_IT_Equipment_8.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_8.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_8.hPin_L, cable_rcpt_cktL1_2B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_8.u);
        connect(IT_Equipment_8.u, Gain_IT_Equipment_8.y);

      /* MEL_Connect Laptop_6 rcpt_ckt-L1_2B */
        connect(Laptop_6.n, GndDC.p);
        connect(MEL_Conv_Laptop_6.pin_p, Laptop_6.p);
        connect(MEL_Conv_Laptop_6.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_6.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_6.hPin_L, cable_rcpt_cktL1_2B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_6.u);
        connect(Laptop_6.u, Gain_Laptop_6.y);

      /* MEL_Connect Laptop_5 rcpt_ckt-L1_2B */
        connect(Laptop_5.n, GndDC.p);
        connect(MEL_Conv_Laptop_5.pin_p, Laptop_5.p);
        connect(MEL_Conv_Laptop_5.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_5.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_5.hPin_L, cable_rcpt_cktL1_2B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_5.u);
        connect(Laptop_5.u, Gain_Laptop_5.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_2B */
        connect(cable_rcpt_cktL1_2B.pin_n, cable_mels_L1_B.pin_p);

      /* MEL_Connect Printer_1 rcpt_ckt-L1_1B */
        connect(Printer_1.n, GndDC.p);
        connect(MEL_Conv_Printer_1.pin_p, Printer_1.p);
        connect(MEL_Conv_Printer_1.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_1.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_1.hPin_L, cable_rcpt_cktL1_1B.pin_p);
        connect(combiTimeTable_L1_Printer.y[1], Gain_Printer_1.u);
        connect(Printer_1.u, Gain_Printer_1.y);

      /* MEL_Connect Display_2 rcpt_ckt-L1_1B */
        connect(Display_2.n, GndDC.p);
        connect(MEL_Conv_Display_2.pin_p, Display_2.p);
        connect(MEL_Conv_Display_2.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_2.pin_n, GndDC.p);
        connect(MEL_Conv_Display_2.hPin_L, cable_rcpt_cktL1_1B.pin_p);
        connect(combiTimeTable_L1_Display.y[1], Gain_Display_2.u);
        connect(Display_2.u, Gain_Display_2.y);

      /* MEL_Connect IT_Equipment_3 rcpt_ckt-L1_1B */
        connect(IT_Equipment_3.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_3.pin_p, IT_Equipment_3.p);
        connect(MEL_Conv_IT_Equipment_3.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_3.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_3.hPin_L, cable_rcpt_cktL1_1B.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_3.u);
        connect(IT_Equipment_3.u, Gain_IT_Equipment_3.y);

      /* MEL_Connect Laptop_2 rcpt_ckt-L1_1B */
        connect(Laptop_2.n, GndDC.p);
        connect(MEL_Conv_Laptop_2.pin_p, Laptop_2.p);
        connect(MEL_Conv_Laptop_2.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_2.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_2.hPin_L, cable_rcpt_cktL1_1B.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_2.u);
        connect(Laptop_2.u, Gain_Laptop_2.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_1B */
        connect(cable_rcpt_cktL1_1B.pin_n, cable_mels_L1_B.pin_p);

        annotation ();
      end MEL_Panel_L1B;

      model MEL_Panel_L1C
        outer parameter Real PF;
        outer parameter Real PF1;
        /* parameter Real PF = 0.9; */

        outer HPF.SystemDef systemDef;
        Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
          Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        HPF.SinglePhase.Components.Ground GndAC annotation (
          Placement(visible = true, transformation(origin={-18,44},    extent = {{-8, -8}, {8, 8}}, rotation = -90)));
        HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
          Placement(visible = true, transformation(extent={{-120,-40},{-100,-20}},    rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
        HPF.Cables.NEC_CableModel cable_mels_L1_C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_4,
            length=15)
          annotation (Placement(transformation(extent={{-42,-40},{-62,-20}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_IT_Equipment(
          tableOnFile=true,
          tableName="L1-All-ITEquipment",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-92,72},{-72,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Laptop(
          tableOnFile=true,
          tableName="L1-All-Laptops",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-60,72},{-40,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_MFD(
          tableOnFile=true,
          tableName="L1-All-MFDs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-28,72},{-8,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Monitor(
          tableOnFile=true,
          tableName="L1-All-Monitors",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{10,72},{30,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Printer(
          tableOnFile=true,
          tableName="L1-All-Printers",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{40,72},{60,92}})));
        HPF.Loads.SinglePhase.AC_LoadIdeal1P other_general_plug(
          P_nom=2205,
          Q_nom=1068,
          V_nom=120) annotation (Placement(visible=true, transformation(
              origin={-4,12},
              extent={{-8,-8},{8,8}},
              rotation=90)));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Display(
          tableOnFile=true,
          tableName="L1-All-TVs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{72,72},{92,92}})));
        Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex
          annotation (Placement(transformation(extent={{-34,18},{-24,28}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_All_Plugs_General(
          tableOnFile=true,
          tableName="L1-All-Plugs-General",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L1_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-94,40},{-74,60}})));

        Modelica.Blocks.Math.Gain gain_gen_plugs_L1_A(k=2204.25)
          annotation (Placement(transformation(extent={{-66,44},{-54,56}})));
        Modelica.Blocks.Math.Gain gain1(k=PF1)
          annotation (Placement(transformation(extent={{-56,14},{-44,26}})));

      /* Insert models here */

      /* MEL_Model Printer_9 rcpt_ckt-L1_11C */
        Modelica.Blocks.Math.Gain Gain_Printer_9(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_9(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_9;

      /* MEL_Model IT_Equipment_55 rcpt_ckt-L1_11C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_55(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_55(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_55;

      /* MEL_Model  cable_rcpt_ckt-L1_11C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_11C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=114.0);

      /* MEL_Model Display_5 rcpt_ckt-L1_10C */
        Modelica.Blocks.Math.Gain Gain_Display_5(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_5(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_5;

      /* MEL_Model Monitor_32 rcpt_ckt-L1_10C */
        Modelica.Blocks.Math.Gain Gain_Monitor_32(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_32(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_32;

      /* MEL_Model IT_Equipment_52 rcpt_ckt-L1_10C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_52(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_52(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_52;

      /* MEL_Model IT_Equipment_51 rcpt_ckt-L1_10C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_51(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_51(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_51;

      /* MEL_Model Laptop_47 rcpt_ckt-L1_10C */
        Modelica.Blocks.Math.Gain Gain_Laptop_47(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_47(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_47;

      /* MEL_Model  cable_rcpt_ckt-L1_10C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_10C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=178.08);

      /* MEL_Model MFD_3 rcpt_ckt-L1_9C */
        Modelica.Blocks.Math.Gain Gain_MFD_3(k=621) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_MFD_3(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=621,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load MFD_3;

      /* MEL_Model Display_4 rcpt_ckt-L1_9C */
        Modelica.Blocks.Math.Gain Gain_Display_4(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_4(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_4;

      /* MEL_Model Monitor_30 rcpt_ckt-L1_9C */
        Modelica.Blocks.Math.Gain Gain_Monitor_30(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_30(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_30;

      /* MEL_Model IT_Equipment_46 rcpt_ckt-L1_9C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_46(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_46(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_46;

      /* MEL_Model IT_Equipment_45 rcpt_ckt-L1_9C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_45(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_45(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_45;

      /* MEL_Model Laptop_42 rcpt_ckt-L1_9C */
        Modelica.Blocks.Math.Gain Gain_Laptop_42(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_42(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_42;

      /* MEL_Model  cable_rcpt_ckt-L1_9C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_9C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=196.27);

      /* MEL_Model Monitor_26 rcpt_ckt-L1_8C */
        Modelica.Blocks.Math.Gain Gain_Monitor_26(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_26(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_26;

      /* MEL_Model IT_Equipment_41 rcpt_ckt-L1_8C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_41(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_41(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_41;

      /* MEL_Model IT_Equipment_40 rcpt_ckt-L1_8C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_40(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_40(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_40;

      /* MEL_Model Laptop_38 rcpt_ckt-L1_8C */
        Modelica.Blocks.Math.Gain Gain_Laptop_38(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_38(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_38;

      /* MEL_Model Laptop_37 rcpt_ckt-L1_8C */
        Modelica.Blocks.Math.Gain Gain_Laptop_37(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_37(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_37;

      /* MEL_Model  cable_rcpt_ckt-L1_8C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_8C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=146.68);

      /* MEL_Model Printer_7 rcpt_ckt-L1_7C */
        Modelica.Blocks.Math.Gain Gain_Printer_7(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_7(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_7;

      /* MEL_Model Monitor_22 rcpt_ckt-L1_7C */
        Modelica.Blocks.Math.Gain Gain_Monitor_22(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_22(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_22;

      /* MEL_Model Monitor_21 rcpt_ckt-L1_7C */
        Modelica.Blocks.Math.Gain Gain_Monitor_21(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_21(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_21;

      /* MEL_Model IT_Equipment_36 rcpt_ckt-L1_7C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_36(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_36(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_36;

      /* MEL_Model IT_Equipment_35 rcpt_ckt-L1_7C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_35(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_35(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_35;

      /* MEL_Model Laptop_33 rcpt_ckt-L1_7C */
        Modelica.Blocks.Math.Gain Gain_Laptop_33(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_33(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_33;

      /* MEL_Model  cable_rcpt_ckt-L1_7C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_7C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=112.9);

      /* MEL_Model Monitor_17 rcpt_ckt-L1_6C */
        Modelica.Blocks.Math.Gain Gain_Monitor_17(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_17(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_17;

      /* MEL_Model IT_Equipment_30 rcpt_ckt-L1_6C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_30(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_30(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_30;

      /* MEL_Model IT_Equipment_29 rcpt_ckt-L1_6C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_29(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_29(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_29;

      /* MEL_Model Laptop_28 rcpt_ckt-L1_6C */
        Modelica.Blocks.Math.Gain Gain_Laptop_28(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_28(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_28;

      /* MEL_Model Laptop_27 rcpt_ckt-L1_6C */
        Modelica.Blocks.Math.Gain Gain_Laptop_27(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_27(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_27;

      /* MEL_Model  cable_rcpt_ckt-L1_6C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_6C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=141.51);

      /* MEL_Model Monitor_13 rcpt_ckt-L1_5C */
        Modelica.Blocks.Math.Gain Gain_Monitor_13(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_13(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_13;

      /* MEL_Model Monitor_12 rcpt_ckt-L1_5C */
        Modelica.Blocks.Math.Gain Gain_Monitor_12(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_12(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_12;

      /* MEL_Model IT_Equipment_24 rcpt_ckt-L1_5C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_24(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_24(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_24;

      /* MEL_Model IT_Equipment_23 rcpt_ckt-L1_5C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_23(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_23(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_23;

      /* MEL_Model Laptop_23 rcpt_ckt-L1_5C */
        Modelica.Blocks.Math.Gain Gain_Laptop_23(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_23(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_23;

      /* MEL_Model Laptop_22 rcpt_ckt-L1_5C */
        Modelica.Blocks.Math.Gain Gain_Laptop_22(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_22(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_22;

      /* MEL_Model  cable_rcpt_ckt-L1_5C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_5C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=178.75);

      /* MEL_Model Display_3 rcpt_ckt-L1_4C */
        Modelica.Blocks.Math.Gain Gain_Display_3(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_3(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_3;

      /* MEL_Model Monitor_10 rcpt_ckt-L1_4C */
        Modelica.Blocks.Math.Gain Gain_Monitor_10(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_10(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_10;

      /* MEL_Model IT_Equipment_19 rcpt_ckt-L1_4C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_19(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_19(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_19;

      /* MEL_Model IT_Equipment_18 rcpt_ckt-L1_4C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_18(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_18(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_18;

      /* MEL_Model Laptop_16 rcpt_ckt-L1_4C */
        Modelica.Blocks.Math.Gain Gain_Laptop_16(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_16(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_16;

      /* MEL_Model  cable_rcpt_ckt-L1_4C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_4C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=61.83);

      /* MEL_Model Laptop_12 rcpt_ckt-L1_3C */
        Modelica.Blocks.Math.Gain Gain_Laptop_12(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_12(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_12;

      /* MEL_Model Laptop_11 rcpt_ckt-L1_3C */
        Modelica.Blocks.Math.Gain Gain_Laptop_11(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_11(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_11;

      /* MEL_Model  cable_rcpt_ckt-L1_3C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_3C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=47.76);

      /* MEL_Model Printer_3 rcpt_ckt-L1_2C */
        Modelica.Blocks.Math.Gain Gain_Printer_3(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_3(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_3;

      /* MEL_Model Monitor_5 rcpt_ckt-L1_2C */
        Modelica.Blocks.Math.Gain Gain_Monitor_5(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_5(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_5;

      /* MEL_Model IT_Equipment_10 rcpt_ckt-L1_2C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_10(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_10(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_10;

      /* MEL_Model Laptop_7 rcpt_ckt-L1_2C */
        Modelica.Blocks.Math.Gain Gain_Laptop_7(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_7(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_7;

      /* MEL_Model  cable_rcpt_ckt-L1_2C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_2C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=61.42);

      /* MEL_Model Printer_2 rcpt_ckt-L1_1C */
        Modelica.Blocks.Math.Gain Gain_Printer_2(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_2(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_2;

      /* MEL_Model IT_Equipment_5 rcpt_ckt-L1_1C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_5(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_5(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_5;

      /* MEL_Model IT_Equipment_4 rcpt_ckt-L1_1C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_4(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_4(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_4;

      /* MEL_Model Laptop_3 rcpt_ckt-L1_1C */
        Modelica.Blocks.Math.Gain Gain_Laptop_3(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_3(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_3;

      /* MEL_Model  cable_rcpt_ckt-L1_1C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL1_1C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=86.15);

      equation
        connect(cable_mels_L1_C.pin_n, pin_p)
          annotation (Line(points={{-62,-30},{-110,-30}}, color={117,80,123}));
        connect(cable_mels_L1_C.pin_p, other_general_plug.hPin_L)
          annotation (Line(points={{-42,-30},{-4,-30},{-4,4}}, color={92,53,102}));
        connect(GndAC.pin, other_general_plug.hPin_N) annotation (Line(points={{-10,
                44},{-8,44},{-8,38},{-4,38},{-4,20}}, color={92,53,102}));
        connect(realToComplex.y, other_general_plug.S_input) annotation (Line(points={{-23.5,
                23},{-8,23},{-8,12.16}},        color={85,170,255}));
        connect(combiTimeTable_L1_All_Plugs_General.y[1], gain_gen_plugs_L1_A.u)
          annotation (Line(points={{-73,50},{-67.2,50}}, color={0,0,127}));
        connect(gain_gen_plugs_L1_A.y, realToComplex.re) annotation (Line(points={{-53.4,
                50},{-48,50},{-48,40},{-35,40},{-35,26}}, color={0,0,127}));
        connect(gain1.y, realToComplex.im)
          annotation (Line(points={{-43.4,20},{-35,20}}, color={0,0,127}));
        connect(gain1.u, realToComplex.re) annotation (Line(points={{-57.2,20},{-62,20},
                {-62,36},{-35,36},{-35,26}}, color={0,0,127}));

      /* Insert equation here */

      /* MEL_Connect Printer_9 rcpt_ckt-L1_11C */
        connect(Printer_9.n, GndDC.p);
        connect(MEL_Conv_Printer_9.pin_p, Printer_9.p);
        connect(MEL_Conv_Printer_9.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_9.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_9.hPin_L, cable_rcpt_cktL1_11C.pin_p);
        connect(combiTimeTable_L1_Printer.y[1], Gain_Printer_9.u);
        connect(Printer_9.u, Gain_Printer_9.y);

      /* MEL_Connect IT_Equipment_55 rcpt_ckt-L1_11C */
        connect(IT_Equipment_55.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_55.pin_p, IT_Equipment_55.p);
        connect(MEL_Conv_IT_Equipment_55.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_55.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_55.hPin_L, cable_rcpt_cktL1_11C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_55.u);
        connect(IT_Equipment_55.u, Gain_IT_Equipment_55.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_11C */
        connect(cable_rcpt_cktL1_11C.pin_n, cable_mels_L1_C.pin_p);

      /* MEL_Connect Display_5 rcpt_ckt-L1_10C */
        connect(Display_5.n, GndDC.p);
        connect(MEL_Conv_Display_5.pin_p, Display_5.p);
        connect(MEL_Conv_Display_5.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_5.pin_n, GndDC.p);
        connect(MEL_Conv_Display_5.hPin_L, cable_rcpt_cktL1_10C.pin_p);
        connect(combiTimeTable_L1_Display.y[1], Gain_Display_5.u);
        connect(Display_5.u, Gain_Display_5.y);

      /* MEL_Connect Monitor_32 rcpt_ckt-L1_10C */
        connect(Monitor_32.n, GndDC.p);
        connect(MEL_Conv_Monitor_32.pin_p, Monitor_32.p);
        connect(MEL_Conv_Monitor_32.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_32.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_32.hPin_L, cable_rcpt_cktL1_10C.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_32.u);
        connect(Monitor_32.u, Gain_Monitor_32.y);

      /* MEL_Connect IT_Equipment_52 rcpt_ckt-L1_10C */
        connect(IT_Equipment_52.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_52.pin_p, IT_Equipment_52.p);
        connect(MEL_Conv_IT_Equipment_52.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_52.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_52.hPin_L, cable_rcpt_cktL1_10C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_52.u);
        connect(IT_Equipment_52.u, Gain_IT_Equipment_52.y);

      /* MEL_Connect IT_Equipment_51 rcpt_ckt-L1_10C */
        connect(IT_Equipment_51.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_51.pin_p, IT_Equipment_51.p);
        connect(MEL_Conv_IT_Equipment_51.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_51.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_51.hPin_L, cable_rcpt_cktL1_10C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_51.u);
        connect(IT_Equipment_51.u, Gain_IT_Equipment_51.y);

      /* MEL_Connect Laptop_47 rcpt_ckt-L1_10C */
        connect(Laptop_47.n, GndDC.p);
        connect(MEL_Conv_Laptop_47.pin_p, Laptop_47.p);
        connect(MEL_Conv_Laptop_47.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_47.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_47.hPin_L, cable_rcpt_cktL1_10C.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_47.u);
        connect(Laptop_47.u, Gain_Laptop_47.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_10C */
        connect(cable_rcpt_cktL1_10C.pin_n, cable_mels_L1_C.pin_p);

      /* MEL_Connect MFD_3 rcpt_ckt-L1_9C */
        connect(MFD_3.n, GndDC.p);
        connect(MEL_Conv_MFD_3.pin_p, MFD_3.p);
        connect(MEL_Conv_MFD_3.hPin_N, GndAC.pin);
        connect(MEL_Conv_MFD_3.pin_n, GndDC.p);
        connect(MEL_Conv_MFD_3.hPin_L, cable_rcpt_cktL1_9C.pin_p);
        connect(combiTimeTable_L1_MFD.y[1], Gain_MFD_3.u);
        connect(MFD_3.u, Gain_MFD_3.y);

      /* MEL_Connect Display_4 rcpt_ckt-L1_9C */
        connect(Display_4.n, GndDC.p);
        connect(MEL_Conv_Display_4.pin_p, Display_4.p);
        connect(MEL_Conv_Display_4.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_4.pin_n, GndDC.p);
        connect(MEL_Conv_Display_4.hPin_L, cable_rcpt_cktL1_9C.pin_p);
        connect(combiTimeTable_L1_Display.y[1], Gain_Display_4.u);
        connect(Display_4.u, Gain_Display_4.y);

      /* MEL_Connect Monitor_30 rcpt_ckt-L1_9C */
        connect(Monitor_30.n, GndDC.p);
        connect(MEL_Conv_Monitor_30.pin_p, Monitor_30.p);
        connect(MEL_Conv_Monitor_30.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_30.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_30.hPin_L, cable_rcpt_cktL1_9C.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_30.u);
        connect(Monitor_30.u, Gain_Monitor_30.y);

      /* MEL_Connect IT_Equipment_46 rcpt_ckt-L1_9C */
        connect(IT_Equipment_46.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_46.pin_p, IT_Equipment_46.p);
        connect(MEL_Conv_IT_Equipment_46.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_46.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_46.hPin_L, cable_rcpt_cktL1_9C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_46.u);
        connect(IT_Equipment_46.u, Gain_IT_Equipment_46.y);

      /* MEL_Connect IT_Equipment_45 rcpt_ckt-L1_9C */
        connect(IT_Equipment_45.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_45.pin_p, IT_Equipment_45.p);
        connect(MEL_Conv_IT_Equipment_45.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_45.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_45.hPin_L, cable_rcpt_cktL1_9C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_45.u);
        connect(IT_Equipment_45.u, Gain_IT_Equipment_45.y);

      /* MEL_Connect Laptop_42 rcpt_ckt-L1_9C */
        connect(Laptop_42.n, GndDC.p);
        connect(MEL_Conv_Laptop_42.pin_p, Laptop_42.p);
        connect(MEL_Conv_Laptop_42.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_42.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_42.hPin_L, cable_rcpt_cktL1_9C.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_42.u);
        connect(Laptop_42.u, Gain_Laptop_42.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_9C */
        connect(cable_rcpt_cktL1_9C.pin_n, cable_mels_L1_C.pin_p);

      /* MEL_Connect Monitor_26 rcpt_ckt-L1_8C */
        connect(Monitor_26.n, GndDC.p);
        connect(MEL_Conv_Monitor_26.pin_p, Monitor_26.p);
        connect(MEL_Conv_Monitor_26.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_26.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_26.hPin_L, cable_rcpt_cktL1_8C.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_26.u);
        connect(Monitor_26.u, Gain_Monitor_26.y);

      /* MEL_Connect IT_Equipment_41 rcpt_ckt-L1_8C */
        connect(IT_Equipment_41.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_41.pin_p, IT_Equipment_41.p);
        connect(MEL_Conv_IT_Equipment_41.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_41.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_41.hPin_L, cable_rcpt_cktL1_8C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_41.u);
        connect(IT_Equipment_41.u, Gain_IT_Equipment_41.y);

      /* MEL_Connect IT_Equipment_40 rcpt_ckt-L1_8C */
        connect(IT_Equipment_40.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_40.pin_p, IT_Equipment_40.p);
        connect(MEL_Conv_IT_Equipment_40.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_40.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_40.hPin_L, cable_rcpt_cktL1_8C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_40.u);
        connect(IT_Equipment_40.u, Gain_IT_Equipment_40.y);

      /* MEL_Connect Laptop_38 rcpt_ckt-L1_8C */
        connect(Laptop_38.n, GndDC.p);
        connect(MEL_Conv_Laptop_38.pin_p, Laptop_38.p);
        connect(MEL_Conv_Laptop_38.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_38.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_38.hPin_L, cable_rcpt_cktL1_8C.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_38.u);
        connect(Laptop_38.u, Gain_Laptop_38.y);

      /* MEL_Connect Laptop_37 rcpt_ckt-L1_8C */
        connect(Laptop_37.n, GndDC.p);
        connect(MEL_Conv_Laptop_37.pin_p, Laptop_37.p);
        connect(MEL_Conv_Laptop_37.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_37.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_37.hPin_L, cable_rcpt_cktL1_8C.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_37.u);
        connect(Laptop_37.u, Gain_Laptop_37.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_8C */
        connect(cable_rcpt_cktL1_8C.pin_n, cable_mels_L1_C.pin_p);

      /* MEL_Connect Printer_7 rcpt_ckt-L1_7C */
        connect(Printer_7.n, GndDC.p);
        connect(MEL_Conv_Printer_7.pin_p, Printer_7.p);
        connect(MEL_Conv_Printer_7.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_7.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_7.hPin_L, cable_rcpt_cktL1_7C.pin_p);
        connect(combiTimeTable_L1_Printer.y[1], Gain_Printer_7.u);
        connect(Printer_7.u, Gain_Printer_7.y);

      /* MEL_Connect Monitor_22 rcpt_ckt-L1_7C */
        connect(Monitor_22.n, GndDC.p);
        connect(MEL_Conv_Monitor_22.pin_p, Monitor_22.p);
        connect(MEL_Conv_Monitor_22.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_22.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_22.hPin_L, cable_rcpt_cktL1_7C.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_22.u);
        connect(Monitor_22.u, Gain_Monitor_22.y);

      /* MEL_Connect Monitor_21 rcpt_ckt-L1_7C */
        connect(Monitor_21.n, GndDC.p);
        connect(MEL_Conv_Monitor_21.pin_p, Monitor_21.p);
        connect(MEL_Conv_Monitor_21.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_21.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_21.hPin_L, cable_rcpt_cktL1_7C.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_21.u);
        connect(Monitor_21.u, Gain_Monitor_21.y);

      /* MEL_Connect IT_Equipment_36 rcpt_ckt-L1_7C */
        connect(IT_Equipment_36.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_36.pin_p, IT_Equipment_36.p);
        connect(MEL_Conv_IT_Equipment_36.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_36.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_36.hPin_L, cable_rcpt_cktL1_7C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_36.u);
        connect(IT_Equipment_36.u, Gain_IT_Equipment_36.y);

      /* MEL_Connect IT_Equipment_35 rcpt_ckt-L1_7C */
        connect(IT_Equipment_35.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_35.pin_p, IT_Equipment_35.p);
        connect(MEL_Conv_IT_Equipment_35.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_35.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_35.hPin_L, cable_rcpt_cktL1_7C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_35.u);
        connect(IT_Equipment_35.u, Gain_IT_Equipment_35.y);

      /* MEL_Connect Laptop_33 rcpt_ckt-L1_7C */
        connect(Laptop_33.n, GndDC.p);
        connect(MEL_Conv_Laptop_33.pin_p, Laptop_33.p);
        connect(MEL_Conv_Laptop_33.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_33.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_33.hPin_L, cable_rcpt_cktL1_7C.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_33.u);
        connect(Laptop_33.u, Gain_Laptop_33.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_7C */
        connect(cable_rcpt_cktL1_7C.pin_n, cable_mels_L1_C.pin_p);

      /* MEL_Connect Monitor_17 rcpt_ckt-L1_6C */
        connect(Monitor_17.n, GndDC.p);
        connect(MEL_Conv_Monitor_17.pin_p, Monitor_17.p);
        connect(MEL_Conv_Monitor_17.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_17.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_17.hPin_L, cable_rcpt_cktL1_6C.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_17.u);
        connect(Monitor_17.u, Gain_Monitor_17.y);

      /* MEL_Connect IT_Equipment_30 rcpt_ckt-L1_6C */
        connect(IT_Equipment_30.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_30.pin_p, IT_Equipment_30.p);
        connect(MEL_Conv_IT_Equipment_30.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_30.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_30.hPin_L, cable_rcpt_cktL1_6C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_30.u);
        connect(IT_Equipment_30.u, Gain_IT_Equipment_30.y);

      /* MEL_Connect IT_Equipment_29 rcpt_ckt-L1_6C */
        connect(IT_Equipment_29.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_29.pin_p, IT_Equipment_29.p);
        connect(MEL_Conv_IT_Equipment_29.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_29.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_29.hPin_L, cable_rcpt_cktL1_6C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_29.u);
        connect(IT_Equipment_29.u, Gain_IT_Equipment_29.y);

      /* MEL_Connect Laptop_28 rcpt_ckt-L1_6C */
        connect(Laptop_28.n, GndDC.p);
        connect(MEL_Conv_Laptop_28.pin_p, Laptop_28.p);
        connect(MEL_Conv_Laptop_28.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_28.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_28.hPin_L, cable_rcpt_cktL1_6C.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_28.u);
        connect(Laptop_28.u, Gain_Laptop_28.y);

      /* MEL_Connect Laptop_27 rcpt_ckt-L1_6C */
        connect(Laptop_27.n, GndDC.p);
        connect(MEL_Conv_Laptop_27.pin_p, Laptop_27.p);
        connect(MEL_Conv_Laptop_27.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_27.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_27.hPin_L, cable_rcpt_cktL1_6C.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_27.u);
        connect(Laptop_27.u, Gain_Laptop_27.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_6C */
        connect(cable_rcpt_cktL1_6C.pin_n, cable_mels_L1_C.pin_p);

      /* MEL_Connect Monitor_13 rcpt_ckt-L1_5C */
        connect(Monitor_13.n, GndDC.p);
        connect(MEL_Conv_Monitor_13.pin_p, Monitor_13.p);
        connect(MEL_Conv_Monitor_13.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_13.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_13.hPin_L, cable_rcpt_cktL1_5C.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_13.u);
        connect(Monitor_13.u, Gain_Monitor_13.y);

      /* MEL_Connect Monitor_12 rcpt_ckt-L1_5C */
        connect(Monitor_12.n, GndDC.p);
        connect(MEL_Conv_Monitor_12.pin_p, Monitor_12.p);
        connect(MEL_Conv_Monitor_12.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_12.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_12.hPin_L, cable_rcpt_cktL1_5C.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_12.u);
        connect(Monitor_12.u, Gain_Monitor_12.y);

      /* MEL_Connect IT_Equipment_24 rcpt_ckt-L1_5C */
        connect(IT_Equipment_24.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_24.pin_p, IT_Equipment_24.p);
        connect(MEL_Conv_IT_Equipment_24.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_24.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_24.hPin_L, cable_rcpt_cktL1_5C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_24.u);
        connect(IT_Equipment_24.u, Gain_IT_Equipment_24.y);

      /* MEL_Connect IT_Equipment_23 rcpt_ckt-L1_5C */
        connect(IT_Equipment_23.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_23.pin_p, IT_Equipment_23.p);
        connect(MEL_Conv_IT_Equipment_23.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_23.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_23.hPin_L, cable_rcpt_cktL1_5C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_23.u);
        connect(IT_Equipment_23.u, Gain_IT_Equipment_23.y);

      /* MEL_Connect Laptop_23 rcpt_ckt-L1_5C */
        connect(Laptop_23.n, GndDC.p);
        connect(MEL_Conv_Laptop_23.pin_p, Laptop_23.p);
        connect(MEL_Conv_Laptop_23.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_23.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_23.hPin_L, cable_rcpt_cktL1_5C.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_23.u);
        connect(Laptop_23.u, Gain_Laptop_23.y);

      /* MEL_Connect Laptop_22 rcpt_ckt-L1_5C */
        connect(Laptop_22.n, GndDC.p);
        connect(MEL_Conv_Laptop_22.pin_p, Laptop_22.p);
        connect(MEL_Conv_Laptop_22.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_22.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_22.hPin_L, cable_rcpt_cktL1_5C.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_22.u);
        connect(Laptop_22.u, Gain_Laptop_22.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_5C */
        connect(cable_rcpt_cktL1_5C.pin_n, cable_mels_L1_C.pin_p);

      /* MEL_Connect Display_3 rcpt_ckt-L1_4C */
        connect(Display_3.n, GndDC.p);
        connect(MEL_Conv_Display_3.pin_p, Display_3.p);
        connect(MEL_Conv_Display_3.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_3.pin_n, GndDC.p);
        connect(MEL_Conv_Display_3.hPin_L, cable_rcpt_cktL1_4C.pin_p);
        connect(combiTimeTable_L1_Display.y[1], Gain_Display_3.u);
        connect(Display_3.u, Gain_Display_3.y);

      /* MEL_Connect Monitor_10 rcpt_ckt-L1_4C */
        connect(Monitor_10.n, GndDC.p);
        connect(MEL_Conv_Monitor_10.pin_p, Monitor_10.p);
        connect(MEL_Conv_Monitor_10.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_10.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_10.hPin_L, cable_rcpt_cktL1_4C.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_10.u);
        connect(Monitor_10.u, Gain_Monitor_10.y);

      /* MEL_Connect IT_Equipment_19 rcpt_ckt-L1_4C */
        connect(IT_Equipment_19.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_19.pin_p, IT_Equipment_19.p);
        connect(MEL_Conv_IT_Equipment_19.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_19.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_19.hPin_L, cable_rcpt_cktL1_4C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_19.u);
        connect(IT_Equipment_19.u, Gain_IT_Equipment_19.y);

      /* MEL_Connect IT_Equipment_18 rcpt_ckt-L1_4C */
        connect(IT_Equipment_18.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_18.pin_p, IT_Equipment_18.p);
        connect(MEL_Conv_IT_Equipment_18.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_18.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_18.hPin_L, cable_rcpt_cktL1_4C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_18.u);
        connect(IT_Equipment_18.u, Gain_IT_Equipment_18.y);

      /* MEL_Connect Laptop_16 rcpt_ckt-L1_4C */
        connect(Laptop_16.n, GndDC.p);
        connect(MEL_Conv_Laptop_16.pin_p, Laptop_16.p);
        connect(MEL_Conv_Laptop_16.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_16.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_16.hPin_L, cable_rcpt_cktL1_4C.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_16.u);
        connect(Laptop_16.u, Gain_Laptop_16.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_4C */
        connect(cable_rcpt_cktL1_4C.pin_n, cable_mels_L1_C.pin_p);

      /* MEL_Connect Laptop_12 rcpt_ckt-L1_3C */
        connect(Laptop_12.n, GndDC.p);
        connect(MEL_Conv_Laptop_12.pin_p, Laptop_12.p);
        connect(MEL_Conv_Laptop_12.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_12.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_12.hPin_L, cable_rcpt_cktL1_3C.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_12.u);
        connect(Laptop_12.u, Gain_Laptop_12.y);

      /* MEL_Connect Laptop_11 rcpt_ckt-L1_3C */
        connect(Laptop_11.n, GndDC.p);
        connect(MEL_Conv_Laptop_11.pin_p, Laptop_11.p);
        connect(MEL_Conv_Laptop_11.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_11.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_11.hPin_L, cable_rcpt_cktL1_3C.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_11.u);
        connect(Laptop_11.u, Gain_Laptop_11.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_3C */
        connect(cable_rcpt_cktL1_3C.pin_n, cable_mels_L1_C.pin_p);

      /* MEL_Connect Printer_3 rcpt_ckt-L1_2C */
        connect(Printer_3.n, GndDC.p);
        connect(MEL_Conv_Printer_3.pin_p, Printer_3.p);
        connect(MEL_Conv_Printer_3.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_3.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_3.hPin_L, cable_rcpt_cktL1_2C.pin_p);
        connect(combiTimeTable_L1_Printer.y[1], Gain_Printer_3.u);
        connect(Printer_3.u, Gain_Printer_3.y);

      /* MEL_Connect Monitor_5 rcpt_ckt-L1_2C */
        connect(Monitor_5.n, GndDC.p);
        connect(MEL_Conv_Monitor_5.pin_p, Monitor_5.p);
        connect(MEL_Conv_Monitor_5.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_5.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_5.hPin_L, cable_rcpt_cktL1_2C.pin_p);
        connect(combiTimeTable_L1_Monitor.y[1], Gain_Monitor_5.u);
        connect(Monitor_5.u, Gain_Monitor_5.y);

      /* MEL_Connect IT_Equipment_10 rcpt_ckt-L1_2C */
        connect(IT_Equipment_10.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_10.pin_p, IT_Equipment_10.p);
        connect(MEL_Conv_IT_Equipment_10.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_10.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_10.hPin_L, cable_rcpt_cktL1_2C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_10.u);
        connect(IT_Equipment_10.u, Gain_IT_Equipment_10.y);

      /* MEL_Connect Laptop_7 rcpt_ckt-L1_2C */
        connect(Laptop_7.n, GndDC.p);
        connect(MEL_Conv_Laptop_7.pin_p, Laptop_7.p);
        connect(MEL_Conv_Laptop_7.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_7.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_7.hPin_L, cable_rcpt_cktL1_2C.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_7.u);
        connect(Laptop_7.u, Gain_Laptop_7.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_2C */
        connect(cable_rcpt_cktL1_2C.pin_n, cable_mels_L1_C.pin_p);

      /* MEL_Connect Printer_2 rcpt_ckt-L1_1C */
        connect(Printer_2.n, GndDC.p);
        connect(MEL_Conv_Printer_2.pin_p, Printer_2.p);
        connect(MEL_Conv_Printer_2.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_2.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_2.hPin_L, cable_rcpt_cktL1_1C.pin_p);
        connect(combiTimeTable_L1_Printer.y[1], Gain_Printer_2.u);
        connect(Printer_2.u, Gain_Printer_2.y);

      /* MEL_Connect IT_Equipment_5 rcpt_ckt-L1_1C */
        connect(IT_Equipment_5.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_5.pin_p, IT_Equipment_5.p);
        connect(MEL_Conv_IT_Equipment_5.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_5.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_5.hPin_L, cable_rcpt_cktL1_1C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_5.u);
        connect(IT_Equipment_5.u, Gain_IT_Equipment_5.y);

      /* MEL_Connect IT_Equipment_4 rcpt_ckt-L1_1C */
        connect(IT_Equipment_4.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_4.pin_p, IT_Equipment_4.p);
        connect(MEL_Conv_IT_Equipment_4.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_4.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_4.hPin_L, cable_rcpt_cktL1_1C.pin_p);
        connect(combiTimeTable_L1_IT_Equipment.y[1], Gain_IT_Equipment_4.u);
        connect(IT_Equipment_4.u, Gain_IT_Equipment_4.y);

      /* MEL_Connect Laptop_3 rcpt_ckt-L1_1C */
        connect(Laptop_3.n, GndDC.p);
        connect(MEL_Conv_Laptop_3.pin_p, Laptop_3.p);
        connect(MEL_Conv_Laptop_3.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_3.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_3.hPin_L, cable_rcpt_cktL1_1C.pin_p);
        connect(combiTimeTable_L1_Laptop.y[1], Gain_Laptop_3.u);
        connect(Laptop_3.u, Gain_Laptop_3.y);

      /* MEL_Connect  cable_rcpt_ckt-L1_1C */
        connect(cable_rcpt_cktL1_1C.pin_n, cable_mels_L1_C.pin_p);

        annotation ();
      end MEL_Panel_L1C;

      model MEL_Panel_L2A
        outer parameter Real PF;
        outer parameter Real PF1;
        /* parameter Real PF = 0.9; */

        outer HPF.SystemDef systemDef;
        Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
          Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        HPF.SinglePhase.Components.Ground GndAC annotation (
          Placement(visible = true, transformation(origin={-18,44},    extent = {{-8, -8}, {8, 8}}, rotation = -90)));
        HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
          Placement(visible = true, transformation(extent={{-120,-40},{-100,-20}},    rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
        HPF.Cables.NEC_CableModel cable_mels_L2_A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_4,
            length=25)
          annotation (Placement(transformation(extent={{-42,-40},{-62,-20}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_IT_Equipment(
          tableOnFile=true,
          tableName="L2-All-ITEquipment",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-92,72},{-72,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Laptop(
          tableOnFile=true,
          tableName="L2-All-Laptops",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-60,72},{-40,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_MFD(
          tableOnFile=true,
          tableName="L2-All-MFDs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-28,72},{-8,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Monitor(
          tableOnFile=true,
          tableName="L2-All-Monitors",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{10,72},{30,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Printer(
          tableOnFile=true,
          tableName="L2-All-Printers",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{40,72},{60,92}})));
        HPF.Loads.SinglePhase.AC_LoadIdeal1P other_general_plug(
          P_nom=2205,
          Q_nom=1068,
          V_nom=120) annotation (Placement(visible=true, transformation(
              origin={-4,12},
              extent={{-8,-8},{8,8}},
              rotation=90)));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Display(
          tableOnFile=true,
          tableName="L2-All-TVs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{72,72},{92,92}})));
        Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex
          annotation (Placement(transformation(extent={{-34,18},{-24,28}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_All_Plugs_General(
          tableOnFile=true,
          tableName="L2-All-Plugs-General",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-94,40},{-74,60}})));

        Modelica.Blocks.Math.Gain gain_gen_plugs_L2_A(k=2204.25)
          annotation (Placement(transformation(extent={{-66,44},{-54,56}})));
        Modelica.Blocks.Math.Gain gain1(k=PF1)
          annotation (Placement(transformation(extent={{-56,14},{-44,26}})));

      /* Insert models here */

      /* MEL_Model Monitor_34 rcpt_ckt-L2_3A */
        Modelica.Blocks.Math.Gain Gain_Monitor_34(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_34(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_34;

      /* MEL_Model  cable_rcpt_ckt-L2_3A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_3A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=196.81);

      /* MEL_Model Printer_17 rcpt_ckt-L2_11A */
        Modelica.Blocks.Math.Gain Gain_Printer_17(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_17(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_17;

      /* MEL_Model IT_Equipment_95 rcpt_ckt-L2_11A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_95(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_95(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_95;

      /* MEL_Model  cable_rcpt_ckt-L2_11A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_11A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=54.19);

      /* MEL_Model IT_Equipment_89 rcpt_ckt-L2_10A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_89(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_89(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_89;

      /* MEL_Model IT_Equipment_88 rcpt_ckt-L2_10A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_88(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_88(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_88;

      /* MEL_Model IT_Equipment_87 rcpt_ckt-L2_10A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_87(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_87(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_87;

      /* MEL_Model  cable_rcpt_ckt-L2_10A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_10A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=157.22);

      /* MEL_Model Printer_14 rcpt_ckt-L2_8A */
        Modelica.Blocks.Math.Gain Gain_Printer_14(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_14(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_14;

      /* MEL_Model Display_7 rcpt_ckt-L2_8A */
        Modelica.Blocks.Math.Gain Gain_Display_7(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_7(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_7;

      /* MEL_Model IT_Equipment_79 rcpt_ckt-L2_8A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_79(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_79(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_79;

      /* MEL_Model  cable_rcpt_ckt-L2_8A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_8A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=166.22);

      /* MEL_Model IT_Equipment_65 rcpt_ckt-L2_2A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_65(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_65(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_65;

      /* MEL_Model IT_Equipment_64 rcpt_ckt-L2_2A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_64(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_64(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_64;

      /* MEL_Model IT_Equipment_63 rcpt_ckt-L2_2A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_63(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_63(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_63;

      /* MEL_Model  cable_rcpt_ckt-L2_2A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_2A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=146.98);

      /* MEL_Model MFD_4 rcpt_ckt-L2_1A */
        Modelica.Blocks.Math.Gain Gain_MFD_4(k=621) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_MFD_4(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=621,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load MFD_4;

      /* MEL_Model Display_6 rcpt_ckt-L2_1A */
        Modelica.Blocks.Math.Gain Gain_Display_6(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_6(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_6;

      /* MEL_Model IT_Equipment_57 rcpt_ckt-L2_1A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_57(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_57(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_57;

      /* MEL_Model IT_Equipment_56 rcpt_ckt-L2_1A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_56(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_56(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_56;

      /* MEL_Model  cable_rcpt_ckt-L2_1A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_1A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=156.61);

      /* MEL_Model Monitor_64 rcpt_ckt-L2_17A */
        Modelica.Blocks.Math.Gain Gain_Monitor_64(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_64(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_64;

      /* MEL_Model IT_Equipment_107 rcpt_ckt-L2_17A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_107(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_107(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_107;

      /* MEL_Model Laptop_98 rcpt_ckt-L2_17A */
        Modelica.Blocks.Math.Gain Gain_Laptop_98(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_98(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_98;

      /* MEL_Model  cable_rcpt_ckt-L2_17A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_17A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=18.58);

      /* MEL_Model Monitor_60 rcpt_ckt-L2_16A */
        Modelica.Blocks.Math.Gain Gain_Monitor_60(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_60(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_60;

      /* MEL_Model Laptop_95 rcpt_ckt-L2_16A */
        Modelica.Blocks.Math.Gain Gain_Laptop_95(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_95(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_95;

      /* MEL_Model Laptop_94 rcpt_ckt-L2_16A */
        Modelica.Blocks.Math.Gain Gain_Laptop_94(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_94(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_94;

      /* MEL_Model  cable_rcpt_ckt-L2_16A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_16A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=80.92);

      /* MEL_Model Monitor_58 rcpt_ckt-L2_15A */
        Modelica.Blocks.Math.Gain Gain_Monitor_58(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_58(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_58;

      /* MEL_Model Monitor_57 rcpt_ckt-L2_15A */
        Modelica.Blocks.Math.Gain Gain_Monitor_57(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_57(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_57;

      /* MEL_Model Laptop_90 rcpt_ckt-L2_15A */
        Modelica.Blocks.Math.Gain Gain_Laptop_90(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_90(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_90;

      /* MEL_Model  cable_rcpt_ckt-L2_15A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_15A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=19.4);

      /* MEL_Model Monitor_54 rcpt_ckt-L2_14A */
        Modelica.Blocks.Math.Gain Gain_Monitor_54(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_54(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_54;

      /* MEL_Model IT_Equipment_102 rcpt_ckt-L2_14A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_102(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_102(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_102;

      /* MEL_Model Laptop_86 rcpt_ckt-L2_14A */
        Modelica.Blocks.Math.Gain Gain_Laptop_86(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_86(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_86;

      /* MEL_Model  cable_rcpt_ckt-L2_14A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_14A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=66.99);

      /* MEL_Model Monitor_50 rcpt_ckt-L2_13A */
        Modelica.Blocks.Math.Gain Gain_Monitor_50(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_50(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_50;

      /* MEL_Model IT_Equipment_101 rcpt_ckt-L2_13A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_101(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_101(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_101;

      /* MEL_Model Laptop_81 rcpt_ckt-L2_13A */
        Modelica.Blocks.Math.Gain Gain_Laptop_81(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_81(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_81;

      /* MEL_Model Laptop_80 rcpt_ckt-L2_13A */
        Modelica.Blocks.Math.Gain Gain_Laptop_80(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_80(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_80;

      /* MEL_Model  cable_rcpt_ckt-L2_13A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_13A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=92.38);

      /* MEL_Model Monitor_46 rcpt_ckt-L2_12A */
        Modelica.Blocks.Math.Gain Gain_Monitor_46(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_46(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_46;

      /* MEL_Model Monitor_45 rcpt_ckt-L2_12A */
        Modelica.Blocks.Math.Gain Gain_Monitor_45(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_45(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_45;

      /* MEL_Model Laptop_76 rcpt_ckt-L2_12A */
        Modelica.Blocks.Math.Gain Gain_Laptop_76(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_76(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_76;

      /* MEL_Model Laptop_75 rcpt_ckt-L2_12A */
        Modelica.Blocks.Math.Gain Gain_Laptop_75(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_75(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_75;

      /* MEL_Model  cable_rcpt_ckt-L2_12A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_12A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=143.78);

      /* MEL_Model Printer_15 rcpt_ckt-L2_9A */
        Modelica.Blocks.Math.Gain Gain_Printer_15(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_15(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_15;

      /* MEL_Model IT_Equipment_85 rcpt_ckt-L2_9A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_85(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_85(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_85;

      /* MEL_Model Laptop_72 rcpt_ckt-L2_9A */
        Modelica.Blocks.Math.Gain Gain_Laptop_72(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_72(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_72;

      /* MEL_Model  cable_rcpt_ckt-L2_9A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_9A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=65.73);

      /* MEL_Model Laptop_66 rcpt_ckt-L2_7A */
        Modelica.Blocks.Math.Gain Gain_Laptop_66(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_66(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_66;

      /* MEL_Model  cable_rcpt_ckt-L2_7A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_7A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=173.84);

      /* MEL_Model Laptop_62 rcpt_ckt-L2_6A */
        Modelica.Blocks.Math.Gain Gain_Laptop_62(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_62(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_62;

      /* MEL_Model  cable_rcpt_ckt-L2_6A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_6A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=100.41);

      /* MEL_Model Monitor_39 rcpt_ckt-L2_5A */
        Modelica.Blocks.Math.Gain Gain_Monitor_39(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_39(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_39;

      /* MEL_Model Monitor_38 rcpt_ckt-L2_5A */
        Modelica.Blocks.Math.Gain Gain_Monitor_38(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_38(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_38;

      /* MEL_Model IT_Equipment_74 rcpt_ckt-L2_5A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_74(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_74(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_74;

      /* MEL_Model Laptop_58 rcpt_ckt-L2_5A */
        Modelica.Blocks.Math.Gain Gain_Laptop_58(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_58(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_58;

      /* MEL_Model Laptop_57 rcpt_ckt-L2_5A */
        Modelica.Blocks.Math.Gain Gain_Laptop_57(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_57(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_57;

      /* MEL_Model  cable_rcpt_ckt-L2_5A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_5A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=119.36);

      /* MEL_Model IT_Equipment_72 rcpt_ckt-L2_4A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_72(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_72(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_72;

      /* MEL_Model Laptop_55 rcpt_ckt-L2_4A */
        Modelica.Blocks.Math.Gain Gain_Laptop_55(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_55(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_55;

      /* MEL_Model Laptop_54 rcpt_ckt-L2_4A */
        Modelica.Blocks.Math.Gain Gain_Laptop_54(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_54(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_54;

      /* MEL_Model  cable_rcpt_ckt-L2_4A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_4A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=154.04);

      equation
        connect(cable_mels_L2_A.pin_n, pin_p)
          annotation (Line(points={{-62,-30},{-110,-30}}, color={117,80,123}));
        connect(cable_mels_L2_A.pin_p, other_general_plug.hPin_L)
          annotation (Line(points={{-42,-30},{-4,-30},{-4,4}}, color={92,53,102}));
        connect(GndAC.pin, other_general_plug.hPin_N) annotation (Line(points={{-10,
                44},{-8,44},{-8,38},{-4,38},{-4,20}}, color={92,53,102}));
        connect(realToComplex.y, other_general_plug.S_input) annotation (Line(points={{-23.5,
                23},{-8,23},{-8,12.16}},        color={85,170,255}));
        connect(combiTimeTable_L2_All_Plugs_General.y[1], gain_gen_plugs_L2_A.u)
          annotation (Line(points={{-73,50},{-67.2,50}}, color={0,0,127}));
        connect(gain_gen_plugs_L2_A.y, realToComplex.re) annotation (Line(points={{-53.4,
                50},{-48,50},{-48,40},{-35,40},{-35,26}}, color={0,0,127}));
        connect(gain1.y, realToComplex.im)
          annotation (Line(points={{-43.4,20},{-35,20}}, color={0,0,127}));
        connect(gain1.u, realToComplex.re) annotation (Line(points={{-57.2,20},{-62,20},
                {-62,36},{-35,36},{-35,26}}, color={0,0,127}));

      /* Insert equation here */

      /* MEL_Connect Monitor_34 rcpt_ckt-L2_3A */
        connect(Monitor_34.n, GndDC.p);
        connect(MEL_Conv_Monitor_34.pin_p, Monitor_34.p);
        connect(MEL_Conv_Monitor_34.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_34.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_34.hPin_L, cable_rcpt_cktL2_3A.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_34.u);
        connect(Monitor_34.u, Gain_Monitor_34.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_3A */
        connect(cable_rcpt_cktL2_3A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect Printer_17 rcpt_ckt-L2_11A */
        connect(Printer_17.n, GndDC.p);
        connect(MEL_Conv_Printer_17.pin_p, Printer_17.p);
        connect(MEL_Conv_Printer_17.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_17.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_17.hPin_L, cable_rcpt_cktL2_11A.pin_p);
        connect(combiTimeTable_L2_Printer.y[1], Gain_Printer_17.u);
        connect(Printer_17.u, Gain_Printer_17.y);

      /* MEL_Connect IT_Equipment_95 rcpt_ckt-L2_11A */
        connect(IT_Equipment_95.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_95.pin_p, IT_Equipment_95.p);
        connect(MEL_Conv_IT_Equipment_95.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_95.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_95.hPin_L, cable_rcpt_cktL2_11A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_95.u);
        connect(IT_Equipment_95.u, Gain_IT_Equipment_95.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_11A */
        connect(cable_rcpt_cktL2_11A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect IT_Equipment_89 rcpt_ckt-L2_10A */
        connect(IT_Equipment_89.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_89.pin_p, IT_Equipment_89.p);
        connect(MEL_Conv_IT_Equipment_89.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_89.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_89.hPin_L, cable_rcpt_cktL2_10A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_89.u);
        connect(IT_Equipment_89.u, Gain_IT_Equipment_89.y);

      /* MEL_Connect IT_Equipment_88 rcpt_ckt-L2_10A */
        connect(IT_Equipment_88.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_88.pin_p, IT_Equipment_88.p);
        connect(MEL_Conv_IT_Equipment_88.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_88.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_88.hPin_L, cable_rcpt_cktL2_10A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_88.u);
        connect(IT_Equipment_88.u, Gain_IT_Equipment_88.y);

      /* MEL_Connect IT_Equipment_87 rcpt_ckt-L2_10A */
        connect(IT_Equipment_87.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_87.pin_p, IT_Equipment_87.p);
        connect(MEL_Conv_IT_Equipment_87.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_87.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_87.hPin_L, cable_rcpt_cktL2_10A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_87.u);
        connect(IT_Equipment_87.u, Gain_IT_Equipment_87.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_10A */
        connect(cable_rcpt_cktL2_10A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect Printer_14 rcpt_ckt-L2_8A */
        connect(Printer_14.n, GndDC.p);
        connect(MEL_Conv_Printer_14.pin_p, Printer_14.p);
        connect(MEL_Conv_Printer_14.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_14.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_14.hPin_L, cable_rcpt_cktL2_8A.pin_p);
        connect(combiTimeTable_L2_Printer.y[1], Gain_Printer_14.u);
        connect(Printer_14.u, Gain_Printer_14.y);

      /* MEL_Connect Display_7 rcpt_ckt-L2_8A */
        connect(Display_7.n, GndDC.p);
        connect(MEL_Conv_Display_7.pin_p, Display_7.p);
        connect(MEL_Conv_Display_7.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_7.pin_n, GndDC.p);
        connect(MEL_Conv_Display_7.hPin_L, cable_rcpt_cktL2_8A.pin_p);
        connect(combiTimeTable_L2_Display.y[1], Gain_Display_7.u);
        connect(Display_7.u, Gain_Display_7.y);

      /* MEL_Connect IT_Equipment_79 rcpt_ckt-L2_8A */
        connect(IT_Equipment_79.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_79.pin_p, IT_Equipment_79.p);
        connect(MEL_Conv_IT_Equipment_79.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_79.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_79.hPin_L, cable_rcpt_cktL2_8A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_79.u);
        connect(IT_Equipment_79.u, Gain_IT_Equipment_79.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_8A */
        connect(cable_rcpt_cktL2_8A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect IT_Equipment_65 rcpt_ckt-L2_2A */
        connect(IT_Equipment_65.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_65.pin_p, IT_Equipment_65.p);
        connect(MEL_Conv_IT_Equipment_65.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_65.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_65.hPin_L, cable_rcpt_cktL2_2A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_65.u);
        connect(IT_Equipment_65.u, Gain_IT_Equipment_65.y);

      /* MEL_Connect IT_Equipment_64 rcpt_ckt-L2_2A */
        connect(IT_Equipment_64.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_64.pin_p, IT_Equipment_64.p);
        connect(MEL_Conv_IT_Equipment_64.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_64.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_64.hPin_L, cable_rcpt_cktL2_2A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_64.u);
        connect(IT_Equipment_64.u, Gain_IT_Equipment_64.y);

      /* MEL_Connect IT_Equipment_63 rcpt_ckt-L2_2A */
        connect(IT_Equipment_63.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_63.pin_p, IT_Equipment_63.p);
        connect(MEL_Conv_IT_Equipment_63.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_63.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_63.hPin_L, cable_rcpt_cktL2_2A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_63.u);
        connect(IT_Equipment_63.u, Gain_IT_Equipment_63.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_2A */
        connect(cable_rcpt_cktL2_2A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect MFD_4 rcpt_ckt-L2_1A */
        connect(MFD_4.n, GndDC.p);
        connect(MEL_Conv_MFD_4.pin_p, MFD_4.p);
        connect(MEL_Conv_MFD_4.hPin_N, GndAC.pin);
        connect(MEL_Conv_MFD_4.pin_n, GndDC.p);
        connect(MEL_Conv_MFD_4.hPin_L, cable_rcpt_cktL2_1A.pin_p);
        connect(combiTimeTable_L2_MFD.y[1], Gain_MFD_4.u);
        connect(MFD_4.u, Gain_MFD_4.y);

      /* MEL_Connect Display_6 rcpt_ckt-L2_1A */
        connect(Display_6.n, GndDC.p);
        connect(MEL_Conv_Display_6.pin_p, Display_6.p);
        connect(MEL_Conv_Display_6.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_6.pin_n, GndDC.p);
        connect(MEL_Conv_Display_6.hPin_L, cable_rcpt_cktL2_1A.pin_p);
        connect(combiTimeTable_L2_Display.y[1], Gain_Display_6.u);
        connect(Display_6.u, Gain_Display_6.y);

      /* MEL_Connect IT_Equipment_57 rcpt_ckt-L2_1A */
        connect(IT_Equipment_57.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_57.pin_p, IT_Equipment_57.p);
        connect(MEL_Conv_IT_Equipment_57.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_57.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_57.hPin_L, cable_rcpt_cktL2_1A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_57.u);
        connect(IT_Equipment_57.u, Gain_IT_Equipment_57.y);

      /* MEL_Connect IT_Equipment_56 rcpt_ckt-L2_1A */
        connect(IT_Equipment_56.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_56.pin_p, IT_Equipment_56.p);
        connect(MEL_Conv_IT_Equipment_56.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_56.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_56.hPin_L, cable_rcpt_cktL2_1A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_56.u);
        connect(IT_Equipment_56.u, Gain_IT_Equipment_56.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_1A */
        connect(cable_rcpt_cktL2_1A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect Monitor_64 rcpt_ckt-L2_17A */
        connect(Monitor_64.n, GndDC.p);
        connect(MEL_Conv_Monitor_64.pin_p, Monitor_64.p);
        connect(MEL_Conv_Monitor_64.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_64.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_64.hPin_L, cable_rcpt_cktL2_17A.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_64.u);
        connect(Monitor_64.u, Gain_Monitor_64.y);

      /* MEL_Connect IT_Equipment_107 rcpt_ckt-L2_17A */
        connect(IT_Equipment_107.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_107.pin_p, IT_Equipment_107.p);
        connect(MEL_Conv_IT_Equipment_107.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_107.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_107.hPin_L, cable_rcpt_cktL2_17A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_107.u);
        connect(IT_Equipment_107.u, Gain_IT_Equipment_107.y);

      /* MEL_Connect Laptop_98 rcpt_ckt-L2_17A */
        connect(Laptop_98.n, GndDC.p);
        connect(MEL_Conv_Laptop_98.pin_p, Laptop_98.p);
        connect(MEL_Conv_Laptop_98.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_98.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_98.hPin_L, cable_rcpt_cktL2_17A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_98.u);
        connect(Laptop_98.u, Gain_Laptop_98.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_17A */
        connect(cable_rcpt_cktL2_17A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect Monitor_60 rcpt_ckt-L2_16A */
        connect(Monitor_60.n, GndDC.p);
        connect(MEL_Conv_Monitor_60.pin_p, Monitor_60.p);
        connect(MEL_Conv_Monitor_60.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_60.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_60.hPin_L, cable_rcpt_cktL2_16A.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_60.u);
        connect(Monitor_60.u, Gain_Monitor_60.y);

      /* MEL_Connect Laptop_95 rcpt_ckt-L2_16A */
        connect(Laptop_95.n, GndDC.p);
        connect(MEL_Conv_Laptop_95.pin_p, Laptop_95.p);
        connect(MEL_Conv_Laptop_95.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_95.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_95.hPin_L, cable_rcpt_cktL2_16A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_95.u);
        connect(Laptop_95.u, Gain_Laptop_95.y);

      /* MEL_Connect Laptop_94 rcpt_ckt-L2_16A */
        connect(Laptop_94.n, GndDC.p);
        connect(MEL_Conv_Laptop_94.pin_p, Laptop_94.p);
        connect(MEL_Conv_Laptop_94.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_94.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_94.hPin_L, cable_rcpt_cktL2_16A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_94.u);
        connect(Laptop_94.u, Gain_Laptop_94.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_16A */
        connect(cable_rcpt_cktL2_16A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect Monitor_58 rcpt_ckt-L2_15A */
        connect(Monitor_58.n, GndDC.p);
        connect(MEL_Conv_Monitor_58.pin_p, Monitor_58.p);
        connect(MEL_Conv_Monitor_58.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_58.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_58.hPin_L, cable_rcpt_cktL2_15A.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_58.u);
        connect(Monitor_58.u, Gain_Monitor_58.y);

      /* MEL_Connect Monitor_57 rcpt_ckt-L2_15A */
        connect(Monitor_57.n, GndDC.p);
        connect(MEL_Conv_Monitor_57.pin_p, Monitor_57.p);
        connect(MEL_Conv_Monitor_57.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_57.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_57.hPin_L, cable_rcpt_cktL2_15A.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_57.u);
        connect(Monitor_57.u, Gain_Monitor_57.y);

      /* MEL_Connect Laptop_90 rcpt_ckt-L2_15A */
        connect(Laptop_90.n, GndDC.p);
        connect(MEL_Conv_Laptop_90.pin_p, Laptop_90.p);
        connect(MEL_Conv_Laptop_90.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_90.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_90.hPin_L, cable_rcpt_cktL2_15A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_90.u);
        connect(Laptop_90.u, Gain_Laptop_90.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_15A */
        connect(cable_rcpt_cktL2_15A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect Monitor_54 rcpt_ckt-L2_14A */
        connect(Monitor_54.n, GndDC.p);
        connect(MEL_Conv_Monitor_54.pin_p, Monitor_54.p);
        connect(MEL_Conv_Monitor_54.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_54.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_54.hPin_L, cable_rcpt_cktL2_14A.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_54.u);
        connect(Monitor_54.u, Gain_Monitor_54.y);

      /* MEL_Connect IT_Equipment_102 rcpt_ckt-L2_14A */
        connect(IT_Equipment_102.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_102.pin_p, IT_Equipment_102.p);
        connect(MEL_Conv_IT_Equipment_102.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_102.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_102.hPin_L, cable_rcpt_cktL2_14A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_102.u);
        connect(IT_Equipment_102.u, Gain_IT_Equipment_102.y);

      /* MEL_Connect Laptop_86 rcpt_ckt-L2_14A */
        connect(Laptop_86.n, GndDC.p);
        connect(MEL_Conv_Laptop_86.pin_p, Laptop_86.p);
        connect(MEL_Conv_Laptop_86.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_86.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_86.hPin_L, cable_rcpt_cktL2_14A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_86.u);
        connect(Laptop_86.u, Gain_Laptop_86.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_14A */
        connect(cable_rcpt_cktL2_14A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect Monitor_50 rcpt_ckt-L2_13A */
        connect(Monitor_50.n, GndDC.p);
        connect(MEL_Conv_Monitor_50.pin_p, Monitor_50.p);
        connect(MEL_Conv_Monitor_50.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_50.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_50.hPin_L, cable_rcpt_cktL2_13A.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_50.u);
        connect(Monitor_50.u, Gain_Monitor_50.y);

      /* MEL_Connect IT_Equipment_101 rcpt_ckt-L2_13A */
        connect(IT_Equipment_101.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_101.pin_p, IT_Equipment_101.p);
        connect(MEL_Conv_IT_Equipment_101.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_101.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_101.hPin_L, cable_rcpt_cktL2_13A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_101.u);
        connect(IT_Equipment_101.u, Gain_IT_Equipment_101.y);

      /* MEL_Connect Laptop_81 rcpt_ckt-L2_13A */
        connect(Laptop_81.n, GndDC.p);
        connect(MEL_Conv_Laptop_81.pin_p, Laptop_81.p);
        connect(MEL_Conv_Laptop_81.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_81.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_81.hPin_L, cable_rcpt_cktL2_13A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_81.u);
        connect(Laptop_81.u, Gain_Laptop_81.y);

      /* MEL_Connect Laptop_80 rcpt_ckt-L2_13A */
        connect(Laptop_80.n, GndDC.p);
        connect(MEL_Conv_Laptop_80.pin_p, Laptop_80.p);
        connect(MEL_Conv_Laptop_80.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_80.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_80.hPin_L, cable_rcpt_cktL2_13A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_80.u);
        connect(Laptop_80.u, Gain_Laptop_80.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_13A */
        connect(cable_rcpt_cktL2_13A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect Monitor_46 rcpt_ckt-L2_12A */
        connect(Monitor_46.n, GndDC.p);
        connect(MEL_Conv_Monitor_46.pin_p, Monitor_46.p);
        connect(MEL_Conv_Monitor_46.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_46.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_46.hPin_L, cable_rcpt_cktL2_12A.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_46.u);
        connect(Monitor_46.u, Gain_Monitor_46.y);

      /* MEL_Connect Monitor_45 rcpt_ckt-L2_12A */
        connect(Monitor_45.n, GndDC.p);
        connect(MEL_Conv_Monitor_45.pin_p, Monitor_45.p);
        connect(MEL_Conv_Monitor_45.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_45.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_45.hPin_L, cable_rcpt_cktL2_12A.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_45.u);
        connect(Monitor_45.u, Gain_Monitor_45.y);

      /* MEL_Connect Laptop_76 rcpt_ckt-L2_12A */
        connect(Laptop_76.n, GndDC.p);
        connect(MEL_Conv_Laptop_76.pin_p, Laptop_76.p);
        connect(MEL_Conv_Laptop_76.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_76.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_76.hPin_L, cable_rcpt_cktL2_12A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_76.u);
        connect(Laptop_76.u, Gain_Laptop_76.y);

      /* MEL_Connect Laptop_75 rcpt_ckt-L2_12A */
        connect(Laptop_75.n, GndDC.p);
        connect(MEL_Conv_Laptop_75.pin_p, Laptop_75.p);
        connect(MEL_Conv_Laptop_75.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_75.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_75.hPin_L, cable_rcpt_cktL2_12A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_75.u);
        connect(Laptop_75.u, Gain_Laptop_75.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_12A */
        connect(cable_rcpt_cktL2_12A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect Printer_15 rcpt_ckt-L2_9A */
        connect(Printer_15.n, GndDC.p);
        connect(MEL_Conv_Printer_15.pin_p, Printer_15.p);
        connect(MEL_Conv_Printer_15.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_15.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_15.hPin_L, cable_rcpt_cktL2_9A.pin_p);
        connect(combiTimeTable_L2_Printer.y[1], Gain_Printer_15.u);
        connect(Printer_15.u, Gain_Printer_15.y);

      /* MEL_Connect IT_Equipment_85 rcpt_ckt-L2_9A */
        connect(IT_Equipment_85.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_85.pin_p, IT_Equipment_85.p);
        connect(MEL_Conv_IT_Equipment_85.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_85.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_85.hPin_L, cable_rcpt_cktL2_9A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_85.u);
        connect(IT_Equipment_85.u, Gain_IT_Equipment_85.y);

      /* MEL_Connect Laptop_72 rcpt_ckt-L2_9A */
        connect(Laptop_72.n, GndDC.p);
        connect(MEL_Conv_Laptop_72.pin_p, Laptop_72.p);
        connect(MEL_Conv_Laptop_72.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_72.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_72.hPin_L, cable_rcpt_cktL2_9A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_72.u);
        connect(Laptop_72.u, Gain_Laptop_72.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_9A */
        connect(cable_rcpt_cktL2_9A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect Laptop_66 rcpt_ckt-L2_7A */
        connect(Laptop_66.n, GndDC.p);
        connect(MEL_Conv_Laptop_66.pin_p, Laptop_66.p);
        connect(MEL_Conv_Laptop_66.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_66.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_66.hPin_L, cable_rcpt_cktL2_7A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_66.u);
        connect(Laptop_66.u, Gain_Laptop_66.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_7A */
        connect(cable_rcpt_cktL2_7A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect Laptop_62 rcpt_ckt-L2_6A */
        connect(Laptop_62.n, GndDC.p);
        connect(MEL_Conv_Laptop_62.pin_p, Laptop_62.p);
        connect(MEL_Conv_Laptop_62.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_62.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_62.hPin_L, cable_rcpt_cktL2_6A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_62.u);
        connect(Laptop_62.u, Gain_Laptop_62.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_6A */
        connect(cable_rcpt_cktL2_6A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect Monitor_39 rcpt_ckt-L2_5A */
        connect(Monitor_39.n, GndDC.p);
        connect(MEL_Conv_Monitor_39.pin_p, Monitor_39.p);
        connect(MEL_Conv_Monitor_39.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_39.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_39.hPin_L, cable_rcpt_cktL2_5A.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_39.u);
        connect(Monitor_39.u, Gain_Monitor_39.y);

      /* MEL_Connect Monitor_38 rcpt_ckt-L2_5A */
        connect(Monitor_38.n, GndDC.p);
        connect(MEL_Conv_Monitor_38.pin_p, Monitor_38.p);
        connect(MEL_Conv_Monitor_38.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_38.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_38.hPin_L, cable_rcpt_cktL2_5A.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_38.u);
        connect(Monitor_38.u, Gain_Monitor_38.y);

      /* MEL_Connect IT_Equipment_74 rcpt_ckt-L2_5A */
        connect(IT_Equipment_74.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_74.pin_p, IT_Equipment_74.p);
        connect(MEL_Conv_IT_Equipment_74.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_74.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_74.hPin_L, cable_rcpt_cktL2_5A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_74.u);
        connect(IT_Equipment_74.u, Gain_IT_Equipment_74.y);

      /* MEL_Connect Laptop_58 rcpt_ckt-L2_5A */
        connect(Laptop_58.n, GndDC.p);
        connect(MEL_Conv_Laptop_58.pin_p, Laptop_58.p);
        connect(MEL_Conv_Laptop_58.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_58.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_58.hPin_L, cable_rcpt_cktL2_5A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_58.u);
        connect(Laptop_58.u, Gain_Laptop_58.y);

      /* MEL_Connect Laptop_57 rcpt_ckt-L2_5A */
        connect(Laptop_57.n, GndDC.p);
        connect(MEL_Conv_Laptop_57.pin_p, Laptop_57.p);
        connect(MEL_Conv_Laptop_57.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_57.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_57.hPin_L, cable_rcpt_cktL2_5A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_57.u);
        connect(Laptop_57.u, Gain_Laptop_57.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_5A */
        connect(cable_rcpt_cktL2_5A.pin_n, cable_mels_L2_A.pin_p);

      /* MEL_Connect IT_Equipment_72 rcpt_ckt-L2_4A */
        connect(IT_Equipment_72.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_72.pin_p, IT_Equipment_72.p);
        connect(MEL_Conv_IT_Equipment_72.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_72.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_72.hPin_L, cable_rcpt_cktL2_4A.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_72.u);
        connect(IT_Equipment_72.u, Gain_IT_Equipment_72.y);

      /* MEL_Connect Laptop_55 rcpt_ckt-L2_4A */
        connect(Laptop_55.n, GndDC.p);
        connect(MEL_Conv_Laptop_55.pin_p, Laptop_55.p);
        connect(MEL_Conv_Laptop_55.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_55.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_55.hPin_L, cable_rcpt_cktL2_4A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_55.u);
        connect(Laptop_55.u, Gain_Laptop_55.y);

      /* MEL_Connect Laptop_54 rcpt_ckt-L2_4A */
        connect(Laptop_54.n, GndDC.p);
        connect(MEL_Conv_Laptop_54.pin_p, Laptop_54.p);
        connect(MEL_Conv_Laptop_54.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_54.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_54.hPin_L, cable_rcpt_cktL2_4A.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_54.u);
        connect(Laptop_54.u, Gain_Laptop_54.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_4A */
        connect(cable_rcpt_cktL2_4A.pin_n, cable_mels_L2_A.pin_p);

        annotation ();
      end MEL_Panel_L2A;

      model MEL_Panel_L2B
        outer parameter Real PF;
        outer parameter Real PF1;
        /* parameter Real PF = 0.9; */

        outer HPF.SystemDef systemDef;
        Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
          Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        HPF.SinglePhase.Components.Ground GndAC annotation (
          Placement(visible = true, transformation(origin={-18,44},    extent = {{-8, -8}, {8, 8}}, rotation = -90)));
        HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
          Placement(visible = true, transformation(extent={{-120,-40},{-100,-20}},    rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
        HPF.Cables.NEC_CableModel cable_mels_L2_B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_4,
            length=25)
          annotation (Placement(transformation(extent={{-42,-40},{-62,-20}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_IT_Equipment(
          tableOnFile=true,
          tableName="L2-All-ITEquipment",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-92,72},{-72,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Laptop(
          tableOnFile=true,
          tableName="L2-All-Laptops",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-60,72},{-40,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_MFD(
          tableOnFile=true,
          tableName="L2-All-MFDs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-28,72},{-8,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Monitor(
          tableOnFile=true,
          tableName="L2-All-Monitors",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{10,72},{30,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Printer(
          tableOnFile=true,
          tableName="L2-All-Printers",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{40,72},{60,92}})));
        HPF.Loads.SinglePhase.AC_LoadIdeal1P other_general_plug(
          P_nom=2205,
          Q_nom=1068,
          V_nom=120) annotation (Placement(visible=true, transformation(
              origin={-4,12},
              extent={{-8,-8},{8,8}},
              rotation=90)));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Display(
          tableOnFile=true,
          tableName="L2-All-TVs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{72,72},{92,92}})));
        Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex
          annotation (Placement(transformation(extent={{-34,18},{-24,28}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_All_Plugs_General(
          tableOnFile=true,
          tableName="L2-All-Plugs-General",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-94,40},{-74,60}})));

        Modelica.Blocks.Math.Gain gain_gen_plugs_L2_A(k=2204.25)
          annotation (Placement(transformation(extent={{-66,44},{-54,56}})));
        Modelica.Blocks.Math.Gain gain1(k=PF1)
          annotation (Placement(transformation(extent={{-56,14},{-44,26}})));

      /* Insert models here */

      /* MEL_Model MFD_6 rcpt_ckt-L2_9B */
        Modelica.Blocks.Math.Gain Gain_MFD_6(k=621) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_MFD_6(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=621,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load MFD_6;

      /* MEL_Model Display_8 rcpt_ckt-L2_9B */
        Modelica.Blocks.Math.Gain Gain_Display_8(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_8(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_8;

      /* MEL_Model  cable_rcpt_ckt-L2_9B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_9B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=27.02);

      /* MEL_Model Monitor_37 rcpt_ckt-L2_4B */
        Modelica.Blocks.Math.Gain Gain_Monitor_37(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_37(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_37;

      /* MEL_Model  cable_rcpt_ckt-L2_4B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_4B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=135.34);

      /* MEL_Model IT_Equipment_98 rcpt_ckt-L2_11B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_98(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_98(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_98;

      /* MEL_Model IT_Equipment_97 rcpt_ckt-L2_11B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_97(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_97(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_97;

      /* MEL_Model IT_Equipment_96 rcpt_ckt-L2_11B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_96(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_96(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_96;

      /* MEL_Model  cable_rcpt_ckt-L2_11B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_11B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=29.73);

      /* MEL_Model Printer_16 rcpt_ckt-L2_10B */
        Modelica.Blocks.Math.Gain Gain_Printer_16(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_16(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_16;

      /* MEL_Model IT_Equipment_91 rcpt_ckt-L2_10B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_91(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_91(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_91;

      /* MEL_Model IT_Equipment_90 rcpt_ckt-L2_10B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_90(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_90(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_90;

      /* MEL_Model  cable_rcpt_ckt-L2_10B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_10B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=130.9);

      /* MEL_Model Printer_12 rcpt_ckt-L2_2B */
        Modelica.Blocks.Math.Gain Gain_Printer_12(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_12(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_12;

      /* MEL_Model IT_Equipment_67 rcpt_ckt-L2_2B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_67(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_67(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_67;

      /* MEL_Model IT_Equipment_66 rcpt_ckt-L2_2B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_66(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_66(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_66;

      /* MEL_Model  cable_rcpt_ckt-L2_2B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_2B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=187.88);

      /* MEL_Model Printer_10 rcpt_ckt-L2_1B */
        Modelica.Blocks.Math.Gain Gain_Printer_10(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_10(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_10;

      /* MEL_Model IT_Equipment_59 rcpt_ckt-L2_1B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_59(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_59(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_59;

      /* MEL_Model IT_Equipment_58 rcpt_ckt-L2_1B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_58(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_58(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_58;

      /* MEL_Model  cable_rcpt_ckt-L2_1B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_1B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=102.9);

      /* MEL_Model Monitor_66 rcpt_ckt-L2_17B */
        Modelica.Blocks.Math.Gain Gain_Monitor_66(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_66(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_66;

      /* MEL_Model Monitor_65 rcpt_ckt-L2_17B */
        Modelica.Blocks.Math.Gain Gain_Monitor_65(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_65(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_65;

      /* MEL_Model Laptop_100 rcpt_ckt-L2_17B */
        Modelica.Blocks.Math.Gain Gain_Laptop_100(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_100(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_100;

      /* MEL_Model Laptop_99 rcpt_ckt-L2_17B */
        Modelica.Blocks.Math.Gain Gain_Laptop_99(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_99(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_99;

      /* MEL_Model  cable_rcpt_ckt-L2_17B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_17B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=18.58);

      /* MEL_Model Monitor_62 rcpt_ckt-L2_16B */
        Modelica.Blocks.Math.Gain Gain_Monitor_62(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_62(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_62;

      /* MEL_Model Monitor_61 rcpt_ckt-L2_16B */
        Modelica.Blocks.Math.Gain Gain_Monitor_61(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_61(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_61;

      /* MEL_Model Laptop_96 rcpt_ckt-L2_16B */
        Modelica.Blocks.Math.Gain Gain_Laptop_96(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_96(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_96;

      /* MEL_Model  cable_rcpt_ckt-L2_16B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_16B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=61.04);

      /* MEL_Model Monitor_59 rcpt_ckt-L2_15B */
        Modelica.Blocks.Math.Gain Gain_Monitor_59(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_59(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_59;

      /* MEL_Model IT_Equipment_104 rcpt_ckt-L2_15B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_104(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_104(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_104;

      /* MEL_Model Laptop_92 rcpt_ckt-L2_15B */
        Modelica.Blocks.Math.Gain Gain_Laptop_92(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_92(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_92;

      /* MEL_Model Laptop_91 rcpt_ckt-L2_15B */
        Modelica.Blocks.Math.Gain Gain_Laptop_91(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_91(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_91;

      /* MEL_Model  cable_rcpt_ckt-L2_15B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_15B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=19.4);

      /* MEL_Model Monitor_55 rcpt_ckt-L2_14B */
        Modelica.Blocks.Math.Gain Gain_Monitor_55(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_55(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_55;

      /* MEL_Model IT_Equipment_103 rcpt_ckt-L2_14B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_103(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_103(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_103;

      /* MEL_Model Laptop_87 rcpt_ckt-L2_14B */
        Modelica.Blocks.Math.Gain Gain_Laptop_87(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_87(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_87;

      /* MEL_Model  cable_rcpt_ckt-L2_14B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_14B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=42.05);

      /* MEL_Model Monitor_52 rcpt_ckt-L2_13B */
        Modelica.Blocks.Math.Gain Gain_Monitor_52(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_52(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_52;

      /* MEL_Model Monitor_51 rcpt_ckt-L2_13B */
        Modelica.Blocks.Math.Gain Gain_Monitor_51(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_51(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_51;

      /* MEL_Model Laptop_83 rcpt_ckt-L2_13B */
        Modelica.Blocks.Math.Gain Gain_Laptop_83(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_83(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_83;

      /* MEL_Model Laptop_82 rcpt_ckt-L2_13B */
        Modelica.Blocks.Math.Gain Gain_Laptop_82(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_82(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_82;

      /* MEL_Model  cable_rcpt_ckt-L2_13B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_13B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=92.38);

      /* MEL_Model Monitor_47 rcpt_ckt-L2_12B */
        Modelica.Blocks.Math.Gain Gain_Monitor_47(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_47(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_47;

      /* MEL_Model Laptop_78 rcpt_ckt-L2_12B */
        Modelica.Blocks.Math.Gain Gain_Laptop_78(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_78(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_78;

      /* MEL_Model Laptop_77 rcpt_ckt-L2_12B */
        Modelica.Blocks.Math.Gain Gain_Laptop_77(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_77(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_77;

      /* MEL_Model  cable_rcpt_ckt-L2_12B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_12B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=118.04);

      /* MEL_Model MFD_5 rcpt_ckt-L2_8B */
        Modelica.Blocks.Math.Gain Gain_MFD_5(k=621) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_MFD_5(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=621,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load MFD_5;

      /* MEL_Model IT_Equipment_81 rcpt_ckt-L2_8B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_81(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_81(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_81;

      /* MEL_Model IT_Equipment_80 rcpt_ckt-L2_8B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_80(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_80(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_80;

      /* MEL_Model Laptop_70 rcpt_ckt-L2_8B */
        Modelica.Blocks.Math.Gain Gain_Laptop_70(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_70(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_70;

      /* MEL_Model  cable_rcpt_ckt-L2_8B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_8B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=135.4);

      /* MEL_Model Monitor_43 rcpt_ckt-L2_7B */
        Modelica.Blocks.Math.Gain Gain_Monitor_43(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_43(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_43;

      /* MEL_Model Laptop_68 rcpt_ckt-L2_7B */
        Modelica.Blocks.Math.Gain Gain_Laptop_68(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_68(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_68;

      /* MEL_Model Laptop_67 rcpt_ckt-L2_7B */
        Modelica.Blocks.Math.Gain Gain_Laptop_67(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_67(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_67;

      /* MEL_Model  cable_rcpt_ckt-L2_7B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_7B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=169.76);

      /* MEL_Model Monitor_41 rcpt_ckt-L2_6B */
        Modelica.Blocks.Math.Gain Gain_Monitor_41(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_41(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_41;

      /* MEL_Model IT_Equipment_76 rcpt_ckt-L2_6B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_76(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_76(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_76;

      /* MEL_Model Laptop_63 rcpt_ckt-L2_6B */
        Modelica.Blocks.Math.Gain Gain_Laptop_63(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_63(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_63;

      /* MEL_Model  cable_rcpt_ckt-L2_6B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_6B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=186.04);

      /* MEL_Model Laptop_60 rcpt_ckt-L2_5B */
        Modelica.Blocks.Math.Gain Gain_Laptop_60(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_60(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_60;

      /* MEL_Model Laptop_59 rcpt_ckt-L2_5B */
        Modelica.Blocks.Math.Gain Gain_Laptop_59(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_59(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_59;

      /* MEL_Model  cable_rcpt_ckt-L2_5B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_5B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=107.29);

      /* MEL_Model IT_Equipment_71 rcpt_ckt-L2_3B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_71(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_71(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_71;

      /* MEL_Model Laptop_52 rcpt_ckt-L2_3B */
        Modelica.Blocks.Math.Gain Gain_Laptop_52(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_52(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_52;

      /* MEL_Model  cable_rcpt_ckt-L2_3B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_3B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=174.2);

      equation
        connect(cable_mels_L2_B.pin_n, pin_p)
          annotation (Line(points={{-62,-30},{-110,-30}}, color={117,80,123}));
        connect(cable_mels_L2_B.pin_p, other_general_plug.hPin_L)
          annotation (Line(points={{-42,-30},{-4,-30},{-4,4}}, color={92,53,102}));
        connect(GndAC.pin, other_general_plug.hPin_N) annotation (Line(points={{-10,
                44},{-8,44},{-8,38},{-4,38},{-4,20}}, color={92,53,102}));
        connect(realToComplex.y, other_general_plug.S_input) annotation (Line(points={{-23.5,
                23},{-8,23},{-8,12.16}},        color={85,170,255}));
        connect(combiTimeTable_L2_All_Plugs_General.y[1], gain_gen_plugs_L2_A.u)
          annotation (Line(points={{-73,50},{-67.2,50}}, color={0,0,127}));
        connect(gain_gen_plugs_L2_A.y, realToComplex.re) annotation (Line(points={{-53.4,
                50},{-48,50},{-48,40},{-35,40},{-35,26}}, color={0,0,127}));
        connect(gain1.y, realToComplex.im)
          annotation (Line(points={{-43.4,20},{-35,20}}, color={0,0,127}));
        connect(gain1.u, realToComplex.re) annotation (Line(points={{-57.2,20},{-62,20},
                {-62,36},{-35,36},{-35,26}}, color={0,0,127}));

      /* Insert equation here */

      /* MEL_Connect MFD_6 rcpt_ckt-L2_9B */
        connect(MFD_6.n, GndDC.p);
        connect(MEL_Conv_MFD_6.pin_p, MFD_6.p);
        connect(MEL_Conv_MFD_6.hPin_N, GndAC.pin);
        connect(MEL_Conv_MFD_6.pin_n, GndDC.p);
        connect(MEL_Conv_MFD_6.hPin_L, cable_rcpt_cktL2_9B.pin_p);
        connect(combiTimeTable_L2_MFD.y[1], Gain_MFD_6.u);
        connect(MFD_6.u, Gain_MFD_6.y);

      /* MEL_Connect Display_8 rcpt_ckt-L2_9B */
        connect(Display_8.n, GndDC.p);
        connect(MEL_Conv_Display_8.pin_p, Display_8.p);
        connect(MEL_Conv_Display_8.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_8.pin_n, GndDC.p);
        connect(MEL_Conv_Display_8.hPin_L, cable_rcpt_cktL2_9B.pin_p);
        connect(combiTimeTable_L2_Display.y[1], Gain_Display_8.u);
        connect(Display_8.u, Gain_Display_8.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_9B */
        connect(cable_rcpt_cktL2_9B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect Monitor_37 rcpt_ckt-L2_4B */
        connect(Monitor_37.n, GndDC.p);
        connect(MEL_Conv_Monitor_37.pin_p, Monitor_37.p);
        connect(MEL_Conv_Monitor_37.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_37.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_37.hPin_L, cable_rcpt_cktL2_4B.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_37.u);
        connect(Monitor_37.u, Gain_Monitor_37.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_4B */
        connect(cable_rcpt_cktL2_4B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect IT_Equipment_98 rcpt_ckt-L2_11B */
        connect(IT_Equipment_98.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_98.pin_p, IT_Equipment_98.p);
        connect(MEL_Conv_IT_Equipment_98.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_98.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_98.hPin_L, cable_rcpt_cktL2_11B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_98.u);
        connect(IT_Equipment_98.u, Gain_IT_Equipment_98.y);

      /* MEL_Connect IT_Equipment_97 rcpt_ckt-L2_11B */
        connect(IT_Equipment_97.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_97.pin_p, IT_Equipment_97.p);
        connect(MEL_Conv_IT_Equipment_97.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_97.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_97.hPin_L, cable_rcpt_cktL2_11B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_97.u);
        connect(IT_Equipment_97.u, Gain_IT_Equipment_97.y);

      /* MEL_Connect IT_Equipment_96 rcpt_ckt-L2_11B */
        connect(IT_Equipment_96.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_96.pin_p, IT_Equipment_96.p);
        connect(MEL_Conv_IT_Equipment_96.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_96.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_96.hPin_L, cable_rcpt_cktL2_11B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_96.u);
        connect(IT_Equipment_96.u, Gain_IT_Equipment_96.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_11B */
        connect(cable_rcpt_cktL2_11B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect Printer_16 rcpt_ckt-L2_10B */
        connect(Printer_16.n, GndDC.p);
        connect(MEL_Conv_Printer_16.pin_p, Printer_16.p);
        connect(MEL_Conv_Printer_16.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_16.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_16.hPin_L, cable_rcpt_cktL2_10B.pin_p);
        connect(combiTimeTable_L2_Printer.y[1], Gain_Printer_16.u);
        connect(Printer_16.u, Gain_Printer_16.y);

      /* MEL_Connect IT_Equipment_91 rcpt_ckt-L2_10B */
        connect(IT_Equipment_91.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_91.pin_p, IT_Equipment_91.p);
        connect(MEL_Conv_IT_Equipment_91.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_91.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_91.hPin_L, cable_rcpt_cktL2_10B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_91.u);
        connect(IT_Equipment_91.u, Gain_IT_Equipment_91.y);

      /* MEL_Connect IT_Equipment_90 rcpt_ckt-L2_10B */
        connect(IT_Equipment_90.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_90.pin_p, IT_Equipment_90.p);
        connect(MEL_Conv_IT_Equipment_90.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_90.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_90.hPin_L, cable_rcpt_cktL2_10B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_90.u);
        connect(IT_Equipment_90.u, Gain_IT_Equipment_90.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_10B */
        connect(cable_rcpt_cktL2_10B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect Printer_12 rcpt_ckt-L2_2B */
        connect(Printer_12.n, GndDC.p);
        connect(MEL_Conv_Printer_12.pin_p, Printer_12.p);
        connect(MEL_Conv_Printer_12.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_12.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_12.hPin_L, cable_rcpt_cktL2_2B.pin_p);
        connect(combiTimeTable_L2_Printer.y[1], Gain_Printer_12.u);
        connect(Printer_12.u, Gain_Printer_12.y);

      /* MEL_Connect IT_Equipment_67 rcpt_ckt-L2_2B */
        connect(IT_Equipment_67.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_67.pin_p, IT_Equipment_67.p);
        connect(MEL_Conv_IT_Equipment_67.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_67.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_67.hPin_L, cable_rcpt_cktL2_2B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_67.u);
        connect(IT_Equipment_67.u, Gain_IT_Equipment_67.y);

      /* MEL_Connect IT_Equipment_66 rcpt_ckt-L2_2B */
        connect(IT_Equipment_66.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_66.pin_p, IT_Equipment_66.p);
        connect(MEL_Conv_IT_Equipment_66.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_66.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_66.hPin_L, cable_rcpt_cktL2_2B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_66.u);
        connect(IT_Equipment_66.u, Gain_IT_Equipment_66.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_2B */
        connect(cable_rcpt_cktL2_2B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect Printer_10 rcpt_ckt-L2_1B */
        connect(Printer_10.n, GndDC.p);
        connect(MEL_Conv_Printer_10.pin_p, Printer_10.p);
        connect(MEL_Conv_Printer_10.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_10.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_10.hPin_L, cable_rcpt_cktL2_1B.pin_p);
        connect(combiTimeTable_L2_Printer.y[1], Gain_Printer_10.u);
        connect(Printer_10.u, Gain_Printer_10.y);

      /* MEL_Connect IT_Equipment_59 rcpt_ckt-L2_1B */
        connect(IT_Equipment_59.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_59.pin_p, IT_Equipment_59.p);
        connect(MEL_Conv_IT_Equipment_59.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_59.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_59.hPin_L, cable_rcpt_cktL2_1B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_59.u);
        connect(IT_Equipment_59.u, Gain_IT_Equipment_59.y);

      /* MEL_Connect IT_Equipment_58 rcpt_ckt-L2_1B */
        connect(IT_Equipment_58.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_58.pin_p, IT_Equipment_58.p);
        connect(MEL_Conv_IT_Equipment_58.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_58.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_58.hPin_L, cable_rcpt_cktL2_1B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_58.u);
        connect(IT_Equipment_58.u, Gain_IT_Equipment_58.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_1B */
        connect(cable_rcpt_cktL2_1B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect Monitor_66 rcpt_ckt-L2_17B */
        connect(Monitor_66.n, GndDC.p);
        connect(MEL_Conv_Monitor_66.pin_p, Monitor_66.p);
        connect(MEL_Conv_Monitor_66.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_66.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_66.hPin_L, cable_rcpt_cktL2_17B.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_66.u);
        connect(Monitor_66.u, Gain_Monitor_66.y);

      /* MEL_Connect Monitor_65 rcpt_ckt-L2_17B */
        connect(Monitor_65.n, GndDC.p);
        connect(MEL_Conv_Monitor_65.pin_p, Monitor_65.p);
        connect(MEL_Conv_Monitor_65.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_65.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_65.hPin_L, cable_rcpt_cktL2_17B.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_65.u);
        connect(Monitor_65.u, Gain_Monitor_65.y);

      /* MEL_Connect Laptop_100 rcpt_ckt-L2_17B */
        connect(Laptop_100.n, GndDC.p);
        connect(MEL_Conv_Laptop_100.pin_p, Laptop_100.p);
        connect(MEL_Conv_Laptop_100.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_100.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_100.hPin_L, cable_rcpt_cktL2_17B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_100.u);
        connect(Laptop_100.u, Gain_Laptop_100.y);

      /* MEL_Connect Laptop_99 rcpt_ckt-L2_17B */
        connect(Laptop_99.n, GndDC.p);
        connect(MEL_Conv_Laptop_99.pin_p, Laptop_99.p);
        connect(MEL_Conv_Laptop_99.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_99.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_99.hPin_L, cable_rcpt_cktL2_17B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_99.u);
        connect(Laptop_99.u, Gain_Laptop_99.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_17B */
        connect(cable_rcpt_cktL2_17B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect Monitor_62 rcpt_ckt-L2_16B */
        connect(Monitor_62.n, GndDC.p);
        connect(MEL_Conv_Monitor_62.pin_p, Monitor_62.p);
        connect(MEL_Conv_Monitor_62.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_62.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_62.hPin_L, cable_rcpt_cktL2_16B.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_62.u);
        connect(Monitor_62.u, Gain_Monitor_62.y);

      /* MEL_Connect Monitor_61 rcpt_ckt-L2_16B */
        connect(Monitor_61.n, GndDC.p);
        connect(MEL_Conv_Monitor_61.pin_p, Monitor_61.p);
        connect(MEL_Conv_Monitor_61.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_61.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_61.hPin_L, cable_rcpt_cktL2_16B.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_61.u);
        connect(Monitor_61.u, Gain_Monitor_61.y);

      /* MEL_Connect Laptop_96 rcpt_ckt-L2_16B */
        connect(Laptop_96.n, GndDC.p);
        connect(MEL_Conv_Laptop_96.pin_p, Laptop_96.p);
        connect(MEL_Conv_Laptop_96.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_96.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_96.hPin_L, cable_rcpt_cktL2_16B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_96.u);
        connect(Laptop_96.u, Gain_Laptop_96.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_16B */
        connect(cable_rcpt_cktL2_16B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect Monitor_59 rcpt_ckt-L2_15B */
        connect(Monitor_59.n, GndDC.p);
        connect(MEL_Conv_Monitor_59.pin_p, Monitor_59.p);
        connect(MEL_Conv_Monitor_59.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_59.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_59.hPin_L, cable_rcpt_cktL2_15B.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_59.u);
        connect(Monitor_59.u, Gain_Monitor_59.y);

      /* MEL_Connect IT_Equipment_104 rcpt_ckt-L2_15B */
        connect(IT_Equipment_104.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_104.pin_p, IT_Equipment_104.p);
        connect(MEL_Conv_IT_Equipment_104.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_104.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_104.hPin_L, cable_rcpt_cktL2_15B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_104.u);
        connect(IT_Equipment_104.u, Gain_IT_Equipment_104.y);

      /* MEL_Connect Laptop_92 rcpt_ckt-L2_15B */
        connect(Laptop_92.n, GndDC.p);
        connect(MEL_Conv_Laptop_92.pin_p, Laptop_92.p);
        connect(MEL_Conv_Laptop_92.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_92.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_92.hPin_L, cable_rcpt_cktL2_15B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_92.u);
        connect(Laptop_92.u, Gain_Laptop_92.y);

      /* MEL_Connect Laptop_91 rcpt_ckt-L2_15B */
        connect(Laptop_91.n, GndDC.p);
        connect(MEL_Conv_Laptop_91.pin_p, Laptop_91.p);
        connect(MEL_Conv_Laptop_91.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_91.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_91.hPin_L, cable_rcpt_cktL2_15B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_91.u);
        connect(Laptop_91.u, Gain_Laptop_91.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_15B */
        connect(cable_rcpt_cktL2_15B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect Monitor_55 rcpt_ckt-L2_14B */
        connect(Monitor_55.n, GndDC.p);
        connect(MEL_Conv_Monitor_55.pin_p, Monitor_55.p);
        connect(MEL_Conv_Monitor_55.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_55.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_55.hPin_L, cable_rcpt_cktL2_14B.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_55.u);
        connect(Monitor_55.u, Gain_Monitor_55.y);

      /* MEL_Connect IT_Equipment_103 rcpt_ckt-L2_14B */
        connect(IT_Equipment_103.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_103.pin_p, IT_Equipment_103.p);
        connect(MEL_Conv_IT_Equipment_103.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_103.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_103.hPin_L, cable_rcpt_cktL2_14B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_103.u);
        connect(IT_Equipment_103.u, Gain_IT_Equipment_103.y);

      /* MEL_Connect Laptop_87 rcpt_ckt-L2_14B */
        connect(Laptop_87.n, GndDC.p);
        connect(MEL_Conv_Laptop_87.pin_p, Laptop_87.p);
        connect(MEL_Conv_Laptop_87.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_87.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_87.hPin_L, cable_rcpt_cktL2_14B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_87.u);
        connect(Laptop_87.u, Gain_Laptop_87.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_14B */
        connect(cable_rcpt_cktL2_14B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect Monitor_52 rcpt_ckt-L2_13B */
        connect(Monitor_52.n, GndDC.p);
        connect(MEL_Conv_Monitor_52.pin_p, Monitor_52.p);
        connect(MEL_Conv_Monitor_52.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_52.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_52.hPin_L, cable_rcpt_cktL2_13B.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_52.u);
        connect(Monitor_52.u, Gain_Monitor_52.y);

      /* MEL_Connect Monitor_51 rcpt_ckt-L2_13B */
        connect(Monitor_51.n, GndDC.p);
        connect(MEL_Conv_Monitor_51.pin_p, Monitor_51.p);
        connect(MEL_Conv_Monitor_51.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_51.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_51.hPin_L, cable_rcpt_cktL2_13B.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_51.u);
        connect(Monitor_51.u, Gain_Monitor_51.y);

      /* MEL_Connect Laptop_83 rcpt_ckt-L2_13B */
        connect(Laptop_83.n, GndDC.p);
        connect(MEL_Conv_Laptop_83.pin_p, Laptop_83.p);
        connect(MEL_Conv_Laptop_83.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_83.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_83.hPin_L, cable_rcpt_cktL2_13B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_83.u);
        connect(Laptop_83.u, Gain_Laptop_83.y);

      /* MEL_Connect Laptop_82 rcpt_ckt-L2_13B */
        connect(Laptop_82.n, GndDC.p);
        connect(MEL_Conv_Laptop_82.pin_p, Laptop_82.p);
        connect(MEL_Conv_Laptop_82.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_82.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_82.hPin_L, cable_rcpt_cktL2_13B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_82.u);
        connect(Laptop_82.u, Gain_Laptop_82.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_13B */
        connect(cable_rcpt_cktL2_13B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect Monitor_47 rcpt_ckt-L2_12B */
        connect(Monitor_47.n, GndDC.p);
        connect(MEL_Conv_Monitor_47.pin_p, Monitor_47.p);
        connect(MEL_Conv_Monitor_47.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_47.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_47.hPin_L, cable_rcpt_cktL2_12B.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_47.u);
        connect(Monitor_47.u, Gain_Monitor_47.y);

      /* MEL_Connect Laptop_78 rcpt_ckt-L2_12B */
        connect(Laptop_78.n, GndDC.p);
        connect(MEL_Conv_Laptop_78.pin_p, Laptop_78.p);
        connect(MEL_Conv_Laptop_78.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_78.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_78.hPin_L, cable_rcpt_cktL2_12B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_78.u);
        connect(Laptop_78.u, Gain_Laptop_78.y);

      /* MEL_Connect Laptop_77 rcpt_ckt-L2_12B */
        connect(Laptop_77.n, GndDC.p);
        connect(MEL_Conv_Laptop_77.pin_p, Laptop_77.p);
        connect(MEL_Conv_Laptop_77.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_77.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_77.hPin_L, cable_rcpt_cktL2_12B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_77.u);
        connect(Laptop_77.u, Gain_Laptop_77.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_12B */
        connect(cable_rcpt_cktL2_12B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect MFD_5 rcpt_ckt-L2_8B */
        connect(MFD_5.n, GndDC.p);
        connect(MEL_Conv_MFD_5.pin_p, MFD_5.p);
        connect(MEL_Conv_MFD_5.hPin_N, GndAC.pin);
        connect(MEL_Conv_MFD_5.pin_n, GndDC.p);
        connect(MEL_Conv_MFD_5.hPin_L, cable_rcpt_cktL2_8B.pin_p);
        connect(combiTimeTable_L2_MFD.y[1], Gain_MFD_5.u);
        connect(MFD_5.u, Gain_MFD_5.y);

      /* MEL_Connect IT_Equipment_81 rcpt_ckt-L2_8B */
        connect(IT_Equipment_81.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_81.pin_p, IT_Equipment_81.p);
        connect(MEL_Conv_IT_Equipment_81.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_81.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_81.hPin_L, cable_rcpt_cktL2_8B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_81.u);
        connect(IT_Equipment_81.u, Gain_IT_Equipment_81.y);

      /* MEL_Connect IT_Equipment_80 rcpt_ckt-L2_8B */
        connect(IT_Equipment_80.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_80.pin_p, IT_Equipment_80.p);
        connect(MEL_Conv_IT_Equipment_80.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_80.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_80.hPin_L, cable_rcpt_cktL2_8B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_80.u);
        connect(IT_Equipment_80.u, Gain_IT_Equipment_80.y);

      /* MEL_Connect Laptop_70 rcpt_ckt-L2_8B */
        connect(Laptop_70.n, GndDC.p);
        connect(MEL_Conv_Laptop_70.pin_p, Laptop_70.p);
        connect(MEL_Conv_Laptop_70.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_70.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_70.hPin_L, cable_rcpt_cktL2_8B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_70.u);
        connect(Laptop_70.u, Gain_Laptop_70.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_8B */
        connect(cable_rcpt_cktL2_8B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect Monitor_43 rcpt_ckt-L2_7B */
        connect(Monitor_43.n, GndDC.p);
        connect(MEL_Conv_Monitor_43.pin_p, Monitor_43.p);
        connect(MEL_Conv_Monitor_43.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_43.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_43.hPin_L, cable_rcpt_cktL2_7B.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_43.u);
        connect(Monitor_43.u, Gain_Monitor_43.y);

      /* MEL_Connect Laptop_68 rcpt_ckt-L2_7B */
        connect(Laptop_68.n, GndDC.p);
        connect(MEL_Conv_Laptop_68.pin_p, Laptop_68.p);
        connect(MEL_Conv_Laptop_68.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_68.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_68.hPin_L, cable_rcpt_cktL2_7B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_68.u);
        connect(Laptop_68.u, Gain_Laptop_68.y);

      /* MEL_Connect Laptop_67 rcpt_ckt-L2_7B */
        connect(Laptop_67.n, GndDC.p);
        connect(MEL_Conv_Laptop_67.pin_p, Laptop_67.p);
        connect(MEL_Conv_Laptop_67.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_67.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_67.hPin_L, cable_rcpt_cktL2_7B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_67.u);
        connect(Laptop_67.u, Gain_Laptop_67.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_7B */
        connect(cable_rcpt_cktL2_7B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect Monitor_41 rcpt_ckt-L2_6B */
        connect(Monitor_41.n, GndDC.p);
        connect(MEL_Conv_Monitor_41.pin_p, Monitor_41.p);
        connect(MEL_Conv_Monitor_41.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_41.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_41.hPin_L, cable_rcpt_cktL2_6B.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_41.u);
        connect(Monitor_41.u, Gain_Monitor_41.y);

      /* MEL_Connect IT_Equipment_76 rcpt_ckt-L2_6B */
        connect(IT_Equipment_76.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_76.pin_p, IT_Equipment_76.p);
        connect(MEL_Conv_IT_Equipment_76.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_76.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_76.hPin_L, cable_rcpt_cktL2_6B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_76.u);
        connect(IT_Equipment_76.u, Gain_IT_Equipment_76.y);

      /* MEL_Connect Laptop_63 rcpt_ckt-L2_6B */
        connect(Laptop_63.n, GndDC.p);
        connect(MEL_Conv_Laptop_63.pin_p, Laptop_63.p);
        connect(MEL_Conv_Laptop_63.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_63.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_63.hPin_L, cable_rcpt_cktL2_6B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_63.u);
        connect(Laptop_63.u, Gain_Laptop_63.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_6B */
        connect(cable_rcpt_cktL2_6B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect Laptop_60 rcpt_ckt-L2_5B */
        connect(Laptop_60.n, GndDC.p);
        connect(MEL_Conv_Laptop_60.pin_p, Laptop_60.p);
        connect(MEL_Conv_Laptop_60.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_60.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_60.hPin_L, cable_rcpt_cktL2_5B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_60.u);
        connect(Laptop_60.u, Gain_Laptop_60.y);

      /* MEL_Connect Laptop_59 rcpt_ckt-L2_5B */
        connect(Laptop_59.n, GndDC.p);
        connect(MEL_Conv_Laptop_59.pin_p, Laptop_59.p);
        connect(MEL_Conv_Laptop_59.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_59.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_59.hPin_L, cable_rcpt_cktL2_5B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_59.u);
        connect(Laptop_59.u, Gain_Laptop_59.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_5B */
        connect(cable_rcpt_cktL2_5B.pin_n, cable_mels_L2_B.pin_p);

      /* MEL_Connect IT_Equipment_71 rcpt_ckt-L2_3B */
        connect(IT_Equipment_71.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_71.pin_p, IT_Equipment_71.p);
        connect(MEL_Conv_IT_Equipment_71.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_71.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_71.hPin_L, cable_rcpt_cktL2_3B.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_71.u);
        connect(IT_Equipment_71.u, Gain_IT_Equipment_71.y);

      /* MEL_Connect Laptop_52 rcpt_ckt-L2_3B */
        connect(Laptop_52.n, GndDC.p);
        connect(MEL_Conv_Laptop_52.pin_p, Laptop_52.p);
        connect(MEL_Conv_Laptop_52.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_52.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_52.hPin_L, cable_rcpt_cktL2_3B.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_52.u);
        connect(Laptop_52.u, Gain_Laptop_52.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_3B */
        connect(cable_rcpt_cktL2_3B.pin_n, cable_mels_L2_B.pin_p);

        annotation ();
      end MEL_Panel_L2B;

      model MEL_Panel_L2C
        outer parameter Real PF;
        outer parameter Real PF1;
        /* parameter Real PF = 0.9; */

        outer HPF.SystemDef systemDef;
        Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
          Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        HPF.SinglePhase.Components.Ground GndAC annotation (
          Placement(visible = true, transformation(origin={-18,44},    extent = {{-8, -8}, {8, 8}}, rotation = -90)));
        HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
          Placement(visible = true, transformation(extent={{-120,-40},{-100,-20}},    rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
        HPF.Cables.NEC_CableModel cable_mels_L2_C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_4,
            length=25)
          annotation (Placement(transformation(extent={{-42,-40},{-62,-20}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_IT_Equipment(
          tableOnFile=true,
          tableName="L2-All-ITEquipment",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-92,72},{-72,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Laptop(
          tableOnFile=true,
          tableName="L2-All-Laptops",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-60,72},{-40,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_MFD(
          tableOnFile=true,
          tableName="L2-All-MFDs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-28,72},{-8,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Monitor(
          tableOnFile=true,
          tableName="L2-All-Monitors",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{10,72},{30,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Printer(
          tableOnFile=true,
          tableName="L2-All-Printers",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{40,72},{60,92}})));
        HPF.Loads.SinglePhase.AC_LoadIdeal1P other_general_plug(
          P_nom=2205,
          Q_nom=1068,
          V_nom=120) annotation (Placement(visible=true, transformation(
              origin={-4,12},
              extent={{-8,-8},{8,8}},
              rotation=90)));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_Display(
          tableOnFile=true,
          tableName="L2-All-TVs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{72,72},{92,92}})));
        Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex
          annotation (Placement(transformation(extent={{-34,18},{-24,28}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_All_Plugs_General(
          tableOnFile=true,
          tableName="L2-All-Plugs-General",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L2_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-94,40},{-74,60}})));

        Modelica.Blocks.Math.Gain gain_gen_plugs_L2_A(k=2204.25)
          annotation (Placement(transformation(extent={{-66,44},{-54,56}})));
        Modelica.Blocks.Math.Gain gain1(k=PF1)
          annotation (Placement(transformation(extent={{-56,14},{-44,26}})));

      /* Insert models here */

      /* MEL_Model Display_10 rcpt_ckt-L2_17C */
        Modelica.Blocks.Math.Gain Gain_Display_10(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_10(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_10;

      /* MEL_Model Display_9 rcpt_ckt-L2_17C */
        Modelica.Blocks.Math.Gain Gain_Display_9(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_9(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_9;

      /* MEL_Model IT_Equipment_110 rcpt_ckt-L2_17C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_110(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_110(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_110;

      /* MEL_Model IT_Equipment_109 rcpt_ckt-L2_17C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_109(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_109(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_109;

      /* MEL_Model IT_Equipment_108 rcpt_ckt-L2_17C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_108(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_108(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_108;

      /* MEL_Model  cable_rcpt_ckt-L2_17C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_17C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=110.43);

      /* MEL_Model IT_Equipment_94 rcpt_ckt-L2_10C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_94(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_94(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_94;

      /* MEL_Model IT_Equipment_93 rcpt_ckt-L2_10C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_93(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_93(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_93;

      /* MEL_Model IT_Equipment_92 rcpt_ckt-L2_10C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_92(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_92(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_92;

      /* MEL_Model  cable_rcpt_ckt-L2_10C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_10C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=80.69);

      /* MEL_Model IT_Equipment_86 rcpt_ckt-L2_9C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_86(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_86(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_86;

      /* MEL_Model  cable_rcpt_ckt-L2_9C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_9C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=20.57);

      /* MEL_Model Printer_11 rcpt_ckt-L2_1C */
        Modelica.Blocks.Math.Gain Gain_Printer_11(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_11(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_11;

      /* MEL_Model IT_Equipment_62 rcpt_ckt-L2_1C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_62(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_62(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_62;

      /* MEL_Model IT_Equipment_61 rcpt_ckt-L2_1C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_61(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_61(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_61;

      /* MEL_Model IT_Equipment_60 rcpt_ckt-L2_1C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_60(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_60(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_60;

      /* MEL_Model  cable_rcpt_ckt-L2_1C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_1C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=129.86);

      /* MEL_Model Monitor_63 rcpt_ckt-L2_16C */
        Modelica.Blocks.Math.Gain Gain_Monitor_63(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_63(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_63;

      /* MEL_Model IT_Equipment_106 rcpt_ckt-L2_16C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_106(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_106(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_106;

      /* MEL_Model Laptop_97 rcpt_ckt-L2_16C */
        Modelica.Blocks.Math.Gain Gain_Laptop_97(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_97(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_97;

      /* MEL_Model  cable_rcpt_ckt-L2_16C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_16C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=40.95);

      /* MEL_Model Printer_18 rcpt_ckt-L2_15C */
        Modelica.Blocks.Math.Gain Gain_Printer_18(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_18(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_18;

      /* MEL_Model IT_Equipment_105 rcpt_ckt-L2_15C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_105(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_105(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_105;

      /* MEL_Model Laptop_93 rcpt_ckt-L2_15C */
        Modelica.Blocks.Math.Gain Gain_Laptop_93(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_93(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_93;

      /* MEL_Model  cable_rcpt_ckt-L2_15C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_15C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=80.92);

      /* MEL_Model Monitor_56 rcpt_ckt-L2_14C */
        Modelica.Blocks.Math.Gain Gain_Monitor_56(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_56(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_56;

      /* MEL_Model Laptop_89 rcpt_ckt-L2_14C */
        Modelica.Blocks.Math.Gain Gain_Laptop_89(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_89(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_89;

      /* MEL_Model Laptop_88 rcpt_ckt-L2_14C */
        Modelica.Blocks.Math.Gain Gain_Laptop_88(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_88(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_88;

      /* MEL_Model  cable_rcpt_ckt-L2_14C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_14C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=42.05);

      /* MEL_Model Monitor_53 rcpt_ckt-L2_13C */
        Modelica.Blocks.Math.Gain Gain_Monitor_53(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_53(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_53;

      /* MEL_Model Laptop_85 rcpt_ckt-L2_13C */
        Modelica.Blocks.Math.Gain Gain_Laptop_85(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_85(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_85;

      /* MEL_Model Laptop_84 rcpt_ckt-L2_13C */
        Modelica.Blocks.Math.Gain Gain_Laptop_84(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_84(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_84;

      /* MEL_Model  cable_rcpt_ckt-L2_13C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_13C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=66.99);

      /* MEL_Model Monitor_49 rcpt_ckt-L2_12C */
        Modelica.Blocks.Math.Gain Gain_Monitor_49(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_49(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_49;

      /* MEL_Model Monitor_48 rcpt_ckt-L2_12C */
        Modelica.Blocks.Math.Gain Gain_Monitor_48(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_48(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_48;

      /* MEL_Model IT_Equipment_100 rcpt_ckt-L2_12C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_100(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_100(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_100;

      /* MEL_Model Laptop_79 rcpt_ckt-L2_12C */
        Modelica.Blocks.Math.Gain Gain_Laptop_79(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_79(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_79;

      /* MEL_Model  cable_rcpt_ckt-L2_12C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_12C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=118.04);

      /* MEL_Model IT_Equipment_99 rcpt_ckt-L2_11C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_99(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_99(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_99;

      /* MEL_Model Laptop_74 rcpt_ckt-L2_11C */
        Modelica.Blocks.Math.Gain Gain_Laptop_74(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_74(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_74;

      /* MEL_Model Laptop_73 rcpt_ckt-L2_11C */
        Modelica.Blocks.Math.Gain Gain_Laptop_73(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_73(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_73;

      /* MEL_Model  cable_rcpt_ckt-L2_11C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_11C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=143.78);

      /* MEL_Model IT_Equipment_84 rcpt_ckt-L2_8C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_84(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_84(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_84;

      /* MEL_Model IT_Equipment_83 rcpt_ckt-L2_8C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_83(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_83(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_83;

      /* MEL_Model IT_Equipment_82 rcpt_ckt-L2_8C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_82(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_82(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_82;

      /* MEL_Model Laptop_71 rcpt_ckt-L2_8C */
        Modelica.Blocks.Math.Gain Gain_Laptop_71(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_71(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_71;

      /* MEL_Model  cable_rcpt_ckt-L2_8C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_8C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=95.79);

      /* MEL_Model Monitor_44 rcpt_ckt-L2_7C */
        Modelica.Blocks.Math.Gain Gain_Monitor_44(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_44(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_44;

      /* MEL_Model IT_Equipment_78 rcpt_ckt-L2_7C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_78(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_78(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_78;

      /* MEL_Model Laptop_69 rcpt_ckt-L2_7C */
        Modelica.Blocks.Math.Gain Gain_Laptop_69(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_69(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_69;

      /* MEL_Model  cable_rcpt_ckt-L2_7C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_7C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=169.76);

      /* MEL_Model Printer_13 rcpt_ckt-L2_6C */
        Modelica.Blocks.Math.Gain Gain_Printer_13(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_13(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_13;

      /* MEL_Model Monitor_42 rcpt_ckt-L2_6C */
        Modelica.Blocks.Math.Gain Gain_Monitor_42(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_42(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_42;

      /* MEL_Model IT_Equipment_77 rcpt_ckt-L2_6C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_77(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_77(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_77;

      /* MEL_Model Laptop_65 rcpt_ckt-L2_6C */
        Modelica.Blocks.Math.Gain Gain_Laptop_65(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_65(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_65;

      /* MEL_Model Laptop_64 rcpt_ckt-L2_6C */
        Modelica.Blocks.Math.Gain Gain_Laptop_64(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_64(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_64;

      /* MEL_Model  cable_rcpt_ckt-L2_6C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_6C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=186.04);

      /* MEL_Model Monitor_40 rcpt_ckt-L2_5C */
        Modelica.Blocks.Math.Gain Gain_Monitor_40(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_40(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_40;

      /* MEL_Model IT_Equipment_75 rcpt_ckt-L2_5C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_75(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_75(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_75;

      /* MEL_Model Laptop_61 rcpt_ckt-L2_5C */
        Modelica.Blocks.Math.Gain Gain_Laptop_61(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_61(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_61;

      /* MEL_Model  cable_rcpt_ckt-L2_5C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_5C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=100.56);

      /* MEL_Model IT_Equipment_73 rcpt_ckt-L2_4C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_73(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_73(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_73;

      /* MEL_Model Laptop_56 rcpt_ckt-L2_4C */
        Modelica.Blocks.Math.Gain Gain_Laptop_56(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_56(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_56;

      /* MEL_Model  cable_rcpt_ckt-L2_4C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_4C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=119.36);

      /* MEL_Model Monitor_36 rcpt_ckt-L2_3C */
        Modelica.Blocks.Math.Gain Gain_Monitor_36(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_36(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_36;

      /* MEL_Model Monitor_35 rcpt_ckt-L2_3C */
        Modelica.Blocks.Math.Gain Gain_Monitor_35(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_35(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_35;

      /* MEL_Model Laptop_53 rcpt_ckt-L2_3C */
        Modelica.Blocks.Math.Gain Gain_Laptop_53(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_53(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_53;

      /* MEL_Model  cable_rcpt_ckt-L2_3C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_3C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=174.2);

      /* MEL_Model IT_Equipment_70 rcpt_ckt-L2_2C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_70(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_70(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_70;

      /* MEL_Model IT_Equipment_69 rcpt_ckt-L2_2C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_69(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_69(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_69;

      /* MEL_Model IT_Equipment_68 rcpt_ckt-L2_2C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_68(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_68(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_68;

      /* MEL_Model Laptop_51 rcpt_ckt-L2_2C */
        Modelica.Blocks.Math.Gain Gain_Laptop_51(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_51(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_51;

      /* MEL_Model  cable_rcpt_ckt-L2_2C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL2_2C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=196.81);

      equation
        connect(cable_mels_L2_C.pin_n, pin_p)
          annotation (Line(points={{-62,-30},{-110,-30}}, color={117,80,123}));
        connect(cable_mels_L2_C.pin_p, other_general_plug.hPin_L)
          annotation (Line(points={{-42,-30},{-4,-30},{-4,4}}, color={92,53,102}));
        connect(GndAC.pin, other_general_plug.hPin_N) annotation (Line(points={{-10,
                44},{-8,44},{-8,38},{-4,38},{-4,20}}, color={92,53,102}));
        connect(realToComplex.y, other_general_plug.S_input) annotation (Line(points={{-23.5,
                23},{-8,23},{-8,12.16}},        color={85,170,255}));
        connect(combiTimeTable_L2_All_Plugs_General.y[1], gain_gen_plugs_L2_A.u)
          annotation (Line(points={{-73,50},{-67.2,50}}, color={0,0,127}));
        connect(gain_gen_plugs_L2_A.y, realToComplex.re) annotation (Line(points={{-53.4,
                50},{-48,50},{-48,40},{-35,40},{-35,26}}, color={0,0,127}));
        connect(gain1.y, realToComplex.im)
          annotation (Line(points={{-43.4,20},{-35,20}}, color={0,0,127}));
        connect(gain1.u, realToComplex.re) annotation (Line(points={{-57.2,20},{-62,20},
                {-62,36},{-35,36},{-35,26}}, color={0,0,127}));

      /* Insert equation here */

      /* MEL_Connect Display_10 rcpt_ckt-L2_17C */
        connect(Display_10.n, GndDC.p);
        connect(MEL_Conv_Display_10.pin_p, Display_10.p);
        connect(MEL_Conv_Display_10.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_10.pin_n, GndDC.p);
        connect(MEL_Conv_Display_10.hPin_L, cable_rcpt_cktL2_17C.pin_p);
        connect(combiTimeTable_L2_Display.y[1], Gain_Display_10.u);
        connect(Display_10.u, Gain_Display_10.y);

      /* MEL_Connect Display_9 rcpt_ckt-L2_17C */
        connect(Display_9.n, GndDC.p);
        connect(MEL_Conv_Display_9.pin_p, Display_9.p);
        connect(MEL_Conv_Display_9.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_9.pin_n, GndDC.p);
        connect(MEL_Conv_Display_9.hPin_L, cable_rcpt_cktL2_17C.pin_p);
        connect(combiTimeTable_L2_Display.y[1], Gain_Display_9.u);
        connect(Display_9.u, Gain_Display_9.y);

      /* MEL_Connect IT_Equipment_110 rcpt_ckt-L2_17C */
        connect(IT_Equipment_110.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_110.pin_p, IT_Equipment_110.p);
        connect(MEL_Conv_IT_Equipment_110.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_110.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_110.hPin_L, cable_rcpt_cktL2_17C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_110.u);
        connect(IT_Equipment_110.u, Gain_IT_Equipment_110.y);

      /* MEL_Connect IT_Equipment_109 rcpt_ckt-L2_17C */
        connect(IT_Equipment_109.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_109.pin_p, IT_Equipment_109.p);
        connect(MEL_Conv_IT_Equipment_109.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_109.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_109.hPin_L, cable_rcpt_cktL2_17C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_109.u);
        connect(IT_Equipment_109.u, Gain_IT_Equipment_109.y);

      /* MEL_Connect IT_Equipment_108 rcpt_ckt-L2_17C */
        connect(IT_Equipment_108.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_108.pin_p, IT_Equipment_108.p);
        connect(MEL_Conv_IT_Equipment_108.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_108.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_108.hPin_L, cable_rcpt_cktL2_17C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_108.u);
        connect(IT_Equipment_108.u, Gain_IT_Equipment_108.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_17C */
        connect(cable_rcpt_cktL2_17C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect IT_Equipment_94 rcpt_ckt-L2_10C */
        connect(IT_Equipment_94.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_94.pin_p, IT_Equipment_94.p);
        connect(MEL_Conv_IT_Equipment_94.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_94.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_94.hPin_L, cable_rcpt_cktL2_10C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_94.u);
        connect(IT_Equipment_94.u, Gain_IT_Equipment_94.y);

      /* MEL_Connect IT_Equipment_93 rcpt_ckt-L2_10C */
        connect(IT_Equipment_93.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_93.pin_p, IT_Equipment_93.p);
        connect(MEL_Conv_IT_Equipment_93.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_93.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_93.hPin_L, cable_rcpt_cktL2_10C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_93.u);
        connect(IT_Equipment_93.u, Gain_IT_Equipment_93.y);

      /* MEL_Connect IT_Equipment_92 rcpt_ckt-L2_10C */
        connect(IT_Equipment_92.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_92.pin_p, IT_Equipment_92.p);
        connect(MEL_Conv_IT_Equipment_92.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_92.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_92.hPin_L, cable_rcpt_cktL2_10C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_92.u);
        connect(IT_Equipment_92.u, Gain_IT_Equipment_92.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_10C */
        connect(cable_rcpt_cktL2_10C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect IT_Equipment_86 rcpt_ckt-L2_9C */
        connect(IT_Equipment_86.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_86.pin_p, IT_Equipment_86.p);
        connect(MEL_Conv_IT_Equipment_86.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_86.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_86.hPin_L, cable_rcpt_cktL2_9C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_86.u);
        connect(IT_Equipment_86.u, Gain_IT_Equipment_86.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_9C */
        connect(cable_rcpt_cktL2_9C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect Printer_11 rcpt_ckt-L2_1C */
        connect(Printer_11.n, GndDC.p);
        connect(MEL_Conv_Printer_11.pin_p, Printer_11.p);
        connect(MEL_Conv_Printer_11.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_11.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_11.hPin_L, cable_rcpt_cktL2_1C.pin_p);
        connect(combiTimeTable_L2_Printer.y[1], Gain_Printer_11.u);
        connect(Printer_11.u, Gain_Printer_11.y);

      /* MEL_Connect IT_Equipment_62 rcpt_ckt-L2_1C */
        connect(IT_Equipment_62.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_62.pin_p, IT_Equipment_62.p);
        connect(MEL_Conv_IT_Equipment_62.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_62.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_62.hPin_L, cable_rcpt_cktL2_1C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_62.u);
        connect(IT_Equipment_62.u, Gain_IT_Equipment_62.y);

      /* MEL_Connect IT_Equipment_61 rcpt_ckt-L2_1C */
        connect(IT_Equipment_61.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_61.pin_p, IT_Equipment_61.p);
        connect(MEL_Conv_IT_Equipment_61.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_61.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_61.hPin_L, cable_rcpt_cktL2_1C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_61.u);
        connect(IT_Equipment_61.u, Gain_IT_Equipment_61.y);

      /* MEL_Connect IT_Equipment_60 rcpt_ckt-L2_1C */
        connect(IT_Equipment_60.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_60.pin_p, IT_Equipment_60.p);
        connect(MEL_Conv_IT_Equipment_60.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_60.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_60.hPin_L, cable_rcpt_cktL2_1C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_60.u);
        connect(IT_Equipment_60.u, Gain_IT_Equipment_60.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_1C */
        connect(cable_rcpt_cktL2_1C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect Monitor_63 rcpt_ckt-L2_16C */
        connect(Monitor_63.n, GndDC.p);
        connect(MEL_Conv_Monitor_63.pin_p, Monitor_63.p);
        connect(MEL_Conv_Monitor_63.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_63.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_63.hPin_L, cable_rcpt_cktL2_16C.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_63.u);
        connect(Monitor_63.u, Gain_Monitor_63.y);

      /* MEL_Connect IT_Equipment_106 rcpt_ckt-L2_16C */
        connect(IT_Equipment_106.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_106.pin_p, IT_Equipment_106.p);
        connect(MEL_Conv_IT_Equipment_106.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_106.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_106.hPin_L, cable_rcpt_cktL2_16C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_106.u);
        connect(IT_Equipment_106.u, Gain_IT_Equipment_106.y);

      /* MEL_Connect Laptop_97 rcpt_ckt-L2_16C */
        connect(Laptop_97.n, GndDC.p);
        connect(MEL_Conv_Laptop_97.pin_p, Laptop_97.p);
        connect(MEL_Conv_Laptop_97.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_97.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_97.hPin_L, cable_rcpt_cktL2_16C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_97.u);
        connect(Laptop_97.u, Gain_Laptop_97.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_16C */
        connect(cable_rcpt_cktL2_16C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect Printer_18 rcpt_ckt-L2_15C */
        connect(Printer_18.n, GndDC.p);
        connect(MEL_Conv_Printer_18.pin_p, Printer_18.p);
        connect(MEL_Conv_Printer_18.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_18.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_18.hPin_L, cable_rcpt_cktL2_15C.pin_p);
        connect(combiTimeTable_L2_Printer.y[1], Gain_Printer_18.u);
        connect(Printer_18.u, Gain_Printer_18.y);

      /* MEL_Connect IT_Equipment_105 rcpt_ckt-L2_15C */
        connect(IT_Equipment_105.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_105.pin_p, IT_Equipment_105.p);
        connect(MEL_Conv_IT_Equipment_105.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_105.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_105.hPin_L, cable_rcpt_cktL2_15C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_105.u);
        connect(IT_Equipment_105.u, Gain_IT_Equipment_105.y);

      /* MEL_Connect Laptop_93 rcpt_ckt-L2_15C */
        connect(Laptop_93.n, GndDC.p);
        connect(MEL_Conv_Laptop_93.pin_p, Laptop_93.p);
        connect(MEL_Conv_Laptop_93.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_93.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_93.hPin_L, cable_rcpt_cktL2_15C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_93.u);
        connect(Laptop_93.u, Gain_Laptop_93.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_15C */
        connect(cable_rcpt_cktL2_15C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect Monitor_56 rcpt_ckt-L2_14C */
        connect(Monitor_56.n, GndDC.p);
        connect(MEL_Conv_Monitor_56.pin_p, Monitor_56.p);
        connect(MEL_Conv_Monitor_56.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_56.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_56.hPin_L, cable_rcpt_cktL2_14C.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_56.u);
        connect(Monitor_56.u, Gain_Monitor_56.y);

      /* MEL_Connect Laptop_89 rcpt_ckt-L2_14C */
        connect(Laptop_89.n, GndDC.p);
        connect(MEL_Conv_Laptop_89.pin_p, Laptop_89.p);
        connect(MEL_Conv_Laptop_89.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_89.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_89.hPin_L, cable_rcpt_cktL2_14C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_89.u);
        connect(Laptop_89.u, Gain_Laptop_89.y);

      /* MEL_Connect Laptop_88 rcpt_ckt-L2_14C */
        connect(Laptop_88.n, GndDC.p);
        connect(MEL_Conv_Laptop_88.pin_p, Laptop_88.p);
        connect(MEL_Conv_Laptop_88.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_88.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_88.hPin_L, cable_rcpt_cktL2_14C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_88.u);
        connect(Laptop_88.u, Gain_Laptop_88.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_14C */
        connect(cable_rcpt_cktL2_14C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect Monitor_53 rcpt_ckt-L2_13C */
        connect(Monitor_53.n, GndDC.p);
        connect(MEL_Conv_Monitor_53.pin_p, Monitor_53.p);
        connect(MEL_Conv_Monitor_53.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_53.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_53.hPin_L, cable_rcpt_cktL2_13C.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_53.u);
        connect(Monitor_53.u, Gain_Monitor_53.y);

      /* MEL_Connect Laptop_85 rcpt_ckt-L2_13C */
        connect(Laptop_85.n, GndDC.p);
        connect(MEL_Conv_Laptop_85.pin_p, Laptop_85.p);
        connect(MEL_Conv_Laptop_85.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_85.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_85.hPin_L, cable_rcpt_cktL2_13C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_85.u);
        connect(Laptop_85.u, Gain_Laptop_85.y);

      /* MEL_Connect Laptop_84 rcpt_ckt-L2_13C */
        connect(Laptop_84.n, GndDC.p);
        connect(MEL_Conv_Laptop_84.pin_p, Laptop_84.p);
        connect(MEL_Conv_Laptop_84.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_84.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_84.hPin_L, cable_rcpt_cktL2_13C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_84.u);
        connect(Laptop_84.u, Gain_Laptop_84.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_13C */
        connect(cable_rcpt_cktL2_13C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect Monitor_49 rcpt_ckt-L2_12C */
        connect(Monitor_49.n, GndDC.p);
        connect(MEL_Conv_Monitor_49.pin_p, Monitor_49.p);
        connect(MEL_Conv_Monitor_49.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_49.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_49.hPin_L, cable_rcpt_cktL2_12C.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_49.u);
        connect(Monitor_49.u, Gain_Monitor_49.y);

      /* MEL_Connect Monitor_48 rcpt_ckt-L2_12C */
        connect(Monitor_48.n, GndDC.p);
        connect(MEL_Conv_Monitor_48.pin_p, Monitor_48.p);
        connect(MEL_Conv_Monitor_48.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_48.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_48.hPin_L, cable_rcpt_cktL2_12C.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_48.u);
        connect(Monitor_48.u, Gain_Monitor_48.y);

      /* MEL_Connect IT_Equipment_100 rcpt_ckt-L2_12C */
        connect(IT_Equipment_100.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_100.pin_p, IT_Equipment_100.p);
        connect(MEL_Conv_IT_Equipment_100.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_100.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_100.hPin_L, cable_rcpt_cktL2_12C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_100.u);
        connect(IT_Equipment_100.u, Gain_IT_Equipment_100.y);

      /* MEL_Connect Laptop_79 rcpt_ckt-L2_12C */
        connect(Laptop_79.n, GndDC.p);
        connect(MEL_Conv_Laptop_79.pin_p, Laptop_79.p);
        connect(MEL_Conv_Laptop_79.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_79.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_79.hPin_L, cable_rcpt_cktL2_12C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_79.u);
        connect(Laptop_79.u, Gain_Laptop_79.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_12C */
        connect(cable_rcpt_cktL2_12C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect IT_Equipment_99 rcpt_ckt-L2_11C */
        connect(IT_Equipment_99.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_99.pin_p, IT_Equipment_99.p);
        connect(MEL_Conv_IT_Equipment_99.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_99.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_99.hPin_L, cable_rcpt_cktL2_11C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_99.u);
        connect(IT_Equipment_99.u, Gain_IT_Equipment_99.y);

      /* MEL_Connect Laptop_74 rcpt_ckt-L2_11C */
        connect(Laptop_74.n, GndDC.p);
        connect(MEL_Conv_Laptop_74.pin_p, Laptop_74.p);
        connect(MEL_Conv_Laptop_74.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_74.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_74.hPin_L, cable_rcpt_cktL2_11C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_74.u);
        connect(Laptop_74.u, Gain_Laptop_74.y);

      /* MEL_Connect Laptop_73 rcpt_ckt-L2_11C */
        connect(Laptop_73.n, GndDC.p);
        connect(MEL_Conv_Laptop_73.pin_p, Laptop_73.p);
        connect(MEL_Conv_Laptop_73.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_73.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_73.hPin_L, cable_rcpt_cktL2_11C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_73.u);
        connect(Laptop_73.u, Gain_Laptop_73.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_11C */
        connect(cable_rcpt_cktL2_11C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect IT_Equipment_84 rcpt_ckt-L2_8C */
        connect(IT_Equipment_84.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_84.pin_p, IT_Equipment_84.p);
        connect(MEL_Conv_IT_Equipment_84.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_84.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_84.hPin_L, cable_rcpt_cktL2_8C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_84.u);
        connect(IT_Equipment_84.u, Gain_IT_Equipment_84.y);

      /* MEL_Connect IT_Equipment_83 rcpt_ckt-L2_8C */
        connect(IT_Equipment_83.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_83.pin_p, IT_Equipment_83.p);
        connect(MEL_Conv_IT_Equipment_83.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_83.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_83.hPin_L, cable_rcpt_cktL2_8C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_83.u);
        connect(IT_Equipment_83.u, Gain_IT_Equipment_83.y);

      /* MEL_Connect IT_Equipment_82 rcpt_ckt-L2_8C */
        connect(IT_Equipment_82.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_82.pin_p, IT_Equipment_82.p);
        connect(MEL_Conv_IT_Equipment_82.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_82.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_82.hPin_L, cable_rcpt_cktL2_8C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_82.u);
        connect(IT_Equipment_82.u, Gain_IT_Equipment_82.y);

      /* MEL_Connect Laptop_71 rcpt_ckt-L2_8C */
        connect(Laptop_71.n, GndDC.p);
        connect(MEL_Conv_Laptop_71.pin_p, Laptop_71.p);
        connect(MEL_Conv_Laptop_71.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_71.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_71.hPin_L, cable_rcpt_cktL2_8C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_71.u);
        connect(Laptop_71.u, Gain_Laptop_71.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_8C */
        connect(cable_rcpt_cktL2_8C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect Monitor_44 rcpt_ckt-L2_7C */
        connect(Monitor_44.n, GndDC.p);
        connect(MEL_Conv_Monitor_44.pin_p, Monitor_44.p);
        connect(MEL_Conv_Monitor_44.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_44.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_44.hPin_L, cable_rcpt_cktL2_7C.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_44.u);
        connect(Monitor_44.u, Gain_Monitor_44.y);

      /* MEL_Connect IT_Equipment_78 rcpt_ckt-L2_7C */
        connect(IT_Equipment_78.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_78.pin_p, IT_Equipment_78.p);
        connect(MEL_Conv_IT_Equipment_78.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_78.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_78.hPin_L, cable_rcpt_cktL2_7C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_78.u);
        connect(IT_Equipment_78.u, Gain_IT_Equipment_78.y);

      /* MEL_Connect Laptop_69 rcpt_ckt-L2_7C */
        connect(Laptop_69.n, GndDC.p);
        connect(MEL_Conv_Laptop_69.pin_p, Laptop_69.p);
        connect(MEL_Conv_Laptop_69.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_69.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_69.hPin_L, cable_rcpt_cktL2_7C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_69.u);
        connect(Laptop_69.u, Gain_Laptop_69.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_7C */
        connect(cable_rcpt_cktL2_7C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect Printer_13 rcpt_ckt-L2_6C */
        connect(Printer_13.n, GndDC.p);
        connect(MEL_Conv_Printer_13.pin_p, Printer_13.p);
        connect(MEL_Conv_Printer_13.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_13.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_13.hPin_L, cable_rcpt_cktL2_6C.pin_p);
        connect(combiTimeTable_L2_Printer.y[1], Gain_Printer_13.u);
        connect(Printer_13.u, Gain_Printer_13.y);

      /* MEL_Connect Monitor_42 rcpt_ckt-L2_6C */
        connect(Monitor_42.n, GndDC.p);
        connect(MEL_Conv_Monitor_42.pin_p, Monitor_42.p);
        connect(MEL_Conv_Monitor_42.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_42.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_42.hPin_L, cable_rcpt_cktL2_6C.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_42.u);
        connect(Monitor_42.u, Gain_Monitor_42.y);

      /* MEL_Connect IT_Equipment_77 rcpt_ckt-L2_6C */
        connect(IT_Equipment_77.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_77.pin_p, IT_Equipment_77.p);
        connect(MEL_Conv_IT_Equipment_77.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_77.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_77.hPin_L, cable_rcpt_cktL2_6C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_77.u);
        connect(IT_Equipment_77.u, Gain_IT_Equipment_77.y);

      /* MEL_Connect Laptop_65 rcpt_ckt-L2_6C */
        connect(Laptop_65.n, GndDC.p);
        connect(MEL_Conv_Laptop_65.pin_p, Laptop_65.p);
        connect(MEL_Conv_Laptop_65.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_65.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_65.hPin_L, cable_rcpt_cktL2_6C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_65.u);
        connect(Laptop_65.u, Gain_Laptop_65.y);

      /* MEL_Connect Laptop_64 rcpt_ckt-L2_6C */
        connect(Laptop_64.n, GndDC.p);
        connect(MEL_Conv_Laptop_64.pin_p, Laptop_64.p);
        connect(MEL_Conv_Laptop_64.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_64.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_64.hPin_L, cable_rcpt_cktL2_6C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_64.u);
        connect(Laptop_64.u, Gain_Laptop_64.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_6C */
        connect(cable_rcpt_cktL2_6C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect Monitor_40 rcpt_ckt-L2_5C */
        connect(Monitor_40.n, GndDC.p);
        connect(MEL_Conv_Monitor_40.pin_p, Monitor_40.p);
        connect(MEL_Conv_Monitor_40.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_40.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_40.hPin_L, cable_rcpt_cktL2_5C.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_40.u);
        connect(Monitor_40.u, Gain_Monitor_40.y);

      /* MEL_Connect IT_Equipment_75 rcpt_ckt-L2_5C */
        connect(IT_Equipment_75.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_75.pin_p, IT_Equipment_75.p);
        connect(MEL_Conv_IT_Equipment_75.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_75.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_75.hPin_L, cable_rcpt_cktL2_5C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_75.u);
        connect(IT_Equipment_75.u, Gain_IT_Equipment_75.y);

      /* MEL_Connect Laptop_61 rcpt_ckt-L2_5C */
        connect(Laptop_61.n, GndDC.p);
        connect(MEL_Conv_Laptop_61.pin_p, Laptop_61.p);
        connect(MEL_Conv_Laptop_61.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_61.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_61.hPin_L, cable_rcpt_cktL2_5C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_61.u);
        connect(Laptop_61.u, Gain_Laptop_61.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_5C */
        connect(cable_rcpt_cktL2_5C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect IT_Equipment_73 rcpt_ckt-L2_4C */
        connect(IT_Equipment_73.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_73.pin_p, IT_Equipment_73.p);
        connect(MEL_Conv_IT_Equipment_73.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_73.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_73.hPin_L, cable_rcpt_cktL2_4C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_73.u);
        connect(IT_Equipment_73.u, Gain_IT_Equipment_73.y);

      /* MEL_Connect Laptop_56 rcpt_ckt-L2_4C */
        connect(Laptop_56.n, GndDC.p);
        connect(MEL_Conv_Laptop_56.pin_p, Laptop_56.p);
        connect(MEL_Conv_Laptop_56.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_56.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_56.hPin_L, cable_rcpt_cktL2_4C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_56.u);
        connect(Laptop_56.u, Gain_Laptop_56.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_4C */
        connect(cable_rcpt_cktL2_4C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect Monitor_36 rcpt_ckt-L2_3C */
        connect(Monitor_36.n, GndDC.p);
        connect(MEL_Conv_Monitor_36.pin_p, Monitor_36.p);
        connect(MEL_Conv_Monitor_36.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_36.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_36.hPin_L, cable_rcpt_cktL2_3C.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_36.u);
        connect(Monitor_36.u, Gain_Monitor_36.y);

      /* MEL_Connect Monitor_35 rcpt_ckt-L2_3C */
        connect(Monitor_35.n, GndDC.p);
        connect(MEL_Conv_Monitor_35.pin_p, Monitor_35.p);
        connect(MEL_Conv_Monitor_35.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_35.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_35.hPin_L, cable_rcpt_cktL2_3C.pin_p);
        connect(combiTimeTable_L2_Monitor.y[1], Gain_Monitor_35.u);
        connect(Monitor_35.u, Gain_Monitor_35.y);

      /* MEL_Connect Laptop_53 rcpt_ckt-L2_3C */
        connect(Laptop_53.n, GndDC.p);
        connect(MEL_Conv_Laptop_53.pin_p, Laptop_53.p);
        connect(MEL_Conv_Laptop_53.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_53.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_53.hPin_L, cable_rcpt_cktL2_3C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_53.u);
        connect(Laptop_53.u, Gain_Laptop_53.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_3C */
        connect(cable_rcpt_cktL2_3C.pin_n, cable_mels_L2_C.pin_p);

      /* MEL_Connect IT_Equipment_70 rcpt_ckt-L2_2C */
        connect(IT_Equipment_70.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_70.pin_p, IT_Equipment_70.p);
        connect(MEL_Conv_IT_Equipment_70.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_70.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_70.hPin_L, cable_rcpt_cktL2_2C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_70.u);
        connect(IT_Equipment_70.u, Gain_IT_Equipment_70.y);

      /* MEL_Connect IT_Equipment_69 rcpt_ckt-L2_2C */
        connect(IT_Equipment_69.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_69.pin_p, IT_Equipment_69.p);
        connect(MEL_Conv_IT_Equipment_69.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_69.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_69.hPin_L, cable_rcpt_cktL2_2C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_69.u);
        connect(IT_Equipment_69.u, Gain_IT_Equipment_69.y);

      /* MEL_Connect IT_Equipment_68 rcpt_ckt-L2_2C */
        connect(IT_Equipment_68.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_68.pin_p, IT_Equipment_68.p);
        connect(MEL_Conv_IT_Equipment_68.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_68.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_68.hPin_L, cable_rcpt_cktL2_2C.pin_p);
        connect(combiTimeTable_L2_IT_Equipment.y[1], Gain_IT_Equipment_68.u);
        connect(IT_Equipment_68.u, Gain_IT_Equipment_68.y);

      /* MEL_Connect Laptop_51 rcpt_ckt-L2_2C */
        connect(Laptop_51.n, GndDC.p);
        connect(MEL_Conv_Laptop_51.pin_p, Laptop_51.p);
        connect(MEL_Conv_Laptop_51.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_51.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_51.hPin_L, cable_rcpt_cktL2_2C.pin_p);
        connect(combiTimeTable_L2_Laptop.y[1], Gain_Laptop_51.u);
        connect(Laptop_51.u, Gain_Laptop_51.y);

      /* MEL_Connect  cable_rcpt_ckt-L2_2C */
        connect(cable_rcpt_cktL2_2C.pin_n, cable_mels_L2_C.pin_p);

        annotation ();
      end MEL_Panel_L2C;

      model MEL_Panel_L3A
        outer parameter Real PF;
        outer parameter Real PF1;
        /* parameter Real PF = 0.9; */

        outer HPF.SystemDef systemDef;
        Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
          Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        HPF.SinglePhase.Components.Ground GndAC annotation (
          Placement(visible = true, transformation(origin={-18,44},    extent = {{-8, -8}, {8, 8}}, rotation = -90)));
        HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
          Placement(visible = true, transformation(extent={{-120,-40},{-100,-20}},    rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
        HPF.Cables.NEC_CableModel cable_mels_L3_A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_4,
            length=35)
          annotation (Placement(transformation(extent={{-42,-40},{-62,-20}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_IT_Equipment(
          tableOnFile=true,
          tableName="L3-All-ITEquipment",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-92,72},{-72,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Laptop(
          tableOnFile=true,
          tableName="L3-All-Laptops",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-60,72},{-40,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_MFD(
          tableOnFile=true,
          tableName="L3-All-MFDs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-28,72},{-8,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Monitor(
          tableOnFile=true,
          tableName="L3-All-Monitors",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{10,72},{30,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Printer(
          tableOnFile=true,
          tableName="L3-All-Printers",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{40,72},{60,92}})));
        HPF.Loads.SinglePhase.AC_LoadIdeal1P other_general_plug(
          P_nom=2205,
          Q_nom=1068,
          V_nom=120) annotation (Placement(visible=true, transformation(
              origin={-4,12},
              extent={{-8,-8},{8,8}},
              rotation=90)));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Display(
          tableOnFile=true,
          tableName="L3-All-TVs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{72,72},{92,92}})));
        Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex
          annotation (Placement(transformation(extent={{-34,18},{-24,28}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_All_Plugs_General(
          tableOnFile=true,
          tableName="L3-All-Plugs-General",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-94,40},{-74,60}})));

        Modelica.Blocks.Math.Gain gain_gen_plugs_L3_A(k=2204.25)
          annotation (Placement(transformation(extent={{-66,44},{-54,56}})));
        Modelica.Blocks.Math.Gain gain1(k=PF1)
          annotation (Placement(transformation(extent={{-56,14},{-44,26}})));

      /* Insert models here */

      /* MEL_Model MFD_9 rcpt_ckt-L3_14A */
        Modelica.Blocks.Math.Gain Gain_MFD_9(k=621) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_MFD_9(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=621,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load MFD_9;

      /* MEL_Model Printer_26 rcpt_ckt-L3_14A */
        Modelica.Blocks.Math.Gain Gain_Printer_26(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_26(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_26;

      /* MEL_Model IT_Equipment_163 rcpt_ckt-L3_14A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_163(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_163(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_163;

      /* MEL_Model IT_Equipment_162 rcpt_ckt-L3_14A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_162(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_162(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_162;

      /* MEL_Model IT_Equipment_161 rcpt_ckt-L3_14A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_161(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_161(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_161;

      /* MEL_Model  cable_rcpt_ckt-L3_14A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_14A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=173.47);

      /* MEL_Model IT_Equipment_131 rcpt_ckt-L3_7A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_131(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_131(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_131;

      /* MEL_Model IT_Equipment_130 rcpt_ckt-L3_7A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_130(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_130(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_130;

      /* MEL_Model IT_Equipment_129 rcpt_ckt-L3_7A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_129(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_129(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_129;

      /* MEL_Model  cable_rcpt_ckt-L3_7A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_7A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=83.67);

      /* MEL_Model IT_Equipment_159 rcpt_ckt-L3_13A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_159(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_159(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_159;

      /* MEL_Model IT_Equipment_158 rcpt_ckt-L3_13A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_158(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_158(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_158;

      /* MEL_Model Laptop_145 rcpt_ckt-L3_13A */
        Modelica.Blocks.Math.Gain Gain_Laptop_145(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_145(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_145;

      /* MEL_Model  cable_rcpt_ckt-L3_13A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_13A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=120.31);

      /* MEL_Model Monitor_96 rcpt_ckt-L3_12A */
        Modelica.Blocks.Math.Gain Gain_Monitor_96(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_96(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_96;

      /* MEL_Model Monitor_95 rcpt_ckt-L3_12A */
        Modelica.Blocks.Math.Gain Gain_Monitor_95(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_95(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_95;

      /* MEL_Model Laptop_141 rcpt_ckt-L3_12A */
        Modelica.Blocks.Math.Gain Gain_Laptop_141(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_141(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_141;

      /* MEL_Model Laptop_140 rcpt_ckt-L3_12A */
        Modelica.Blocks.Math.Gain Gain_Laptop_140(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_140(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_140;

      /* MEL_Model  cable_rcpt_ckt-L3_12A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_12A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=38.76);

      /* MEL_Model IT_Equipment_151 rcpt_ckt-L3_11A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_151(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_151(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_151;

      /* MEL_Model IT_Equipment_150 rcpt_ckt-L3_11A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_150(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_150(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_150;

      /* MEL_Model Laptop_137 rcpt_ckt-L3_11A */
        Modelica.Blocks.Math.Gain Gain_Laptop_137(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_137(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_137;

      /* MEL_Model  cable_rcpt_ckt-L3_11A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_11A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=207.73);

      /* MEL_Model Monitor_93 rcpt_ckt-L3_10A */
        Modelica.Blocks.Math.Gain Gain_Monitor_93(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_93(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_93;

      /* MEL_Model IT_Equipment_146 rcpt_ckt-L3_10A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_146(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_146(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_146;

      /* MEL_Model Laptop_135 rcpt_ckt-L3_10A */
        Modelica.Blocks.Math.Gain Gain_Laptop_135(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_135(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_135;

      /* MEL_Model  cable_rcpt_ckt-L3_10A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_10A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=135.06);

      /* MEL_Model Printer_23 rcpt_ckt-L3_9A */
        Modelica.Blocks.Math.Gain Gain_Printer_23(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_23(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_23;

      /* MEL_Model IT_Equipment_140 rcpt_ckt-L3_9A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_140(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_140(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_140;

      /* MEL_Model Laptop_133 rcpt_ckt-L3_9A */
        Modelica.Blocks.Math.Gain Gain_Laptop_133(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_133(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_133;

      /* MEL_Model  cable_rcpt_ckt-L3_9A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_9A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=113.47);

      /* MEL_Model Printer_21 rcpt_ckt-L3_8A */
        Modelica.Blocks.Math.Gain Gain_Printer_21(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_21(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_21;

      /* MEL_Model IT_Equipment_135 rcpt_ckt-L3_8A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_135(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_135(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_135;

      /* MEL_Model Laptop_131 rcpt_ckt-L3_8A */
        Modelica.Blocks.Math.Gain Gain_Laptop_131(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_131(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_131;

      /* MEL_Model  cable_rcpt_ckt-L3_8A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_8A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=75.08);

      /* MEL_Model Monitor_91 rcpt_ckt-L3_6A */
        Modelica.Blocks.Math.Gain Gain_Monitor_91(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_91(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_91;

      /* MEL_Model IT_Equipment_125 rcpt_ckt-L3_6A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_125(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_125(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_125;

      /* MEL_Model Laptop_127 rcpt_ckt-L3_6A */
        Modelica.Blocks.Math.Gain Gain_Laptop_127(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_127(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_127;

      /* MEL_Model Laptop_126 rcpt_ckt-L3_6A */
        Modelica.Blocks.Math.Gain Gain_Laptop_126(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_126(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_126;

      /* MEL_Model  cable_rcpt_ckt-L3_6A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_6A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=48.24);

      /* MEL_Model Monitor_87 rcpt_ckt-L3_5A */
        Modelica.Blocks.Math.Gain Gain_Monitor_87(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_87(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_87;

      /* MEL_Model Monitor_86 rcpt_ckt-L3_5A */
        Modelica.Blocks.Math.Gain Gain_Monitor_86(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_86(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_86;

      /* MEL_Model Laptop_121 rcpt_ckt-L3_5A */
        Modelica.Blocks.Math.Gain Gain_Laptop_121(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_121(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_121;

      /* MEL_Model Laptop_120 rcpt_ckt-L3_5A */
        Modelica.Blocks.Math.Gain Gain_Laptop_120(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_120(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_120;

      /* MEL_Model  cable_rcpt_ckt-L3_5A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_5A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=44.79);

      /* MEL_Model Monitor_84 rcpt_ckt-L3_4A */
        Modelica.Blocks.Math.Gain Gain_Monitor_84(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_84(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_84;

      /* MEL_Model Monitor_83 rcpt_ckt-L3_4A */
        Modelica.Blocks.Math.Gain Gain_Monitor_83(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_83(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_83;

      /* MEL_Model IT_Equipment_119 rcpt_ckt-L3_4A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_119(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_119(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_119;

      /* MEL_Model Laptop_116 rcpt_ckt-L3_4A */
        Modelica.Blocks.Math.Gain Gain_Laptop_116(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_116(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_116;

      /* MEL_Model Laptop_115 rcpt_ckt-L3_4A */
        Modelica.Blocks.Math.Gain Gain_Laptop_115(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_115(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_115;

      /* MEL_Model  cable_rcpt_ckt-L3_4A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_4A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=59.87);

      /* MEL_Model Monitor_79 rcpt_ckt-L3_3A */
        Modelica.Blocks.Math.Gain Gain_Monitor_79(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_79(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_79;

      /* MEL_Model Monitor_78 rcpt_ckt-L3_3A */
        Modelica.Blocks.Math.Gain Gain_Monitor_78(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_78(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_78;

      /* MEL_Model IT_Equipment_116 rcpt_ckt-L3_3A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_116(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_116(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_116;

      /* MEL_Model Laptop_111 rcpt_ckt-L3_3A */
        Modelica.Blocks.Math.Gain Gain_Laptop_111(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_111(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_111;

      /* MEL_Model  cable_rcpt_ckt-L3_3A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_3A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=97.63);

      /* MEL_Model Monitor_74 rcpt_ckt-L3_2A */
        Modelica.Blocks.Math.Gain Gain_Monitor_74(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_74(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_74;

      /* MEL_Model Monitor_73 rcpt_ckt-L3_2A */
        Modelica.Blocks.Math.Gain Gain_Monitor_73(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_73(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_73;

      /* MEL_Model IT_Equipment_113 rcpt_ckt-L3_2A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_113(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_113(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_113;

      /* MEL_Model Laptop_106 rcpt_ckt-L3_2A */
        Modelica.Blocks.Math.Gain Gain_Laptop_106(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_106(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_106;

      /* MEL_Model Laptop_105 rcpt_ckt-L3_2A */
        Modelica.Blocks.Math.Gain Gain_Laptop_105(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_105(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_105;

      /* MEL_Model  cable_rcpt_ckt-L3_2A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_2A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=115.49);

      /* MEL_Model Monitor_68 rcpt_ckt-L3_1A */
        Modelica.Blocks.Math.Gain Gain_Monitor_68(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_68(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_68;

      /* MEL_Model Monitor_67 rcpt_ckt-L3_1A */
        Modelica.Blocks.Math.Gain Gain_Monitor_67(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_67(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_67;

      /* MEL_Model IT_Equipment_111 rcpt_ckt-L3_1A */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_111(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_111(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_111;

      /* MEL_Model Laptop_101 rcpt_ckt-L3_1A */
        Modelica.Blocks.Math.Gain Gain_Laptop_101(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_101(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_101;

      /* MEL_Model  cable_rcpt_ckt-L3_1A */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_1A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=153.74);

      equation
        connect(cable_mels_L3_A.pin_n, pin_p)
          annotation (Line(points={{-62,-30},{-110,-30}}, color={117,80,123}));
        connect(cable_mels_L3_A.pin_p, other_general_plug.hPin_L)
          annotation (Line(points={{-42,-30},{-4,-30},{-4,4}}, color={92,53,102}));
        connect(GndAC.pin, other_general_plug.hPin_N) annotation (Line(points={{-10,
                44},{-8,44},{-8,38},{-4,38},{-4,20}}, color={92,53,102}));
        connect(realToComplex.y, other_general_plug.S_input) annotation (Line(points={{-23.5,
                23},{-8,23},{-8,12.16}},        color={85,170,255}));
        connect(combiTimeTable_L3_All_Plugs_General.y[1], gain_gen_plugs_L3_A.u)
          annotation (Line(points={{-73,50},{-67.2,50}}, color={0,0,127}));
        connect(gain_gen_plugs_L3_A.y, realToComplex.re) annotation (Line(points={{-53.4,
                50},{-48,50},{-48,40},{-35,40},{-35,26}}, color={0,0,127}));
        connect(gain1.y, realToComplex.im)
          annotation (Line(points={{-43.4,20},{-35,20}}, color={0,0,127}));
        connect(gain1.u, realToComplex.re) annotation (Line(points={{-57.2,20},{-62,20},
                {-62,36},{-35,36},{-35,26}}, color={0,0,127}));

      /* Insert equation here */

      /* MEL_Connect MFD_9 rcpt_ckt-L3_14A */
        connect(MFD_9.n, GndDC.p);
        connect(MEL_Conv_MFD_9.pin_p, MFD_9.p);
        connect(MEL_Conv_MFD_9.hPin_N, GndAC.pin);
        connect(MEL_Conv_MFD_9.pin_n, GndDC.p);
        connect(MEL_Conv_MFD_9.hPin_L, cable_rcpt_cktL3_14A.pin_p);
        connect(combiTimeTable_L3_MFD.y[1], Gain_MFD_9.u);
        connect(MFD_9.u, Gain_MFD_9.y);

      /* MEL_Connect Printer_26 rcpt_ckt-L3_14A */
        connect(Printer_26.n, GndDC.p);
        connect(MEL_Conv_Printer_26.pin_p, Printer_26.p);
        connect(MEL_Conv_Printer_26.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_26.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_26.hPin_L, cable_rcpt_cktL3_14A.pin_p);
        connect(combiTimeTable_L3_Printer.y[1], Gain_Printer_26.u);
        connect(Printer_26.u, Gain_Printer_26.y);

      /* MEL_Connect IT_Equipment_163 rcpt_ckt-L3_14A */
        connect(IT_Equipment_163.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_163.pin_p, IT_Equipment_163.p);
        connect(MEL_Conv_IT_Equipment_163.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_163.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_163.hPin_L, cable_rcpt_cktL3_14A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_163.u);
        connect(IT_Equipment_163.u, Gain_IT_Equipment_163.y);

      /* MEL_Connect IT_Equipment_162 rcpt_ckt-L3_14A */
        connect(IT_Equipment_162.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_162.pin_p, IT_Equipment_162.p);
        connect(MEL_Conv_IT_Equipment_162.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_162.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_162.hPin_L, cable_rcpt_cktL3_14A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_162.u);
        connect(IT_Equipment_162.u, Gain_IT_Equipment_162.y);

      /* MEL_Connect IT_Equipment_161 rcpt_ckt-L3_14A */
        connect(IT_Equipment_161.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_161.pin_p, IT_Equipment_161.p);
        connect(MEL_Conv_IT_Equipment_161.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_161.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_161.hPin_L, cable_rcpt_cktL3_14A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_161.u);
        connect(IT_Equipment_161.u, Gain_IT_Equipment_161.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_14A */
        connect(cable_rcpt_cktL3_14A.pin_n, cable_mels_L3_A.pin_p);

      /* MEL_Connect IT_Equipment_131 rcpt_ckt-L3_7A */
        connect(IT_Equipment_131.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_131.pin_p, IT_Equipment_131.p);
        connect(MEL_Conv_IT_Equipment_131.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_131.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_131.hPin_L, cable_rcpt_cktL3_7A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_131.u);
        connect(IT_Equipment_131.u, Gain_IT_Equipment_131.y);

      /* MEL_Connect IT_Equipment_130 rcpt_ckt-L3_7A */
        connect(IT_Equipment_130.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_130.pin_p, IT_Equipment_130.p);
        connect(MEL_Conv_IT_Equipment_130.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_130.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_130.hPin_L, cable_rcpt_cktL3_7A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_130.u);
        connect(IT_Equipment_130.u, Gain_IT_Equipment_130.y);

      /* MEL_Connect IT_Equipment_129 rcpt_ckt-L3_7A */
        connect(IT_Equipment_129.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_129.pin_p, IT_Equipment_129.p);
        connect(MEL_Conv_IT_Equipment_129.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_129.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_129.hPin_L, cable_rcpt_cktL3_7A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_129.u);
        connect(IT_Equipment_129.u, Gain_IT_Equipment_129.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_7A */
        connect(cable_rcpt_cktL3_7A.pin_n, cable_mels_L3_A.pin_p);

      /* MEL_Connect IT_Equipment_159 rcpt_ckt-L3_13A */
        connect(IT_Equipment_159.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_159.pin_p, IT_Equipment_159.p);
        connect(MEL_Conv_IT_Equipment_159.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_159.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_159.hPin_L, cable_rcpt_cktL3_13A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_159.u);
        connect(IT_Equipment_159.u, Gain_IT_Equipment_159.y);

      /* MEL_Connect IT_Equipment_158 rcpt_ckt-L3_13A */
        connect(IT_Equipment_158.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_158.pin_p, IT_Equipment_158.p);
        connect(MEL_Conv_IT_Equipment_158.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_158.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_158.hPin_L, cable_rcpt_cktL3_13A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_158.u);
        connect(IT_Equipment_158.u, Gain_IT_Equipment_158.y);

      /* MEL_Connect Laptop_145 rcpt_ckt-L3_13A */
        connect(Laptop_145.n, GndDC.p);
        connect(MEL_Conv_Laptop_145.pin_p, Laptop_145.p);
        connect(MEL_Conv_Laptop_145.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_145.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_145.hPin_L, cable_rcpt_cktL3_13A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_145.u);
        connect(Laptop_145.u, Gain_Laptop_145.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_13A */
        connect(cable_rcpt_cktL3_13A.pin_n, cable_mels_L3_A.pin_p);

      /* MEL_Connect Monitor_96 rcpt_ckt-L3_12A */
        connect(Monitor_96.n, GndDC.p);
        connect(MEL_Conv_Monitor_96.pin_p, Monitor_96.p);
        connect(MEL_Conv_Monitor_96.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_96.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_96.hPin_L, cable_rcpt_cktL3_12A.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_96.u);
        connect(Monitor_96.u, Gain_Monitor_96.y);

      /* MEL_Connect Monitor_95 rcpt_ckt-L3_12A */
        connect(Monitor_95.n, GndDC.p);
        connect(MEL_Conv_Monitor_95.pin_p, Monitor_95.p);
        connect(MEL_Conv_Monitor_95.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_95.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_95.hPin_L, cable_rcpt_cktL3_12A.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_95.u);
        connect(Monitor_95.u, Gain_Monitor_95.y);

      /* MEL_Connect Laptop_141 rcpt_ckt-L3_12A */
        connect(Laptop_141.n, GndDC.p);
        connect(MEL_Conv_Laptop_141.pin_p, Laptop_141.p);
        connect(MEL_Conv_Laptop_141.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_141.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_141.hPin_L, cable_rcpt_cktL3_12A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_141.u);
        connect(Laptop_141.u, Gain_Laptop_141.y);

      /* MEL_Connect Laptop_140 rcpt_ckt-L3_12A */
        connect(Laptop_140.n, GndDC.p);
        connect(MEL_Conv_Laptop_140.pin_p, Laptop_140.p);
        connect(MEL_Conv_Laptop_140.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_140.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_140.hPin_L, cable_rcpt_cktL3_12A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_140.u);
        connect(Laptop_140.u, Gain_Laptop_140.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_12A */
        connect(cable_rcpt_cktL3_12A.pin_n, cable_mels_L3_A.pin_p);

      /* MEL_Connect IT_Equipment_151 rcpt_ckt-L3_11A */
        connect(IT_Equipment_151.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_151.pin_p, IT_Equipment_151.p);
        connect(MEL_Conv_IT_Equipment_151.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_151.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_151.hPin_L, cable_rcpt_cktL3_11A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_151.u);
        connect(IT_Equipment_151.u, Gain_IT_Equipment_151.y);

      /* MEL_Connect IT_Equipment_150 rcpt_ckt-L3_11A */
        connect(IT_Equipment_150.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_150.pin_p, IT_Equipment_150.p);
        connect(MEL_Conv_IT_Equipment_150.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_150.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_150.hPin_L, cable_rcpt_cktL3_11A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_150.u);
        connect(IT_Equipment_150.u, Gain_IT_Equipment_150.y);

      /* MEL_Connect Laptop_137 rcpt_ckt-L3_11A */
        connect(Laptop_137.n, GndDC.p);
        connect(MEL_Conv_Laptop_137.pin_p, Laptop_137.p);
        connect(MEL_Conv_Laptop_137.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_137.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_137.hPin_L, cable_rcpt_cktL3_11A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_137.u);
        connect(Laptop_137.u, Gain_Laptop_137.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_11A */
        connect(cable_rcpt_cktL3_11A.pin_n, cable_mels_L3_A.pin_p);

      /* MEL_Connect Monitor_93 rcpt_ckt-L3_10A */
        connect(Monitor_93.n, GndDC.p);
        connect(MEL_Conv_Monitor_93.pin_p, Monitor_93.p);
        connect(MEL_Conv_Monitor_93.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_93.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_93.hPin_L, cable_rcpt_cktL3_10A.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_93.u);
        connect(Monitor_93.u, Gain_Monitor_93.y);

      /* MEL_Connect IT_Equipment_146 rcpt_ckt-L3_10A */
        connect(IT_Equipment_146.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_146.pin_p, IT_Equipment_146.p);
        connect(MEL_Conv_IT_Equipment_146.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_146.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_146.hPin_L, cable_rcpt_cktL3_10A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_146.u);
        connect(IT_Equipment_146.u, Gain_IT_Equipment_146.y);

      /* MEL_Connect Laptop_135 rcpt_ckt-L3_10A */
        connect(Laptop_135.n, GndDC.p);
        connect(MEL_Conv_Laptop_135.pin_p, Laptop_135.p);
        connect(MEL_Conv_Laptop_135.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_135.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_135.hPin_L, cable_rcpt_cktL3_10A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_135.u);
        connect(Laptop_135.u, Gain_Laptop_135.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_10A */
        connect(cable_rcpt_cktL3_10A.pin_n, cable_mels_L3_A.pin_p);

      /* MEL_Connect Printer_23 rcpt_ckt-L3_9A */
        connect(Printer_23.n, GndDC.p);
        connect(MEL_Conv_Printer_23.pin_p, Printer_23.p);
        connect(MEL_Conv_Printer_23.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_23.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_23.hPin_L, cable_rcpt_cktL3_9A.pin_p);
        connect(combiTimeTable_L3_Printer.y[1], Gain_Printer_23.u);
        connect(Printer_23.u, Gain_Printer_23.y);

      /* MEL_Connect IT_Equipment_140 rcpt_ckt-L3_9A */
        connect(IT_Equipment_140.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_140.pin_p, IT_Equipment_140.p);
        connect(MEL_Conv_IT_Equipment_140.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_140.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_140.hPin_L, cable_rcpt_cktL3_9A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_140.u);
        connect(IT_Equipment_140.u, Gain_IT_Equipment_140.y);

      /* MEL_Connect Laptop_133 rcpt_ckt-L3_9A */
        connect(Laptop_133.n, GndDC.p);
        connect(MEL_Conv_Laptop_133.pin_p, Laptop_133.p);
        connect(MEL_Conv_Laptop_133.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_133.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_133.hPin_L, cable_rcpt_cktL3_9A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_133.u);
        connect(Laptop_133.u, Gain_Laptop_133.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_9A */
        connect(cable_rcpt_cktL3_9A.pin_n, cable_mels_L3_A.pin_p);

      /* MEL_Connect Printer_21 rcpt_ckt-L3_8A */
        connect(Printer_21.n, GndDC.p);
        connect(MEL_Conv_Printer_21.pin_p, Printer_21.p);
        connect(MEL_Conv_Printer_21.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_21.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_21.hPin_L, cable_rcpt_cktL3_8A.pin_p);
        connect(combiTimeTable_L3_Printer.y[1], Gain_Printer_21.u);
        connect(Printer_21.u, Gain_Printer_21.y);

      /* MEL_Connect IT_Equipment_135 rcpt_ckt-L3_8A */
        connect(IT_Equipment_135.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_135.pin_p, IT_Equipment_135.p);
        connect(MEL_Conv_IT_Equipment_135.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_135.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_135.hPin_L, cable_rcpt_cktL3_8A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_135.u);
        connect(IT_Equipment_135.u, Gain_IT_Equipment_135.y);

      /* MEL_Connect Laptop_131 rcpt_ckt-L3_8A */
        connect(Laptop_131.n, GndDC.p);
        connect(MEL_Conv_Laptop_131.pin_p, Laptop_131.p);
        connect(MEL_Conv_Laptop_131.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_131.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_131.hPin_L, cable_rcpt_cktL3_8A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_131.u);
        connect(Laptop_131.u, Gain_Laptop_131.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_8A */
        connect(cable_rcpt_cktL3_8A.pin_n, cable_mels_L3_A.pin_p);

      /* MEL_Connect Monitor_91 rcpt_ckt-L3_6A */
        connect(Monitor_91.n, GndDC.p);
        connect(MEL_Conv_Monitor_91.pin_p, Monitor_91.p);
        connect(MEL_Conv_Monitor_91.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_91.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_91.hPin_L, cable_rcpt_cktL3_6A.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_91.u);
        connect(Monitor_91.u, Gain_Monitor_91.y);

      /* MEL_Connect IT_Equipment_125 rcpt_ckt-L3_6A */
        connect(IT_Equipment_125.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_125.pin_p, IT_Equipment_125.p);
        connect(MEL_Conv_IT_Equipment_125.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_125.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_125.hPin_L, cable_rcpt_cktL3_6A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_125.u);
        connect(IT_Equipment_125.u, Gain_IT_Equipment_125.y);

      /* MEL_Connect Laptop_127 rcpt_ckt-L3_6A */
        connect(Laptop_127.n, GndDC.p);
        connect(MEL_Conv_Laptop_127.pin_p, Laptop_127.p);
        connect(MEL_Conv_Laptop_127.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_127.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_127.hPin_L, cable_rcpt_cktL3_6A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_127.u);
        connect(Laptop_127.u, Gain_Laptop_127.y);

      /* MEL_Connect Laptop_126 rcpt_ckt-L3_6A */
        connect(Laptop_126.n, GndDC.p);
        connect(MEL_Conv_Laptop_126.pin_p, Laptop_126.p);
        connect(MEL_Conv_Laptop_126.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_126.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_126.hPin_L, cable_rcpt_cktL3_6A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_126.u);
        connect(Laptop_126.u, Gain_Laptop_126.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_6A */
        connect(cable_rcpt_cktL3_6A.pin_n, cable_mels_L3_A.pin_p);

      /* MEL_Connect Monitor_87 rcpt_ckt-L3_5A */
        connect(Monitor_87.n, GndDC.p);
        connect(MEL_Conv_Monitor_87.pin_p, Monitor_87.p);
        connect(MEL_Conv_Monitor_87.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_87.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_87.hPin_L, cable_rcpt_cktL3_5A.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_87.u);
        connect(Monitor_87.u, Gain_Monitor_87.y);

      /* MEL_Connect Monitor_86 rcpt_ckt-L3_5A */
        connect(Monitor_86.n, GndDC.p);
        connect(MEL_Conv_Monitor_86.pin_p, Monitor_86.p);
        connect(MEL_Conv_Monitor_86.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_86.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_86.hPin_L, cable_rcpt_cktL3_5A.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_86.u);
        connect(Monitor_86.u, Gain_Monitor_86.y);

      /* MEL_Connect Laptop_121 rcpt_ckt-L3_5A */
        connect(Laptop_121.n, GndDC.p);
        connect(MEL_Conv_Laptop_121.pin_p, Laptop_121.p);
        connect(MEL_Conv_Laptop_121.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_121.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_121.hPin_L, cable_rcpt_cktL3_5A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_121.u);
        connect(Laptop_121.u, Gain_Laptop_121.y);

      /* MEL_Connect Laptop_120 rcpt_ckt-L3_5A */
        connect(Laptop_120.n, GndDC.p);
        connect(MEL_Conv_Laptop_120.pin_p, Laptop_120.p);
        connect(MEL_Conv_Laptop_120.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_120.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_120.hPin_L, cable_rcpt_cktL3_5A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_120.u);
        connect(Laptop_120.u, Gain_Laptop_120.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_5A */
        connect(cable_rcpt_cktL3_5A.pin_n, cable_mels_L3_A.pin_p);

      /* MEL_Connect Monitor_84 rcpt_ckt-L3_4A */
        connect(Monitor_84.n, GndDC.p);
        connect(MEL_Conv_Monitor_84.pin_p, Monitor_84.p);
        connect(MEL_Conv_Monitor_84.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_84.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_84.hPin_L, cable_rcpt_cktL3_4A.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_84.u);
        connect(Monitor_84.u, Gain_Monitor_84.y);

      /* MEL_Connect Monitor_83 rcpt_ckt-L3_4A */
        connect(Monitor_83.n, GndDC.p);
        connect(MEL_Conv_Monitor_83.pin_p, Monitor_83.p);
        connect(MEL_Conv_Monitor_83.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_83.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_83.hPin_L, cable_rcpt_cktL3_4A.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_83.u);
        connect(Monitor_83.u, Gain_Monitor_83.y);

      /* MEL_Connect IT_Equipment_119 rcpt_ckt-L3_4A */
        connect(IT_Equipment_119.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_119.pin_p, IT_Equipment_119.p);
        connect(MEL_Conv_IT_Equipment_119.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_119.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_119.hPin_L, cable_rcpt_cktL3_4A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_119.u);
        connect(IT_Equipment_119.u, Gain_IT_Equipment_119.y);

      /* MEL_Connect Laptop_116 rcpt_ckt-L3_4A */
        connect(Laptop_116.n, GndDC.p);
        connect(MEL_Conv_Laptop_116.pin_p, Laptop_116.p);
        connect(MEL_Conv_Laptop_116.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_116.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_116.hPin_L, cable_rcpt_cktL3_4A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_116.u);
        connect(Laptop_116.u, Gain_Laptop_116.y);

      /* MEL_Connect Laptop_115 rcpt_ckt-L3_4A */
        connect(Laptop_115.n, GndDC.p);
        connect(MEL_Conv_Laptop_115.pin_p, Laptop_115.p);
        connect(MEL_Conv_Laptop_115.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_115.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_115.hPin_L, cable_rcpt_cktL3_4A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_115.u);
        connect(Laptop_115.u, Gain_Laptop_115.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_4A */
        connect(cable_rcpt_cktL3_4A.pin_n, cable_mels_L3_A.pin_p);

      /* MEL_Connect Monitor_79 rcpt_ckt-L3_3A */
        connect(Monitor_79.n, GndDC.p);
        connect(MEL_Conv_Monitor_79.pin_p, Monitor_79.p);
        connect(MEL_Conv_Monitor_79.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_79.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_79.hPin_L, cable_rcpt_cktL3_3A.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_79.u);
        connect(Monitor_79.u, Gain_Monitor_79.y);

      /* MEL_Connect Monitor_78 rcpt_ckt-L3_3A */
        connect(Monitor_78.n, GndDC.p);
        connect(MEL_Conv_Monitor_78.pin_p, Monitor_78.p);
        connect(MEL_Conv_Monitor_78.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_78.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_78.hPin_L, cable_rcpt_cktL3_3A.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_78.u);
        connect(Monitor_78.u, Gain_Monitor_78.y);

      /* MEL_Connect IT_Equipment_116 rcpt_ckt-L3_3A */
        connect(IT_Equipment_116.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_116.pin_p, IT_Equipment_116.p);
        connect(MEL_Conv_IT_Equipment_116.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_116.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_116.hPin_L, cable_rcpt_cktL3_3A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_116.u);
        connect(IT_Equipment_116.u, Gain_IT_Equipment_116.y);

      /* MEL_Connect Laptop_111 rcpt_ckt-L3_3A */
        connect(Laptop_111.n, GndDC.p);
        connect(MEL_Conv_Laptop_111.pin_p, Laptop_111.p);
        connect(MEL_Conv_Laptop_111.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_111.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_111.hPin_L, cable_rcpt_cktL3_3A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_111.u);
        connect(Laptop_111.u, Gain_Laptop_111.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_3A */
        connect(cable_rcpt_cktL3_3A.pin_n, cable_mels_L3_A.pin_p);

      /* MEL_Connect Monitor_74 rcpt_ckt-L3_2A */
        connect(Monitor_74.n, GndDC.p);
        connect(MEL_Conv_Monitor_74.pin_p, Monitor_74.p);
        connect(MEL_Conv_Monitor_74.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_74.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_74.hPin_L, cable_rcpt_cktL3_2A.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_74.u);
        connect(Monitor_74.u, Gain_Monitor_74.y);

      /* MEL_Connect Monitor_73 rcpt_ckt-L3_2A */
        connect(Monitor_73.n, GndDC.p);
        connect(MEL_Conv_Monitor_73.pin_p, Monitor_73.p);
        connect(MEL_Conv_Monitor_73.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_73.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_73.hPin_L, cable_rcpt_cktL3_2A.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_73.u);
        connect(Monitor_73.u, Gain_Monitor_73.y);

      /* MEL_Connect IT_Equipment_113 rcpt_ckt-L3_2A */
        connect(IT_Equipment_113.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_113.pin_p, IT_Equipment_113.p);
        connect(MEL_Conv_IT_Equipment_113.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_113.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_113.hPin_L, cable_rcpt_cktL3_2A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_113.u);
        connect(IT_Equipment_113.u, Gain_IT_Equipment_113.y);

      /* MEL_Connect Laptop_106 rcpt_ckt-L3_2A */
        connect(Laptop_106.n, GndDC.p);
        connect(MEL_Conv_Laptop_106.pin_p, Laptop_106.p);
        connect(MEL_Conv_Laptop_106.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_106.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_106.hPin_L, cable_rcpt_cktL3_2A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_106.u);
        connect(Laptop_106.u, Gain_Laptop_106.y);

      /* MEL_Connect Laptop_105 rcpt_ckt-L3_2A */
        connect(Laptop_105.n, GndDC.p);
        connect(MEL_Conv_Laptop_105.pin_p, Laptop_105.p);
        connect(MEL_Conv_Laptop_105.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_105.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_105.hPin_L, cable_rcpt_cktL3_2A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_105.u);
        connect(Laptop_105.u, Gain_Laptop_105.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_2A */
        connect(cable_rcpt_cktL3_2A.pin_n, cable_mels_L3_A.pin_p);

      /* MEL_Connect Monitor_68 rcpt_ckt-L3_1A */
        connect(Monitor_68.n, GndDC.p);
        connect(MEL_Conv_Monitor_68.pin_p, Monitor_68.p);
        connect(MEL_Conv_Monitor_68.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_68.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_68.hPin_L, cable_rcpt_cktL3_1A.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_68.u);
        connect(Monitor_68.u, Gain_Monitor_68.y);

      /* MEL_Connect Monitor_67 rcpt_ckt-L3_1A */
        connect(Monitor_67.n, GndDC.p);
        connect(MEL_Conv_Monitor_67.pin_p, Monitor_67.p);
        connect(MEL_Conv_Monitor_67.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_67.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_67.hPin_L, cable_rcpt_cktL3_1A.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_67.u);
        connect(Monitor_67.u, Gain_Monitor_67.y);

      /* MEL_Connect IT_Equipment_111 rcpt_ckt-L3_1A */
        connect(IT_Equipment_111.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_111.pin_p, IT_Equipment_111.p);
        connect(MEL_Conv_IT_Equipment_111.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_111.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_111.hPin_L, cable_rcpt_cktL3_1A.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_111.u);
        connect(IT_Equipment_111.u, Gain_IT_Equipment_111.y);

      /* MEL_Connect Laptop_101 rcpt_ckt-L3_1A */
        connect(Laptop_101.n, GndDC.p);
        connect(MEL_Conv_Laptop_101.pin_p, Laptop_101.p);
        connect(MEL_Conv_Laptop_101.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_101.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_101.hPin_L, cable_rcpt_cktL3_1A.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_101.u);
        connect(Laptop_101.u, Gain_Laptop_101.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_1A */
        connect(cable_rcpt_cktL3_1A.pin_n, cable_mels_L3_A.pin_p);

        annotation ();
      end MEL_Panel_L3A;

      model MEL_Panel_L3B
        outer parameter Real PF;
        outer parameter Real PF1;
        /* parameter Real PF = 0.9; */

        outer HPF.SystemDef systemDef;
        Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
          Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        HPF.SinglePhase.Components.Ground GndAC annotation (
          Placement(visible = true, transformation(origin={-18,44},    extent = {{-8, -8}, {8, 8}}, rotation = -90)));
        HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
          Placement(visible = true, transformation(extent={{-120,-40},{-100,-20}},    rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
        HPF.Cables.NEC_CableModel cable_mels_L3_B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_4,
            length=35)
          annotation (Placement(transformation(extent={{-42,-40},{-62,-20}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_IT_Equipment(
          tableOnFile=true,
          tableName="L3-All-ITEquipment",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-92,72},{-72,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Laptop(
          tableOnFile=true,
          tableName="L3-All-Laptops",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-60,72},{-40,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_MFD(
          tableOnFile=true,
          tableName="L3-All-MFDs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-28,72},{-8,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Monitor(
          tableOnFile=true,
          tableName="L3-All-Monitors",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{10,72},{30,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Printer(
          tableOnFile=true,
          tableName="L3-All-Printers",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{40,72},{60,92}})));
        HPF.Loads.SinglePhase.AC_LoadIdeal1P other_general_plug(
          P_nom=2205,
          Q_nom=1068,
          V_nom=120) annotation (Placement(visible=true, transformation(
              origin={-4,12},
              extent={{-8,-8},{8,8}},
              rotation=90)));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Display(
          tableOnFile=true,
          tableName="L3-All-TVs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{72,72},{92,92}})));
        Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex
          annotation (Placement(transformation(extent={{-34,18},{-24,28}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_All_Plugs_General(
          tableOnFile=true,
          tableName="L3-All-Plugs-General",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-94,40},{-74,60}})));

        Modelica.Blocks.Math.Gain gain_gen_plugs_L3_A(k=2204.25)
          annotation (Placement(transformation(extent={{-66,44},{-54,56}})));
        Modelica.Blocks.Math.Gain gain1(k=PF1)
          annotation (Placement(transformation(extent={{-56,14},{-44,26}})));

      /* Insert models here */

      /* MEL_Model Printer_24 rcpt_ckt-L3_10B */
        Modelica.Blocks.Math.Gain Gain_Printer_24(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_24(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_24;

      /* MEL_Model Display_14 rcpt_ckt-L3_10B */
        Modelica.Blocks.Math.Gain Gain_Display_14(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_14(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_14;

      /* MEL_Model IT_Equipment_148 rcpt_ckt-L3_10B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_148(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_148(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_148;

      /* MEL_Model IT_Equipment_147 rcpt_ckt-L3_10B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_147(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_147(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_147;

      /* MEL_Model  cable_rcpt_ckt-L3_10B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_10B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=157.74);

      /* MEL_Model MFD_8 rcpt_ckt-L3_8B */
        Modelica.Blocks.Math.Gain Gain_MFD_8(k=621) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_MFD_8(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=621,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load MFD_8;

      /* MEL_Model Display_12 rcpt_ckt-L3_8B */
        Modelica.Blocks.Math.Gain Gain_Display_12(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_12(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_12;

      /* MEL_Model IT_Equipment_137 rcpt_ckt-L3_8B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_137(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_137(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_137;

      /* MEL_Model IT_Equipment_136 rcpt_ckt-L3_8B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_136(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_136(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_136;

      /* MEL_Model  cable_rcpt_ckt-L3_8B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_8B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=109.87);

      /* MEL_Model IT_Equipment_165 rcpt_ckt-L3_14B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_165(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_165(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_165;

      /* MEL_Model IT_Equipment_164 rcpt_ckt-L3_14B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_164(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_164(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_164;

      /* MEL_Model Laptop_149 rcpt_ckt-L3_14B */
        Modelica.Blocks.Math.Gain Gain_Laptop_149(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_149(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_149;

      /* MEL_Model Laptop_148 rcpt_ckt-L3_14B */
        Modelica.Blocks.Math.Gain Gain_Laptop_148(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_148(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_148;

      /* MEL_Model  cable_rcpt_ckt-L3_14B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_14B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=174.55);

      /* MEL_Model Printer_25 rcpt_ckt-L3_13B */
        Modelica.Blocks.Math.Gain Gain_Printer_25(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_25(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_25;

      /* MEL_Model Monitor_99 rcpt_ckt-L3_13B */
        Modelica.Blocks.Math.Gain Gain_Monitor_99(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_99(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_99;

      /* MEL_Model Monitor_98 rcpt_ckt-L3_13B */
        Modelica.Blocks.Math.Gain Gain_Monitor_98(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_98(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_98;

      /* MEL_Model Laptop_146 rcpt_ckt-L3_13B */
        Modelica.Blocks.Math.Gain Gain_Laptop_146(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_146(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_146;

      /* MEL_Model  cable_rcpt_ckt-L3_13B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_13B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=137.71);

      /* MEL_Model IT_Equipment_156 rcpt_ckt-L3_12B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_156(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_156(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_156;

      /* MEL_Model Laptop_143 rcpt_ckt-L3_12B */
        Modelica.Blocks.Math.Gain Gain_Laptop_143(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_143(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_143;

      /* MEL_Model Laptop_142 rcpt_ckt-L3_12B */
        Modelica.Blocks.Math.Gain Gain_Laptop_142(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_142(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_142;

      /* MEL_Model  cable_rcpt_ckt-L3_12B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_12B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=69.26);

      /* MEL_Model IT_Equipment_153 rcpt_ckt-L3_11B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_153(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_153(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_153;

      /* MEL_Model IT_Equipment_152 rcpt_ckt-L3_11B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_152(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_152(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_152;

      /* MEL_Model Laptop_138 rcpt_ckt-L3_11B */
        Modelica.Blocks.Math.Gain Gain_Laptop_138(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_138(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_138;

      /* MEL_Model  cable_rcpt_ckt-L3_11B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_11B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=197.37);

      /* MEL_Model Display_13 rcpt_ckt-L3_9B */
        Modelica.Blocks.Math.Gain Gain_Display_13(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_13(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_13;

      /* MEL_Model IT_Equipment_142 rcpt_ckt-L3_9B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_142(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_142(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_142;

      /* MEL_Model IT_Equipment_141 rcpt_ckt-L3_9B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_141(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_141(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_141;

      /* MEL_Model Laptop_134 rcpt_ckt-L3_9B */
        Modelica.Blocks.Math.Gain Gain_Laptop_134(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_134(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_134;

      /* MEL_Model  cable_rcpt_ckt-L3_9B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_9B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=116.03);

      /* MEL_Model Printer_20 rcpt_ckt-L3_7B */
        Modelica.Blocks.Math.Gain Gain_Printer_20(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_20(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_20;

      /* MEL_Model Display_11 rcpt_ckt-L3_7B */
        Modelica.Blocks.Math.Gain Gain_Display_11(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_11(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_11;

      /* MEL_Model IT_Equipment_132 rcpt_ckt-L3_7B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_132(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_132(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_132;

      /* MEL_Model Laptop_129 rcpt_ckt-L3_7B */
        Modelica.Blocks.Math.Gain Gain_Laptop_129(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_129(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_129;

      /* MEL_Model  cable_rcpt_ckt-L3_7B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_7B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=29.3);

      /* MEL_Model Monitor_92 rcpt_ckt-L3_6B */
        Modelica.Blocks.Math.Gain Gain_Monitor_92(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_92(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_92;

      /* MEL_Model IT_Equipment_126 rcpt_ckt-L3_6B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_126(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_126(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_126;

      /* MEL_Model Laptop_128 rcpt_ckt-L3_6B */
        Modelica.Blocks.Math.Gain Gain_Laptop_128(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_128(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_128;

      /* MEL_Model  cable_rcpt_ckt-L3_6B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_6B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=73.86);

      /* MEL_Model Monitor_88 rcpt_ckt-L3_5B */
        Modelica.Blocks.Math.Gain Gain_Monitor_88(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_88(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_88;

      /* MEL_Model IT_Equipment_123 rcpt_ckt-L3_5B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_123(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_123(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_123;

      /* MEL_Model Laptop_123 rcpt_ckt-L3_5B */
        Modelica.Blocks.Math.Gain Gain_Laptop_123(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_123(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_123;

      /* MEL_Model Laptop_122 rcpt_ckt-L3_5B */
        Modelica.Blocks.Math.Gain Gain_Laptop_122(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_122(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_122;

      /* MEL_Model  cable_rcpt_ckt-L3_5B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_5B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=28.21);

      /* MEL_Model IT_Equipment_121 rcpt_ckt-L3_4B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_121(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_121(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_121;

      /* MEL_Model IT_Equipment_120 rcpt_ckt-L3_4B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_120(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_120(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_120;

      /* MEL_Model Laptop_118 rcpt_ckt-L3_4B */
        Modelica.Blocks.Math.Gain Gain_Laptop_118(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_118(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_118;

      /* MEL_Model Laptop_117 rcpt_ckt-L3_4B */
        Modelica.Blocks.Math.Gain Gain_Laptop_117(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_117(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_117;

      /* MEL_Model  cable_rcpt_ckt-L3_4B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_4B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=61.42);

      /* MEL_Model Monitor_81 rcpt_ckt-L3_3B */
        Modelica.Blocks.Math.Gain Gain_Monitor_81(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_81(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_81;

      /* MEL_Model Monitor_80 rcpt_ckt-L3_3B */
        Modelica.Blocks.Math.Gain Gain_Monitor_80(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_80(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_80;

      /* MEL_Model Laptop_113 rcpt_ckt-L3_3B */
        Modelica.Blocks.Math.Gain Gain_Laptop_113(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_113(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_113;

      /* MEL_Model Laptop_112 rcpt_ckt-L3_3B */
        Modelica.Blocks.Math.Gain Gain_Laptop_112(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_112(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_112;

      /* MEL_Model  cable_rcpt_ckt-L3_3B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_3B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=78.06);

      /* MEL_Model Monitor_75 rcpt_ckt-L3_2B */
        Modelica.Blocks.Math.Gain Gain_Monitor_75(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_75(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_75;

      /* MEL_Model IT_Equipment_115 rcpt_ckt-L3_2B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_115(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_115(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_115;

      /* MEL_Model IT_Equipment_114 rcpt_ckt-L3_2B */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_114(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_114(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_114;

      /* MEL_Model Laptop_108 rcpt_ckt-L3_2B */
        Modelica.Blocks.Math.Gain Gain_Laptop_108(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_108(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_108;

      /* MEL_Model Laptop_107 rcpt_ckt-L3_2B */
        Modelica.Blocks.Math.Gain Gain_Laptop_107(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_107(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_107;

      /* MEL_Model  cable_rcpt_ckt-L3_2B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_2B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=116.3);

      /* MEL_Model Monitor_70 rcpt_ckt-L3_1B */
        Modelica.Blocks.Math.Gain Gain_Monitor_70(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_70(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_70;

      /* MEL_Model Monitor_69 rcpt_ckt-L3_1B */
        Modelica.Blocks.Math.Gain Gain_Monitor_69(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_69(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_69;

      /* MEL_Model Laptop_103 rcpt_ckt-L3_1B */
        Modelica.Blocks.Math.Gain Gain_Laptop_103(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_103(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_103;

      /* MEL_Model Laptop_102 rcpt_ckt-L3_1B */
        Modelica.Blocks.Math.Gain Gain_Laptop_102(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_102(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_102;

      /* MEL_Model  cable_rcpt_ckt-L3_1B */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_1B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=146.55);

      equation
        connect(cable_mels_L3_B.pin_n, pin_p)
          annotation (Line(points={{-62,-30},{-110,-30}}, color={117,80,123}));
        connect(cable_mels_L3_B.pin_p, other_general_plug.hPin_L)
          annotation (Line(points={{-42,-30},{-4,-30},{-4,4}}, color={92,53,102}));
        connect(GndAC.pin, other_general_plug.hPin_N) annotation (Line(points={{-10,
                44},{-8,44},{-8,38},{-4,38},{-4,20}}, color={92,53,102}));
        connect(realToComplex.y, other_general_plug.S_input) annotation (Line(points={{-23.5,
                23},{-8,23},{-8,12.16}},        color={85,170,255}));
        connect(combiTimeTable_L3_All_Plugs_General.y[1], gain_gen_plugs_L3_A.u)
          annotation (Line(points={{-73,50},{-67.2,50}}, color={0,0,127}));
        connect(gain_gen_plugs_L3_A.y, realToComplex.re) annotation (Line(points={{-53.4,
                50},{-48,50},{-48,40},{-35,40},{-35,26}}, color={0,0,127}));
        connect(gain1.y, realToComplex.im)
          annotation (Line(points={{-43.4,20},{-35,20}}, color={0,0,127}));
        connect(gain1.u, realToComplex.re) annotation (Line(points={{-57.2,20},{-62,20},
                {-62,36},{-35,36},{-35,26}}, color={0,0,127}));

      /* Insert equation here */

      /* MEL_Connect Printer_24 rcpt_ckt-L3_10B */
        connect(Printer_24.n, GndDC.p);
        connect(MEL_Conv_Printer_24.pin_p, Printer_24.p);
        connect(MEL_Conv_Printer_24.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_24.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_24.hPin_L, cable_rcpt_cktL3_10B.pin_p);
        connect(combiTimeTable_L3_Printer.y[1], Gain_Printer_24.u);
        connect(Printer_24.u, Gain_Printer_24.y);

      /* MEL_Connect Display_14 rcpt_ckt-L3_10B */
        connect(Display_14.n, GndDC.p);
        connect(MEL_Conv_Display_14.pin_p, Display_14.p);
        connect(MEL_Conv_Display_14.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_14.pin_n, GndDC.p);
        connect(MEL_Conv_Display_14.hPin_L, cable_rcpt_cktL3_10B.pin_p);
        connect(combiTimeTable_L3_Display.y[1], Gain_Display_14.u);
        connect(Display_14.u, Gain_Display_14.y);

      /* MEL_Connect IT_Equipment_148 rcpt_ckt-L3_10B */
        connect(IT_Equipment_148.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_148.pin_p, IT_Equipment_148.p);
        connect(MEL_Conv_IT_Equipment_148.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_148.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_148.hPin_L, cable_rcpt_cktL3_10B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_148.u);
        connect(IT_Equipment_148.u, Gain_IT_Equipment_148.y);

      /* MEL_Connect IT_Equipment_147 rcpt_ckt-L3_10B */
        connect(IT_Equipment_147.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_147.pin_p, IT_Equipment_147.p);
        connect(MEL_Conv_IT_Equipment_147.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_147.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_147.hPin_L, cable_rcpt_cktL3_10B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_147.u);
        connect(IT_Equipment_147.u, Gain_IT_Equipment_147.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_10B */
        connect(cable_rcpt_cktL3_10B.pin_n, cable_mels_L3_B.pin_p);

      /* MEL_Connect MFD_8 rcpt_ckt-L3_8B */
        connect(MFD_8.n, GndDC.p);
        connect(MEL_Conv_MFD_8.pin_p, MFD_8.p);
        connect(MEL_Conv_MFD_8.hPin_N, GndAC.pin);
        connect(MEL_Conv_MFD_8.pin_n, GndDC.p);
        connect(MEL_Conv_MFD_8.hPin_L, cable_rcpt_cktL3_8B.pin_p);
        connect(combiTimeTable_L3_MFD.y[1], Gain_MFD_8.u);
        connect(MFD_8.u, Gain_MFD_8.y);

      /* MEL_Connect Display_12 rcpt_ckt-L3_8B */
        connect(Display_12.n, GndDC.p);
        connect(MEL_Conv_Display_12.pin_p, Display_12.p);
        connect(MEL_Conv_Display_12.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_12.pin_n, GndDC.p);
        connect(MEL_Conv_Display_12.hPin_L, cable_rcpt_cktL3_8B.pin_p);
        connect(combiTimeTable_L3_Display.y[1], Gain_Display_12.u);
        connect(Display_12.u, Gain_Display_12.y);

      /* MEL_Connect IT_Equipment_137 rcpt_ckt-L3_8B */
        connect(IT_Equipment_137.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_137.pin_p, IT_Equipment_137.p);
        connect(MEL_Conv_IT_Equipment_137.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_137.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_137.hPin_L, cable_rcpt_cktL3_8B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_137.u);
        connect(IT_Equipment_137.u, Gain_IT_Equipment_137.y);

      /* MEL_Connect IT_Equipment_136 rcpt_ckt-L3_8B */
        connect(IT_Equipment_136.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_136.pin_p, IT_Equipment_136.p);
        connect(MEL_Conv_IT_Equipment_136.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_136.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_136.hPin_L, cable_rcpt_cktL3_8B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_136.u);
        connect(IT_Equipment_136.u, Gain_IT_Equipment_136.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_8B */
        connect(cable_rcpt_cktL3_8B.pin_n, cable_mels_L3_B.pin_p);

      /* MEL_Connect IT_Equipment_165 rcpt_ckt-L3_14B */
        connect(IT_Equipment_165.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_165.pin_p, IT_Equipment_165.p);
        connect(MEL_Conv_IT_Equipment_165.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_165.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_165.hPin_L, cable_rcpt_cktL3_14B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_165.u);
        connect(IT_Equipment_165.u, Gain_IT_Equipment_165.y);

      /* MEL_Connect IT_Equipment_164 rcpt_ckt-L3_14B */
        connect(IT_Equipment_164.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_164.pin_p, IT_Equipment_164.p);
        connect(MEL_Conv_IT_Equipment_164.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_164.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_164.hPin_L, cable_rcpt_cktL3_14B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_164.u);
        connect(IT_Equipment_164.u, Gain_IT_Equipment_164.y);

      /* MEL_Connect Laptop_149 rcpt_ckt-L3_14B */
        connect(Laptop_149.n, GndDC.p);
        connect(MEL_Conv_Laptop_149.pin_p, Laptop_149.p);
        connect(MEL_Conv_Laptop_149.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_149.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_149.hPin_L, cable_rcpt_cktL3_14B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_149.u);
        connect(Laptop_149.u, Gain_Laptop_149.y);

      /* MEL_Connect Laptop_148 rcpt_ckt-L3_14B */
        connect(Laptop_148.n, GndDC.p);
        connect(MEL_Conv_Laptop_148.pin_p, Laptop_148.p);
        connect(MEL_Conv_Laptop_148.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_148.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_148.hPin_L, cable_rcpt_cktL3_14B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_148.u);
        connect(Laptop_148.u, Gain_Laptop_148.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_14B */
        connect(cable_rcpt_cktL3_14B.pin_n, cable_mels_L3_B.pin_p);

      /* MEL_Connect Printer_25 rcpt_ckt-L3_13B */
        connect(Printer_25.n, GndDC.p);
        connect(MEL_Conv_Printer_25.pin_p, Printer_25.p);
        connect(MEL_Conv_Printer_25.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_25.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_25.hPin_L, cable_rcpt_cktL3_13B.pin_p);
        connect(combiTimeTable_L3_Printer.y[1], Gain_Printer_25.u);
        connect(Printer_25.u, Gain_Printer_25.y);

      /* MEL_Connect Monitor_99 rcpt_ckt-L3_13B */
        connect(Monitor_99.n, GndDC.p);
        connect(MEL_Conv_Monitor_99.pin_p, Monitor_99.p);
        connect(MEL_Conv_Monitor_99.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_99.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_99.hPin_L, cable_rcpt_cktL3_13B.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_99.u);
        connect(Monitor_99.u, Gain_Monitor_99.y);

      /* MEL_Connect Monitor_98 rcpt_ckt-L3_13B */
        connect(Monitor_98.n, GndDC.p);
        connect(MEL_Conv_Monitor_98.pin_p, Monitor_98.p);
        connect(MEL_Conv_Monitor_98.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_98.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_98.hPin_L, cable_rcpt_cktL3_13B.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_98.u);
        connect(Monitor_98.u, Gain_Monitor_98.y);

      /* MEL_Connect Laptop_146 rcpt_ckt-L3_13B */
        connect(Laptop_146.n, GndDC.p);
        connect(MEL_Conv_Laptop_146.pin_p, Laptop_146.p);
        connect(MEL_Conv_Laptop_146.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_146.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_146.hPin_L, cable_rcpt_cktL3_13B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_146.u);
        connect(Laptop_146.u, Gain_Laptop_146.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_13B */
        connect(cable_rcpt_cktL3_13B.pin_n, cable_mels_L3_B.pin_p);

      /* MEL_Connect IT_Equipment_156 rcpt_ckt-L3_12B */
        connect(IT_Equipment_156.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_156.pin_p, IT_Equipment_156.p);
        connect(MEL_Conv_IT_Equipment_156.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_156.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_156.hPin_L, cable_rcpt_cktL3_12B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_156.u);
        connect(IT_Equipment_156.u, Gain_IT_Equipment_156.y);

      /* MEL_Connect Laptop_143 rcpt_ckt-L3_12B */
        connect(Laptop_143.n, GndDC.p);
        connect(MEL_Conv_Laptop_143.pin_p, Laptop_143.p);
        connect(MEL_Conv_Laptop_143.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_143.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_143.hPin_L, cable_rcpt_cktL3_12B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_143.u);
        connect(Laptop_143.u, Gain_Laptop_143.y);

      /* MEL_Connect Laptop_142 rcpt_ckt-L3_12B */
        connect(Laptop_142.n, GndDC.p);
        connect(MEL_Conv_Laptop_142.pin_p, Laptop_142.p);
        connect(MEL_Conv_Laptop_142.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_142.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_142.hPin_L, cable_rcpt_cktL3_12B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_142.u);
        connect(Laptop_142.u, Gain_Laptop_142.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_12B */
        connect(cable_rcpt_cktL3_12B.pin_n, cable_mels_L3_B.pin_p);

      /* MEL_Connect IT_Equipment_153 rcpt_ckt-L3_11B */
        connect(IT_Equipment_153.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_153.pin_p, IT_Equipment_153.p);
        connect(MEL_Conv_IT_Equipment_153.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_153.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_153.hPin_L, cable_rcpt_cktL3_11B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_153.u);
        connect(IT_Equipment_153.u, Gain_IT_Equipment_153.y);

      /* MEL_Connect IT_Equipment_152 rcpt_ckt-L3_11B */
        connect(IT_Equipment_152.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_152.pin_p, IT_Equipment_152.p);
        connect(MEL_Conv_IT_Equipment_152.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_152.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_152.hPin_L, cable_rcpt_cktL3_11B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_152.u);
        connect(IT_Equipment_152.u, Gain_IT_Equipment_152.y);

      /* MEL_Connect Laptop_138 rcpt_ckt-L3_11B */
        connect(Laptop_138.n, GndDC.p);
        connect(MEL_Conv_Laptop_138.pin_p, Laptop_138.p);
        connect(MEL_Conv_Laptop_138.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_138.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_138.hPin_L, cable_rcpt_cktL3_11B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_138.u);
        connect(Laptop_138.u, Gain_Laptop_138.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_11B */
        connect(cable_rcpt_cktL3_11B.pin_n, cable_mels_L3_B.pin_p);

      /* MEL_Connect Display_13 rcpt_ckt-L3_9B */
        connect(Display_13.n, GndDC.p);
        connect(MEL_Conv_Display_13.pin_p, Display_13.p);
        connect(MEL_Conv_Display_13.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_13.pin_n, GndDC.p);
        connect(MEL_Conv_Display_13.hPin_L, cable_rcpt_cktL3_9B.pin_p);
        connect(combiTimeTable_L3_Display.y[1], Gain_Display_13.u);
        connect(Display_13.u, Gain_Display_13.y);

      /* MEL_Connect IT_Equipment_142 rcpt_ckt-L3_9B */
        connect(IT_Equipment_142.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_142.pin_p, IT_Equipment_142.p);
        connect(MEL_Conv_IT_Equipment_142.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_142.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_142.hPin_L, cable_rcpt_cktL3_9B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_142.u);
        connect(IT_Equipment_142.u, Gain_IT_Equipment_142.y);

      /* MEL_Connect IT_Equipment_141 rcpt_ckt-L3_9B */
        connect(IT_Equipment_141.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_141.pin_p, IT_Equipment_141.p);
        connect(MEL_Conv_IT_Equipment_141.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_141.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_141.hPin_L, cable_rcpt_cktL3_9B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_141.u);
        connect(IT_Equipment_141.u, Gain_IT_Equipment_141.y);

      /* MEL_Connect Laptop_134 rcpt_ckt-L3_9B */
        connect(Laptop_134.n, GndDC.p);
        connect(MEL_Conv_Laptop_134.pin_p, Laptop_134.p);
        connect(MEL_Conv_Laptop_134.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_134.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_134.hPin_L, cable_rcpt_cktL3_9B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_134.u);
        connect(Laptop_134.u, Gain_Laptop_134.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_9B */
        connect(cable_rcpt_cktL3_9B.pin_n, cable_mels_L3_B.pin_p);

      /* MEL_Connect Printer_20 rcpt_ckt-L3_7B */
        connect(Printer_20.n, GndDC.p);
        connect(MEL_Conv_Printer_20.pin_p, Printer_20.p);
        connect(MEL_Conv_Printer_20.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_20.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_20.hPin_L, cable_rcpt_cktL3_7B.pin_p);
        connect(combiTimeTable_L3_Printer.y[1], Gain_Printer_20.u);
        connect(Printer_20.u, Gain_Printer_20.y);

      /* MEL_Connect Display_11 rcpt_ckt-L3_7B */
        connect(Display_11.n, GndDC.p);
        connect(MEL_Conv_Display_11.pin_p, Display_11.p);
        connect(MEL_Conv_Display_11.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_11.pin_n, GndDC.p);
        connect(MEL_Conv_Display_11.hPin_L, cable_rcpt_cktL3_7B.pin_p);
        connect(combiTimeTable_L3_Display.y[1], Gain_Display_11.u);
        connect(Display_11.u, Gain_Display_11.y);

      /* MEL_Connect IT_Equipment_132 rcpt_ckt-L3_7B */
        connect(IT_Equipment_132.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_132.pin_p, IT_Equipment_132.p);
        connect(MEL_Conv_IT_Equipment_132.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_132.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_132.hPin_L, cable_rcpt_cktL3_7B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_132.u);
        connect(IT_Equipment_132.u, Gain_IT_Equipment_132.y);

      /* MEL_Connect Laptop_129 rcpt_ckt-L3_7B */
        connect(Laptop_129.n, GndDC.p);
        connect(MEL_Conv_Laptop_129.pin_p, Laptop_129.p);
        connect(MEL_Conv_Laptop_129.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_129.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_129.hPin_L, cable_rcpt_cktL3_7B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_129.u);
        connect(Laptop_129.u, Gain_Laptop_129.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_7B */
        connect(cable_rcpt_cktL3_7B.pin_n, cable_mels_L3_B.pin_p);

      /* MEL_Connect Monitor_92 rcpt_ckt-L3_6B */
        connect(Monitor_92.n, GndDC.p);
        connect(MEL_Conv_Monitor_92.pin_p, Monitor_92.p);
        connect(MEL_Conv_Monitor_92.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_92.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_92.hPin_L, cable_rcpt_cktL3_6B.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_92.u);
        connect(Monitor_92.u, Gain_Monitor_92.y);

      /* MEL_Connect IT_Equipment_126 rcpt_ckt-L3_6B */
        connect(IT_Equipment_126.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_126.pin_p, IT_Equipment_126.p);
        connect(MEL_Conv_IT_Equipment_126.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_126.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_126.hPin_L, cable_rcpt_cktL3_6B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_126.u);
        connect(IT_Equipment_126.u, Gain_IT_Equipment_126.y);

      /* MEL_Connect Laptop_128 rcpt_ckt-L3_6B */
        connect(Laptop_128.n, GndDC.p);
        connect(MEL_Conv_Laptop_128.pin_p, Laptop_128.p);
        connect(MEL_Conv_Laptop_128.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_128.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_128.hPin_L, cable_rcpt_cktL3_6B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_128.u);
        connect(Laptop_128.u, Gain_Laptop_128.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_6B */
        connect(cable_rcpt_cktL3_6B.pin_n, cable_mels_L3_B.pin_p);

      /* MEL_Connect Monitor_88 rcpt_ckt-L3_5B */
        connect(Monitor_88.n, GndDC.p);
        connect(MEL_Conv_Monitor_88.pin_p, Monitor_88.p);
        connect(MEL_Conv_Monitor_88.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_88.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_88.hPin_L, cable_rcpt_cktL3_5B.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_88.u);
        connect(Monitor_88.u, Gain_Monitor_88.y);

      /* MEL_Connect IT_Equipment_123 rcpt_ckt-L3_5B */
        connect(IT_Equipment_123.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_123.pin_p, IT_Equipment_123.p);
        connect(MEL_Conv_IT_Equipment_123.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_123.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_123.hPin_L, cable_rcpt_cktL3_5B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_123.u);
        connect(IT_Equipment_123.u, Gain_IT_Equipment_123.y);

      /* MEL_Connect Laptop_123 rcpt_ckt-L3_5B */
        connect(Laptop_123.n, GndDC.p);
        connect(MEL_Conv_Laptop_123.pin_p, Laptop_123.p);
        connect(MEL_Conv_Laptop_123.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_123.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_123.hPin_L, cable_rcpt_cktL3_5B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_123.u);
        connect(Laptop_123.u, Gain_Laptop_123.y);

      /* MEL_Connect Laptop_122 rcpt_ckt-L3_5B */
        connect(Laptop_122.n, GndDC.p);
        connect(MEL_Conv_Laptop_122.pin_p, Laptop_122.p);
        connect(MEL_Conv_Laptop_122.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_122.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_122.hPin_L, cable_rcpt_cktL3_5B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_122.u);
        connect(Laptop_122.u, Gain_Laptop_122.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_5B */
        connect(cable_rcpt_cktL3_5B.pin_n, cable_mels_L3_B.pin_p);

      /* MEL_Connect IT_Equipment_121 rcpt_ckt-L3_4B */
        connect(IT_Equipment_121.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_121.pin_p, IT_Equipment_121.p);
        connect(MEL_Conv_IT_Equipment_121.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_121.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_121.hPin_L, cable_rcpt_cktL3_4B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_121.u);
        connect(IT_Equipment_121.u, Gain_IT_Equipment_121.y);

      /* MEL_Connect IT_Equipment_120 rcpt_ckt-L3_4B */
        connect(IT_Equipment_120.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_120.pin_p, IT_Equipment_120.p);
        connect(MEL_Conv_IT_Equipment_120.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_120.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_120.hPin_L, cable_rcpt_cktL3_4B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_120.u);
        connect(IT_Equipment_120.u, Gain_IT_Equipment_120.y);

      /* MEL_Connect Laptop_118 rcpt_ckt-L3_4B */
        connect(Laptop_118.n, GndDC.p);
        connect(MEL_Conv_Laptop_118.pin_p, Laptop_118.p);
        connect(MEL_Conv_Laptop_118.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_118.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_118.hPin_L, cable_rcpt_cktL3_4B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_118.u);
        connect(Laptop_118.u, Gain_Laptop_118.y);

      /* MEL_Connect Laptop_117 rcpt_ckt-L3_4B */
        connect(Laptop_117.n, GndDC.p);
        connect(MEL_Conv_Laptop_117.pin_p, Laptop_117.p);
        connect(MEL_Conv_Laptop_117.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_117.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_117.hPin_L, cable_rcpt_cktL3_4B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_117.u);
        connect(Laptop_117.u, Gain_Laptop_117.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_4B */
        connect(cable_rcpt_cktL3_4B.pin_n, cable_mels_L3_B.pin_p);

      /* MEL_Connect Monitor_81 rcpt_ckt-L3_3B */
        connect(Monitor_81.n, GndDC.p);
        connect(MEL_Conv_Monitor_81.pin_p, Monitor_81.p);
        connect(MEL_Conv_Monitor_81.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_81.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_81.hPin_L, cable_rcpt_cktL3_3B.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_81.u);
        connect(Monitor_81.u, Gain_Monitor_81.y);

      /* MEL_Connect Monitor_80 rcpt_ckt-L3_3B */
        connect(Monitor_80.n, GndDC.p);
        connect(MEL_Conv_Monitor_80.pin_p, Monitor_80.p);
        connect(MEL_Conv_Monitor_80.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_80.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_80.hPin_L, cable_rcpt_cktL3_3B.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_80.u);
        connect(Monitor_80.u, Gain_Monitor_80.y);

      /* MEL_Connect Laptop_113 rcpt_ckt-L3_3B */
        connect(Laptop_113.n, GndDC.p);
        connect(MEL_Conv_Laptop_113.pin_p, Laptop_113.p);
        connect(MEL_Conv_Laptop_113.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_113.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_113.hPin_L, cable_rcpt_cktL3_3B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_113.u);
        connect(Laptop_113.u, Gain_Laptop_113.y);

      /* MEL_Connect Laptop_112 rcpt_ckt-L3_3B */
        connect(Laptop_112.n, GndDC.p);
        connect(MEL_Conv_Laptop_112.pin_p, Laptop_112.p);
        connect(MEL_Conv_Laptop_112.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_112.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_112.hPin_L, cable_rcpt_cktL3_3B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_112.u);
        connect(Laptop_112.u, Gain_Laptop_112.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_3B */
        connect(cable_rcpt_cktL3_3B.pin_n, cable_mels_L3_B.pin_p);

      /* MEL_Connect Monitor_75 rcpt_ckt-L3_2B */
        connect(Monitor_75.n, GndDC.p);
        connect(MEL_Conv_Monitor_75.pin_p, Monitor_75.p);
        connect(MEL_Conv_Monitor_75.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_75.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_75.hPin_L, cable_rcpt_cktL3_2B.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_75.u);
        connect(Monitor_75.u, Gain_Monitor_75.y);

      /* MEL_Connect IT_Equipment_115 rcpt_ckt-L3_2B */
        connect(IT_Equipment_115.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_115.pin_p, IT_Equipment_115.p);
        connect(MEL_Conv_IT_Equipment_115.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_115.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_115.hPin_L, cable_rcpt_cktL3_2B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_115.u);
        connect(IT_Equipment_115.u, Gain_IT_Equipment_115.y);

      /* MEL_Connect IT_Equipment_114 rcpt_ckt-L3_2B */
        connect(IT_Equipment_114.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_114.pin_p, IT_Equipment_114.p);
        connect(MEL_Conv_IT_Equipment_114.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_114.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_114.hPin_L, cable_rcpt_cktL3_2B.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_114.u);
        connect(IT_Equipment_114.u, Gain_IT_Equipment_114.y);

      /* MEL_Connect Laptop_108 rcpt_ckt-L3_2B */
        connect(Laptop_108.n, GndDC.p);
        connect(MEL_Conv_Laptop_108.pin_p, Laptop_108.p);
        connect(MEL_Conv_Laptop_108.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_108.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_108.hPin_L, cable_rcpt_cktL3_2B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_108.u);
        connect(Laptop_108.u, Gain_Laptop_108.y);

      /* MEL_Connect Laptop_107 rcpt_ckt-L3_2B */
        connect(Laptop_107.n, GndDC.p);
        connect(MEL_Conv_Laptop_107.pin_p, Laptop_107.p);
        connect(MEL_Conv_Laptop_107.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_107.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_107.hPin_L, cable_rcpt_cktL3_2B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_107.u);
        connect(Laptop_107.u, Gain_Laptop_107.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_2B */
        connect(cable_rcpt_cktL3_2B.pin_n, cable_mels_L3_B.pin_p);

      /* MEL_Connect Monitor_70 rcpt_ckt-L3_1B */
        connect(Monitor_70.n, GndDC.p);
        connect(MEL_Conv_Monitor_70.pin_p, Monitor_70.p);
        connect(MEL_Conv_Monitor_70.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_70.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_70.hPin_L, cable_rcpt_cktL3_1B.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_70.u);
        connect(Monitor_70.u, Gain_Monitor_70.y);

      /* MEL_Connect Monitor_69 rcpt_ckt-L3_1B */
        connect(Monitor_69.n, GndDC.p);
        connect(MEL_Conv_Monitor_69.pin_p, Monitor_69.p);
        connect(MEL_Conv_Monitor_69.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_69.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_69.hPin_L, cable_rcpt_cktL3_1B.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_69.u);
        connect(Monitor_69.u, Gain_Monitor_69.y);

      /* MEL_Connect Laptop_103 rcpt_ckt-L3_1B */
        connect(Laptop_103.n, GndDC.p);
        connect(MEL_Conv_Laptop_103.pin_p, Laptop_103.p);
        connect(MEL_Conv_Laptop_103.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_103.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_103.hPin_L, cable_rcpt_cktL3_1B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_103.u);
        connect(Laptop_103.u, Gain_Laptop_103.y);

      /* MEL_Connect Laptop_102 rcpt_ckt-L3_1B */
        connect(Laptop_102.n, GndDC.p);
        connect(MEL_Conv_Laptop_102.pin_p, Laptop_102.p);
        connect(MEL_Conv_Laptop_102.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_102.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_102.hPin_L, cable_rcpt_cktL3_1B.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_102.u);
        connect(Laptop_102.u, Gain_Laptop_102.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_1B */
        connect(cable_rcpt_cktL3_1B.pin_n, cable_mels_L3_B.pin_p);

        annotation ();
      end MEL_Panel_L3B;

      model MEL_Panel_L3C
        outer parameter Real PF;
        outer parameter Real PF1;
        /* parameter Real PF = 0.9; */

        outer HPF.SystemDef systemDef;
          Modelica.Electrical.Analog.Basic.Ground GndDC annotation (
          Placement(visible = true, transformation(origin={86,-10},     extent = {{-10, -10}, {10, 10}}, rotation = 90)));
        HPF.SinglePhase.Components.Ground GndAC annotation (
          Placement(visible = true, transformation(origin={-18,44},    extent = {{-8, -8}, {8, 8}}, rotation = -90)));
        HPF.SinglePhase.Interface.HPin_P pin_p(h = systemDef.numHrm)   "Positive pin" annotation (
          Placement(visible = true, transformation(extent={{-120,-40},{-100,-20}},    rotation = 0), iconTransformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
        HPF.Cables.NEC_CableModel cable_mels_L3_C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_3,
            length=15)
          annotation (Placement(transformation(extent={{-42,-40},{-62,-20}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_IT_Equipment(
          tableOnFile=true,
          tableName="L3-All-ITEquipment",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-92,72},{-72,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Laptop(
          tableOnFile=true,
          tableName="L3-All-Laptops",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-60,72},{-40,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_MFD(
          tableOnFile=true,
          tableName="L3-All-MFDs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-28,72},{-8,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Monitor(
          tableOnFile=true,
          tableName="L3-All-Monitors",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{10,72},{30,92}})));

        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Printer(
          tableOnFile=true,
          tableName="L3-All-Printers",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{40,72},{60,92}})));
        HPF.Loads.SinglePhase.AC_LoadIdeal1P other_general_plug(
          P_nom=2205,
          Q_nom=1068,
          V_nom=120) annotation (Placement(visible=true, transformation(
              origin={-4,12},
              extent={{-8,-8},{8,8}},
              rotation=90)));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_Display(
          tableOnFile=true,
          tableName="L3-All-TVs",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{72,72},{92,92}})));
        Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex
          annotation (Placement(transformation(extent={{-34,18},{-24,28}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_All_Plugs_General(
          tableOnFile=true,
          tableName="L3-All-Plugs-General",
          fileName=ModelicaServices.ExternalReferences.loadResource(
              "modelica://PrototypeBuildingElectricalModels/Data//load_profiles/San-Diego-L3_MELs_LP.txt"),
          smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
          extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
          timeScale(displayUnit="h") = 3600)
          annotation (HideResult=true, Placement(transformation(extent={{-94,40},{-74,60}})));

        Modelica.Blocks.Math.Gain gain_gen_plugs_L3_A(k=2204.25)
          annotation (Placement(transformation(extent={{-66,44},{-54,56}})));
        Modelica.Blocks.Math.Gain gain1(k=PF1)
          annotation (Placement(transformation(extent={{-56,14},{-44,26}})));

      /* Insert models here */

      /* MEL_Model IT_Equipment_145 rcpt_ckt-L3_9C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_145(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_145(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_145;

      /* MEL_Model IT_Equipment_144 rcpt_ckt-L3_9C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_144(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_144(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_144;

      /* MEL_Model IT_Equipment_143 rcpt_ckt-L3_9C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_143(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_143(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_143;

      /* MEL_Model  cable_rcpt_ckt-L3_9C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_9C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=128.58);

      /* MEL_Model Printer_19 rcpt_ckt-L3_6C */
        Modelica.Blocks.Math.Gain Gain_Printer_19(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_19(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_19;

      /* MEL_Model IT_Equipment_128 rcpt_ckt-L3_6C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_128(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_128(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_128;

      /* MEL_Model IT_Equipment_127 rcpt_ckt-L3_6C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_127(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_127(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_127;

      /* MEL_Model  cable_rcpt_ckt-L3_6C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_6C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=78.63);

      /* MEL_Model Printer_27 rcpt_ckt-L3_14C */
        Modelica.Blocks.Math.Gain Gain_Printer_27(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_27(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_27;

      /* MEL_Model Laptop_150 rcpt_ckt-L3_14C */
        Modelica.Blocks.Math.Gain Gain_Laptop_150(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_150(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_150;

      /* MEL_Model  cable_rcpt_ckt-L3_14C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_14C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=173.93);

      /* MEL_Model Display_15 rcpt_ckt-L3_13C */
        Modelica.Blocks.Math.Gain Gain_Display_15(k=127) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Display_15(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=127,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Display_15;

      /* MEL_Model IT_Equipment_160 rcpt_ckt-L3_13C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_160(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_160(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_160;

      /* MEL_Model Laptop_147 rcpt_ckt-L3_13C */
        Modelica.Blocks.Math.Gain Gain_Laptop_147(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_147(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_147;

      /* MEL_Model  cable_rcpt_ckt-L3_13C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_13C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=179.55);

      /* MEL_Model Monitor_97 rcpt_ckt-L3_12C */
        Modelica.Blocks.Math.Gain Gain_Monitor_97(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_97(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_97;

      /* MEL_Model IT_Equipment_157 rcpt_ckt-L3_12C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_157(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_157(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_157;

      /* MEL_Model Laptop_144 rcpt_ckt-L3_12C */
        Modelica.Blocks.Math.Gain Gain_Laptop_144(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_144(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_144;

      /* MEL_Model  cable_rcpt_ckt-L3_12C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_12C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=85.97);

      /* MEL_Model Monitor_94 rcpt_ckt-L3_11C */
        Modelica.Blocks.Math.Gain Gain_Monitor_94(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_94(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_94;

      /* MEL_Model IT_Equipment_155 rcpt_ckt-L3_11C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_155(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_155(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_155;

      /* MEL_Model IT_Equipment_154 rcpt_ckt-L3_11C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_154(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_154(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_154;

      /* MEL_Model Laptop_139 rcpt_ckt-L3_11C */
        Modelica.Blocks.Math.Gain Gain_Laptop_139(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_139(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_139;

      /* MEL_Model  cable_rcpt_ckt-L3_11C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_11C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=187.13);

      /* MEL_Model IT_Equipment_149 rcpt_ckt-L3_10C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_149(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_149(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_149;

      /* MEL_Model Laptop_136 rcpt_ckt-L3_10C */
        Modelica.Blocks.Math.Gain Gain_Laptop_136(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_136(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_136;

      /* MEL_Model  cable_rcpt_ckt-L3_10C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_10C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=178.44);

      /* MEL_Model Printer_22 rcpt_ckt-L3_8C */
        Modelica.Blocks.Math.Gain Gain_Printer_22(k=875) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Printer_22(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=875,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load Printer_22;

      /* MEL_Model IT_Equipment_139 rcpt_ckt-L3_8C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_139(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_139(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_139;

      /* MEL_Model IT_Equipment_138 rcpt_ckt-L3_8C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_138(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_138(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_138;

      /* MEL_Model Laptop_132 rcpt_ckt-L3_8C */
        Modelica.Blocks.Math.Gain Gain_Laptop_132(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_132(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_132;

      /* MEL_Model  cable_rcpt_ckt-L3_8C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_8C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=109.43);

      /* MEL_Model MFD_7 rcpt_ckt-L3_7C */
        Modelica.Blocks.Math.Gain Gain_MFD_7(k=621) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_MFD_7(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=621,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load MFD_7;

      /* MEL_Model IT_Equipment_134 rcpt_ckt-L3_7C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_134(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_134(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_134;

      /* MEL_Model IT_Equipment_133 rcpt_ckt-L3_7C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_133(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_133(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_133;

      /* MEL_Model Laptop_130 rcpt_ckt-L3_7C */
        Modelica.Blocks.Math.Gain Gain_Laptop_130(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_130(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_130;

      /* MEL_Model  cable_rcpt_ckt-L3_7C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_7C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=45.47);

      /* MEL_Model Monitor_90 rcpt_ckt-L3_5C */
        Modelica.Blocks.Math.Gain Gain_Monitor_90(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_90(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_90;

      /* MEL_Model Monitor_89 rcpt_ckt-L3_5C */
        Modelica.Blocks.Math.Gain Gain_Monitor_89(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_89(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_89;

      /* MEL_Model IT_Equipment_124 rcpt_ckt-L3_5C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_124(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_124(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_124;

      /* MEL_Model Laptop_125 rcpt_ckt-L3_5C */
        Modelica.Blocks.Math.Gain Gain_Laptop_125(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_125(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_125;

      /* MEL_Model Laptop_124 rcpt_ckt-L3_5C */
        Modelica.Blocks.Math.Gain Gain_Laptop_124(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_124(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_124;

      /* MEL_Model  cable_rcpt_ckt-L3_5C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_5C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=42.36);

      /* MEL_Model Monitor_85 rcpt_ckt-L3_4C */
        Modelica.Blocks.Math.Gain Gain_Monitor_85(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_85(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_85;

      /* MEL_Model IT_Equipment_122 rcpt_ckt-L3_4C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_122(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_122(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_122;

      /* MEL_Model Laptop_119 rcpt_ckt-L3_4C */
        Modelica.Blocks.Math.Gain Gain_Laptop_119(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_119(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_119;

      /* MEL_Model  cable_rcpt_ckt-L3_4C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_4C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=42.65);

      /* MEL_Model Monitor_82 rcpt_ckt-L3_3C */
        Modelica.Blocks.Math.Gain Gain_Monitor_82(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_82(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_82;

      /* MEL_Model IT_Equipment_118 rcpt_ckt-L3_3C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_118(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_118(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_118;

      /* MEL_Model IT_Equipment_117 rcpt_ckt-L3_3C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_117(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_117(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_117;

      /* MEL_Model Laptop_114 rcpt_ckt-L3_3C */
        Modelica.Blocks.Math.Gain Gain_Laptop_114(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_114(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_114;

      /* MEL_Model  cable_rcpt_ckt-L3_3C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_3C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=79.25);

      /* MEL_Model Monitor_77 rcpt_ckt-L3_2C */
        Modelica.Blocks.Math.Gain Gain_Monitor_77(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_77(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_77;

      /* MEL_Model Monitor_76 rcpt_ckt-L3_2C */
        Modelica.Blocks.Math.Gain Gain_Monitor_76(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_76(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_76;

      /* MEL_Model Laptop_110 rcpt_ckt-L3_2C */
        Modelica.Blocks.Math.Gain Gain_Laptop_110(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_110(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_110;

      /* MEL_Model Laptop_109 rcpt_ckt-L3_2C */
        Modelica.Blocks.Math.Gain Gain_Laptop_109(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_109(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_109;

      /* MEL_Model  cable_rcpt_ckt-L3_2C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_2C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=96.67);

      /* MEL_Model Monitor_72 rcpt_ckt-L3_1C */
        Modelica.Blocks.Math.Gain Gain_Monitor_72(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_72(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_72;

      /* MEL_Model Monitor_71 rcpt_ckt-L3_1C */
        Modelica.Blocks.Math.Gain Gain_Monitor_71(k=46) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Monitor_71(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=46,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Monitor_71;

      /* MEL_Model IT_Equipment_112 rcpt_ckt-L3_1C */
        Modelica.Blocks.Math.Gain Gain_IT_Equipment_112(k=160) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_IT_Equipment_112(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=160,P_stby=0,alpha=0.029810076,beta=0.01181738,gamma=0.060621441);
        HPF.DC.Variable_DC_Load IT_Equipment_112;

      /* MEL_Model Laptop_104 rcpt_ckt-L3_1C */
        Modelica.Blocks.Math.Gain Gain_Laptop_104(k=57) annotation (HideResult=true);
        HPF.PowerConverters.SinglePhase.ACDC_1pRectifierSimple MEL_Conv_Laptop_104(P_DCmin=2.25, VAC_nom=120,VDC_nom=19.5,P_nom=57,P_stby=1.061566026,alpha=0.030757367,beta=0.04979369,gamma=0.083605046);
        HPF.DC.Variable_DC_Load Laptop_104;

      /* MEL_Model  cable_rcpt_ckt-L3_1C */
        HPF.Cables.NEC_CableModel cable_rcpt_cktL3_1C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_12, length=132.16);

      equation
        connect(cable_mels_L3_C.pin_n, pin_p)
          annotation (Line(points={{-62,-30},{-110,-30}}, color={117,80,123}));
        connect(cable_mels_L3_C.pin_p, other_general_plug.hPin_L)
          annotation (Line(points={{-42,-30},{-4,-30},{-4,4}}, color={92,53,102}));
        connect(GndAC.pin, other_general_plug.hPin_N) annotation (Line(points={{-10,
                44},{-8,44},{-8,38},{-4,38},{-4,20}}, color={92,53,102}));
        connect(realToComplex.y, other_general_plug.S_input) annotation (Line(points={{-23.5,
                23},{-8,23},{-8,12.16}},        color={85,170,255}));
        connect(combiTimeTable_L3_All_Plugs_General.y[1], gain_gen_plugs_L3_A.u)
          annotation (Line(points={{-73,50},{-67.2,50}}, color={0,0,127}));
        connect(gain_gen_plugs_L3_A.y, realToComplex.re) annotation (Line(points={{-53.4,
                50},{-48,50},{-48,40},{-35,40},{-35,26}}, color={0,0,127}));
        connect(gain1.y, realToComplex.im)
          annotation (Line(points={{-43.4,20},{-35,20}}, color={0,0,127}));
        connect(gain1.u, realToComplex.re) annotation (Line(points={{-57.2,20},{-62,20},
                {-62,36},{-35,36},{-35,26}}, color={0,0,127}));

      /* Insert equation here */

      /* MEL_Connect IT_Equipment_145 rcpt_ckt-L3_9C */
        connect(IT_Equipment_145.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_145.pin_p, IT_Equipment_145.p);
        connect(MEL_Conv_IT_Equipment_145.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_145.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_145.hPin_L, cable_rcpt_cktL3_9C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_145.u);
        connect(IT_Equipment_145.u, Gain_IT_Equipment_145.y);

      /* MEL_Connect IT_Equipment_144 rcpt_ckt-L3_9C */
        connect(IT_Equipment_144.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_144.pin_p, IT_Equipment_144.p);
        connect(MEL_Conv_IT_Equipment_144.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_144.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_144.hPin_L, cable_rcpt_cktL3_9C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_144.u);
        connect(IT_Equipment_144.u, Gain_IT_Equipment_144.y);

      /* MEL_Connect IT_Equipment_143 rcpt_ckt-L3_9C */
        connect(IT_Equipment_143.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_143.pin_p, IT_Equipment_143.p);
        connect(MEL_Conv_IT_Equipment_143.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_143.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_143.hPin_L, cable_rcpt_cktL3_9C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_143.u);
        connect(IT_Equipment_143.u, Gain_IT_Equipment_143.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_9C */
        connect(cable_rcpt_cktL3_9C.pin_n, cable_mels_L3_C.pin_p);

      /* MEL_Connect Printer_19 rcpt_ckt-L3_6C */
        connect(Printer_19.n, GndDC.p);
        connect(MEL_Conv_Printer_19.pin_p, Printer_19.p);
        connect(MEL_Conv_Printer_19.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_19.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_19.hPin_L, cable_rcpt_cktL3_6C.pin_p);
        connect(combiTimeTable_L3_Printer.y[1], Gain_Printer_19.u);
        connect(Printer_19.u, Gain_Printer_19.y);

      /* MEL_Connect IT_Equipment_128 rcpt_ckt-L3_6C */
        connect(IT_Equipment_128.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_128.pin_p, IT_Equipment_128.p);
        connect(MEL_Conv_IT_Equipment_128.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_128.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_128.hPin_L, cable_rcpt_cktL3_6C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_128.u);
        connect(IT_Equipment_128.u, Gain_IT_Equipment_128.y);

      /* MEL_Connect IT_Equipment_127 rcpt_ckt-L3_6C */
        connect(IT_Equipment_127.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_127.pin_p, IT_Equipment_127.p);
        connect(MEL_Conv_IT_Equipment_127.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_127.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_127.hPin_L, cable_rcpt_cktL3_6C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_127.u);
        connect(IT_Equipment_127.u, Gain_IT_Equipment_127.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_6C */
        connect(cable_rcpt_cktL3_6C.pin_n, cable_mels_L3_C.pin_p);

      /* MEL_Connect Printer_27 rcpt_ckt-L3_14C */
        connect(Printer_27.n, GndDC.p);
        connect(MEL_Conv_Printer_27.pin_p, Printer_27.p);
        connect(MEL_Conv_Printer_27.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_27.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_27.hPin_L, cable_rcpt_cktL3_14C.pin_p);
        connect(combiTimeTable_L3_Printer.y[1], Gain_Printer_27.u);
        connect(Printer_27.u, Gain_Printer_27.y);

      /* MEL_Connect Laptop_150 rcpt_ckt-L3_14C */
        connect(Laptop_150.n, GndDC.p);
        connect(MEL_Conv_Laptop_150.pin_p, Laptop_150.p);
        connect(MEL_Conv_Laptop_150.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_150.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_150.hPin_L, cable_rcpt_cktL3_14C.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_150.u);
        connect(Laptop_150.u, Gain_Laptop_150.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_14C */
        connect(cable_rcpt_cktL3_14C.pin_n, cable_mels_L3_C.pin_p);

      /* MEL_Connect Display_15 rcpt_ckt-L3_13C */
        connect(Display_15.n, GndDC.p);
        connect(MEL_Conv_Display_15.pin_p, Display_15.p);
        connect(MEL_Conv_Display_15.hPin_N, GndAC.pin);
        connect(MEL_Conv_Display_15.pin_n, GndDC.p);
        connect(MEL_Conv_Display_15.hPin_L, cable_rcpt_cktL3_13C.pin_p);
        connect(combiTimeTable_L3_Display.y[1], Gain_Display_15.u);
        connect(Display_15.u, Gain_Display_15.y);

      /* MEL_Connect IT_Equipment_160 rcpt_ckt-L3_13C */
        connect(IT_Equipment_160.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_160.pin_p, IT_Equipment_160.p);
        connect(MEL_Conv_IT_Equipment_160.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_160.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_160.hPin_L, cable_rcpt_cktL3_13C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_160.u);
        connect(IT_Equipment_160.u, Gain_IT_Equipment_160.y);

      /* MEL_Connect Laptop_147 rcpt_ckt-L3_13C */
        connect(Laptop_147.n, GndDC.p);
        connect(MEL_Conv_Laptop_147.pin_p, Laptop_147.p);
        connect(MEL_Conv_Laptop_147.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_147.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_147.hPin_L, cable_rcpt_cktL3_13C.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_147.u);
        connect(Laptop_147.u, Gain_Laptop_147.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_13C */
        connect(cable_rcpt_cktL3_13C.pin_n, cable_mels_L3_C.pin_p);

      /* MEL_Connect Monitor_97 rcpt_ckt-L3_12C */
        connect(Monitor_97.n, GndDC.p);
        connect(MEL_Conv_Monitor_97.pin_p, Monitor_97.p);
        connect(MEL_Conv_Monitor_97.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_97.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_97.hPin_L, cable_rcpt_cktL3_12C.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_97.u);
        connect(Monitor_97.u, Gain_Monitor_97.y);

      /* MEL_Connect IT_Equipment_157 rcpt_ckt-L3_12C */
        connect(IT_Equipment_157.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_157.pin_p, IT_Equipment_157.p);
        connect(MEL_Conv_IT_Equipment_157.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_157.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_157.hPin_L, cable_rcpt_cktL3_12C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_157.u);
        connect(IT_Equipment_157.u, Gain_IT_Equipment_157.y);

      /* MEL_Connect Laptop_144 rcpt_ckt-L3_12C */
        connect(Laptop_144.n, GndDC.p);
        connect(MEL_Conv_Laptop_144.pin_p, Laptop_144.p);
        connect(MEL_Conv_Laptop_144.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_144.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_144.hPin_L, cable_rcpt_cktL3_12C.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_144.u);
        connect(Laptop_144.u, Gain_Laptop_144.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_12C */
        connect(cable_rcpt_cktL3_12C.pin_n, cable_mels_L3_C.pin_p);

      /* MEL_Connect Monitor_94 rcpt_ckt-L3_11C */
        connect(Monitor_94.n, GndDC.p);
        connect(MEL_Conv_Monitor_94.pin_p, Monitor_94.p);
        connect(MEL_Conv_Monitor_94.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_94.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_94.hPin_L, cable_rcpt_cktL3_11C.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_94.u);
        connect(Monitor_94.u, Gain_Monitor_94.y);

      /* MEL_Connect IT_Equipment_155 rcpt_ckt-L3_11C */
        connect(IT_Equipment_155.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_155.pin_p, IT_Equipment_155.p);
        connect(MEL_Conv_IT_Equipment_155.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_155.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_155.hPin_L, cable_rcpt_cktL3_11C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_155.u);
        connect(IT_Equipment_155.u, Gain_IT_Equipment_155.y);

      /* MEL_Connect IT_Equipment_154 rcpt_ckt-L3_11C */
        connect(IT_Equipment_154.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_154.pin_p, IT_Equipment_154.p);
        connect(MEL_Conv_IT_Equipment_154.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_154.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_154.hPin_L, cable_rcpt_cktL3_11C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_154.u);
        connect(IT_Equipment_154.u, Gain_IT_Equipment_154.y);

      /* MEL_Connect Laptop_139 rcpt_ckt-L3_11C */
        connect(Laptop_139.n, GndDC.p);
        connect(MEL_Conv_Laptop_139.pin_p, Laptop_139.p);
        connect(MEL_Conv_Laptop_139.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_139.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_139.hPin_L, cable_rcpt_cktL3_11C.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_139.u);
        connect(Laptop_139.u, Gain_Laptop_139.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_11C */
        connect(cable_rcpt_cktL3_11C.pin_n, cable_mels_L3_C.pin_p);

      /* MEL_Connect IT_Equipment_149 rcpt_ckt-L3_10C */
        connect(IT_Equipment_149.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_149.pin_p, IT_Equipment_149.p);
        connect(MEL_Conv_IT_Equipment_149.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_149.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_149.hPin_L, cable_rcpt_cktL3_10C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_149.u);
        connect(IT_Equipment_149.u, Gain_IT_Equipment_149.y);

      /* MEL_Connect Laptop_136 rcpt_ckt-L3_10C */
        connect(Laptop_136.n, GndDC.p);
        connect(MEL_Conv_Laptop_136.pin_p, Laptop_136.p);
        connect(MEL_Conv_Laptop_136.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_136.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_136.hPin_L, cable_rcpt_cktL3_10C.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_136.u);
        connect(Laptop_136.u, Gain_Laptop_136.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_10C */
        connect(cable_rcpt_cktL3_10C.pin_n, cable_mels_L3_C.pin_p);

      /* MEL_Connect Printer_22 rcpt_ckt-L3_8C */
        connect(Printer_22.n, GndDC.p);
        connect(MEL_Conv_Printer_22.pin_p, Printer_22.p);
        connect(MEL_Conv_Printer_22.hPin_N, GndAC.pin);
        connect(MEL_Conv_Printer_22.pin_n, GndDC.p);
        connect(MEL_Conv_Printer_22.hPin_L, cable_rcpt_cktL3_8C.pin_p);
        connect(combiTimeTable_L3_Printer.y[1], Gain_Printer_22.u);
        connect(Printer_22.u, Gain_Printer_22.y);

      /* MEL_Connect IT_Equipment_139 rcpt_ckt-L3_8C */
        connect(IT_Equipment_139.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_139.pin_p, IT_Equipment_139.p);
        connect(MEL_Conv_IT_Equipment_139.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_139.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_139.hPin_L, cable_rcpt_cktL3_8C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_139.u);
        connect(IT_Equipment_139.u, Gain_IT_Equipment_139.y);

      /* MEL_Connect IT_Equipment_138 rcpt_ckt-L3_8C */
        connect(IT_Equipment_138.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_138.pin_p, IT_Equipment_138.p);
        connect(MEL_Conv_IT_Equipment_138.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_138.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_138.hPin_L, cable_rcpt_cktL3_8C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_138.u);
        connect(IT_Equipment_138.u, Gain_IT_Equipment_138.y);

      /* MEL_Connect Laptop_132 rcpt_ckt-L3_8C */
        connect(Laptop_132.n, GndDC.p);
        connect(MEL_Conv_Laptop_132.pin_p, Laptop_132.p);
        connect(MEL_Conv_Laptop_132.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_132.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_132.hPin_L, cable_rcpt_cktL3_8C.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_132.u);
        connect(Laptop_132.u, Gain_Laptop_132.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_8C */
        connect(cable_rcpt_cktL3_8C.pin_n, cable_mels_L3_C.pin_p);

      /* MEL_Connect MFD_7 rcpt_ckt-L3_7C */
        connect(MFD_7.n, GndDC.p);
        connect(MEL_Conv_MFD_7.pin_p, MFD_7.p);
        connect(MEL_Conv_MFD_7.hPin_N, GndAC.pin);
        connect(MEL_Conv_MFD_7.pin_n, GndDC.p);
        connect(MEL_Conv_MFD_7.hPin_L, cable_rcpt_cktL3_7C.pin_p);
        connect(combiTimeTable_L3_MFD.y[1], Gain_MFD_7.u);
        connect(MFD_7.u, Gain_MFD_7.y);

      /* MEL_Connect IT_Equipment_134 rcpt_ckt-L3_7C */
        connect(IT_Equipment_134.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_134.pin_p, IT_Equipment_134.p);
        connect(MEL_Conv_IT_Equipment_134.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_134.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_134.hPin_L, cable_rcpt_cktL3_7C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_134.u);
        connect(IT_Equipment_134.u, Gain_IT_Equipment_134.y);

      /* MEL_Connect IT_Equipment_133 rcpt_ckt-L3_7C */
        connect(IT_Equipment_133.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_133.pin_p, IT_Equipment_133.p);
        connect(MEL_Conv_IT_Equipment_133.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_133.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_133.hPin_L, cable_rcpt_cktL3_7C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_133.u);
        connect(IT_Equipment_133.u, Gain_IT_Equipment_133.y);

      /* MEL_Connect Laptop_130 rcpt_ckt-L3_7C */
        connect(Laptop_130.n, GndDC.p);
        connect(MEL_Conv_Laptop_130.pin_p, Laptop_130.p);
        connect(MEL_Conv_Laptop_130.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_130.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_130.hPin_L, cable_rcpt_cktL3_7C.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_130.u);
        connect(Laptop_130.u, Gain_Laptop_130.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_7C */
        connect(cable_rcpt_cktL3_7C.pin_n, cable_mels_L3_C.pin_p);

      /* MEL_Connect Monitor_90 rcpt_ckt-L3_5C */
        connect(Monitor_90.n, GndDC.p);
        connect(MEL_Conv_Monitor_90.pin_p, Monitor_90.p);
        connect(MEL_Conv_Monitor_90.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_90.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_90.hPin_L, cable_rcpt_cktL3_5C.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_90.u);
        connect(Monitor_90.u, Gain_Monitor_90.y);

      /* MEL_Connect Monitor_89 rcpt_ckt-L3_5C */
        connect(Monitor_89.n, GndDC.p);
        connect(MEL_Conv_Monitor_89.pin_p, Monitor_89.p);
        connect(MEL_Conv_Monitor_89.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_89.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_89.hPin_L, cable_rcpt_cktL3_5C.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_89.u);
        connect(Monitor_89.u, Gain_Monitor_89.y);

      /* MEL_Connect IT_Equipment_124 rcpt_ckt-L3_5C */
        connect(IT_Equipment_124.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_124.pin_p, IT_Equipment_124.p);
        connect(MEL_Conv_IT_Equipment_124.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_124.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_124.hPin_L, cable_rcpt_cktL3_5C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_124.u);
        connect(IT_Equipment_124.u, Gain_IT_Equipment_124.y);

      /* MEL_Connect Laptop_125 rcpt_ckt-L3_5C */
        connect(Laptop_125.n, GndDC.p);
        connect(MEL_Conv_Laptop_125.pin_p, Laptop_125.p);
        connect(MEL_Conv_Laptop_125.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_125.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_125.hPin_L, cable_rcpt_cktL3_5C.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_125.u);
        connect(Laptop_125.u, Gain_Laptop_125.y);

      /* MEL_Connect Laptop_124 rcpt_ckt-L3_5C */
        connect(Laptop_124.n, GndDC.p);
        connect(MEL_Conv_Laptop_124.pin_p, Laptop_124.p);
        connect(MEL_Conv_Laptop_124.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_124.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_124.hPin_L, cable_rcpt_cktL3_5C.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_124.u);
        connect(Laptop_124.u, Gain_Laptop_124.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_5C */
        connect(cable_rcpt_cktL3_5C.pin_n, cable_mels_L3_C.pin_p);

      /* MEL_Connect Monitor_85 rcpt_ckt-L3_4C */
        connect(Monitor_85.n, GndDC.p);
        connect(MEL_Conv_Monitor_85.pin_p, Monitor_85.p);
        connect(MEL_Conv_Monitor_85.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_85.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_85.hPin_L, cable_rcpt_cktL3_4C.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_85.u);
        connect(Monitor_85.u, Gain_Monitor_85.y);

      /* MEL_Connect IT_Equipment_122 rcpt_ckt-L3_4C */
        connect(IT_Equipment_122.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_122.pin_p, IT_Equipment_122.p);
        connect(MEL_Conv_IT_Equipment_122.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_122.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_122.hPin_L, cable_rcpt_cktL3_4C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_122.u);
        connect(IT_Equipment_122.u, Gain_IT_Equipment_122.y);

      /* MEL_Connect Laptop_119 rcpt_ckt-L3_4C */
        connect(Laptop_119.n, GndDC.p);
        connect(MEL_Conv_Laptop_119.pin_p, Laptop_119.p);
        connect(MEL_Conv_Laptop_119.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_119.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_119.hPin_L, cable_rcpt_cktL3_4C.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_119.u);
        connect(Laptop_119.u, Gain_Laptop_119.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_4C */
        connect(cable_rcpt_cktL3_4C.pin_n, cable_mels_L3_C.pin_p);

      /* MEL_Connect Monitor_82 rcpt_ckt-L3_3C */
        connect(Monitor_82.n, GndDC.p);
        connect(MEL_Conv_Monitor_82.pin_p, Monitor_82.p);
        connect(MEL_Conv_Monitor_82.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_82.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_82.hPin_L, cable_rcpt_cktL3_3C.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_82.u);
        connect(Monitor_82.u, Gain_Monitor_82.y);

      /* MEL_Connect IT_Equipment_118 rcpt_ckt-L3_3C */
        connect(IT_Equipment_118.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_118.pin_p, IT_Equipment_118.p);
        connect(MEL_Conv_IT_Equipment_118.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_118.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_118.hPin_L, cable_rcpt_cktL3_3C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_118.u);
        connect(IT_Equipment_118.u, Gain_IT_Equipment_118.y);

      /* MEL_Connect IT_Equipment_117 rcpt_ckt-L3_3C */
        connect(IT_Equipment_117.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_117.pin_p, IT_Equipment_117.p);
        connect(MEL_Conv_IT_Equipment_117.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_117.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_117.hPin_L, cable_rcpt_cktL3_3C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_117.u);
        connect(IT_Equipment_117.u, Gain_IT_Equipment_117.y);

      /* MEL_Connect Laptop_114 rcpt_ckt-L3_3C */
        connect(Laptop_114.n, GndDC.p);
        connect(MEL_Conv_Laptop_114.pin_p, Laptop_114.p);
        connect(MEL_Conv_Laptop_114.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_114.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_114.hPin_L, cable_rcpt_cktL3_3C.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_114.u);
        connect(Laptop_114.u, Gain_Laptop_114.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_3C */
        connect(cable_rcpt_cktL3_3C.pin_n, cable_mels_L3_C.pin_p);

      /* MEL_Connect Monitor_77 rcpt_ckt-L3_2C */
        connect(Monitor_77.n, GndDC.p);
        connect(MEL_Conv_Monitor_77.pin_p, Monitor_77.p);
        connect(MEL_Conv_Monitor_77.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_77.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_77.hPin_L, cable_rcpt_cktL3_2C.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_77.u);
        connect(Monitor_77.u, Gain_Monitor_77.y);

      /* MEL_Connect Monitor_76 rcpt_ckt-L3_2C */
        connect(Monitor_76.n, GndDC.p);
        connect(MEL_Conv_Monitor_76.pin_p, Monitor_76.p);
        connect(MEL_Conv_Monitor_76.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_76.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_76.hPin_L, cable_rcpt_cktL3_2C.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_76.u);
        connect(Monitor_76.u, Gain_Monitor_76.y);

      /* MEL_Connect Laptop_110 rcpt_ckt-L3_2C */
        connect(Laptop_110.n, GndDC.p);
        connect(MEL_Conv_Laptop_110.pin_p, Laptop_110.p);
        connect(MEL_Conv_Laptop_110.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_110.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_110.hPin_L, cable_rcpt_cktL3_2C.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_110.u);
        connect(Laptop_110.u, Gain_Laptop_110.y);

      /* MEL_Connect Laptop_109 rcpt_ckt-L3_2C */
        connect(Laptop_109.n, GndDC.p);
        connect(MEL_Conv_Laptop_109.pin_p, Laptop_109.p);
        connect(MEL_Conv_Laptop_109.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_109.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_109.hPin_L, cable_rcpt_cktL3_2C.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_109.u);
        connect(Laptop_109.u, Gain_Laptop_109.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_2C */
        connect(cable_rcpt_cktL3_2C.pin_n, cable_mels_L3_C.pin_p);

      /* MEL_Connect Monitor_72 rcpt_ckt-L3_1C */
        connect(Monitor_72.n, GndDC.p);
        connect(MEL_Conv_Monitor_72.pin_p, Monitor_72.p);
        connect(MEL_Conv_Monitor_72.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_72.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_72.hPin_L, cable_rcpt_cktL3_1C.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_72.u);
        connect(Monitor_72.u, Gain_Monitor_72.y);

      /* MEL_Connect Monitor_71 rcpt_ckt-L3_1C */
        connect(Monitor_71.n, GndDC.p);
        connect(MEL_Conv_Monitor_71.pin_p, Monitor_71.p);
        connect(MEL_Conv_Monitor_71.hPin_N, GndAC.pin);
        connect(MEL_Conv_Monitor_71.pin_n, GndDC.p);
        connect(MEL_Conv_Monitor_71.hPin_L, cable_rcpt_cktL3_1C.pin_p);
        connect(combiTimeTable_L3_Monitor.y[1], Gain_Monitor_71.u);
        connect(Monitor_71.u, Gain_Monitor_71.y);

      /* MEL_Connect IT_Equipment_112 rcpt_ckt-L3_1C */
        connect(IT_Equipment_112.n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_112.pin_p, IT_Equipment_112.p);
        connect(MEL_Conv_IT_Equipment_112.hPin_N, GndAC.pin);
        connect(MEL_Conv_IT_Equipment_112.pin_n, GndDC.p);
        connect(MEL_Conv_IT_Equipment_112.hPin_L, cable_rcpt_cktL3_1C.pin_p);
        connect(combiTimeTable_L3_IT_Equipment.y[1], Gain_IT_Equipment_112.u);
        connect(IT_Equipment_112.u, Gain_IT_Equipment_112.y);

      /* MEL_Connect Laptop_104 rcpt_ckt-L3_1C */
        connect(Laptop_104.n, GndDC.p);
        connect(MEL_Conv_Laptop_104.pin_p, Laptop_104.p);
        connect(MEL_Conv_Laptop_104.hPin_N, GndAC.pin);
        connect(MEL_Conv_Laptop_104.pin_n, GndDC.p);
        connect(MEL_Conv_Laptop_104.hPin_L, cable_rcpt_cktL3_1C.pin_p);
        connect(combiTimeTable_L3_Laptop.y[1], Gain_Laptop_104.u);
        connect(Laptop_104.u, Gain_Laptop_104.y);

      /* MEL_Connect  cable_rcpt_ckt-L3_1C */
        connect(cable_rcpt_cktL3_1C.pin_n, cable_mels_L3_C.pin_p);

        annotation (uses(HPF(version="0.1.0-beta"), Modelica(version="3.2.3")));
      end MEL_Panel_L3C;
    end AC_SD;
  end San_Diego;
end Receptacle_Panel;
