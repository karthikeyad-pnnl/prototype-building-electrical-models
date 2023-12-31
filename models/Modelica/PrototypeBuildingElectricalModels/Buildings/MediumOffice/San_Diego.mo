within PrototypeBuildingElectricalModels.Buildings.MediumOffice;
package San_Diego
  package AC_model
    model AC_model_SD

      inner parameter Real PF = 0.95;
      inner parameter Real PF1 = tan(acos(PF));
      parameter Real Vs = 7200;
      parameter Real kp = 3;
      parameter Real ks = 1;
      parameter Real km = 3;

      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(HideResult=true, visible = true, transformation(origin={18,-146},   extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.SinglePhase.Components.Ground GndAC1
                                              annotation (
        Placement(HideResult=true,visible = true, transformation(origin={-92,-118},  extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.Transformers.ThreePhase.Symmetric.D1Y Dist_Xmer(
        VPrimRated=12470,
        VSecRated=480,
        Rc=110450.1*km,
        Rp=0.43785*kp,
        Rs=0.0006488*ks,
        Xm=10366.7*km,
        Xp=4.4882*kp,
        Xs=0.00665*ks)  annotation (Placement(visible=true,
            transformation(extent={{-22,-94},{28,-54}}, rotation=0)));
      HPF.Transformers.ThreePhase.Symmetric.D1Y
                                            Mels_xmer(
        VPrimRated=480,
        VSecRated=208,
        Rc=932.1*km,
        Rp=0.01837*kp,
        Rs=0.0034489*ks,
        Xm=81.9*km,
        Xp=0.03661*kp,
        Xs=0.006875*ks)
        annotation (Placement(visible = true, transformation(extent={{124,-28},{144,-8}},      rotation = 0)));
      Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex1
        annotation (Placement(transformation(extent={{20,64},{30,74}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Mechanical(
        tableOnFile=true,
        tableName="Mechanical",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-Mechanical_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600,
        offset={0},
        startTime(displayUnit="h") = 0)    annotation (HideResult=true, Placement(
            transformation(extent={{-52,60},{-32,80}})));

      Modelica.Blocks.Math.Gain gain2(k=PF1)
        annotation (HideResult=true,Placement(transformation(extent={{-4,64},{8,76}})));
      inner HPF.SystemDef systemDef(
        fFund=60,
        fs=5000,
        hrms={1},
        numPh=3) annotation (Placement(visible=true, transformation(
            origin={378,72.5714},
            extent={{-16,-16},{16,11.4286}},
            rotation=0)));
      HPF.SinglePhase.Components.Ground GndAC2
                                              annotation (
        Placement(HideResult=true,visible = true, transformation(origin={146,-52},   extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.Loads.ThreePhase.AC_LoadIdealWye aC_LoadIdealWye(
        P_nom=100000,
        Q_nom=25000,
        vAngle_init(displayUnit="deg") = 0.5235987755983) annotation (HideResult=true,
          Placement(transformation(
            extent={{-13,-13},{13,13}},
            rotation=90,
            origin={45,45})));
      HPF.Sources.ThreePhase.VoltageSource voltageSource(
        vArg_phA={0},
        vArg_phB={-2.0944},
        vArg_phC={2.0944},
        vMag_phA={Vs},
        vMag_phB={Vs},
        vMag_phC={Vs}) annotation (Placement(visible=true, transformation(
            origin={-70,-74},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L1A mEL_Panel_L1A
        annotation (Placement(transformation(extent={{196,-8},{216,12}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L1B mEL_Panel_L1B
        annotation (Placement(transformation(extent={{196,-40},{216,-20}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L1C mEL_Panel_L1C
        annotation (Placement(transformation(extent={{196,-72},{216,-52}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L2A mEL_Panel_L2A
        annotation (Placement(transformation(extent={{262,-6},{282,14}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L2B mEL_Panel_L2B
        annotation (Placement(transformation(extent={{262,-38},{282,-18}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L2C mEL_Panel_L2C
        annotation (Placement(transformation(extent={{260,-72},{280,-52}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L3A mEL_Panel_L3A
        annotation (Placement(transformation(extent={{328,-4},{348,16}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L3B mEL_Panel_L3B
        annotation (Placement(transformation(extent={{328,-40},{348,-20}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L3C mEL_Panel_L3C
        annotation (Placement(transformation(extent={{324,-70},{344,-50}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_2C
        light_Panel_L1_2C
        annotation (Placement(transformation(extent={{174,-188},{194,-168}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_2B
        light_Panel_L1_2B
        annotation (Placement(transformation(extent={{174,-152},{194,-132}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_2A
        light_Panel_L1_2A
        annotation (Placement(transformation(extent={{174,-118},{194,-98}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_1C
        light_Panel_L1_1C
        annotation (Placement(transformation(extent={{142,-190},{162,-170}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_1B
        light_Panel_L1_1B
        annotation (Placement(transformation(extent={{142,-152},{162,-132}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_1A
        light_Panel_L1_1A
        annotation (Placement(transformation(extent={{140,-118},{160,-98}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_2C
        light_Panel_L2_2C
        annotation (Placement(transformation(extent={{274,-186},{294,-166}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_2B
        light_Panel_L2_2B
        annotation (Placement(transformation(extent={{272,-148},{292,-128}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_2A
        light_Panel_L2_2A
        annotation (Placement(transformation(extent={{272,-114},{292,-94}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_1C
        light_Panel_L2_1C
        annotation (Placement(transformation(extent={{238,-184},{258,-164}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_1B
        light_Panel_L2_1B
        annotation (Placement(transformation(extent={{236,-150},{256,-130}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_1A
        light_Panel_L2_1A
        annotation (Placement(transformation(extent={{232,-116},{252,-96}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_1A
        light_Panel_L3_1A
        annotation (Placement(transformation(extent={{324,-114},{344,-94}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_1B
        light_Panel_L3_1B
        annotation (Placement(transformation(extent={{362,-114},{382,-94}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_1C
        light_Panel_L3_1C
        annotation (Placement(transformation(extent={{322,-146},{342,-126}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_2A
        light_Panel_L3_2A
        annotation (Placement(transformation(extent={{360,-144},{380,-124}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_2B
        light_Panel_L3_2B
        annotation (Placement(transformation(extent={{322,-182},{342,-162}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_2C
        light_Panel_L3_2C
        annotation (Placement(transformation(extent={{360,-180},{380,-160}})));
    equation
      connect(Dist_Xmer.pinSec_N, GndAC.pin) annotation (Line(points={{28,-98},{28,-138},
              {18,-138}},        color={117,80,123}));
      connect(gain2.y, realToComplex1.im)
        annotation (Line(points={{8.6,70},{12,70},{12,64},{16,64},{16,66},{19,66}},
                                                         color={0,0,127}));
      connect(gain2.u, realToComplex1.re) annotation (Line(points={{-5.2,70},{-8,70},
              {-8,90},{14,90},{14,72},{19,72}},
                                              color={0,0,127}));
      connect(Mels_xmer.pinSec_N, GndAC2.pin) annotation (Line(points={{144,-30},
              {146,-30},{146,-44}},                  color={117,80,123}));
      connect(realToComplex1.y, aC_LoadIdealWye.S_input) annotation (Line(points={{30.5,69},
              {45,69},{45,58}},          color={85,170,255}));
      connect(combiTimeTable_L1_Mechanical.y[1], gain2.u) annotation (Line(points={{-31,70},
              {-5.2,70}},                                color={0,0,127}));
      connect(aC_LoadIdealWye.hPin_A, Dist_Xmer.pinSec_A) annotation (Line(
            points={{34.6,32},{32,32},{32,-50},{28,-50}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_B, Dist_Xmer.pinSec_B) annotation (Line(
            points={{41.1,32},{42,32},{42,-66},{28,-66}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_C, Dist_Xmer.pinSec_C) annotation (Line(
            points={{47.6,32},{47.6,-82},{28,-82}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_N, Dist_Xmer.pinSec_N) annotation (Line(points={{
              55.4,32},{56,32},{56,-90},{28,-90},{28,-98}}, color={117,80,123}));
      connect(Mels_xmer.pinPrim_A, Dist_Xmer.pinSec_A) annotation (Line(points=
              {{124,-8},{112,-8},{112,-14},{92,-14},{92,-50},{28,-50}}, color={
              92,53,102}));
      connect(Mels_xmer.pinPrim_B, Dist_Xmer.pinSec_B) annotation (Line(points=
              {{124,-18},{118,-18},{118,-22},{108,-22},{108,-66},{28,-66}},
            color={92,53,102}));
      connect(Mels_xmer.pinPrim_C, Dist_Xmer.pinSec_C) annotation (Line(points=
              {{124,-28},{120,-28},{120,-40},{112,-40},{112,-82},{28,-82}},
            color={92,53,102}));
      connect(voltageSource.pinN, GndAC1.pin) annotation (Line(points={{-70,
              -86.75},{-70,-110},{-92,-110}}, color={117,80,123}));
      connect(voltageSource.pinP_phA, Dist_Xmer.pinPrim_A) annotation (Line(
            points={{-57.5,-64},{-42,-64},{-42,-54},{-22,-54}}, color={92,53,
              102}));
      connect(voltageSource.pinP_phB, Dist_Xmer.pinPrim_B)
        annotation (Line(points={{-57.5,-74},{-22,-74}}, color={92,53,102}));
      connect(voltageSource.pinP_phC, Dist_Xmer.pinPrim_C) annotation (Line(
            points={{-57.5,-84},{-52,-84},{-52,-88},{-48,-88},{-48,-94},{-22,
              -94}}, color={92,53,102}));
      connect(mEL_Panel_L3C.pin_p, Mels_xmer.pinSec_C) annotation (Line(points={{324,
              -60},{316,-60},{316,-56},{312,-56},{312,-46},{170,-46},{170,-24},{164,
              -24},{164,-22},{144,-22}}, color={92,53,102}));
      connect(mEL_Panel_L1C.pin_p, Mels_xmer.pinSec_C) annotation (Line(points={{196,
              -62},{190,-62},{190,-60},{170,-60},{170,-24},{164,-24},{164,-22},{144,
              -22}}, color={92,53,102}));
      connect(mEL_Panel_L2C.pin_p, Mels_xmer.pinSec_C) annotation (Line(points={{260,
              -62},{256,-62},{256,-58},{252,-58},{252,-46},{170,-46},{170,-24},{164,
              -24},{164,-22},{144,-22}}, color={92,53,102}));
      connect(mEL_Panel_L3B.pin_p, Mels_xmer.pinSec_B) annotation (Line(points={{328,
              -30},{324,-30},{324,-16},{316,-16},{316,-12},{144,-12},{144,-14}},
            color={92,53,102}));
      connect(mEL_Panel_L3A.pin_p, Mels_xmer.pinSec_A) annotation (Line(points={{328,
              6},{320,6},{320,14},{316,14},{316,26},{150,26},{150,-6},{144,-6}},
            color={92,53,102}));
      connect(mEL_Panel_L1A.pin_p, Mels_xmer.pinSec_A) annotation (Line(points={{196,
              2},{190,2},{190,6},{182,6},{182,26},{150,26},{150,-6},{144,-6}},
            color={92,53,102}));
      connect(mEL_Panel_L2A.pin_p, Mels_xmer.pinSec_A) annotation (Line(points={{262,
              4},{256,4},{256,12},{244,12},{244,26},{150,26},{150,-6},{144,-6}},
            color={92,53,102}));
      connect(mEL_Panel_L1B.pin_p, Mels_xmer.pinSec_B) annotation (Line(points={{196,
              -30},{190,-30},{190,-20},{184,-20},{184,-12},{144,-12},{144,-14}},
            color={92,53,102}));
      connect(mEL_Panel_L2B.pin_p, Mels_xmer.pinSec_B) annotation (Line(points={{262,
              -28},{252,-28},{252,-20},{242,-20},{242,-12},{144,-12},{144,-14}},
            color={92,53,102}));
      connect(light_Panel_L3_1B.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {362,-104},{360,-104},{360,-100},{356,-100},{356,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L1_1A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {140,-108},{136,-108},{136,-90},{72,-90},{72,-50},{28,-50}}, color={92,
              53,102}));
      connect(light_Panel_L1_2A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {174,-108},{172,-108},{172,-98},{170,-98},{170,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L2_1A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {232,-106},{226,-106},{226,-102},{222,-102},{222,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L2_2A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {272,-104},{266,-104},{266,-96},{260,-96},{260,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L3_1A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {324,-104},{320,-104},{320,-98},{312,-98},{312,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L3_2A.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {360,-134},{358,-134},{358,-130},{354,-130},{354,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L1_1B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {142,-142},{140,-142},{140,-138},{134,-138},{134,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L1_2B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {174,-142},{174,-122},{58,-122},{58,-116},{64,-116},{64,-66},{28,-66}},
            color={92,53,102}));
      connect(light_Panel_L2_1B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {236,-140},{230,-140},{230,-134},{222,-134},{222,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L2_2B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {272,-138},{270,-138},{270,-132},{264,-132},{264,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L3_1C.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {322,-136},{318,-136},{318,-132},{310,-132},{310,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L3_2C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {360,-170},{358,-170},{358,-166},{354,-166},{354,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L1_1C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {142,-180},{134,-180},{134,-174},{126,-174},{126,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L1_2C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {174,-178},{170,-178},{170,-172},{166,-172},{166,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L2_1C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {238,-174},{230,-174},{230,-172},{222,-172},{222,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L2_2C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {274,-176},{270,-176},{270,-172},{264,-172},{264,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L3_2B.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {322,-172},{314,-172},{314,-170},{306,-170},{306,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      annotation (
        Diagram(coordinateSystem(extent={{-140,-260},{420,100}})),
        Icon(coordinateSystem(extent={{-140,-260},{420,100}})),
        experiment(
          StopTime=31536000,
          Interval=900,
          Tolerance=0.1,
          __Dymola_fixedstepsize=900,
          __Dymola_Algorithm="Euler"));
    end AC_model_SD;

    model AC_model_SD_RoofPV

      inner parameter Real PF = 0.95;
      inner parameter Real PF1 = tan(acos(PF));
      parameter Real Vs = 7200;
      parameter Real kp = 3;
      parameter Real ks = 1;
      parameter Real km = 3;

      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(HideResult=true, visible = true, transformation(origin={18,-146},   extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.SinglePhase.Components.Ground GndAC1
                                              annotation (
        Placement(HideResult=true,visible = true, transformation(origin={-92,-118},  extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.Transformers.ThreePhase.Symmetric.D1Y Dist_Xmer(
        VPrimRated=12470,
        VSecRated=480,
        Rc=110450.1*km,
        Rp=0.43785*kp,
        Rs=0.0006488*ks,
        Xm=10366.7*km,
        Xp=4.4882*kp,
        Xs=0.00665*ks)  annotation (Placement(visible=true,
            transformation(extent={{-22,-94},{28,-54}}, rotation=0)));
      HPF.Transformers.ThreePhase.Symmetric.D1Y
                                            Mels_xmer(
        VPrimRated=480,
        VSecRated=208,
        Rc=932.1*km,
        Rp=0.01837*kp,
        Rs=0.0034489*ks,
        Xm=81.9*km,
        Xp=0.03661*kp,
        Xs=0.006875*ks)
        annotation (Placement(visible = true, transformation(extent={{124,-28},{144,-8}},      rotation = 0)));
      Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex1
        annotation (Placement(transformation(extent={{20,64},{30,74}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Mechanical(
        tableOnFile=true,
        tableName="Mechanical",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-Mechanical_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600,
        offset={0},
        startTime(displayUnit="h") = 0)    annotation (HideResult=true, Placement(
            transformation(extent={{-52,60},{-32,80}})));

      Modelica.Blocks.Math.Gain gain2(k=PF1)
        annotation (HideResult=true,Placement(transformation(extent={{-4,64},{8,76}})));
      inner HPF.SystemDef systemDef(
        fFund=60,
        fs=5000,
        hrms={1},
        numPh=3) annotation (Placement(visible=true, transformation(
            origin={378,72.5714},
            extent={{-16,-16},{16,11.4286}},
            rotation=0)));
      HPF.SinglePhase.Components.Ground GndAC2
                                              annotation (
        Placement(HideResult=true,visible = true, transformation(origin={146,-52},   extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.Loads.ThreePhase.AC_LoadIdealWye aC_LoadIdealWye(
        P_nom=100000,
        Q_nom=25000,
        vAngle_init(displayUnit="deg") = 0.5235987755983) annotation (HideResult=true,
          Placement(transformation(
            extent={{-13,-13},{13,13}},
            rotation=90,
            origin={45,45})));
      HPF.Sources.ThreePhase.VoltageSource voltageSource(
        vArg_phA={0},
        vArg_phB={-2.0944},
        vArg_phC={2.0944},
        vMag_phA={Vs},
        vMag_phB={Vs},
        vMag_phC={Vs}) annotation (Placement(visible=true, transformation(
            origin={-70,-74},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L1A mEL_Panel_L1A
        annotation (Placement(transformation(extent={{196,-8},{216,12}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L1B mEL_Panel_L1B
        annotation (Placement(transformation(extent={{196,-40},{216,-20}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L1C mEL_Panel_L1C
        annotation (Placement(transformation(extent={{196,-72},{216,-52}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L2A mEL_Panel_L2A
        annotation (Placement(transformation(extent={{262,-6},{282,14}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L2B mEL_Panel_L2B
        annotation (Placement(transformation(extent={{262,-38},{282,-18}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L2C mEL_Panel_L2C
        annotation (Placement(transformation(extent={{260,-72},{280,-52}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L3A mEL_Panel_L3A
        annotation (Placement(transformation(extent={{328,-4},{348,16}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L3B mEL_Panel_L3B
        annotation (Placement(transformation(extent={{328,-40},{348,-20}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L3C mEL_Panel_L3C
        annotation (Placement(transformation(extent={{324,-70},{344,-50}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_2C
        light_Panel_L1_2C
        annotation (Placement(transformation(extent={{174,-188},{194,-168}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_2B
        light_Panel_L1_2B
        annotation (Placement(transformation(extent={{174,-152},{194,-132}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_2A
        light_Panel_L1_2A
        annotation (Placement(transformation(extent={{174,-118},{194,-98}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_1C
        light_Panel_L1_1C
        annotation (Placement(transformation(extent={{142,-190},{162,-170}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_1B
        light_Panel_L1_1B
        annotation (Placement(transformation(extent={{142,-152},{162,-132}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_1A
        light_Panel_L1_1A
        annotation (Placement(transformation(extent={{140,-118},{160,-98}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_2C
        light_Panel_L2_2C
        annotation (Placement(transformation(extent={{274,-186},{294,-166}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_2B
        light_Panel_L2_2B
        annotation (Placement(transformation(extent={{272,-148},{292,-128}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_2A
        light_Panel_L2_2A
        annotation (Placement(transformation(extent={{272,-114},{292,-94}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_1C
        light_Panel_L2_1C
        annotation (Placement(transformation(extent={{238,-184},{258,-164}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_1B
        light_Panel_L2_1B
        annotation (Placement(transformation(extent={{236,-150},{256,-130}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_1A
        light_Panel_L2_1A
        annotation (Placement(transformation(extent={{232,-116},{252,-96}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_1A
        light_Panel_L3_1A
        annotation (Placement(transformation(extent={{324,-114},{344,-94}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_1B
        light_Panel_L3_1B
        annotation (Placement(transformation(extent={{362,-114},{382,-94}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_1C
        light_Panel_L3_1C
        annotation (Placement(transformation(extent={{322,-146},{342,-126}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_2A
        light_Panel_L3_2A
        annotation (Placement(transformation(extent={{360,-144},{380,-124}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_2B
        light_Panel_L3_2B
        annotation (Placement(transformation(extent={{322,-182},{342,-162}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_2C
        light_Panel_L3_2C
        annotation (Placement(transformation(extent={{360,-180},{380,-160}})));
      HPF.PowerConverters.ThreePhase.ACDC_3pInverterSimple PV_Inverter(
        vAngle=0,
        PF=+0.95,
        P_nom=175000,
        P_stby=1,
        VAC_nom=277,
        VDC_nom=660,
        alpha=0.004799349,
        beta=0.010598212,
        gamma=0.016227353,
        Q1(start=0)) annotation (Placement(visible=true, transformation(
            origin={-28,-212},
            extent={{-10,-10},{10,10}},
            rotation=180)));
      HPF.Sources.DC.FixedVoltage_VariablePower DC_Source(v_out(displayUnit="V") = 660)
        annotation (Placement(visible=true, transformation(
            origin={-66,-210},
            extent={{-10,-10},{10,10}},
            rotation=90)));
      Modelica.Electrical.Analog.Basic.Ground Ground_DC annotation (
        Placement(visible = true, transformation(origin={-60,-176},  extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_PV_roof(
        tableOnFile=true,
        tableName="pv_profile",
        fileName=ModelicaServices.ExternalReferences.loadResource(
            "modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/pv_san_diego_roof.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600,
        offset={0},
        startTime(displayUnit="h") = 0) annotation (HideResult=true, Placement(
            transformation(extent={{-110,-220},{-90,-200}})));

      HPF.Cables.NEC_CableModel Cable_PV_C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_500,
          length=100) annotation (Placement(visible=true, transformation(
            origin={4,-206},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      HPF.Cables.NEC_CableModel Cable_PV_B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_500,
          length=100) annotation (Placement(visible=true, transformation(
            origin={10,-218},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      HPF.Cables.NEC_CableModel Cable_PV_A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_500,
          length=100) annotation (Placement(visible=true, transformation(
            origin={16,-230},
            extent={{-10,-10},{10,10}},
            rotation=0)));
    equation
      connect(Dist_Xmer.pinSec_N, GndAC.pin) annotation (Line(points={{28,-98},{28,-138},
              {18,-138}},        color={117,80,123}));
      connect(gain2.y, realToComplex1.im)
        annotation (Line(points={{8.6,70},{12,70},{12,64},{16,64},{16,66},{19,66}},
                                                         color={0,0,127}));
      connect(gain2.u, realToComplex1.re) annotation (Line(points={{-5.2,70},{-8,70},
              {-8,90},{14,90},{14,72},{19,72}},
                                              color={0,0,127}));
      connect(Mels_xmer.pinSec_N, GndAC2.pin) annotation (Line(points={{144,-30},
              {146,-30},{146,-44}},                  color={117,80,123}));
      connect(realToComplex1.y, aC_LoadIdealWye.S_input) annotation (Line(points={{30.5,69},
              {45,69},{45,58}},          color={85,170,255}));
      connect(combiTimeTable_L1_Mechanical.y[1], gain2.u) annotation (Line(points={{-31,70},
              {-5.2,70}},                                color={0,0,127}));
      connect(aC_LoadIdealWye.hPin_A, Dist_Xmer.pinSec_A) annotation (Line(
            points={{34.6,32},{32,32},{32,-50},{28,-50}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_B, Dist_Xmer.pinSec_B) annotation (Line(
            points={{41.1,32},{42,32},{42,-66},{28,-66}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_C, Dist_Xmer.pinSec_C) annotation (Line(
            points={{47.6,32},{47.6,-82},{28,-82}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_N, Dist_Xmer.pinSec_N) annotation (Line(points={{
              55.4,32},{56,32},{56,-90},{28,-90},{28,-98}}, color={117,80,123}));
      connect(Mels_xmer.pinPrim_A, Dist_Xmer.pinSec_A) annotation (Line(points=
              {{124,-8},{112,-8},{112,-14},{92,-14},{92,-50},{28,-50}}, color={
              92,53,102}));
      connect(Mels_xmer.pinPrim_B, Dist_Xmer.pinSec_B) annotation (Line(points=
              {{124,-18},{118,-18},{118,-22},{108,-22},{108,-66},{28,-66}},
            color={92,53,102}));
      connect(Mels_xmer.pinPrim_C, Dist_Xmer.pinSec_C) annotation (Line(points=
              {{124,-28},{120,-28},{120,-40},{112,-40},{112,-82},{28,-82}},
            color={92,53,102}));
      connect(voltageSource.pinN, GndAC1.pin) annotation (Line(points={{-70,
              -86.75},{-70,-110},{-92,-110}}, color={117,80,123}));
      connect(voltageSource.pinP_phA, Dist_Xmer.pinPrim_A) annotation (Line(
            points={{-57.5,-64},{-42,-64},{-42,-54},{-22,-54}}, color={92,53,
              102}));
      connect(voltageSource.pinP_phB, Dist_Xmer.pinPrim_B)
        annotation (Line(points={{-57.5,-74},{-22,-74}}, color={92,53,102}));
      connect(voltageSource.pinP_phC, Dist_Xmer.pinPrim_C) annotation (Line(
            points={{-57.5,-84},{-52,-84},{-52,-88},{-48,-88},{-48,-94},{-22,
              -94}}, color={92,53,102}));
      connect(mEL_Panel_L3C.pin_p, Mels_xmer.pinSec_C) annotation (Line(points={{324,
              -60},{316,-60},{316,-56},{312,-56},{312,-46},{170,-46},{170,-24},{164,
              -24},{164,-22},{144,-22}}, color={92,53,102}));
      connect(mEL_Panel_L1C.pin_p, Mels_xmer.pinSec_C) annotation (Line(points={{196,
              -62},{190,-62},{190,-60},{170,-60},{170,-24},{164,-24},{164,-22},{144,
              -22}}, color={92,53,102}));
      connect(mEL_Panel_L2C.pin_p, Mels_xmer.pinSec_C) annotation (Line(points={{260,
              -62},{256,-62},{256,-58},{252,-58},{252,-46},{170,-46},{170,-24},{164,
              -24},{164,-22},{144,-22}}, color={92,53,102}));
      connect(mEL_Panel_L3B.pin_p, Mels_xmer.pinSec_B) annotation (Line(points={{328,
              -30},{324,-30},{324,-16},{316,-16},{316,-12},{144,-12},{144,-14}},
            color={92,53,102}));
      connect(mEL_Panel_L3A.pin_p, Mels_xmer.pinSec_A) annotation (Line(points={{328,
              6},{320,6},{320,14},{316,14},{316,26},{150,26},{150,-6},{144,-6}},
            color={92,53,102}));
      connect(mEL_Panel_L1A.pin_p, Mels_xmer.pinSec_A) annotation (Line(points={{196,
              2},{190,2},{190,6},{182,6},{182,26},{150,26},{150,-6},{144,-6}},
            color={92,53,102}));
      connect(mEL_Panel_L2A.pin_p, Mels_xmer.pinSec_A) annotation (Line(points={{262,
              4},{256,4},{256,12},{244,12},{244,26},{150,26},{150,-6},{144,-6}},
            color={92,53,102}));
      connect(mEL_Panel_L1B.pin_p, Mels_xmer.pinSec_B) annotation (Line(points={{196,
              -30},{190,-30},{190,-20},{184,-20},{184,-12},{144,-12},{144,-14}},
            color={92,53,102}));
      connect(mEL_Panel_L2B.pin_p, Mels_xmer.pinSec_B) annotation (Line(points={{262,
              -28},{252,-28},{252,-20},{242,-20},{242,-12},{144,-12},{144,-14}},
            color={92,53,102}));
      connect(light_Panel_L3_1B.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {362,-104},{360,-104},{360,-100},{356,-100},{356,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L1_1A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {140,-108},{136,-108},{136,-90},{72,-90},{72,-50},{28,-50}}, color={92,
              53,102}));
      connect(light_Panel_L1_2A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {174,-108},{172,-108},{172,-98},{170,-98},{170,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L2_1A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {232,-106},{226,-106},{226,-102},{222,-102},{222,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L2_2A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {272,-104},{266,-104},{266,-96},{260,-96},{260,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L3_1A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {324,-104},{320,-104},{320,-98},{312,-98},{312,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L3_2A.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {360,-134},{358,-134},{358,-130},{354,-130},{354,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L1_1B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {142,-142},{140,-142},{140,-138},{134,-138},{134,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L1_2B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {174,-142},{174,-122},{58,-122},{58,-116},{64,-116},{64,-66},{28,-66}},
            color={92,53,102}));
      connect(light_Panel_L2_1B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {236,-140},{230,-140},{230,-134},{222,-134},{222,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L2_2B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {272,-138},{270,-138},{270,-132},{264,-132},{264,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L3_1C.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {322,-136},{318,-136},{318,-132},{310,-132},{310,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L3_2C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {360,-170},{358,-170},{358,-166},{354,-166},{354,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L1_1C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {142,-180},{134,-180},{134,-174},{126,-174},{126,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L1_2C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {174,-178},{170,-178},{170,-172},{166,-172},{166,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L2_1C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {238,-174},{230,-174},{230,-172},{222,-172},{222,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L2_2C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {274,-176},{270,-176},{270,-172},{264,-172},{264,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L3_2B.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {322,-172},{314,-172},{314,-170},{306,-170},{306,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(DC_Source.n,PV_Inverter. pin_n) annotation (Line(points={{-66,-200},{-50,
              -200},{-50,-204},{-38,-204}},            color={0,0,255}));
      connect(combiTimeTable_PV_roof.y[1], DC_Source.p_out) annotation (Line(
            points={{-89,-210},{-86,-210},{-86,-196},{-74,-196},{-74,-210}},
            color={0,0,127}));
      connect(PV_Inverter.hPin_C,Cable_PV_C. pin_p) annotation (Line(points={{-18,-210},
              {-14,-210},{-14,-206},{-6,-206}},           color={92,53,102}));
      connect(PV_Inverter.hPin_B,Cable_PV_B. pin_p) annotation (Line(points={{-18,-215},
              {-6,-215},{-6,-218},{0,-218}},            color={92,53,102}));
      connect(PV_Inverter.hPin_A,Cable_PV_A. pin_p) annotation (Line(points={{-18,-220},
              {-10,-220},{-10,-230},{6,-230}},           color={92,53,102}));
      connect(Ground_DC.p,DC_Source. n) annotation (Line(points={{-60,-166},{-56,-166},
              {-56,-200},{-66,-200}},           color={0,0,255}));
      connect(DC_Source.p,PV_Inverter. pin_p) annotation (Line(points={{-66,-220},{-38,
              -220}},                                  color={0,0,255}));
      connect(Cable_PV_C.pin_n, Dist_Xmer.pinSec_C) annotation (Line(points={{14,-206},
              {22,-206},{22,-204},{40,-204},{40,-82},{28,-82}}, color={117,80,123}));
      connect(Cable_PV_B.pin_n, Dist_Xmer.pinSec_B) annotation (Line(points={{20,-218},
              {46,-218},{46,-212},{64,-212},{64,-66},{28,-66}}, color={117,80,123}));
      connect(Cable_PV_A.pin_n, Dist_Xmer.pinSec_A) annotation (Line(points={{26,-230},
              {52,-230},{52,-226},{72,-226},{72,-50},{28,-50}}, color={117,80,123}));
      annotation (
        Diagram(coordinateSystem(extent={{-140,-260},{420,100}})),
        Icon(coordinateSystem(extent={{-140,-260},{420,100}})),
        experiment(
          StopTime=31536000,
          Interval=900,
          Tolerance=0.1,
          __Dymola_fixedstepsize=900,
          __Dymola_Algorithm="Euler"));
    end AC_model_SD_RoofPV;

    model AC_model_SD_PV_ZE

      inner parameter Real PF = 0.95;
      inner parameter Real PF1 = tan(acos(PF));
      parameter Real Vs = 7200;
      parameter Real kp = 3;
      parameter Real ks = 1;
      parameter Real km = 3;

      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(HideResult=true, visible = true, transformation(origin={18,-146},   extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.SinglePhase.Components.Ground GndAC1
                                              annotation (
        Placement(HideResult=true,visible = true, transformation(origin={-92,-118},  extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.Transformers.ThreePhase.Symmetric.D1Y Dist_Xmer(
        VPrimRated=12470,
        VSecRated=480,
        Rc=110450.1*km,
        Rp=0.43785*kp,
        Rs=0.0006488*ks,
        Xm=10366.7*km,
        Xp=4.4882*kp,
        Xs=0.00665*ks)  annotation (Placement(visible=true,
            transformation(extent={{-22,-94},{28,-54}}, rotation=0)));
      HPF.Transformers.ThreePhase.Symmetric.D1Y
                                            Mels_xmer(
        VPrimRated=480,
        VSecRated=208,
        Rc=932.1*km,
        Rp=0.01837*kp,
        Rs=0.0034489*ks,
        Xm=81.9*km,
        Xp=0.03661*kp,
        Xs=0.006875*ks)
        annotation (Placement(visible = true, transformation(extent={{124,-28},{144,-8}},      rotation = 0)));
      Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex1
        annotation (Placement(transformation(extent={{20,64},{30,74}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Mechanical(
        tableOnFile=true,
        tableName="Mechanical",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-Mechanical_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600,
        offset={0},
        startTime(displayUnit="h") = 0)    annotation (HideResult=true, Placement(
            transformation(extent={{-52,60},{-32,80}})));

      Modelica.Blocks.Math.Gain gain2(k=PF1)
        annotation (HideResult=true,Placement(transformation(extent={{-4,64},{8,76}})));
      inner HPF.SystemDef systemDef(
        fFund=60,
        fs=5000,
        hrms={1},
        numPh=3) annotation (Placement(visible=true, transformation(
            origin={378,72.5714},
            extent={{-16,-16},{16,11.4286}},
            rotation=0)));
      HPF.SinglePhase.Components.Ground GndAC2
                                              annotation (
        Placement(HideResult=true,visible = true, transformation(origin={146,-52},   extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.Loads.ThreePhase.AC_LoadIdealWye aC_LoadIdealWye(
        P_nom=100000,
        Q_nom=25000,
        vAngle_init(displayUnit="deg") = 0.5235987755983) annotation (HideResult=true,
          Placement(transformation(
            extent={{-13,-13},{13,13}},
            rotation=90,
            origin={45,45})));
      HPF.Sources.ThreePhase.VoltageSource voltageSource(
        vArg_phA={0},
        vArg_phB={-2.0944},
        vArg_phC={2.0944},
        vMag_phA={Vs},
        vMag_phB={Vs},
        vMag_phC={Vs}) annotation (Placement(visible=true, transformation(
            origin={-70,-74},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L1A mEL_Panel_L1A
        annotation (Placement(transformation(extent={{196,-8},{216,12}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L1B mEL_Panel_L1B
        annotation (Placement(transformation(extent={{196,-40},{216,-20}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L1C mEL_Panel_L1C
        annotation (Placement(transformation(extent={{196,-72},{216,-52}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L2A mEL_Panel_L2A
        annotation (Placement(transformation(extent={{262,-6},{282,14}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L2B mEL_Panel_L2B
        annotation (Placement(transformation(extent={{262,-38},{282,-18}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L2C mEL_Panel_L2C
        annotation (Placement(transformation(extent={{260,-72},{280,-52}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L3A mEL_Panel_L3A
        annotation (Placement(transformation(extent={{328,-4},{348,16}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L3B mEL_Panel_L3B
        annotation (Placement(transformation(extent={{328,-40},{348,-20}})));
      Subsystems.Receptacle_Panel.San_Diego.AC_SD.MEL_Panel_L3C mEL_Panel_L3C
        annotation (Placement(transformation(extent={{324,-70},{344,-50}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_2C
        light_Panel_L1_2C
        annotation (Placement(transformation(extent={{174,-188},{194,-168}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_2B
        light_Panel_L1_2B
        annotation (Placement(transformation(extent={{174,-152},{194,-132}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_2A
        light_Panel_L1_2A
        annotation (Placement(transformation(extent={{174,-118},{194,-98}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_1C
        light_Panel_L1_1C
        annotation (Placement(transformation(extent={{142,-190},{162,-170}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_1B
        light_Panel_L1_1B
        annotation (Placement(transformation(extent={{142,-152},{162,-132}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L1_1A
        light_Panel_L1_1A
        annotation (Placement(transformation(extent={{140,-118},{160,-98}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_2C
        light_Panel_L2_2C
        annotation (Placement(transformation(extent={{274,-186},{294,-166}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_2B
        light_Panel_L2_2B
        annotation (Placement(transformation(extent={{272,-148},{292,-128}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_2A
        light_Panel_L2_2A
        annotation (Placement(transformation(extent={{272,-114},{292,-94}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_1C
        light_Panel_L2_1C
        annotation (Placement(transformation(extent={{238,-184},{258,-164}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_1B
        light_Panel_L2_1B
        annotation (Placement(transformation(extent={{236,-150},{256,-130}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L2_1A
        light_Panel_L2_1A
        annotation (Placement(transformation(extent={{232,-116},{252,-96}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_1A
        light_Panel_L3_1A
        annotation (Placement(transformation(extent={{324,-114},{344,-94}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_1B
        light_Panel_L3_1B
        annotation (Placement(transformation(extent={{362,-114},{382,-94}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_1C
        light_Panel_L3_1C
        annotation (Placement(transformation(extent={{322,-146},{342,-126}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_2A
        light_Panel_L3_2A
        annotation (Placement(transformation(extent={{360,-144},{380,-124}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_2B
        light_Panel_L3_2B
        annotation (Placement(transformation(extent={{322,-182},{342,-162}})));
      Subsystems.LightingPanels.San_Diego.Conv_AC.Light_Panel_L3_2C
        light_Panel_L3_2C
        annotation (Placement(transformation(extent={{360,-180},{380,-160}})));
      HPF.PowerConverters.ThreePhase.ACDC_3pInverterSimple PV_Inverter(
        vAngle=0,
        PF=+0.95,
        P_nom=175000,
        P_stby=1,
        VAC_nom=277,
        VDC_nom=660,
        alpha=0.004799349,
        beta=0.010598212,
        gamma=0.016227353,
        Q1(start=0)) annotation (Placement(visible=true, transformation(
            origin={-28,-212},
            extent={{-10,-10},{10,10}},
            rotation=180)));
      HPF.Sources.DC.FixedVoltage_VariablePower DC_Source(v_out(displayUnit="V") = 660)
        annotation (Placement(visible=true, transformation(
            origin={-66,-210},
            extent={{-10,-10},{10,10}},
            rotation=90)));
      Modelica.Electrical.Analog.Basic.Ground Ground_DC annotation (
        Placement(visible = true, transformation(origin={-60,-176},  extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_PV_ZE(
        tableOnFile=true,
        tableName="pv_profile",
        fileName=ModelicaServices.ExternalReferences.loadResource(
            "modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/pv_san_diego_zero_energy.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600,
        offset={0},
        startTime(displayUnit="h") = 0) annotation (HideResult=true, Placement(
            transformation(extent={{-110,-220},{-90,-200}})));

      HPF.Cables.NEC_CableModel Cable_PV_C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_500,
          length=100) annotation (Placement(visible=true, transformation(
            origin={4,-206},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      HPF.Cables.NEC_CableModel Cable_PV_B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_500,
          length=100) annotation (Placement(visible=true, transformation(
            origin={10,-218},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      HPF.Cables.NEC_CableModel Cable_PV_A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_500,
          length=100) annotation (Placement(visible=true, transformation(
            origin={16,-230},
            extent={{-10,-10},{10,10}},
            rotation=0)));
    equation
      connect(Dist_Xmer.pinSec_N, GndAC.pin) annotation (Line(points={{28,-98},{28,-138},
              {18,-138}},        color={117,80,123}));
      connect(gain2.y, realToComplex1.im)
        annotation (Line(points={{8.6,70},{12,70},{12,64},{16,64},{16,66},{19,66}},
                                                         color={0,0,127}));
      connect(gain2.u, realToComplex1.re) annotation (Line(points={{-5.2,70},{-8,70},
              {-8,90},{14,90},{14,72},{19,72}},
                                              color={0,0,127}));
      connect(Mels_xmer.pinSec_N, GndAC2.pin) annotation (Line(points={{144,-30},
              {146,-30},{146,-44}},                  color={117,80,123}));
      connect(realToComplex1.y, aC_LoadIdealWye.S_input) annotation (Line(points={{30.5,69},
              {45,69},{45,58}},          color={85,170,255}));
      connect(combiTimeTable_L1_Mechanical.y[1], gain2.u) annotation (Line(points={{-31,70},
              {-5.2,70}},                                color={0,0,127}));
      connect(aC_LoadIdealWye.hPin_A, Dist_Xmer.pinSec_A) annotation (Line(
            points={{34.6,32},{32,32},{32,-50},{28,-50}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_B, Dist_Xmer.pinSec_B) annotation (Line(
            points={{41.1,32},{42,32},{42,-66},{28,-66}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_C, Dist_Xmer.pinSec_C) annotation (Line(
            points={{47.6,32},{47.6,-82},{28,-82}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_N, Dist_Xmer.pinSec_N) annotation (Line(points={{
              55.4,32},{56,32},{56,-90},{28,-90},{28,-98}}, color={117,80,123}));
      connect(Mels_xmer.pinPrim_A, Dist_Xmer.pinSec_A) annotation (Line(points=
              {{124,-8},{112,-8},{112,-14},{92,-14},{92,-50},{28,-50}}, color={
              92,53,102}));
      connect(Mels_xmer.pinPrim_B, Dist_Xmer.pinSec_B) annotation (Line(points=
              {{124,-18},{118,-18},{118,-22},{108,-22},{108,-66},{28,-66}},
            color={92,53,102}));
      connect(Mels_xmer.pinPrim_C, Dist_Xmer.pinSec_C) annotation (Line(points=
              {{124,-28},{120,-28},{120,-40},{112,-40},{112,-82},{28,-82}},
            color={92,53,102}));
      connect(voltageSource.pinN, GndAC1.pin) annotation (Line(points={{-70,
              -86.75},{-70,-110},{-92,-110}}, color={117,80,123}));
      connect(voltageSource.pinP_phA, Dist_Xmer.pinPrim_A) annotation (Line(
            points={{-57.5,-64},{-42,-64},{-42,-54},{-22,-54}}, color={92,53,
              102}));
      connect(voltageSource.pinP_phB, Dist_Xmer.pinPrim_B)
        annotation (Line(points={{-57.5,-74},{-22,-74}}, color={92,53,102}));
      connect(voltageSource.pinP_phC, Dist_Xmer.pinPrim_C) annotation (Line(
            points={{-57.5,-84},{-52,-84},{-52,-88},{-48,-88},{-48,-94},{-22,
              -94}}, color={92,53,102}));
      connect(mEL_Panel_L3C.pin_p, Mels_xmer.pinSec_C) annotation (Line(points={{324,
              -60},{316,-60},{316,-56},{312,-56},{312,-46},{170,-46},{170,-24},{164,
              -24},{164,-22},{144,-22}}, color={92,53,102}));
      connect(mEL_Panel_L1C.pin_p, Mels_xmer.pinSec_C) annotation (Line(points={{196,
              -62},{190,-62},{190,-60},{170,-60},{170,-24},{164,-24},{164,-22},{144,
              -22}}, color={92,53,102}));
      connect(mEL_Panel_L2C.pin_p, Mels_xmer.pinSec_C) annotation (Line(points={{260,
              -62},{256,-62},{256,-58},{252,-58},{252,-46},{170,-46},{170,-24},{164,
              -24},{164,-22},{144,-22}}, color={92,53,102}));
      connect(mEL_Panel_L3B.pin_p, Mels_xmer.pinSec_B) annotation (Line(points={{328,
              -30},{324,-30},{324,-16},{316,-16},{316,-12},{144,-12},{144,-14}},
            color={92,53,102}));
      connect(mEL_Panel_L3A.pin_p, Mels_xmer.pinSec_A) annotation (Line(points={{328,
              6},{320,6},{320,14},{316,14},{316,26},{150,26},{150,-6},{144,-6}},
            color={92,53,102}));
      connect(mEL_Panel_L1A.pin_p, Mels_xmer.pinSec_A) annotation (Line(points={{196,
              2},{190,2},{190,6},{182,6},{182,26},{150,26},{150,-6},{144,-6}},
            color={92,53,102}));
      connect(mEL_Panel_L2A.pin_p, Mels_xmer.pinSec_A) annotation (Line(points={{262,
              4},{256,4},{256,12},{244,12},{244,26},{150,26},{150,-6},{144,-6}},
            color={92,53,102}));
      connect(mEL_Panel_L1B.pin_p, Mels_xmer.pinSec_B) annotation (Line(points={{196,
              -30},{190,-30},{190,-20},{184,-20},{184,-12},{144,-12},{144,-14}},
            color={92,53,102}));
      connect(mEL_Panel_L2B.pin_p, Mels_xmer.pinSec_B) annotation (Line(points={{262,
              -28},{252,-28},{252,-20},{242,-20},{242,-12},{144,-12},{144,-14}},
            color={92,53,102}));
      connect(light_Panel_L3_1B.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {362,-104},{360,-104},{360,-100},{356,-100},{356,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L1_1A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {140,-108},{136,-108},{136,-90},{72,-90},{72,-50},{28,-50}}, color={92,
              53,102}));
      connect(light_Panel_L1_2A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {174,-108},{172,-108},{172,-98},{170,-98},{170,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L2_1A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {232,-106},{226,-106},{226,-102},{222,-102},{222,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L2_2A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {272,-104},{266,-104},{266,-96},{260,-96},{260,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L3_1A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(points={
              {324,-104},{320,-104},{320,-98},{312,-98},{312,-90},{72,-90},{72,-50},
              {28,-50}}, color={92,53,102}));
      connect(light_Panel_L3_2A.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {360,-134},{358,-134},{358,-130},{354,-130},{354,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L1_1B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {142,-142},{140,-142},{140,-138},{134,-138},{134,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L1_2B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {174,-142},{174,-122},{58,-122},{58,-116},{64,-116},{64,-66},{28,-66}},
            color={92,53,102}));
      connect(light_Panel_L2_1B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {236,-140},{230,-140},{230,-134},{222,-134},{222,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L2_2B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {272,-138},{270,-138},{270,-132},{264,-132},{264,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L3_1C.pin_p, Dist_Xmer.pinSec_B) annotation (Line(points={
              {322,-136},{318,-136},{318,-132},{310,-132},{310,-122},{58,-122},{58,-116},
              {64,-116},{64,-66},{28,-66}}, color={92,53,102}));
      connect(light_Panel_L3_2C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {360,-170},{358,-170},{358,-166},{354,-166},{354,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L1_1C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {142,-180},{134,-180},{134,-174},{126,-174},{126,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L1_2C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {174,-178},{170,-178},{170,-172},{166,-172},{166,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L2_1C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {238,-174},{230,-174},{230,-172},{222,-172},{222,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L2_2C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {274,-176},{270,-176},{270,-172},{264,-172},{264,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(light_Panel_L3_2B.pin_p, Dist_Xmer.pinSec_C) annotation (Line(points={
              {322,-172},{314,-172},{314,-170},{306,-170},{306,-158},{40,-158},{40,-82},
              {28,-82}}, color={92,53,102}));
      connect(DC_Source.n,PV_Inverter. pin_n) annotation (Line(points={{-66,-200},{-50,
              -200},{-50,-204},{-38,-204}},            color={0,0,255}));
      connect(combiTimeTable_PV_ZE.y[1], DC_Source.p_out) annotation (Line(
            points={{-89,-210},{-86,-210},{-86,-196},{-74,-196},{-74,-210}},
            color={0,0,127}));
      connect(PV_Inverter.hPin_C,Cable_PV_C. pin_p) annotation (Line(points={{-18,-210},
              {-14,-210},{-14,-206},{-6,-206}},           color={92,53,102}));
      connect(PV_Inverter.hPin_B,Cable_PV_B. pin_p) annotation (Line(points={{-18,-215},
              {-6,-215},{-6,-218},{0,-218}},            color={92,53,102}));
      connect(PV_Inverter.hPin_A,Cable_PV_A. pin_p) annotation (Line(points={{-18,-220},
              {-10,-220},{-10,-230},{6,-230}},           color={92,53,102}));
      connect(Ground_DC.p,DC_Source. n) annotation (Line(points={{-60,-166},{-56,-166},
              {-56,-200},{-66,-200}},           color={0,0,255}));
      connect(DC_Source.p,PV_Inverter. pin_p) annotation (Line(points={{-66,-220},{-38,
              -220}},                                  color={0,0,255}));
      connect(Cable_PV_C.pin_n, Dist_Xmer.pinSec_C) annotation (Line(points={{14,-206},
              {22,-206},{22,-204},{40,-204},{40,-82},{28,-82}}, color={117,80,123}));
      connect(Cable_PV_B.pin_n, Dist_Xmer.pinSec_B) annotation (Line(points={{20,-218},
              {46,-218},{46,-212},{64,-212},{64,-66},{28,-66}}, color={117,80,123}));
      connect(Cable_PV_A.pin_n, Dist_Xmer.pinSec_A) annotation (Line(points={{26,-230},
              {52,-230},{52,-226},{72,-226},{72,-50},{28,-50}}, color={117,80,123}));
      annotation (
        Diagram(coordinateSystem(extent={{-140,-260},{420,100}})),
        Icon(coordinateSystem(extent={{-140,-260},{420,100}})),
        experiment(
          StopTime=31536000,
          Interval=900,
          Tolerance=0.1,
          __Dymola_fixedstepsize=900,
          __Dymola_Algorithm="Euler"));
    end AC_model_SD_PV_ZE;
  end AC_model;

  package Local_DC
    model LocalDC_model_SD

      inner parameter Real PF = 0.95;
      inner parameter Real PF1 = tan(acos(PF));
      parameter Real Vs = 7200;
      parameter Real kp = 3;
      parameter Real ks = 1;
      parameter Real km = 3;

      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(HideResult=true, visible = true, transformation(origin={18,-146},   extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.SinglePhase.Components.Ground GndAC1
                                              annotation (
        Placement(HideResult=true,visible = true, transformation(origin={-92,-118},  extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.Transformers.ThreePhase.Symmetric.D1Y Dist_Xmer(
        VPrimRated=12470,
        VSecRated=480,
        Rc=110450.1*km,
        Rp=0.43785*kp,
        Rs=0.0006488*ks,
        Xm=10366.7*km,
        Xp=4.4882*kp,
        Xs=0.00665*ks)  annotation (Placement(visible=true,
            transformation(extent={{-22,-94},{28,-54}}, rotation=0)));
      HPF.Transformers.ThreePhase.Symmetric.D1Y
                                            Mels_xmer(
        VPrimRated=480,
        VSecRated=208,
        Rc=1254.5*km,
        Rp=0.03070*kp,
        Rs=0.0057657*ks,
        Xm=102.4*km,
        Xp=0.04413*kp,
        Xs=0.008286*ks)
        annotation (Placement(visible = true, transformation(extent={{124,-28},{144,-8}},      rotation = 0)));
      Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex1
        annotation (Placement(transformation(extent={{20,64},{30,74}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Mechanical(
        tableOnFile=true,
        tableName="Mechanical",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-Mechanical_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600,
        offset={0},
        startTime(displayUnit="h") = 0)    annotation (HideResult=true, Placement(
            transformation(extent={{-52,60},{-32,80}})));

      Modelica.Blocks.Math.Gain gain2(k=PF1)
        annotation (HideResult=true,Placement(transformation(extent={{-4,64},{8,76}})));
      inner HPF.SystemDef systemDef(
        fFund=60,
        fs=5000,
        hrms={1},
        numPh=3) annotation (Placement(visible=true, transformation(
            origin={378,72.5714},
            extent={{-16,-16},{16,11.4286}},
            rotation=0)));
      HPF.SinglePhase.Components.Ground GndAC2
                                              annotation (
        Placement(HideResult=true,visible = true, transformation(origin={146,-52},   extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.Loads.ThreePhase.AC_LoadIdealWye aC_LoadIdealWye(
        P_nom=100000,
        Q_nom=25000,
        vAngle_init(displayUnit="deg") = 0.5235987755983) annotation (
          HideResult=true, Placement(transformation(
            extent={{-13,-13},{13,13}},
            rotation=90,
            origin={45,45})));
      HPF.Sources.ThreePhase.VoltageSource voltageSource(
        vArg_phA={0},
        vArg_phB={-2.0944},
        vArg_phC={2.0944},
        vMag_phA={Vs},
        vMag_phB={Vs},
        vMag_phC={Vs}) annotation (Placement(visible=true, transformation(
            origin={-70,-74},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L1A
        large_AC_MEL_Panel_L1A
        annotation (Placement(transformation(extent={{184,16},{204,36}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L1B
        large_AC_MEL_Panel_L1B
        annotation (Placement(transformation(extent={{184,-18},{204,2}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L1C
        large_AC_MEL_Panel_L1C
        annotation (Placement(transformation(extent={{184,-50},{204,-30}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L2A
        large_AC_MEL_Panel_L2A
        annotation (Placement(transformation(extent={{232,16},{252,36}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L2B
        large_AC_MEL_Panel_L2B
        annotation (Placement(transformation(extent={{232,-20},{252,0}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L2C
        large_AC_MEL_Panel_L2C
        annotation (Placement(transformation(extent={{230,-52},{250,-32}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L3A
        large_AC_MEL_Panel_L3A
        annotation (Placement(transformation(extent={{276,16},{296,36}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L3B
        large_AC_MEL_Panel_L3B
        annotation (Placement(transformation(extent={{278,-18},{298,2}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L3C
        large_AC_MEL_Panel_L3C
        annotation (Placement(transformation(extent={{278,-52},{298,-32}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L1A
        smallDC_MEL_Panel_L1A
        annotation (Placement(transformation(extent={{168,-134},{188,-114}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L1B
        smallDC_MEL_Panel_L1B
        annotation (Placement(transformation(extent={{162,-196},{182,-176}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L1C
        smallDC_MEL_Panel_L1C
        annotation (Placement(transformation(extent={{168,-254},{188,-234}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L2A
        smallDC_MEL_Panel_L2A
        annotation (Placement(transformation(extent={{262,-134},{282,-114}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L2B
        smallDC_MEL_Panel_L2B
        annotation (Placement(transformation(extent={{262,-190},{282,-170}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L2C
        smallDC_MEL_Panel_L2C
        annotation (Placement(transformation(extent={{268,-248},{288,-228}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L3A
        smallDC_MEL_Panel_L3A
        annotation (Placement(transformation(extent={{362,-132},{382,-112}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L3B
        smallDC_MEL_Panel_L3B
        annotation (Placement(transformation(extent={{360,-186},{380,-166}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L3C
        smallDC_MEL_Panel_L3C
        annotation (Placement(transformation(extent={{362,-248},{382,-228}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_1A
        dC_ACDC_Light_Panel_L1_1A
        annotation (Placement(transformation(extent={{140,-108},{160,-88}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_1B
        dC_ACDC_Light_Panel_L1_1B
        annotation (Placement(transformation(extent={{134,-172},{154,-152}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_1C
        dC_ACDC_Light_Panel_L1_1C
        annotation (Placement(transformation(extent={{138,-230},{158,-210}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_2A
        dC_ACDC_Light_Panel_L1_2A
        annotation (Placement(transformation(extent={{174,-108},{194,-88}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_2B
        dC_ACDC_Light_Panel_L1_2B
        annotation (Placement(transformation(extent={{166,-170},{186,-150}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_2C
        dC_ACDC_Light_Panel_L1_2C
        annotation (Placement(transformation(extent={{176,-230},{196,-210}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_1A
        dC_ACDC_Light_Panel_L2_1A
        annotation (Placement(transformation(extent={{230,-110},{250,-90}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_1B
        dC_ACDC_Light_Panel_L2_1B
        annotation (Placement(transformation(extent={{234,-170},{254,-150}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_1C
        dC_ACDC_Light_Panel_L2_1C
        annotation (Placement(transformation(extent={{232,-224},{252,-204}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_2A
        dC_ACDC_Light_Panel_L2_2A
        annotation (Placement(transformation(extent={{272,-110},{292,-90}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_2B
        dC_ACDC_Light_Panel_L2_2B
        annotation (Placement(transformation(extent={{276,-166},{296,-146}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_2C
        dC_ACDC_Light_Panel_L2_2C
        annotation (Placement(transformation(extent={{274,-222},{294,-202}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_1A
        dC_ACDC_Light_Panel_L3_1A
        annotation (Placement(transformation(extent={{324,-112},{344,-92}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_1B
        dC_ACDC_Light_Panel_L3_1B
        annotation (Placement(transformation(extent={{322,-164},{342,-144}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_1C
        dC_ACDC_Light_Panel_L3_1C
        annotation (Placement(transformation(extent={{324,-224},{344,-204}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_2A
        dC_ACDC_Light_Panel_L3_2A
        annotation (Placement(transformation(extent={{370,-110},{390,-90}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_2B
        dC_ACDC_Light_Panel_L3_2B
        annotation (Placement(transformation(extent={{374,-162},{394,-142}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_2C
        dC_ACDC_Light_Panel_L3_2C
        annotation (Placement(transformation(extent={{370,-218},{390,-198}})));
    equation
      connect(Dist_Xmer.pinSec_N, GndAC.pin) annotation (Line(points={{28,-98},{28,-138},
              {18,-138}},        color={117,80,123}));
      connect(gain2.y, realToComplex1.im)
        annotation (Line(points={{8.6,70},{12,70},{12,64},{16,64},{16,66},{19,66}},
                                                         color={0,0,127}));
      connect(gain2.u, realToComplex1.re) annotation (Line(points={{-5.2,70},{-8,70},
              {-8,90},{14,90},{14,72},{19,72}},
                                              color={0,0,127}));
      connect(Mels_xmer.pinSec_N, GndAC2.pin) annotation (Line(points={{144,-30},
              {146,-30},{146,-44}},                  color={117,80,123}));
      connect(realToComplex1.y, aC_LoadIdealWye.S_input) annotation (Line(points={{30.5,69},
              {45,69},{45,58}},          color={85,170,255}));
      connect(combiTimeTable_L1_Mechanical.y[1], gain2.u) annotation (Line(points={{-31,70},
              {-5.2,70}},                                color={0,0,127}));
      connect(aC_LoadIdealWye.hPin_A, Dist_Xmer.pinSec_A) annotation (Line(
            points={{34.6,32},{32,32},{32,-50},{28,-50}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_B, Dist_Xmer.pinSec_B) annotation (Line(
            points={{41.1,32},{42,32},{42,-66},{28,-66}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_C, Dist_Xmer.pinSec_C) annotation (Line(
            points={{47.6,32},{47.6,-82},{28,-82}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_N, Dist_Xmer.pinSec_N) annotation (Line(points={{
              55.4,32},{56,32},{56,-90},{28,-90},{28,-98}}, color={117,80,123}));
      connect(Mels_xmer.pinPrim_A, Dist_Xmer.pinSec_A) annotation (Line(points=
              {{124,-8},{112,-8},{112,-14},{92,-14},{92,-50},{28,-50}}, color={
              92,53,102}));
      connect(Mels_xmer.pinPrim_B, Dist_Xmer.pinSec_B) annotation (Line(points=
              {{124,-18},{118,-18},{118,-22},{108,-22},{108,-66},{28,-66}},
            color={92,53,102}));
      connect(Mels_xmer.pinPrim_C, Dist_Xmer.pinSec_C) annotation (Line(points=
              {{124,-28},{120,-28},{120,-40},{112,-40},{112,-82},{28,-82}},
            color={92,53,102}));
      connect(voltageSource.pinN, GndAC1.pin) annotation (Line(points={{-70,
              -86.75},{-70,-110},{-92,-110}}, color={117,80,123}));
      connect(voltageSource.pinP_phA, Dist_Xmer.pinPrim_A) annotation (Line(
            points={{-57.5,-64},{-42,-64},{-42,-54},{-22,-54}}, color={92,53,
              102}));
      connect(voltageSource.pinP_phB, Dist_Xmer.pinPrim_B)
        annotation (Line(points={{-57.5,-74},{-22,-74}}, color={92,53,102}));
      connect(voltageSource.pinP_phC, Dist_Xmer.pinPrim_C) annotation (Line(
            points={{-57.5,-84},{-52,-84},{-52,-88},{-48,-88},{-48,-94},{-22,
              -94}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L3C.pin_p, Mels_xmer.pinSec_C) annotation (Line(
            points={{278,-42},{276,-42},{276,-38},{274,-38},{274,-28},{154,-28},{154,
              -22},{144,-22}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L1C.pin_p, Mels_xmer.pinSec_C) annotation (Line(
            points={{184,-40},{176,-40},{176,-28},{154,-28},{154,-22},{144,-22}},
            color={92,53,102}));
      connect(large_AC_MEL_Panel_L2C.pin_p, Mels_xmer.pinSec_C) annotation (Line(
            points={{230,-42},{218,-42},{218,-28},{154,-28},{154,-22},{144,-22}},
            color={92,53,102}));
      connect(large_AC_MEL_Panel_L3B.pin_p, Mels_xmer.pinSec_B) annotation (Line(
            points={{278,-8},{274,-8},{274,-2},{268,-2},{268,6},{164,6},{164,-16},
              {144,-16},{144,-14}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L1B.pin_p, Mels_xmer.pinSec_B) annotation (Line(
            points={{184,-8},{164,-8},{164,-16},{144,-16},{144,-14}}, color={92,53,
              102}));
      connect(large_AC_MEL_Panel_L2B.pin_p, Mels_xmer.pinSec_B) annotation (Line(
            points={{232,-10},{222,-10},{222,-4},{216,-4},{216,6},{164,6},{164,-16},
              {144,-16},{144,-14}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L3A.pin_p, Mels_xmer.pinSec_A) annotation (Line(
            points={{276,26},{272,26},{272,32},{268,32},{268,44},{154,44},{154,-6},
              {144,-6}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L1A.pin_p, Mels_xmer.pinSec_A) annotation (Line(
            points={{184,26},{154,26},{154,-6},{144,-6}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L2A.pin_p, Mels_xmer.pinSec_A) annotation (Line(
            points={{232,26},{224,26},{224,28},{214,28},{214,44},{154,44},{154,-6},
              {144,-6}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_2A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{370,-100},{362,-100},{362,-78},{82,-78},{82,-50},{28,-50}},
            color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_1A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{140,-98},{136,-98},{136,-90},{128,-90},{128,-78},{82,-78},
              {82,-50},{28,-50}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L1A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(
            points={{168,-124},{164,-124},{164,-78},{82,-78},{82,-50},{28,-50}},
            color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_2A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{174,-98},{174,-90},{170,-90},{170,-78},{82,-78},{82,-50},{
              28,-50}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_1A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{230,-100},{216,-100},{216,-94},{212,-94},{212,-78},{82,-78},
              {82,-50},{28,-50}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_2A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{272,-100},{268,-100},{268,-78},{82,-78},{82,-50},{28,-50}},
            color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_1A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{324,-102},{318,-102},{318,-94},{310,-94},{310,-78},{82,-78},
              {82,-50},{28,-50}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L3A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(
            points={{362,-122},{362,-112},{348,-112},{348,-78},{82,-78},{82,-50},{
              28,-50}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L2A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(
            points={{262,-124},{262,-78},{82,-78},{82,-50},{28,-50}}, color={92,53,
              102}));
      connect(dC_ACDC_Light_Panel_L3_2B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{374,-152},{370,-152},{370,-154},{360,-154},{360,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L3B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(
            points={{360,-176},{356,-176},{356,-172},{352,-172},{352,-138},{78,-138},
              {78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_1B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{322,-154},{320,-154},{320,-150},{314,-150},{314,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_2B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{276,-156},{272,-156},{272,-150},{266,-150},{266,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_1B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{234,-160},{226,-160},{226,-154},{218,-154},{218,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L2B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(
            points={{262,-180},{260,-180},{260,-162},{258,-162},{258,-138},{78,-138},
              {78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_2B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{166,-160},{164,-160},{164,-154},{160,-154},{160,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_1B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{134,-162},{128,-162},{128,-156},{122,-156},{122,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L1B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(
            points={{162,-186},{160,-186},{160,-138},{78,-138},{78,-66},{28,-66}},
            color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_2C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{370,-208},{366,-208},{366,-210},{358,-210},{358,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_1C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{138,-220},{128,-220},{128,-212},{120,-212},{120,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_2C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{176,-220},{172,-220},{172,-216},{168,-216},{168,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_1C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{232,-214},{226,-214},{226,-212},{218,-212},{218,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L1C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(
            points={{168,-244},{168,-236},{160,-236},{160,-200},{54,-200},{54,-188},
              {60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L2C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(
            points={{268,-238},{262,-238},{262,-228},{258,-228},{258,-200},{54,-200},
              {54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_2C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{274,-212},{272,-212},{272,-208},{266,-208},{266,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_1C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{324,-214},{318,-214},{318,-212},{310,-212},{310,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L3C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(
            points={{362,-238},{358,-238},{358,-200},{54,-200},{54,-188},{60,-188},
              {60,-82},{28,-82}}, color={92,53,102}));
      annotation (
        Diagram(coordinateSystem(extent={{-140,-260},{420,100}})),
        Icon(coordinateSystem(extent={{-140,-260},{420,100}})),
        experiment(
          StopTime=31536000,
          Interval=900,
          Tolerance=0.1,
          __Dymola_fixedstepsize=900,
          __Dymola_Algorithm="Dassl"));
    end LocalDC_model_SD;

    model LocalDC_model_SD_roofPV

      inner parameter Real PF = 0.95;
      inner parameter Real PF1 = tan(acos(PF));
      parameter Real Vs = 7200;
      parameter Real kp = 3;
      parameter Real ks = 1;
      parameter Real km = 3;

      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(HideResult=true, visible = true, transformation(origin={18,-146},   extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.SinglePhase.Components.Ground GndAC1
                                              annotation (
        Placement(HideResult=true,visible = true, transformation(origin={-92,-118},  extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.Transformers.ThreePhase.Symmetric.D1Y Dist_Xmer(
        VPrimRated=12470,
        VSecRated=480,
        Rc=110450.1*km,
        Rp=0.43785*kp,
        Rs=0.0006488*ks,
        Xm=10366.7*km,
        Xp=4.4882*kp,
        Xs=0.00665*ks)  annotation (Placement(visible=true,
            transformation(extent={{-22,-94},{28,-54}}, rotation=0)));
      HPF.Transformers.ThreePhase.Symmetric.D1Y
                                            Mels_xmer(
        VPrimRated=480,
        VSecRated=208,
        Rc=1254.5*km,
        Rp=0.03070*kp,
        Rs=0.0057657*ks,
        Xm=102.4*km,
        Xp=0.04413*kp,
        Xs=0.008286*ks)
        annotation (Placement(visible = true, transformation(extent={{124,-28},{144,-8}},      rotation = 0)));
      Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex1
        annotation (Placement(transformation(extent={{20,64},{30,74}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Mechanical(
        tableOnFile=true,
        tableName="Mechanical",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-Mechanical_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600,
        offset={0},
        startTime(displayUnit="h") = 0)    annotation (HideResult=true, Placement(
            transformation(extent={{-52,60},{-32,80}})));

      Modelica.Blocks.Math.Gain gain2(k=PF1)
        annotation (HideResult=true,Placement(transformation(extent={{-4,64},{8,76}})));
      inner HPF.SystemDef systemDef(
        fFund=60,
        fs=5000,
        hrms={1},
        numPh=3) annotation (Placement(visible=true, transformation(
            origin={378,72.5714},
            extent={{-16,-16},{16,11.4286}},
            rotation=0)));
      HPF.SinglePhase.Components.Ground GndAC2
                                              annotation (
        Placement(HideResult=true,visible = true, transformation(origin={146,-52},   extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.Loads.ThreePhase.AC_LoadIdealWye aC_LoadIdealWye(
        P_nom=100000,
        Q_nom=25000,
        vAngle_init(displayUnit="deg") = 0.5235987755983) annotation (
          HideResult=true, Placement(transformation(
            extent={{-13,-13},{13,13}},
            rotation=90,
            origin={45,45})));
      HPF.Sources.ThreePhase.VoltageSource voltageSource(
        vArg_phA={0},
        vArg_phB={-2.0944},
        vArg_phC={2.0944},
        vMag_phA={Vs},
        vMag_phB={Vs},
        vMag_phC={Vs}) annotation (Placement(visible=true, transformation(
            origin={-70,-74},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L1A
        large_AC_MEL_Panel_L1A
        annotation (Placement(transformation(extent={{184,16},{204,36}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L1B
        large_AC_MEL_Panel_L1B
        annotation (Placement(transformation(extent={{184,-18},{204,2}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L1C
        large_AC_MEL_Panel_L1C
        annotation (Placement(transformation(extent={{184,-50},{204,-30}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L2A
        large_AC_MEL_Panel_L2A
        annotation (Placement(transformation(extent={{232,16},{252,36}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L2B
        large_AC_MEL_Panel_L2B
        annotation (Placement(transformation(extent={{232,-20},{252,0}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L2C
        large_AC_MEL_Panel_L2C
        annotation (Placement(transformation(extent={{230,-52},{250,-32}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L3A
        large_AC_MEL_Panel_L3A
        annotation (Placement(transformation(extent={{276,16},{296,36}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L3B
        large_AC_MEL_Panel_L3B
        annotation (Placement(transformation(extent={{278,-18},{298,2}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L3C
        large_AC_MEL_Panel_L3C
        annotation (Placement(transformation(extent={{278,-52},{298,-32}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L1A
        smallDC_MEL_Panel_L1A
        annotation (Placement(transformation(extent={{168,-134},{188,-114}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L1B
        smallDC_MEL_Panel_L1B
        annotation (Placement(transformation(extent={{162,-196},{182,-176}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L1C
        smallDC_MEL_Panel_L1C
        annotation (Placement(transformation(extent={{168,-254},{188,-234}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L2A
        smallDC_MEL_Panel_L2A
        annotation (Placement(transformation(extent={{262,-134},{282,-114}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L2B
        smallDC_MEL_Panel_L2B
        annotation (Placement(transformation(extent={{262,-190},{282,-170}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L2C
        smallDC_MEL_Panel_L2C
        annotation (Placement(transformation(extent={{268,-248},{288,-228}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L3A
        smallDC_MEL_Panel_L3A
        annotation (Placement(transformation(extent={{362,-132},{382,-112}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L3B
        smallDC_MEL_Panel_L3B
        annotation (Placement(transformation(extent={{360,-186},{380,-166}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L3C
        smallDC_MEL_Panel_L3C
        annotation (Placement(transformation(extent={{362,-248},{382,-228}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_1A
        dC_ACDC_Light_Panel_L1_1A
        annotation (Placement(transformation(extent={{140,-108},{160,-88}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_1B
        dC_ACDC_Light_Panel_L1_1B
        annotation (Placement(transformation(extent={{134,-172},{154,-152}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_1C
        dC_ACDC_Light_Panel_L1_1C
        annotation (Placement(transformation(extent={{138,-230},{158,-210}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_2A
        dC_ACDC_Light_Panel_L1_2A
        annotation (Placement(transformation(extent={{174,-108},{194,-88}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_2B
        dC_ACDC_Light_Panel_L1_2B
        annotation (Placement(transformation(extent={{166,-170},{186,-150}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_2C
        dC_ACDC_Light_Panel_L1_2C
        annotation (Placement(transformation(extent={{176,-230},{196,-210}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_1A
        dC_ACDC_Light_Panel_L2_1A
        annotation (Placement(transformation(extent={{230,-110},{250,-90}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_1B
        dC_ACDC_Light_Panel_L2_1B
        annotation (Placement(transformation(extent={{234,-170},{254,-150}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_1C
        dC_ACDC_Light_Panel_L2_1C
        annotation (Placement(transformation(extent={{232,-224},{252,-204}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_2A
        dC_ACDC_Light_Panel_L2_2A
        annotation (Placement(transformation(extent={{272,-110},{292,-90}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_2B
        dC_ACDC_Light_Panel_L2_2B
        annotation (Placement(transformation(extent={{276,-166},{296,-146}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_2C
        dC_ACDC_Light_Panel_L2_2C
        annotation (Placement(transformation(extent={{274,-222},{294,-202}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_1A
        dC_ACDC_Light_Panel_L3_1A
        annotation (Placement(transformation(extent={{324,-112},{344,-92}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_1B
        dC_ACDC_Light_Panel_L3_1B
        annotation (Placement(transformation(extent={{322,-164},{342,-144}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_1C
        dC_ACDC_Light_Panel_L3_1C
        annotation (Placement(transformation(extent={{324,-224},{344,-204}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_2A
        dC_ACDC_Light_Panel_L3_2A
        annotation (Placement(transformation(extent={{370,-110},{390,-90}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_2B
        dC_ACDC_Light_Panel_L3_2B
        annotation (Placement(transformation(extent={{374,-162},{394,-142}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_2C
        dC_ACDC_Light_Panel_L3_2C
        annotation (Placement(transformation(extent={{370,-218},{390,-198}})));
      HPF.PowerConverters.ThreePhase.ACDC_3pInverterSimple PV_Inverter(
        vAngle=0,
        PF=+0.95,
        P_nom=175000,
        P_stby=1,
        VAC_nom=277,
        VDC_nom=660,
        alpha=0.004799349,
        beta=0.010598212,
        gamma=0.016227353,
        Q1(start=0)) annotation (Placement(visible=true, transformation(
            origin={-42,-215},
            extent={{-12,-17},{12,17}},
            rotation=180)));
      HPF.Sources.DC.FixedVoltage_VariablePower DC_Source(v_out(displayUnit="V")=
             660) annotation (Placement(visible=true, transformation(
            origin={-76,-218},
            extent={{-10,-10},{10,10}},
            rotation=90)));
      Modelica.Electrical.Analog.Basic.Ground Ground_DC annotation (
        Placement(visible = true, transformation(origin={-70,-184},  extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Mechanical1(
        tableOnFile=true,
        tableName="pv_profile",
        fileName=ModelicaServices.ExternalReferences.loadResource(
            "modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/pv_san_diego_roof.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600,
        offset={0},
        startTime(displayUnit="h") = 0)    annotation (HideResult=true, Placement(
            transformation(extent={{-120,-228},{-100,-208}})));

      HPF.Cables.NEC_CableModel Cable_PV_C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_500,
          length=100) annotation (Placement(visible=true, transformation(
            origin={-6,-214},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      HPF.Cables.NEC_CableModel Cable_PV_B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_500,
          length=100) annotation (Placement(visible=true, transformation(
            origin={0,-226},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      HPF.Cables.NEC_CableModel Cable_PV_A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_500,
          length=100) annotation (Placement(visible=true, transformation(
            origin={6,-238},
            extent={{-10,-10},{10,10}},
            rotation=0)));
    equation
      connect(Dist_Xmer.pinSec_N, GndAC.pin) annotation (Line(points={{28,-98},{28,-138},
              {18,-138}},        color={117,80,123}));
      connect(gain2.y, realToComplex1.im)
        annotation (Line(points={{8.6,70},{12,70},{12,64},{16,64},{16,66},{19,66}},
                                                         color={0,0,127}));
      connect(gain2.u, realToComplex1.re) annotation (Line(points={{-5.2,70},{-8,70},
              {-8,90},{14,90},{14,72},{19,72}},
                                              color={0,0,127}));
      connect(Mels_xmer.pinSec_N, GndAC2.pin) annotation (Line(points={{144,-30},
              {146,-30},{146,-44}},                  color={117,80,123}));
      connect(realToComplex1.y, aC_LoadIdealWye.S_input) annotation (Line(points={{30.5,69},
              {45,69},{45,58}},          color={85,170,255}));
      connect(combiTimeTable_L1_Mechanical.y[1], gain2.u) annotation (Line(points={{-31,70},
              {-5.2,70}},                                color={0,0,127}));
      connect(aC_LoadIdealWye.hPin_A, Dist_Xmer.pinSec_A) annotation (Line(
            points={{34.6,32},{32,32},{32,-50},{28,-50}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_B, Dist_Xmer.pinSec_B) annotation (Line(
            points={{41.1,32},{42,32},{42,-66},{28,-66}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_C, Dist_Xmer.pinSec_C) annotation (Line(
            points={{47.6,32},{47.6,-82},{28,-82}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_N, Dist_Xmer.pinSec_N) annotation (Line(points={{
              55.4,32},{56,32},{56,-90},{28,-90},{28,-98}}, color={117,80,123}));
      connect(Mels_xmer.pinPrim_A, Dist_Xmer.pinSec_A) annotation (Line(points=
              {{124,-8},{112,-8},{112,-14},{92,-14},{92,-50},{28,-50}}, color={
              92,53,102}));
      connect(Mels_xmer.pinPrim_B, Dist_Xmer.pinSec_B) annotation (Line(points=
              {{124,-18},{118,-18},{118,-22},{108,-22},{108,-66},{28,-66}},
            color={92,53,102}));
      connect(Mels_xmer.pinPrim_C, Dist_Xmer.pinSec_C) annotation (Line(points=
              {{124,-28},{120,-28},{120,-40},{112,-40},{112,-82},{28,-82}},
            color={92,53,102}));
      connect(voltageSource.pinN, GndAC1.pin) annotation (Line(points={{-70,
              -86.75},{-70,-110},{-92,-110}}, color={117,80,123}));
      connect(voltageSource.pinP_phA, Dist_Xmer.pinPrim_A) annotation (Line(
            points={{-57.5,-64},{-42,-64},{-42,-54},{-22,-54}}, color={92,53,
              102}));
      connect(voltageSource.pinP_phB, Dist_Xmer.pinPrim_B)
        annotation (Line(points={{-57.5,-74},{-22,-74}}, color={92,53,102}));
      connect(voltageSource.pinP_phC, Dist_Xmer.pinPrim_C) annotation (Line(
            points={{-57.5,-84},{-52,-84},{-52,-88},{-48,-88},{-48,-94},{-22,
              -94}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L3C.pin_p, Mels_xmer.pinSec_C) annotation (Line(
            points={{278,-42},{276,-42},{276,-38},{274,-38},{274,-28},{154,-28},{154,
              -22},{144,-22}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L1C.pin_p, Mels_xmer.pinSec_C) annotation (Line(
            points={{184,-40},{176,-40},{176,-28},{154,-28},{154,-22},{144,-22}},
            color={92,53,102}));
      connect(large_AC_MEL_Panel_L2C.pin_p, Mels_xmer.pinSec_C) annotation (Line(
            points={{230,-42},{218,-42},{218,-28},{154,-28},{154,-22},{144,-22}},
            color={92,53,102}));
      connect(large_AC_MEL_Panel_L3B.pin_p, Mels_xmer.pinSec_B) annotation (Line(
            points={{278,-8},{274,-8},{274,-2},{268,-2},{268,6},{164,6},{164,-16},
              {144,-16},{144,-14}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L1B.pin_p, Mels_xmer.pinSec_B) annotation (Line(
            points={{184,-8},{164,-8},{164,-16},{144,-16},{144,-14}}, color={92,53,
              102}));
      connect(large_AC_MEL_Panel_L2B.pin_p, Mels_xmer.pinSec_B) annotation (Line(
            points={{232,-10},{222,-10},{222,-4},{216,-4},{216,6},{164,6},{164,-16},
              {144,-16},{144,-14}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L3A.pin_p, Mels_xmer.pinSec_A) annotation (Line(
            points={{276,26},{272,26},{272,32},{268,32},{268,44},{154,44},{154,-6},
              {144,-6}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L1A.pin_p, Mels_xmer.pinSec_A) annotation (Line(
            points={{184,26},{154,26},{154,-6},{144,-6}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L2A.pin_p, Mels_xmer.pinSec_A) annotation (Line(
            points={{232,26},{224,26},{224,28},{214,28},{214,44},{154,44},{154,-6},
              {144,-6}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_2A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{370,-100},{362,-100},{362,-78},{82,-78},{82,-50},{28,-50}},
            color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_1A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{140,-98},{136,-98},{136,-90},{128,-90},{128,-78},{82,-78},
              {82,-50},{28,-50}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L1A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(
            points={{168,-124},{164,-124},{164,-78},{82,-78},{82,-50},{28,-50}},
            color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_2A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{174,-98},{174,-90},{170,-90},{170,-78},{82,-78},{82,-50},{
              28,-50}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_1A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{230,-100},{216,-100},{216,-94},{212,-94},{212,-78},{82,-78},
              {82,-50},{28,-50}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_2A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{272,-100},{268,-100},{268,-78},{82,-78},{82,-50},{28,-50}},
            color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_1A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{324,-102},{318,-102},{318,-94},{310,-94},{310,-78},{82,-78},
              {82,-50},{28,-50}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L3A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(
            points={{362,-122},{362,-112},{348,-112},{348,-78},{82,-78},{82,-50},{
              28,-50}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L2A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(
            points={{262,-124},{262,-78},{82,-78},{82,-50},{28,-50}}, color={92,53,
              102}));
      connect(dC_ACDC_Light_Panel_L3_2B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{374,-152},{370,-152},{370,-154},{360,-154},{360,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L3B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(
            points={{360,-176},{356,-176},{356,-172},{352,-172},{352,-138},{78,-138},
              {78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_1B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{322,-154},{320,-154},{320,-150},{314,-150},{314,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_2B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{276,-156},{272,-156},{272,-150},{266,-150},{266,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_1B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{234,-160},{226,-160},{226,-154},{218,-154},{218,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L2B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(
            points={{262,-180},{260,-180},{260,-162},{258,-162},{258,-138},{78,-138},
              {78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_2B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{166,-160},{164,-160},{164,-154},{160,-154},{160,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_1B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{134,-162},{128,-162},{128,-156},{122,-156},{122,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L1B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(
            points={{162,-186},{160,-186},{160,-138},{78,-138},{78,-66},{28,-66}},
            color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_2C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{370,-208},{366,-208},{366,-210},{358,-210},{358,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_1C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{138,-220},{128,-220},{128,-212},{120,-212},{120,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_2C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{176,-220},{172,-220},{172,-216},{168,-216},{168,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_1C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{232,-214},{226,-214},{226,-212},{218,-212},{218,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L1C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(
            points={{168,-244},{168,-236},{160,-236},{160,-200},{54,-200},{54,-188},
              {60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L2C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(
            points={{268,-238},{262,-238},{262,-228},{258,-228},{258,-200},{54,-200},
              {54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_2C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{274,-212},{272,-212},{272,-208},{266,-208},{266,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_1C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{324,-214},{318,-214},{318,-212},{310,-212},{310,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L3C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(
            points={{362,-238},{358,-238},{358,-200},{54,-200},{54,-188},{60,-188},
              {60,-82},{28,-82}}, color={92,53,102}));
      connect(DC_Source.n,PV_Inverter. pin_n) annotation (Line(points={{-76,
              -208},{-60,-208},{-60,-201.4},{-54,-201.4}},
                                                       color={0,0,255}));
      connect(combiTimeTable_L1_Mechanical1.y[1],DC_Source. p_out) annotation (
          Line(points={{-99,-218},{-96,-218},{-96,-204},{-84,-204},{-84,-218}},
            color={0,0,127}));
      connect(PV_Inverter.hPin_C,Cable_PV_C. pin_p) annotation (Line(points={{-30,
              -211.6},{-30,-214},{-16,-214}},             color={92,53,102}));
      connect(PV_Inverter.hPin_B,Cable_PV_B. pin_p) annotation (Line(points={{-30,
              -220.1},{-16,-220.1},{-16,-226},{-10,-226}},
                                                        color={92,53,102}));
      connect(PV_Inverter.hPin_A,Cable_PV_A. pin_p) annotation (Line(points={{-30,
              -228.6},{-20,-228.6},{-20,-238},{-4,-238}},color={92,53,102}));
      connect(Ground_DC.p,DC_Source. n) annotation (Line(points={{-70,-174},{
              -66,-174},{-66,-208},{-76,-208}}, color={0,0,255}));
      connect(DC_Source.p,PV_Inverter. pin_p) annotation (Line(points={{-76,
              -228},{-62,-228},{-62,-228.6},{-54,-228.6}},
                                                       color={0,0,255}));
      connect(PV_Inverter.hPin_N, GndAC.pin) annotation (Line(points={{-30,
              -201.4},{-20,-201.4},{-20,-196},{-6,-196},{-6,-138},{18,-138}},
            color={117,80,123}));
      connect(Cable_PV_C.pin_n, Dist_Xmer.pinSec_C) annotation (Line(points={{4,
              -214},{16,-214},{16,-212},{54,-212},{54,-188},{60,-188},{60,-82},
              {28,-82}}, color={117,80,123}));
      connect(Cable_PV_B.pin_n, Dist_Xmer.pinSec_B) annotation (Line(points={{
              10,-226},{50,-226},{50,-230},{78,-230},{78,-66},{28,-66}}, color=
              {117,80,123}));
      connect(Cable_PV_A.pin_n, Dist_Xmer.pinSec_A) annotation (Line(points={{
              16,-238},{40,-238},{40,-244},{90,-244},{90,-78},{82,-78},{82,-50},
              {28,-50}}, color={117,80,123}));
      annotation (
        Diagram(coordinateSystem(extent={{-140,-260},{420,100}})),
        Icon(coordinateSystem(extent={{-140,-260},{420,100}})),
        experiment(
          StopTime=31536000,
          Interval=900,
          Tolerance=0.1,
          __Dymola_fixedstepsize=900,
          __Dymola_Algorithm="Dassl"));
    end LocalDC_model_SD_roofPV;

    model LocalDC_model_SD_PV_ZE

      inner parameter Real PF = 0.95;
      inner parameter Real PF1 = tan(acos(PF));
      parameter Real Vs = 7200;
      parameter Real kp = 3;
      parameter Real ks = 1;
      parameter Real km = 3;

      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(HideResult=true, visible = true, transformation(origin={18,-146},   extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.SinglePhase.Components.Ground GndAC1
                                              annotation (
        Placement(HideResult=true,visible = true, transformation(origin={-92,-118},  extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.Transformers.ThreePhase.Symmetric.D1Y Dist_Xmer(
        VPrimRated=12470,
        VSecRated=480,
        Rc=110450.1*km,
        Rp=0.43785*kp,
        Rs=0.0006488*ks,
        Xm=10366.7*km,
        Xp=4.4882*kp,
        Xs=0.00665*ks)  annotation (Placement(visible=true,
            transformation(extent={{-22,-94},{28,-54}}, rotation=0)));
      HPF.Transformers.ThreePhase.Symmetric.D1Y
                                            Mels_xmer(
        VPrimRated=480,
        VSecRated=208,
        Rc=1254.5*km,
        Rp=0.03070*kp,
        Rs=0.0057657*ks,
        Xm=102.4*km,
        Xp=0.04413*kp,
        Xs=0.008286*ks)
        annotation (Placement(visible = true, transformation(extent={{124,-28},{144,-8}},      rotation = 0)));
      Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex1
        annotation (Placement(transformation(extent={{20,64},{30,74}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Mechanical(
        tableOnFile=true,
        tableName="Mechanical",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-Mechanical_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600,
        offset={0},
        startTime(displayUnit="h") = 0)    annotation (HideResult=true, Placement(
            transformation(extent={{-52,60},{-32,80}})));

      Modelica.Blocks.Math.Gain gain2(k=PF1)
        annotation (HideResult=true,Placement(transformation(extent={{-4,64},{8,76}})));
      inner HPF.SystemDef systemDef(
        fFund=60,
        fs=5000,
        hrms={1},
        numPh=3) annotation (Placement(visible=true, transformation(
            origin={378,72.5714},
            extent={{-16,-16},{16,11.4286}},
            rotation=0)));
      HPF.SinglePhase.Components.Ground GndAC2
                                              annotation (
        Placement(HideResult=true,visible = true, transformation(origin={146,-52},   extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.Loads.ThreePhase.AC_LoadIdealWye aC_LoadIdealWye(
        P_nom=100000,
        Q_nom=25000,
        vAngle_init(displayUnit="deg") = 0.5235987755983) annotation (
          HideResult=true, Placement(transformation(
            extent={{-13,-13},{13,13}},
            rotation=90,
            origin={45,45})));
      HPF.Sources.ThreePhase.VoltageSource voltageSource(
        vArg_phA={0},
        vArg_phB={-2.0944},
        vArg_phC={2.0944},
        vMag_phA={Vs},
        vMag_phB={Vs},
        vMag_phC={Vs}) annotation (Placement(visible=true, transformation(
            origin={-70,-74},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L1A
        large_AC_MEL_Panel_L1A
        annotation (Placement(transformation(extent={{184,16},{204,36}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L1B
        large_AC_MEL_Panel_L1B
        annotation (Placement(transformation(extent={{184,-18},{204,2}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L1C
        large_AC_MEL_Panel_L1C
        annotation (Placement(transformation(extent={{184,-50},{204,-30}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L2A
        large_AC_MEL_Panel_L2A
        annotation (Placement(transformation(extent={{232,16},{252,36}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L2B
        large_AC_MEL_Panel_L2B
        annotation (Placement(transformation(extent={{232,-20},{252,0}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L2C
        large_AC_MEL_Panel_L2C
        annotation (Placement(transformation(extent={{230,-52},{250,-32}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L3A
        large_AC_MEL_Panel_L3A
        annotation (Placement(transformation(extent={{276,16},{296,36}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L3B
        large_AC_MEL_Panel_L3B
        annotation (Placement(transformation(extent={{278,-18},{298,2}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Large_MELs.large_AC_MEL_Panel_L3C
        large_AC_MEL_Panel_L3C
        annotation (Placement(transformation(extent={{278,-52},{298,-32}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L1A
        smallDC_MEL_Panel_L1A
        annotation (Placement(transformation(extent={{168,-134},{188,-114}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L1B
        smallDC_MEL_Panel_L1B
        annotation (Placement(transformation(extent={{162,-196},{182,-176}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L1C
        smallDC_MEL_Panel_L1C
        annotation (Placement(transformation(extent={{168,-254},{188,-234}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L2A
        smallDC_MEL_Panel_L2A
        annotation (Placement(transformation(extent={{262,-134},{282,-114}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L2B
        smallDC_MEL_Panel_L2B
        annotation (Placement(transformation(extent={{262,-190},{282,-170}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L2C
        smallDC_MEL_Panel_L2C
        annotation (Placement(transformation(extent={{268,-248},{288,-228}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L3A
        smallDC_MEL_Panel_L3A
        annotation (Placement(transformation(extent={{362,-132},{382,-112}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L3B
        smallDC_MEL_Panel_L3B
        annotation (Placement(transformation(extent={{360,-186},{380,-166}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Local_SD.Small_MELs.SmallDC_MEL_Panel_L3C
        smallDC_MEL_Panel_L3C
        annotation (Placement(transformation(extent={{362,-248},{382,-228}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_1A
        dC_ACDC_Light_Panel_L1_1A
        annotation (Placement(transformation(extent={{140,-108},{160,-88}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_1B
        dC_ACDC_Light_Panel_L1_1B
        annotation (Placement(transformation(extent={{134,-172},{154,-152}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_1C
        dC_ACDC_Light_Panel_L1_1C
        annotation (Placement(transformation(extent={{138,-230},{158,-210}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_2A
        dC_ACDC_Light_Panel_L1_2A
        annotation (Placement(transformation(extent={{174,-108},{194,-88}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_2B
        dC_ACDC_Light_Panel_L1_2B
        annotation (Placement(transformation(extent={{166,-170},{186,-150}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L1_2C
        dC_ACDC_Light_Panel_L1_2C
        annotation (Placement(transformation(extent={{176,-230},{196,-210}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_1A
        dC_ACDC_Light_Panel_L2_1A
        annotation (Placement(transformation(extent={{230,-110},{250,-90}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_1B
        dC_ACDC_Light_Panel_L2_1B
        annotation (Placement(transformation(extent={{234,-170},{254,-150}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_1C
        dC_ACDC_Light_Panel_L2_1C
        annotation (Placement(transformation(extent={{232,-224},{252,-204}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_2A
        dC_ACDC_Light_Panel_L2_2A
        annotation (Placement(transformation(extent={{272,-110},{292,-90}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_2B
        dC_ACDC_Light_Panel_L2_2B
        annotation (Placement(transformation(extent={{276,-166},{296,-146}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L2_2C
        dC_ACDC_Light_Panel_L2_2C
        annotation (Placement(transformation(extent={{274,-222},{294,-202}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_1A
        dC_ACDC_Light_Panel_L3_1A
        annotation (Placement(transformation(extent={{324,-112},{344,-92}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_1B
        dC_ACDC_Light_Panel_L3_1B
        annotation (Placement(transformation(extent={{322,-164},{342,-144}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_1C
        dC_ACDC_Light_Panel_L3_1C
        annotation (Placement(transformation(extent={{324,-224},{344,-204}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_2A
        dC_ACDC_Light_Panel_L3_2A
        annotation (Placement(transformation(extent={{370,-110},{390,-90}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_2B
        dC_ACDC_Light_Panel_L3_2B
        annotation (Placement(transformation(extent={{374,-162},{394,-142}})));
      Subsystems.LightingPanels.San_Diego.DC_Local_SD.DC_ACDC_Light_Panel_L3_2C
        dC_ACDC_Light_Panel_L3_2C
        annotation (Placement(transformation(extent={{370,-218},{390,-198}})));
      HPF.PowerConverters.ThreePhase.ACDC_3pInverterSimple PV_Inverter(
        vAngle=0,
        PF=+0.95,
        P_nom=175000,
        P_stby=1,
        VAC_nom=277,
        VDC_nom=660,
        alpha=0.004799349,
        beta=0.010598212,
        gamma=0.016227353,
        Q1(start=0)) annotation (Placement(visible=true, transformation(
            origin={-42,-215},
            extent={{-12,-17},{12,17}},
            rotation=180)));
      HPF.Sources.DC.FixedVoltage_VariablePower DC_Source(v_out(displayUnit="V")=
             660) annotation (Placement(visible=true, transformation(
            origin={-76,-218},
            extent={{-10,-10},{10,10}},
            rotation=90)));
      Modelica.Electrical.Analog.Basic.Ground Ground_DC annotation (
        Placement(visible = true, transformation(origin={-70,-184},  extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Mechanical1(
        tableOnFile=true,
        tableName="pv_profile",
        fileName=ModelicaServices.ExternalReferences.loadResource(
            "modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/pv_san_diego_zero_energy.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600,
        offset={0},
        startTime(displayUnit="h") = 0)    annotation (HideResult=true, Placement(
            transformation(extent={{-120,-228},{-100,-208}})));

      HPF.Cables.NEC_CableModel Cable_PV_C(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_500,
          length=100) annotation (Placement(visible=true, transformation(
            origin={-6,-214},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      HPF.Cables.NEC_CableModel Cable_PV_B(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_500,
          length=100) annotation (Placement(visible=true, transformation(
            origin={0,-226},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      HPF.Cables.NEC_CableModel Cable_PV_A(wireGaugeAC=HPF.Types.WireGaugeAC.gauge_500,
          length=100) annotation (Placement(visible=true, transformation(
            origin={6,-238},
            extent={{-10,-10},{10,10}},
            rotation=0)));
    equation
      connect(Dist_Xmer.pinSec_N, GndAC.pin) annotation (Line(points={{28,-98},{28,-138},
              {18,-138}},        color={117,80,123}));
      connect(gain2.y, realToComplex1.im)
        annotation (Line(points={{8.6,70},{12,70},{12,64},{16,64},{16,66},{19,66}},
                                                         color={0,0,127}));
      connect(gain2.u, realToComplex1.re) annotation (Line(points={{-5.2,70},{-8,70},
              {-8,90},{14,90},{14,72},{19,72}},
                                              color={0,0,127}));
      connect(Mels_xmer.pinSec_N, GndAC2.pin) annotation (Line(points={{144,-30},
              {146,-30},{146,-44}},                  color={117,80,123}));
      connect(realToComplex1.y, aC_LoadIdealWye.S_input) annotation (Line(points={{30.5,69},
              {45,69},{45,58}},          color={85,170,255}));
      connect(combiTimeTable_L1_Mechanical.y[1], gain2.u) annotation (Line(points={{-31,70},
              {-5.2,70}},                                color={0,0,127}));
      connect(aC_LoadIdealWye.hPin_A, Dist_Xmer.pinSec_A) annotation (Line(
            points={{34.6,32},{32,32},{32,-50},{28,-50}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_B, Dist_Xmer.pinSec_B) annotation (Line(
            points={{41.1,32},{42,32},{42,-66},{28,-66}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_C, Dist_Xmer.pinSec_C) annotation (Line(
            points={{47.6,32},{47.6,-82},{28,-82}}, color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_N, Dist_Xmer.pinSec_N) annotation (Line(points={{
              55.4,32},{56,32},{56,-90},{28,-90},{28,-98}}, color={117,80,123}));
      connect(Mels_xmer.pinPrim_A, Dist_Xmer.pinSec_A) annotation (Line(points=
              {{124,-8},{112,-8},{112,-14},{92,-14},{92,-50},{28,-50}}, color={
              92,53,102}));
      connect(Mels_xmer.pinPrim_B, Dist_Xmer.pinSec_B) annotation (Line(points=
              {{124,-18},{118,-18},{118,-22},{108,-22},{108,-66},{28,-66}},
            color={92,53,102}));
      connect(Mels_xmer.pinPrim_C, Dist_Xmer.pinSec_C) annotation (Line(points=
              {{124,-28},{120,-28},{120,-40},{112,-40},{112,-82},{28,-82}},
            color={92,53,102}));
      connect(voltageSource.pinN, GndAC1.pin) annotation (Line(points={{-70,
              -86.75},{-70,-110},{-92,-110}}, color={117,80,123}));
      connect(voltageSource.pinP_phA, Dist_Xmer.pinPrim_A) annotation (Line(
            points={{-57.5,-64},{-42,-64},{-42,-54},{-22,-54}}, color={92,53,
              102}));
      connect(voltageSource.pinP_phB, Dist_Xmer.pinPrim_B)
        annotation (Line(points={{-57.5,-74},{-22,-74}}, color={92,53,102}));
      connect(voltageSource.pinP_phC, Dist_Xmer.pinPrim_C) annotation (Line(
            points={{-57.5,-84},{-52,-84},{-52,-88},{-48,-88},{-48,-94},{-22,
              -94}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L3C.pin_p, Mels_xmer.pinSec_C) annotation (Line(
            points={{278,-42},{276,-42},{276,-38},{274,-38},{274,-28},{154,-28},{154,
              -22},{144,-22}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L1C.pin_p, Mels_xmer.pinSec_C) annotation (Line(
            points={{184,-40},{176,-40},{176,-28},{154,-28},{154,-22},{144,-22}},
            color={92,53,102}));
      connect(large_AC_MEL_Panel_L2C.pin_p, Mels_xmer.pinSec_C) annotation (Line(
            points={{230,-42},{218,-42},{218,-28},{154,-28},{154,-22},{144,-22}},
            color={92,53,102}));
      connect(large_AC_MEL_Panel_L3B.pin_p, Mels_xmer.pinSec_B) annotation (Line(
            points={{278,-8},{274,-8},{274,-2},{268,-2},{268,6},{164,6},{164,-16},
              {144,-16},{144,-14}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L1B.pin_p, Mels_xmer.pinSec_B) annotation (Line(
            points={{184,-8},{164,-8},{164,-16},{144,-16},{144,-14}}, color={92,53,
              102}));
      connect(large_AC_MEL_Panel_L2B.pin_p, Mels_xmer.pinSec_B) annotation (Line(
            points={{232,-10},{222,-10},{222,-4},{216,-4},{216,6},{164,6},{164,-16},
              {144,-16},{144,-14}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L3A.pin_p, Mels_xmer.pinSec_A) annotation (Line(
            points={{276,26},{272,26},{272,32},{268,32},{268,44},{154,44},{154,-6},
              {144,-6}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L1A.pin_p, Mels_xmer.pinSec_A) annotation (Line(
            points={{184,26},{154,26},{154,-6},{144,-6}}, color={92,53,102}));
      connect(large_AC_MEL_Panel_L2A.pin_p, Mels_xmer.pinSec_A) annotation (Line(
            points={{232,26},{224,26},{224,28},{214,28},{214,44},{154,44},{154,-6},
              {144,-6}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_2A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{370,-100},{362,-100},{362,-78},{82,-78},{82,-50},{28,-50}},
            color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_1A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{140,-98},{136,-98},{136,-90},{128,-90},{128,-78},{82,-78},
              {82,-50},{28,-50}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L1A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(
            points={{168,-124},{164,-124},{164,-78},{82,-78},{82,-50},{28,-50}},
            color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_2A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{174,-98},{174,-90},{170,-90},{170,-78},{82,-78},{82,-50},{
              28,-50}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_1A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{230,-100},{216,-100},{216,-94},{212,-94},{212,-78},{82,-78},
              {82,-50},{28,-50}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_2A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{272,-100},{268,-100},{268,-78},{82,-78},{82,-50},{28,-50}},
            color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_1A.pin_p, Dist_Xmer.pinSec_A) annotation (
          Line(points={{324,-102},{318,-102},{318,-94},{310,-94},{310,-78},{82,-78},
              {82,-50},{28,-50}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L3A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(
            points={{362,-122},{362,-112},{348,-112},{348,-78},{82,-78},{82,-50},{
              28,-50}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L2A.pin_p, Dist_Xmer.pinSec_A) annotation (Line(
            points={{262,-124},{262,-78},{82,-78},{82,-50},{28,-50}}, color={92,53,
              102}));
      connect(dC_ACDC_Light_Panel_L3_2B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{374,-152},{370,-152},{370,-154},{360,-154},{360,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L3B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(
            points={{360,-176},{356,-176},{356,-172},{352,-172},{352,-138},{78,-138},
              {78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_1B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{322,-154},{320,-154},{320,-150},{314,-150},{314,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_2B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{276,-156},{272,-156},{272,-150},{266,-150},{266,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_1B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{234,-160},{226,-160},{226,-154},{218,-154},{218,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L2B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(
            points={{262,-180},{260,-180},{260,-162},{258,-162},{258,-138},{78,-138},
              {78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_2B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{166,-160},{164,-160},{164,-154},{160,-154},{160,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_1B.pin_p, Dist_Xmer.pinSec_B) annotation (
          Line(points={{134,-162},{128,-162},{128,-156},{122,-156},{122,-138},{78,
              -138},{78,-66},{28,-66}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L1B.pin_p, Dist_Xmer.pinSec_B) annotation (Line(
            points={{162,-186},{160,-186},{160,-138},{78,-138},{78,-66},{28,-66}},
            color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_2C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{370,-208},{366,-208},{366,-210},{358,-210},{358,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_1C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{138,-220},{128,-220},{128,-212},{120,-212},{120,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L1_2C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{176,-220},{172,-220},{172,-216},{168,-216},{168,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_1C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{232,-214},{226,-214},{226,-212},{218,-212},{218,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L1C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(
            points={{168,-244},{168,-236},{160,-236},{160,-200},{54,-200},{54,-188},
              {60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L2C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(
            points={{268,-238},{262,-238},{262,-228},{258,-228},{258,-200},{54,-200},
              {54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L2_2C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{274,-212},{272,-212},{272,-208},{266,-208},{266,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(dC_ACDC_Light_Panel_L3_1C.pin_p, Dist_Xmer.pinSec_C) annotation (
          Line(points={{324,-214},{318,-214},{318,-212},{310,-212},{310,-200},{54,
              -200},{54,-188},{60,-188},{60,-82},{28,-82}}, color={92,53,102}));
      connect(smallDC_MEL_Panel_L3C.pin_p, Dist_Xmer.pinSec_C) annotation (Line(
            points={{362,-238},{358,-238},{358,-200},{54,-200},{54,-188},{60,-188},
              {60,-82},{28,-82}}, color={92,53,102}));
      connect(DC_Source.n,PV_Inverter. pin_n) annotation (Line(points={{-76,
              -208},{-60,-208},{-60,-201.4},{-54,-201.4}},
                                                       color={0,0,255}));
      connect(combiTimeTable_L1_Mechanical1.y[1],DC_Source. p_out) annotation (
          Line(points={{-99,-218},{-96,-218},{-96,-204},{-84,-204},{-84,-218}},
            color={0,0,127}));
      connect(PV_Inverter.hPin_C,Cable_PV_C. pin_p) annotation (Line(points={{-30,
              -211.6},{-30,-214},{-16,-214}},             color={92,53,102}));
      connect(PV_Inverter.hPin_B,Cable_PV_B. pin_p) annotation (Line(points={{-30,
              -220.1},{-16,-220.1},{-16,-226},{-10,-226}},
                                                        color={92,53,102}));
      connect(PV_Inverter.hPin_A,Cable_PV_A. pin_p) annotation (Line(points={{-30,
              -228.6},{-20,-228.6},{-20,-238},{-4,-238}},color={92,53,102}));
      connect(Ground_DC.p,DC_Source. n) annotation (Line(points={{-70,-174},{
              -66,-174},{-66,-208},{-76,-208}}, color={0,0,255}));
      connect(DC_Source.p,PV_Inverter. pin_p) annotation (Line(points={{-76,
              -228},{-62,-228},{-62,-228.6},{-54,-228.6}},
                                                       color={0,0,255}));
      connect(PV_Inverter.hPin_N, GndAC.pin) annotation (Line(points={{-30,
              -201.4},{-20,-201.4},{-20,-196},{-6,-196},{-6,-138},{18,-138}},
            color={117,80,123}));
      connect(Cable_PV_C.pin_n, Dist_Xmer.pinSec_C) annotation (Line(points={{4,
              -214},{16,-214},{16,-212},{54,-212},{54,-188},{60,-188},{60,-82},
              {28,-82}}, color={117,80,123}));
      connect(Cable_PV_B.pin_n, Dist_Xmer.pinSec_B) annotation (Line(points={{
              10,-226},{50,-226},{50,-230},{78,-230},{78,-66},{28,-66}}, color=
              {117,80,123}));
      connect(Cable_PV_A.pin_n, Dist_Xmer.pinSec_A) annotation (Line(points={{
              16,-238},{40,-238},{40,-244},{90,-244},{90,-78},{82,-78},{82,-50},
              {28,-50}}, color={117,80,123}));
      annotation (
        Diagram(coordinateSystem(extent={{-140,-260},{420,100}})),
        Icon(coordinateSystem(extent={{-140,-260},{420,100}})),
        experiment(
          StopTime=31536000,
          Interval=900,
          Tolerance=0.1,
          __Dymola_fixedstepsize=900,
          __Dymola_Algorithm="Dassl"));
    end LocalDC_model_SD_PV_ZE;
  end Local_DC;

  package Central_DC
    model CentralDC_model_SD

      inner parameter Real PF = 0.95;
      inner parameter Real PF1 = tan(acos(PF));
      parameter Real Vs = 7200;
      parameter Real kp = 3;
      parameter Real ks = 1;
      parameter Real km = 3;

      HPF.SinglePhase.Components.Ground GndAC annotation (
        Placement(HideResult=true, visible = true, transformation(origin={-6,-142},   extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.SinglePhase.Components.Ground GndAC1
                                              annotation (
        Placement(HideResult=true,visible = true, transformation(origin={-116,
                -114},                                                               extent = {{-8, -8}, {8, 8}}, rotation=0)));
      HPF.Transformers.ThreePhase.Symmetric.D1Y Dist_Xmer(
        VPrimRated=12470,
        VSecRated=480,
        Rc=110450.1*km,
        Rp=0.43785*kp,
        Rs=0.0006488*ks,
        Xm=10366.7*km,
        Xp=4.4882*kp,
        Xs=0.00665*ks)  annotation (Placement(visible=true,
            transformation(extent={{-46,-90},{4,-50}},  rotation=0)));
      Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex1
        annotation (Placement(transformation(extent={{-2,10},{8,20}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_Mechanical(
        tableOnFile=true,
        tableName="Mechanical",
        fileName=ModelicaServices.ExternalReferences.loadResource("modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-Mechanical_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600,
        offset={0},
        startTime(displayUnit="h") = 0)    annotation (HideResult=true, Placement(
            transformation(extent={{-74,6},{-54,26}})));

      Modelica.Blocks.Math.Gain gain2(k=PF1)
        annotation (HideResult=true,Placement(transformation(extent={{-26,10},{
                -14,22}})));
      inner HPF.SystemDef systemDef(
        fFund=60,
        fs=5000,
        hrms={1},
        numPh=3) annotation (Placement(visible=true, transformation(
            origin={-110,176.571},
            extent={{-16,-16},{16,11.4286}},
            rotation=0)));
      HPF.Loads.ThreePhase.AC_LoadIdealWye aC_LoadIdealWye(
        P_nom=100000,
        Q_nom=25000,
        vAngle_init(displayUnit="deg") = 0.5235987755983) annotation (
          HideResult=true, Placement(transformation(
            extent={{-13,-13},{13,13}},
            rotation=90,
            origin={23,-9})));
      HPF.Sources.ThreePhase.VoltageSource voltageSource(
        vArg_phA={0},
        vArg_phB={-2.0944},
        vArg_phC={2.0944},
        vMag_phA={Vs},
        vMag_phB={Vs},
        vMag_phC={Vs}) annotation (Placement(visible=true, transformation(
            origin={-94,-70},
            extent={{-10,-10},{10,10}},
            rotation=0)));
      Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex
        annotation (Placement(transformation(extent={{160,158},{170,168}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L1_All_Plugs_General(
        tableOnFile=true,
        tableName="L1-All-Plugs-General",
        fileName=ModelicaServices.ExternalReferences.loadResource(
            "modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L1_MELs_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{100,180},
                {120,200}})));
      Modelica.Blocks.Math.Gain gain_gen_plugs_L1_A(k=2204.25)
        annotation (Placement(transformation(extent={{128,184},{140,196}})));
      Modelica.Blocks.Math.Gain gain1(k=PF1)
        annotation (Placement(transformation(extent={{138,154},{150,166}})));
      Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex2
        annotation (Placement(transformation(extent={{258,154},{268,164}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L2_All_Plugs_General(
        tableOnFile=true,
        tableName="L2-All-Plugs-General",
        fileName=ModelicaServices.ExternalReferences.loadResource(
            "modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L2_MELs_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{206,178},
                {226,198}})));
      Modelica.Blocks.Math.Gain gain_gen_plugs_L2_A(k=2204.25)
        annotation (Placement(transformation(extent={{236,182},{248,194}})));
      Modelica.Blocks.Math.Gain gain3(k=PF1)
        annotation (Placement(transformation(extent={{236,150},{248,162}})));
      Modelica.ComplexBlocks.ComplexMath.RealToComplex realToComplex3
        annotation (Placement(transformation(extent={{366,146},{376,156}})));
      Modelica.Blocks.Sources.CombiTimeTable combiTimeTable_L3_All_Plugs_General(
        tableOnFile=true,
        tableName="L3-All-Plugs-General",
        fileName=ModelicaServices.ExternalReferences.loadResource(
            "modelica://PrototypeBuildingElectricalModels/Data/LoadProfiles/San-Diego-L3_MELs_LP.txt"),
        smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
        extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,
        timeScale(displayUnit="h") = 3600)
        annotation (HideResult=true, Placement(transformation(extent={{306,168},
                {326,188}})));
      Modelica.Blocks.Math.Gain gain_gen_plugs_L3_A(k=2204.25)
        annotation (Placement(transformation(extent={{334,172},{346,184}})));
      Modelica.Blocks.Math.Gain gain4(k=PF1)
        annotation (Placement(transformation(extent={{344,142},{356,154}})));
      HPF.PowerConverters.ThreePhase.ACDC_3pBidirectionalSimple Simple_Bidirectional_3phase(
        P_nom=100000,
        VAC_nom=277,
        VDC_nom=380,
        vAngle=0,
        alpha_ACDC=0.011660807,
        alpha_DCAC=0.005765519,
        beta_ACDC=-0.013106201,
        beta_DCAC=0.01136924,
        gamma_ACDC=0.033250334,
        gamma_DCAC=0.013725159,
        PF=+0.95,
        Q1(start=0)) annotation (Placement(visible=true, transformation(
            origin={89,-54},
            extent={{-21,-20},{21,20}},
            rotation=0)));
      Modelica.Electrical.Analog.Basic.Ground Ground_DC annotation (
        Placement(visible = true, transformation(origin={136,-106},  extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      HPF.Loads.ThreePhase.AC_LoadIdealWye aC_LoadIdealWye1(
        P_nom=2205*3,
        Q_nom=1068*3,
        V_nom=120,
        vAngle_init(displayUnit="deg") = 0.5235987755983) annotation (HideResult=true,
          Placement(transformation(
            extent={{13,13},{-13,-13}},
            rotation=270,
            origin={151,119})));
      HPF.Loads.ThreePhase.AC_LoadIdealWye aC_LoadIdealWye2(
        P_nom=2205*3,
        Q_nom=1068*3,
        V_nom=120,
        vAngle_init(displayUnit="deg") = 0.5235987755983) annotation (HideResult=true,
          Placement(transformation(
            extent={{13,13},{-13,-13}},
            rotation=270,
            origin={237,115})));
      HPF.Loads.ThreePhase.AC_LoadIdealWye aC_LoadIdealWye3(
        P_nom=2205*3,
        Q_nom=1068*3,
        V_nom=120,
        vAngle_init(displayUnit="deg") = 0.5235987755983) annotation (HideResult=true,
          Placement(transformation(
            extent={{13,13},{-13,-13}},
            rotation=270,
            origin={349,111})));
      HPF.SinglePhase.Components.Ground GndAC2 annotation (Placement(
          HideResult=true,
          visible=true,
          transformation(
            origin={298,46},
            extent={{-8,-8},{8,8}},
            rotation=0)));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L1_1A
        dC_ACDC_Light_Panel_L1_1A
        annotation (Placement(transformation(extent={{190,-54},{210,-34}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L1_1B
        dC_ACDC_Light_Panel_L1_1B
        annotation (Placement(transformation(extent={{224,-54},{244,-34}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L1_1C
        dC_ACDC_Light_Panel_L1_1C
        annotation (Placement(transformation(extent={{256,-54},{276,-34}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L1_2A
        dC_ACDC_Light_Panel_L1_2A
        annotation (Placement(transformation(extent={{288,-54},{308,-34}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L1_2B
        dC_ACDC_Light_Panel_L1_2B
        annotation (Placement(transformation(extent={{322,-54},{342,-34}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L1_2C
        dC_ACDC_Light_Panel_L1_2C
        annotation (Placement(transformation(extent={{356,-54},{376,-34}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L2_1A
        dC_ACDC_Light_Panel_L2_1A
        annotation (Placement(transformation(extent={{190,-82},{210,-62}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L2_1B
        dC_ACDC_Light_Panel_L2_1B
        annotation (Placement(transformation(extent={{224,-84},{244,-64}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L2_1C
        dC_ACDC_Light_Panel_L2_1C
        annotation (Placement(transformation(extent={{256,-84},{276,-64}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L2_2A
        dC_ACDC_Light_Panel_L2_2A
        annotation (Placement(transformation(extent={{290,-86},{310,-66}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L2_2B
        dC_ACDC_Light_Panel_L2_2B
        annotation (Placement(transformation(extent={{324,-88},{344,-68}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L2_2C
        dC_ACDC_Light_Panel_L2_2C
        annotation (Placement(transformation(extent={{358,-88},{378,-68}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L3_1A
        dC_ACDC_Light_Panel_L3_1A
        annotation (Placement(transformation(extent={{190,-116},{210,-96}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L3_1B
        dC_ACDC_Light_Panel_L3_1B
        annotation (Placement(transformation(extent={{222,-116},{242,-96}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L3_1C
        dC_ACDC_Light_Panel_L3_1C
        annotation (Placement(transformation(extent={{256,-116},{276,-96}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L3_2A
        dC_ACDC_Light_Panel_L3_2A
        annotation (Placement(transformation(extent={{290,-118},{310,-98}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L3_2B
        dC_ACDC_Light_Panel_L3_2B
        annotation (Placement(transformation(extent={{324,-118},{344,-98}})));
      Subsystems.LightingPanels.San_Diego.DC_Central_DC.DC_ACDC_Light_Panel_L3_2C
        dC_ACDC_Light_Panel_L3_2C
        annotation (Placement(transformation(extent={{360,-120},{380,-100}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Small_MELs.SmallDC_MEL_Panel_L1A
        smallDC_MEL_Panel_L1A
        annotation (Placement(transformation(extent={{190,-154},{210,-134}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Small_MELs.SmallDC_MEL_Panel_L1B
        smallDC_MEL_Panel_L1B
        annotation (Placement(transformation(extent={{224,-156},{244,-136}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Small_MELs.SmallDC_MEL_Panel_L1C
        smallDC_MEL_Panel_L1C
        annotation (Placement(transformation(extent={{258,-158},{278,-138}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Small_MELs.SmallDC_MEL_Panel_L2A
        smallDC_MEL_Panel_L2A
        annotation (Placement(transformation(extent={{292,-160},{312,-140}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Small_MELs.SmallDC_MEL_Panel_L2B
        smallDC_MEL_Panel_L2B
        annotation (Placement(transformation(extent={{324,-162},{344,-142}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Small_MELs.SmallDC_MEL_Panel_L2C
        smallDC_MEL_Panel_L2C
        annotation (Placement(transformation(extent={{360,-154},{380,-134}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Small_MELs.SmallDC_MEL_Panel_L3A
        smallDC_MEL_Panel_L3A
        annotation (Placement(transformation(extent={{190,-194},{210,-174}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Small_MELs.SmallDC_MEL_Panel_L3B
        smallDC_MEL_Panel_L3B
        annotation (Placement(transformation(extent={{224,-192},{244,-172}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Small_MELs.SmallDC_MEL_Panel_L3C
        smallDC_MEL_Panel_L3C
        annotation (Placement(transformation(extent={{260,-194},{280,-174}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Large_MELs.large_AC_MEL_Panel_L1A
        large_AC_MEL_Panel_L1A
        annotation (Placement(transformation(extent={{292,-196},{312,-176}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Large_MELs.large_AC_MEL_Panel_L1B
        large_AC_MEL_Panel_L1B
        annotation (Placement(transformation(extent={{326,-196},{346,-176}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Large_MELs.large_AC_MEL_Panel_L1C
        large_AC_MEL_Panel_L1C
        annotation (Placement(transformation(extent={{360,-188},{380,-168}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Large_MELs.large_AC_MEL_Panel_L2A
        large_AC_MEL_Panel_L2A
        annotation (Placement(transformation(extent={{190,-230},{210,-210}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Large_MELs.large_AC_MEL_Panel_L2B
        large_AC_MEL_Panel_L2B
        annotation (Placement(transformation(extent={{226,-232},{246,-212}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Large_MELs.large_AC_MEL_Panel_L2C
        large_AC_MEL_Panel_L2C
        annotation (Placement(transformation(extent={{264,-232},{284,-212}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Large_MELs.large_AC_MEL_Panel_L3A
        large_AC_MEL_Panel_L3A
        annotation (Placement(transformation(extent={{294,-234},{314,-214}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Large_MELs.large_AC_MEL_Panel_L3B
        large_AC_MEL_Panel_L3B
        annotation (Placement(transformation(extent={{330,-234},{350,-214}})));
      Subsystems.Receptacle_Panel.San_Diego.DC_Central_SD.Large_MELs.large_AC_MEL_Panel_L3C
        large_AC_MEL_Panel_L3C
        annotation (Placement(transformation(extent={{362,-228},{382,-208}})));
      HPF.PowerConverters.ThreePhase.ACDC_3pInverterSimpleGridForming Simple_Inverter_Grid_Forming(
        P_ACmin=26.26,
        P_nom=2000,
        P_stby=1.58,
        VAC_nom=120,
        VDC_nom=380,
        alpha=0.006933206,
        beta=0.013024277,
        gamma=0.015653292,
        vAngle=0.5235987755983,
        vArg_ref=0.5235987755983,
        vMag_ref=120)                                                                                                                                                                                                         annotation (
        Placement(visible = true, transformation(origin={215,38},   extent={{17,-16},
                {-17,16}},                                                                           rotation=90)));
    equation
      connect(Dist_Xmer.pinSec_N, GndAC.pin) annotation (Line(points={{4,-94},{
              4,-134},{-6,-134}},color={117,80,123}));
      connect(gain2.y, realToComplex1.im)
        annotation (Line(points={{-13.4,16},{-10,16},{-10,10},{-6,10},{-6,12},{
              -3,12}},                                   color={0,0,127}));
      connect(gain2.u, realToComplex1.re) annotation (Line(points={{-27.2,16},{
              -30,16},{-30,36},{-8,36},{-8,18},{-3,18}},
                                              color={0,0,127}));
      connect(realToComplex1.y, aC_LoadIdealWye.S_input) annotation (Line(points={{8.5,15},
              {23,15},{23,4}},           color={85,170,255}));
      connect(combiTimeTable_L1_Mechanical.y[1], gain2.u) annotation (Line(points={{-53,16},
              {-27.2,16}},                               color={0,0,127}));
      connect(aC_LoadIdealWye.hPin_A, Dist_Xmer.pinSec_A) annotation (Line(
            points={{12.6,-22},{10,-22},{10,-46},{4,-46}},color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_B, Dist_Xmer.pinSec_B) annotation (Line(
            points={{19.1,-22},{20,-22},{20,-62},{4,-62}},color={92,53,102}));
      connect(aC_LoadIdealWye.hPin_C, Dist_Xmer.pinSec_C) annotation (Line(
            points={{25.6,-22},{25.6,-78},{4,-78}}, color={92,53,102}));
      connect(voltageSource.pinN, GndAC1.pin) annotation (Line(points={{-94,
              -82.75},{-94,-106},{-116,-106}},color={117,80,123}));
      connect(voltageSource.pinP_phA, Dist_Xmer.pinPrim_A) annotation (Line(
            points={{-81.5,-60},{-66,-60},{-66,-50},{-46,-50}}, color={92,53,
              102}));
      connect(voltageSource.pinP_phB, Dist_Xmer.pinPrim_B)
        annotation (Line(points={{-81.5,-70},{-46,-70}}, color={92,53,102}));
      connect(voltageSource.pinP_phC, Dist_Xmer.pinPrim_C) annotation (Line(
            points={{-81.5,-80},{-76,-80},{-76,-84},{-72,-84},{-72,-90},{-46,
              -90}}, color={92,53,102}));
      connect(combiTimeTable_L1_All_Plugs_General.y[1],gain_gen_plugs_L1_A. u)
        annotation (Line(points={{121,190},{126.8,190}},
                                                       color={0,0,127}));
      connect(gain_gen_plugs_L1_A.y,realToComplex. re) annotation (Line(points={{140.6,
              190},{146,190},{146,180},{159,180},{159,166}},
                                                        color={0,0,127}));
      connect(gain1.y,realToComplex. im)
        annotation (Line(points={{150.6,160},{159,160}},
                                                       color={0,0,127}));
      connect(gain1.u,realToComplex. re) annotation (Line(points={{136.8,160},{
              132,160},{132,176},{159,176},{159,166}},
                                           color={0,0,127}));
      connect(combiTimeTable_L2_All_Plugs_General.y[1],gain_gen_plugs_L2_A. u)
        annotation (Line(points={{227,188},{234.8,188}},
                                                       color={0,0,127}));
      connect(gain_gen_plugs_L2_A.y, realToComplex2.re) annotation (Line(points={{248.6,
              188},{244,188},{244,176},{257,176},{257,162}},        color={0,0,
              127}));
      connect(gain3.y, realToComplex2.im)
        annotation (Line(points={{248.6,156},{257,156}}, color={0,0,127}));
      connect(gain3.u, realToComplex2.re) annotation (Line(points={{234.8,156},
              {230,156},{230,172},{257,172},{257,162}}, color={0,0,127}));
      connect(combiTimeTable_L3_All_Plugs_General.y[1],gain_gen_plugs_L3_A. u)
        annotation (Line(points={{327,178},{332.8,178}},
                                                       color={0,0,127}));
      connect(gain_gen_plugs_L3_A.y, realToComplex3.re) annotation (Line(points={{346.6,
              178},{352,178},{352,168},{365,168},{365,154}},        color={0,0,
              127}));
      connect(gain4.y, realToComplex3.im)
        annotation (Line(points={{356.6,148},{365,148}}, color={0,0,127}));
      connect(gain4.u, realToComplex3.re) annotation (Line(points={{342.8,148},
              {338,148},{338,164},{365,164},{365,154}}, color={0,0,127}));
      connect(aC_LoadIdealWye.hPin_N, GndAC.pin) annotation (Line(points={{33.4,
              -22},{34,-22},{34,-134},{-6,-134}}, color={117,80,123}));
      connect(Simple_Bidirectional_3phase.hPin_N, GndAC.pin) annotation (Line(
            points={{68,-70},{82,-70},{82,-90},{70,-90},{70,-134},{-6,-134}},
            color={117,80,123}));
      connect(Simple_Bidirectional_3phase.hPin_A, Dist_Xmer.pinSec_A)
        annotation (Line(points={{68,-38},{64,-38},{64,-40},{4,-40},{4,-46}},
            color={92,53,102}));
      connect(Simple_Bidirectional_3phase.hPin_B, Dist_Xmer.pinSec_B)
        annotation (Line(points={{68,-48},{56,-48},{56,-62},{4,-62}}, color={92,
              53,102}));
      connect(Simple_Bidirectional_3phase.hPin_C, Dist_Xmer.pinSec_C)
        annotation (Line(points={{68,-58},{64,-58},{64,-78},{4,-78}}, color={92,
              53,102}));
      connect(Simple_Bidirectional_3phase.pin_n, Ground_DC.p) annotation (Line(
            points={{110,-70},{116,-70},{116,-68},{136,-68},{136,-96}}, color={
              0,0,255}));
      connect(aC_LoadIdealWye1.S_input, realToComplex.y) annotation (Line(
            points={{151,132},{180,132},{180,163},{170.5,163}},
                                                            color={85,170,255}));
      connect(realToComplex2.y, aC_LoadIdealWye2.S_input) annotation (Line(
            points={{268.5,159},{268.5,158},{276,158},{276,130},{237,130},{237,
              128}},
            color={85,170,255}));
      connect(aC_LoadIdealWye3.S_input, realToComplex3.y) annotation (Line(
            points={{349,124},{382,124},{382,151},{376.5,151}},
                                                            color={85,170,255}));
      connect(dC_ACDC_Light_Panel_L1_2C.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{356,-34},{356,-24},{124,-24},{124,-38},{110,
              -38}}, color={0,0,255}));
      connect(dC_ACDC_Light_Panel_L1_1A.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{190,-34},{184,-34},{184,-32},{180,-32},{180,
              -24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(dC_ACDC_Light_Panel_L1_1B.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{224,-34},{220,-34},{220,-30},{212,-30},{212,
              -24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(dC_ACDC_Light_Panel_L1_1C.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{256,-34},{248,-34},{248,-24},{124,-24},{124,
              -38},{110,-38}}, color={0,0,255}));
      connect(dC_ACDC_Light_Panel_L1_2A.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{288,-34},{284,-34},{284,-26},{278,-26},{278,
              -24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(dC_ACDC_Light_Panel_L1_2B.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{322,-34},{318,-34},{318,-28},{314,-28},{314,
              -24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(dC_ACDC_Light_Panel_L2_2C.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{358,-68},{346,-68},{346,-60},{158,-60},{158,
              -24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(dC_ACDC_Light_Panel_L2_1A.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{190,-62},{188,-62},{188,-58},{184,-58},{184,
              -60},{158,-60},{158,-24},{124,-24},{124,-38},{110,-38}}, color={0,
              0,255}));
      connect(dC_ACDC_Light_Panel_L2_1B.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{224,-64},{218,-64},{218,-60},{158,-60},{158,
              -24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(dC_ACDC_Light_Panel_L2_1C.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{256,-64},{252,-64},{252,-60},{158,-60},{158,
              -24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(dC_ACDC_Light_Panel_L2_2A.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{290,-66},{284,-66},{284,-64},{280,-64},{280,
              -60},{158,-60},{158,-24},{124,-24},{124,-38},{110,-38}}, color={0,
              0,255}));
      connect(dC_ACDC_Light_Panel_L2_2B.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{324,-68},{318,-68},{318,-62},{314,-62},{314,
              -60},{158,-60},{158,-24},{124,-24},{124,-38},{110,-38}}, color={0,
              0,255}));
      connect(dC_ACDC_Light_Panel_L3_2C.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{360,-100},{358,-100},{358,-92},{158,-92},{158,
              -24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(dC_ACDC_Light_Panel_L3_1A.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{190,-96},{176,-96},{176,-92},{158,-92},{158,
              -24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(dC_ACDC_Light_Panel_L3_2B.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{324,-98},{320,-98},{320,-96},{314,-96},{314,
              -92},{158,-92},{158,-24},{124,-24},{124,-38},{110,-38}}, color={0,
              0,255}));
      connect(dC_ACDC_Light_Panel_L3_2A.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{290,-98},{282,-98},{282,-92},{158,-92},{158,
              -24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(dC_ACDC_Light_Panel_L3_1C.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{256,-96},{248,-96},{248,-92},{158,-92},{158,
              -24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(dC_ACDC_Light_Panel_L3_1B.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{222,-96},{214,-96},{214,-92},{158,-92},{158,
              -24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(smallDC_MEL_Panel_L2C.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{360,-134},{358,-134},{358,-128},{158,-128},{
              158,-24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(smallDC_MEL_Panel_L1A.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{190,-134},{190,-128},{158,-128},{158,-24},{
              124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(smallDC_MEL_Panel_L1B.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{224,-136},{224,-128},{158,-128},{158,-24},{
              124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(smallDC_MEL_Panel_L1C.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{258,-138},{258,-128},{158,-128},{158,-24},{
              124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(smallDC_MEL_Panel_L2A.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{292,-140},{292,-128},{158,-128},{158,-24},{
              124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(smallDC_MEL_Panel_L2B.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{324,-142},{324,-136},{322,-136},{322,-128},{
              158,-128},{158,-24},{124,-24},{124,-38},{110,-38}}, color={0,0,
              255}));
      connect(large_AC_MEL_Panel_L1C.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{360,-168},{306,-168},{306,-166},{158,-166},{
              158,-24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(large_AC_MEL_Panel_L1B.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{326,-176},{324,-176},{324,-170},{320,-170},{
              320,-168},{306,-168},{306,-166},{158,-166},{158,-24},{124,-24},{
              124,-38},{110,-38}}, color={0,0,255}));
      connect(large_AC_MEL_Panel_L1A.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{292,-176},{292,-170},{288,-170},{288,-166},{
              158,-166},{158,-24},{124,-24},{124,-38},{110,-38}}, color={0,0,
              255}));
      connect(smallDC_MEL_Panel_L3C.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{260,-174},{258,-174},{258,-168},{256,-168},{
              256,-166},{158,-166},{158,-24},{124,-24},{124,-38},{110,-38}},
            color={0,0,255}));
      connect(smallDC_MEL_Panel_L3A.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{190,-174},{186,-174},{186,-170},{180,-170},{
              180,-166},{158,-166},{158,-24},{124,-24},{124,-38},{110,-38}},
            color={0,0,255}));
      connect(smallDC_MEL_Panel_L3B.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{224,-172},{220,-172},{220,-168},{214,-168},{
              214,-166},{158,-166},{158,-24},{124,-24},{124,-38},{110,-38}},
            color={0,0,255}));
      connect(large_AC_MEL_Panel_L3C.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{362,-208},{292,-208},{292,-198},{158,-198},{
              158,-24},{124,-24},{124,-38},{110,-38}}, color={0,0,255}));
      connect(large_AC_MEL_Panel_L2A.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{190,-210},{188,-210},{188,-204},{184,-204},{
              184,-198},{158,-198},{158,-24},{124,-24},{124,-38},{110,-38}},
            color={0,0,255}));
      connect(large_AC_MEL_Panel_L2B.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{226,-212},{226,-206},{222,-206},{222,-198},{
              158,-198},{158,-24},{124,-24},{124,-38},{110,-38}}, color={0,0,
              255}));
      connect(large_AC_MEL_Panel_L2C.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{264,-212},{260,-212},{260,-208},{256,-208},{
              256,-198},{158,-198},{158,-24},{124,-24},{124,-38},{110,-38}},
            color={0,0,255}));
      connect(large_AC_MEL_Panel_L3A.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{294,-214},{294,-206},{292,-206},{292,-198},{
              158,-198},{158,-24},{124,-24},{124,-38},{110,-38}}, color={0,0,
              255}));
      connect(large_AC_MEL_Panel_L3B.p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{330,-214},{324,-214},{324,-212},{320,-212},{
              320,-208},{292,-208},{292,-198},{158,-198},{158,-24},{124,-24},{
              124,-38},{110,-38}}, color={0,0,255}));
      connect(Simple_Inverter_Grid_Forming.pin_p, Simple_Bidirectional_3phase.pin_p)
        annotation (Line(points={{202.2,21},{124,21},{124,-38},{110,-38}},
            color={0,0,255}));
      connect(Ground_DC.p, Simple_Inverter_Grid_Forming.pin_n) annotation (Line(
            points={{136,-96},{144,-96},{144,-2},{227.8,-2},{227.8,21}}, color=
              {0,0,255}));
      connect(Simple_Inverter_Grid_Forming.hPin_N, GndAC2.pin) annotation (Line(
            points={{227.8,55},{227.8,68},{298,68},{298,54}}, color={117,80,123}));
      connect(aC_LoadIdealWye3.hPin_N, GndAC2.pin) annotation (Line(points={{
              359.4,98},{360,98},{360,68},{298,68},{298,54}}, color={117,80,123}));
      connect(aC_LoadIdealWye2.hPin_N, GndAC2.pin) annotation (Line(points={{
              247.4,102},{250,102},{250,68},{298,68},{298,54}}, color={117,80,
              123}));
      connect(aC_LoadIdealWye1.hPin_N, GndAC2.pin) annotation (Line(points={{
              161.4,106},{161.4,68},{298,68},{298,54}}, color={117,80,123}));
      connect(aC_LoadIdealWye1.hPin_A, Simple_Inverter_Grid_Forming.hPin_A)
        annotation (Line(points={{140.6,106},{140.6,88},{202.2,88},{202.2,55}},
            color={92,53,102}));
      connect(aC_LoadIdealWye3.hPin_A, Simple_Inverter_Grid_Forming.hPin_A)
        annotation (Line(points={{338.6,98},{338.6,88},{202.2,88},{202.2,55}},
            color={92,53,102}));
      connect(aC_LoadIdealWye2.hPin_A, Simple_Inverter_Grid_Forming.hPin_A)
        annotation (Line(points={{226.6,102},{228,102},{228,92},{226,92},{226,
              88},{202.2,88},{202.2,55}}, color={92,53,102}));
      connect(aC_LoadIdealWye1.hPin_B, Simple_Inverter_Grid_Forming.hPin_B)
        annotation (Line(points={{147.1,106},{148,106},{148,92},{212,92},{212,
              55},{210.2,55}}, color={92,53,102}));
      connect(aC_LoadIdealWye3.hPin_B, Simple_Inverter_Grid_Forming.hPin_B)
        annotation (Line(points={{345.1,98},{346,98},{346,80},{212,80},{212,55},
              {210.2,55}}, color={92,53,102}));
      connect(aC_LoadIdealWye2.hPin_B, Simple_Inverter_Grid_Forming.hPin_B)
        annotation (Line(points={{233.1,102},{236,102},{236,80},{212,80},{212,
              55},{210.2,55}}, color={92,53,102}));
      connect(aC_LoadIdealWye1.hPin_C, Simple_Inverter_Grid_Forming.hPin_C)
        annotation (Line(points={{153.6,106},{154,106},{154,76},{218.2,76},{
              218.2,55}}, color={92,53,102}));
      connect(aC_LoadIdealWye3.hPin_C, Simple_Inverter_Grid_Forming.hPin_C)
        annotation (Line(points={{351.6,98},{351.6,76},{218.2,76},{218.2,55}},
            color={92,53,102}));
      connect(aC_LoadIdealWye2.hPin_C, Simple_Inverter_Grid_Forming.hPin_C)
        annotation (Line(points={{239.6,102},{242,102},{242,92},{244,92},{244,
              76},{218.2,76},{218.2,55}}, color={92,53,102}));
      annotation (
        Diagram(coordinateSystem(extent={{-140,-260},{420,260}})),
        Icon(coordinateSystem(extent={{-140,-260},{420,260}})),
        experiment(
          StopTime=31536000,
          Interval=900,
          Tolerance=0.01,
          __Dymola_fixedstepsize=900,
          __Dymola_Algorithm="Euler"));
    end CentralDC_model_SD;
  end Central_DC;
end San_Diego;
