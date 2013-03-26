/* OpenSCAD Workshop

Example showing variables.

*/

//We can create a cube 10x10x10mm.
cube([10,10,10]);

//Declaring a variable called x might save us some characters.
x = 10;
cube([x,x,x]);

//Look ma, a vector!
y = [10,10,10];
cube(y);

/*When OpenSCAD parses the files it will take the last assignment of
  a variable to be it's value. The following demonstrates this fact. 

  Run with the last two lines commented out and you will see. 
	ECHO: 1
	ECHO: 2
	ECHO: 3
	ECHO: 2

  With the last two lines uncommented it will display the following.
	WARNING: Ignoring unknown variable 'b'.
	ECHO: 1
	ECHO: undef
	ECHO: undef
	ECHO: undef
	
  This is because the parse will look for the last instance of a variable and 
  ignore the previous definitions. 
	
*/

a = 1;
b = 2;
echo(a);
echo(b);
c = a + b;
echo(c);
//b = a+b;
//echo(b);


//Variables can also be strings.
hi = "Hello world!";
echo(hi);

