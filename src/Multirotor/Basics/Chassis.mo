within Multirotor.Basics;
model Chassis
  import Modelica.SIunits.Mass;
  parameter Mass mass = 0.78 "Mass of the chassis (central body)";
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedrotation2(n = {0,1,0}, angle = 270) annotation(Placement(visible = true, transformation(origin = {40,80}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedrotation1(n = {0,1,0}, angle = 180) annotation(Placement(visible = true, transformation(origin = {40,40}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedRotation fixedrotation3(n = {0,1,0}, angle = 90) annotation(Placement(visible = true, transformation(origin = {40,0}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Body body(m = mass) annotation(Placement(visible = true, transformation(origin = {-40,-60}, extent = {{-10,-10},{10,10}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_N annotation(Placement(visible = true, transformation(origin = {100,-40}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {0,100}, extent = {{-10,-10},{10,10}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_E annotation(Placement(visible = true, transformation(origin = {100,80}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {-100,0}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_S annotation(Placement(visible = true, transformation(origin = {100,40}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {0,-100}, extent = {{-10,-10},{10,10}}, rotation = -90)));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_W annotation(Placement(visible = true, transformation(origin = {100,0}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {100,0}, extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(body.frame_a,fixedrotation2.frame_a) annotation(Line(points = {{-40,-50},{-40,80.1829},{29.2683,80.1829},{29.2683,80.1829}}));
  connect(body.frame_a,fixedrotation1.frame_a) annotation(Line(points = {{-40,-50},{-40,40.8537},{30.1829,40.8537},{30.1829,40.8537}}));
  connect(body.frame_a,fixedrotation3.frame_a) annotation(Line(points = {{-40,-50},{-40,0.304878},{29.878,0.304878},{29.878,0.304878}}));
  connect(frame_N,body.frame_a) annotation(Line(points = {{100,-40},{-40.2439,-40},{-40.2439,-49.6951},{-40.2439,-49.6951}}));
  connect(fixedrotation2.frame_b,frame_E) annotation(Line(points = {{50,80},{100.305,80},{100.305,80.48779999999999},{100.305,80.48779999999999}}));
  connect(fixedrotation1.frame_b,frame_S) annotation(Line(points = {{50,40},{99.6951,40},{99.6951,39.939},{99.6951,39.939}}));
  connect(fixedrotation3.frame_b,frame_W) annotation(Line(points = {{50,0},{99.6951,0},{99.6951,0.609756},{99.6951,0.609756}}));
  annotation(Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2}), graphics = {Ellipse(origin = {-0.15,-0.46}, fillColor = {3,104,255}, fillPattern = FillPattern.CrossDiag, extent = {{99.54000000000001,99.54000000000001},{-99.54000000000001,-99.54000000000001}}, endAngle = 360),Rectangle(origin = {0.15,0}, fillColor = {40,40,255}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-97.09999999999999,10.06},{97.09999999999999,-10.06}}),Rectangle(origin = {1.07,2.74057}, fillColor = {0,0,255}, fillPattern = FillPattern.VerticalCylinder, extent = {{-10.1511,96.15940000000001},{8.69,-100.3}})}));
end Chassis;

