(*^

::[	Information =

	"This is a Mathematica Notebook file.  It contains ASCII text, and can be
	transferred by email, ftp, or other text-file transfer utility.  It should
	be read or edited using a copy of Mathematica or MathReader.  If you 
	received this as email, use your mail application or copy/paste to save 
	everything from the line containing (*^ down to the line containing ^*)
	into a plain text file.  On some systems you may have to give the file a 
	name ending with ".ma" to allow Mathematica to recognize it as a Notebook.
	The line below identifies what version of Mathematica created this file,
	but it can be opened using any other version as well.";

	FrontEndVersion = "X Window System Mathematica Notebook Front End Version 2.2";

	X11StandardFontEncoding; 
	
	fontset = title, inactive, noPageBreakBelow, noPageBreakInGroup, nohscroll, preserveAspect, groupLikeTitle, center, M7, bold, e8,  24, fontName, "times";
	fontset = subtitle, inactive, noPageBreakBelow, noPageBreakInGroup, nohscroll, preserveAspect, groupLikeTitle, center, M7, bold, e6,  18, fontName, "times";
	fontset = subsubtitle, inactive, noPageBreakBelow, noPageBreakInGroup, nohscroll, preserveAspect, groupLikeTitle, center, M7, italic, e6,  14, fontName, "times";
	fontset = section, inactive, noPageBreakBelow, nohscroll, preserveAspect, groupLikeSection, grayBox, M22, bold, a20,  18, fontName, "times";
	fontset = subsection, inactive, noPageBreakBelow, nohscroll, preserveAspect, groupLikeSection, blackBox, M19, bold, a15,  14, fontName, "times";
	fontset = subsubsection, inactive, noPageBreakBelow, nohscroll, preserveAspect, groupLikeSection, whiteBox, M18, bold, a12,  12, fontName, "times";
	fontset = text, inactive, nohscroll, noKeepOnOnePage, preserveAspect, M7,  12, fontName, "times";
	fontset = smalltext, inactive, nohscroll, noKeepOnOnePage, preserveAspect, M7,  10, fontName, "times";
	fontset = input, noPageBreakInGroup, nowordwrap, preserveAspect, groupLikeInput, M42, N23, bold,  12, fontName, "courier";
	fontset = output, output, inactive, noPageBreakInGroup, nowordwrap, preserveAspect, groupLikeOutput, M42, N23, L-5,  12, fontName, "courier";
	fontset = message, inactive, noPageBreakInGroup, nowordwrap, preserveAspect, groupLikeOutput, M42, N23,  12, fontName, "courier";
	fontset = print, inactive, noPageBreakInGroup, nowordwrap, preserveAspect, groupLikeOutput, M42, N23,  12, fontName, "courier";
	fontset = info, inactive, noPageBreakInGroup, nowordwrap, preserveAspect, groupLikeOutput, M42, N23,  12, fontName, "courier";
	fontset = postscript, PostScript, formatAsPostScript, output, inactive, noPageBreakInGroup, nowordwrap, preserveAspect, groupLikeGraphics, M7, l34, w282, h287,  12, fontName, "courier";
	fontset = name, inactive, noPageBreakInGroup, nohscroll, preserveAspect, M7, italic, B65535,  10, fontName, "times";
	fontset = header, inactive, nohscroll, noKeepOnOnePage, preserveAspect, M7, italic,  12, fontName, "times";
	fontset = leftheader,  12, fontName, "times";
	fontset = footer, inactive, nohscroll, noKeepOnOnePage, preserveAspect, center, M7, italic,  12, fontName, "times";
	fontset = leftfooter,  12, fontName, "times";
	fontset = help, inactive, nohscroll, noKeepOnOnePage, preserveAspect, M7,  12, fontName, "times";
	fontset = clipboard, inactive, nohscroll, noKeepOnOnePage, preserveAspect, M7,  12, fontName, "times";
	fontset = completions, inactive, nohscroll, noKeepOnOnePage, preserveAspect, M7,  12, fontName, "courier";
	fontset = special1, inactive, nohscroll, noKeepOnOnePage, preserveAspect, M7,  12, fontName, "times";
	fontset = special2, inactive, nohscroll, noKeepOnOnePage, preserveAspect, M7,  12, fontName, "times";
	fontset = special3, inactive, nohscroll, noKeepOnOnePage, preserveAspect, M7,  12, fontName, "times";
	fontset = special4, inactive, nohscroll, noKeepOnOnePage, preserveAspect, M7,  12, fontName, "times";
	fontset = special5, inactive, nohscroll, noKeepOnOnePage, preserveAspect, M7,  12, fontName, "times";paletteColors = 128; automaticGrouping; currentKernel; 
]
:[font = title; inactive; preserveAspect; startGroup]
Theory of Linear Ordinary Differential Equations
:[font = subsection; inactive; Cclosed; preserveAspect; startGroup]
Example 2.1.1
:[font = text; inactive; preserveAspect]
Consider the differential equation
:[font = input; preserveAspect]
eqn = y''[x] - y'[x] == 1
:[font = text; inactive; preserveAspect]
We can verify that two homogeneous solutions are Exp[x] and 1.
:[font = input; preserveAspect]
D[ Exp[x] , {x, 2} ] - D[ Exp[x] , x ]
:[font = input; preserveAspect]
D[ 1 , {x, 2} ] - D[ 1 , x ]
:[font = text; inactive; preserveAspect]
A particular solution is -x.
:[font = input; preserveAspect]
D[ -x , {x, 2} ] - D[ -x , x ]
:[font = text; inactive; preserveAspect]
Thus the general solution is
	y[x] = -x + c1 Exp[x] + c2.
:[font = text; inactive; preserveAspect]
Solving the differential equation with DSolve[],
:[font = input; preserveAspect; endGroup]
DSolve[ y''[x] - y'[x] == 1 , y[x] , x ]
:[font = subsection; inactive; preserveAspect]
Example 2.2.1
:[font = subsection; inactive; Cclosed; preserveAspect; startGroup]
Example 2.3.1
:[font = text; inactive; preserveAspect]
Consider the matrix
:[font = input; preserveAspect]
a = {{x, x^2} , {x^2, x^4}};
a // MatrixForm
:[font = text; inactive; preserveAspect]
The determinant is
:[font = input; preserveAspect]
Det[ a ]
:[font = text; inactive; preserveAspect]
Thus the derivative of the determinant is
:[font = input; preserveAspect]
D[ % , x ]
:[font = text; inactive; preserveAspect]
To check the theorem,
:[font = input; preserveAspect; endGroup]
Det[ { D[ a[[1]] , x ] , a[[2]] } ] + 
	Det[ { a[[1]] , D[ a[[2]] , x ] } ]
:[font = subsection; inactive; Cclosed; preserveAspect; startGroup]
Example 2.3.2
:[font = text; inactive; preserveAspect]
Consider the set, {x, x^2}.  The Wronskian is
:[font = input; preserveAspect]
Det[ {{x, x^2}, {D[x,x] , D[x^2,x]}} ]
:[font = text; inactive; preserveAspect; endGroup]
Thus the functions are independent.
:[font = subsection; inactive; Cclosed; preserveAspect; startGroup]
Example 2.3.3
:[font = text; inactive; preserveAspect]
Consider the set 
:[font = input; preserveAspect]
s = { Sin[x] , Cos[x] , Exp[I x] };
:[font = text; inactive; preserveAspect]
The Wronskian is
:[font = input; preserveAspect]
Det[ Table[ D[ s[[i]] , {x, j} ] , {i, 1, 3} , {j, 0, 2} ] ]
:[font = text; inactive; preserveAspect; endGroup]
Thus the functions are dependent.
:[font = subsection; inactive; Cclosed; preserveAspect; startGroup]
Example 2.3.4
:[font = text; inactive; preserveAspect]
Consider the differential equation
	y''[x] - 3y'[x] + 2y[x] == 0.
The Wronskian of the two independent solutions is
:[font = input; preserveAspect]
c Exp[ - Integrate[ -3 , x ] ] // Simplify
:[font = text; inactive; preserveAspect]
For the choice of solutions  {E^x, E^(2x)},  the Wroskian is
:[font = input; preserveAspect; endGroup]
Det[ {{Exp[x], Exp[2x]}, {D[Exp[x],x], D[Exp[2x],x]}} ]
:[font = subsection; inactive; Cclosed; preserveAspect; startGroup]
Example 2.4.1
:[font = text; inactive; preserveAspect]
Consider the initial value problem
	y''[x] - 2 y'[x] / x + 2 y[x] / x^2 == 0,	y[0] == y'[0] == 1.
The Wronskian
:[font = input; preserveAspect]
Exp[ - Integrate[ -2/x , x ] ] // Simplify
:[font = text; inactive; preserveAspect]
vanishes at  x == 0.  Thus this problem is not well-posed.
:[font = text; inactive; preserveAspect]
The general solution of the differential equation is
:[font = input; preserveAspect]
y[x_] = y[x] /. 
	DSolve[ y''[x] - 2 y'[x] / x + 2 y[x] / x^2 == 0 , 
			y[x] , x ][[1]]
:[font = text; inactive; preserveAspect]
We see that the general solution cannot satisfy the initial conditions.  
:[font = input; preserveAspect]
Solve[ { y[0] == 1 , D[y[x], x] == 1 /. x -> 0 } , 
		{C[1], C[2]} ]
:[font = text; inactive; preserveAspect]
If instead we had the initial conditions
	y[0] == 0,   y'[0] == 1,
then there would be an infinite number of solutions.
:[font = input; preserveAspect]
Solve[ { y[0] == 0 , D[y[x], x] == 1 /. x -> 0 } , 
		{C[1], C[2]} ]
:[font = input; preserveAspect; endGroup]
Clear[ y ]
:[font = subsection; inactive; Cclosed; preserveAspect; startGroup]
Example 2.4.2
:[font = text; inactive; preserveAspect]
Consider the initial value problem
	y''[x] - 2 y[x] / x^2 == 0,		y[0] == y'[0] == 1.
The Wronskian
:[font = input; preserveAspect]
Exp[ - Integrate[ 0 , x ] ] // Simplify
:[font = text; inactive; preserveAspect]
does not vanish anywhere.  However, this problem is not well-posed.
:[font = text; inactive; preserveAspect]
The general solution,
:[font = input; preserveAspect]
y[x_] = y[x] /. 
	DSolve[ y''[x] - 2 y[x] / x^2 == 0 , y[x] , x ][[1]]
:[font = text; inactive; preserveAspect]
cannot satisfy the initial conditions.
:[font = input; preserveAspect]
Solve[ { y[0] == 1 , D[y[x], x] == 1 /. x -> 0 } , 
		{C[1], C[2]} ]
:[font = text; inactive; preserveAspect; endGroup]
Thus we see that a non-vanishing Wronskian does not imply that the problem is well-posed.
:[font = subsection; inactive; Cclosed; preserveAspect; startGroup]
Example 2.5.1
:[font = text; inactive; preserveAspect]
Two linearly independent solutions to the differential equation  y''[x] + y[x] == 0  are 
	y1[x] == Exp[I x]  and  y2[x] == Exp[-I x].
To find the fundamental set of solutions, {u1, u2}, at x == 0 we solve the equations
:[font = input; preserveAspect]
y1[x_] = Exp[I x];
y2[x_] = Exp[-I x];
:[font = text; inactive; preserveAspect]
To find the fundamental set of solutions, {u1, u2}
:[font = input; preserveAspect]
u1[x_] = c11 y1[x] + c12 y2[x];
u2[x_] = c21 y1[x] + c22 y2[x];
:[font = text; inactive; preserveAspect]
at x == 0 we solve the equations
:[font = input; preserveAspect]
soln = Solve[ { u1[0] == 1 , D[u1[x], x] == 0 /. x -> 0 ,
				u2[0] == 0 , D[u2[x], x] == 1 /. x -> 0 } ,
				{c11, c12, c21, c22} ]
:[font = text; inactive; preserveAspect]
The fundamental set is
:[font = input; preserveAspect]
u1[x_] = u1[x] /. soln[[1]]
:[font = input; preserveAspect]
u2[x_] = u2[x] /. soln[[1]]
:[font = text; inactive; preserveAspect]
Using trigonometric identities we can rewrite these as
:[font = input; preserveAspect]
u1[x_] = ComplexExpand[ u1[x] ]
:[font = input; preserveAspect; endGroup]
u2[x_] = ComplexExpand[ u2[x] ]
:[font = subsection; inactive; preserveAspect]
Example 2.6.1
:[font = subsection; inactive; preserveAspect]
Example 2.6.2
:[font = subsection; inactive; preserveAspect]
Problem 2.1
:[font = subsection; inactive; Cclosed; preserveAspect; startGroup]
Problem 2.2
:[font = text; inactive; preserveAspect; fontName = "Lucidatypewriter"]
Two solutions to  y''[x] - y[x] == 0  are  Exp[x]  and  Exp[-x].  Show that the solutions are independent.  Find the fundamental set of solutions at  x == 0.
:[font = text; inactive; preserveAspect]
The Wronskian of the solutions is
:[font = input; preserveAspect]
Det[ {	{ Exp[x] , Exp[-x] },
		{ D[Exp[x], x], D[Exp[-x], x] }} ]
:[font = text; inactive; preserveAspect]
Since the Wronskian is nonzero, the solutions are independent.
:[font = text; inactive; preserveAspect]
The fundamental set of solutions, {y1, y2}, where 
:[font = input; preserveAspect]
y1[x_] = a1 Exp[x] + a2 Exp[-x];
y2[x_] = b1 Exp[x] + b2 Exp[-x];
:[font = text; inactive; preserveAspect]
satisfy the equations
:[font = input; preserveAspect]
soln = Solve[ {y1[0] == 1, D[y1[x], x] == 0 /. x -> 0 ,
			   y2[0] == 0, D[y2[x], x] == 1 /. x -> 0 },
			{a1, a2, b1, b2} ]
:[font = text; inactive; preserveAspect]
The fundamental set of solutions at x == 0 is
:[font = input; preserveAspect]
y1[x_] = y1[x] /. soln[[1]]
:[font = input; preserveAspect; endGroup]
y2[x_] = y2[x] /. soln[[1]]
:[font = subsection; inactive; preserveAspect; endGroup]
Problem 2.3
^*)