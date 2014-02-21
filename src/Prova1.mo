model Prova1
  Arm arm1 annotation(Placement(visible = true, transformation(origin = {20,-20}, extent = {{-25,-25},{25,25}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-60,-40}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantvoltage1(V = 5) annotation(Placement(visible = true, transformation(origin = {-80,20}, extent = {{-10,-10},{10,10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-80,-80}, extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(ground1.p,constantvoltage1.n) annotation(Line(points = {{-80,-70},{-90.5488,-70},{-90.5488,10.6707},{-80.1829,10.6707},{-80.1829,10.6707}}));
  connect(arm1.pin_n,constantvoltage1.n) annotation(Line(points = {{-5,-15},{-79.5732,-15},{-79.5732,10.061},{-79.5732,10.061}}));
  connect(constantvoltage1.p,arm1.pin_p) annotation(Line(points = {{-80,30},{-80,39.3293},{-4.57317,39.3293},{-4.57317,-4.57317},{-4.57317,-4.57317}}));
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
end Prova1;