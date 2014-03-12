within Multirotor.Examples;
model RotorTest
  extends Modelica.Icons.Example;
  import Modelica.Mechanics.MultiBody.World;
  import Modelica.Electrical.Analog.Sources.ConstantVoltage;
  import Modelica.Electrical.Analog.Basic.Ground;
  import Modelica.Mechanics.Rotational.Components.LossyGear;
  import Modelica.Mechanics.Rotational.Sensors.*;
  ConstantVoltage constantvoltage1 annotation(Placement(visible = true, transformation(origin = {-60,60}, extent = {{10,-10},{-10,10}}, rotation = 0)));
  Ground ground1 annotation(Placement(visible = true, transformation(origin = {-60,80}, extent = {{-12.5,-12.5},{12.5,12.5}}, rotation = 0)));
  Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm(VaNominal = 12, IaNominal = 1, wNominal = 314) annotation(Placement(visible = true, transformation(origin = {-55,15}, extent = {{-15,-15},{15,15}}, rotation = 0)));
  LossyGear lossygear1(ratio = 1) annotation(Placement(visible = true, transformation(origin = {5,15}, extent = {{-15,-15},{15,15}}, rotation = 0)));
  AngleSensor angle annotation(Placement(visible = true, transformation(origin = {60,40}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  SpeedSensor angularSpeed annotation(Placement(visible = true, transformation(origin = {60,0}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-60,-60}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Rotor rotor1 annotation(Placement(visible = true, transformation(origin = {40,-60}, extent = {{-10,-10},{10,10}}, rotation = -90)));
equation
  connect(rotor1.frame,world.frame_b) annotation(Line(points = {{30,-60},{30,-59.4512},{-50.3049,-59.4512},{-50.3049,-59.4512}}));
  connect(rotor1.flange,lossygear1.flange_b) annotation(Line(points = {{40,-50},{40,15.2439},{20.4268,15.2439},{20.4268,15.2439}}));
  connect(lossygear1.flange_b,angle.flange) annotation(Line(points = {{20,15},{20.4268,15},{20.4268,40.2439},{50,40.2439},{50,40.2439}}));
  connect(angularSpeed.flange,lossygear1.flange_b) annotation(Line(points = {{50,0},{20.4268,0},{20.4268,15.2439},{20.4268,15.2439}}));
  connect(dcpm.flange,lossygear1.flange_a) annotation(Line(points = {{-40,15},{-10.6707,15},{-10.6707,14.6341},{-10.6707,14.6341}}));
  connect(dcpm.pin_ap,constantvoltage1.p) annotation(Line(points = {{-46,30},{-39.3293,30},{-39.3293,60.3659},{-50,60.3659},{-50,60}}));
  connect(constantvoltage1.n,dcpm.pin_an) annotation(Line(points = {{-70,60},{-79.5732,60},{-79.5732,30.1829},{-66,30},{-64,30}}));
  connect(ground1.p,constantvoltage1.n) annotation(Line(points = {{-60,92.5},{-70.4268,92.5},{-70.4268,60.6707},{-70.4268,60.6707}}));
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
end RotorTest;