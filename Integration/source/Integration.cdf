(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[     54584,       1248]
NotebookOptionsPosition[     54581,       1232]
NotebookOutlinePosition[     55239,       1256]
CellTagsIndexPosition[     55196,       1253]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Quiet", "@", 
    RowBox[{"Deploy", "@", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"p", "=", 
          RowBox[{
          "m", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], ",", 
         
         RowBox[{"w", "=", 
          RowBox[{
          "m", "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}], ",", 
         
         RowBox[{"r", "=", 
          RowBox[{
          "m", "\[LeftDoubleBracket]", "4", "\[RightDoubleBracket]"}]}], ",", 
         
         RowBox[{"Co", "=", 
          RowBox[{
          "m", "\[LeftDoubleBracket]", "5", "\[RightDoubleBracket]"}]}], ",", 
         "lf", ",", 
         RowBox[{"J", "=", "Nums"}], ",", "I1", ",", "I2", ",", "Ie", ",", 
         "h", ",", "\[CapitalDelta]", ",", "z", ",", "y", ",", "pts", ",", 
         "fit", ",", "fiteq", ",", "data"}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"lf", "=", 
         RowBox[{
          RowBox[{"Evaluate", "[", 
           RowBox[{"f", "/.", 
            RowBox[{"x", "\[Rule]", "#"}]}], "]"}], "&"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"J", "=", 
         RowBox[{"GetQuadData", "[", 
          RowBox[{"lf", ",", "a", ",", "b", ",", "p", ",", "w"}], "]"}]}], 
        ";", "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"NumberQ", "@", 
           RowBox[{"Numrev", "[", "n", "]"}]}], ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"I1", "=", 
            RowBox[{"J", "\[LeftDoubleBracket]", 
             RowBox[{"Numrev", "[", "n", "]"}], "\[RightDoubleBracket]"}]}], 
           ";", "\[IndentingNewLine]", 
           RowBox[{"I2", "=", 
            RowBox[{"J", "\[LeftDoubleBracket]", 
             RowBox[{
              RowBox[{"Numrev", "[", "n", "]"}], "+", "1"}], 
             "\[RightDoubleBracket]"}]}], ";"}], "\[IndentingNewLine]", ",", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"I1", "=", 
            RowBox[{"Int", "[", 
             RowBox[{"lf", ",", "a", ",", "b", ",", "p", ",", "w", ",", "n"}],
              "]"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"I2", "=", 
            RowBox[{"Int", "[", 
             RowBox[{"lf", ",", "a", ",", "b", ",", "p", ",", "w", ",", 
              RowBox[{"2", "n"}]}], "]"}]}], ";"}]}], "\[IndentingNewLine]", 
         "]"}], ";", "\[IndentingNewLine]", 
        RowBox[{"Ie", "=", 
         RowBox[{"1.", 
          RowBox[{"NIntegrate", "[", 
           RowBox[{
            RowBox[{"lf", "[", "\[Xi]", "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"\[Xi]", ",", "a", ",", "b"}], "}"}], ",", 
            RowBox[{"PrecisionGoal", "\[Rule]", "$MachinePrecision"}], ",", 
            RowBox[{"WorkingPrecision", "\[Rule]", "50"}]}], "]"}]}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"\[CapitalDelta]", "=", 
         RowBox[{"Abs", "[", 
          RowBox[{"I2", "-", "I1"}], "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"h", "=", 
         FractionBox[
          RowBox[{"b", "-", "a"}], "n"]}], ";", "\[IndentingNewLine]", 
        RowBox[{"z", "=", 
         FractionBox[
          RowBox[{"b", "-", "a"}], "Nums"]}], ";", "\[IndentingNewLine]", 
        RowBox[{"y", "=", 
         RowBox[{"Abs", "[", 
          RowBox[{
           RowBox[{"J", "\[LeftDoubleBracket]", 
            RowBox[{"2", ";;"}], "\[RightDoubleBracket]"}], "-", 
           RowBox[{"J", "\[LeftDoubleBracket]", 
            RowBox[{";;", 
             RowBox[{"-", "2"}]}], "\[RightDoubleBracket]"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"data", "=", 
         RowBox[{
          RowBox[{"Reap", "[", 
           RowBox[{"Do", "[", 
            RowBox[{
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"NumericQ", "@", 
                RowBox[{"Log", "[", 
                 RowBox[{
                 "y", "\[LeftDoubleBracket]", "j", "\[RightDoubleBracket]"}], 
                 "]"}]}], ",", 
               RowBox[{"Sow", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"Log", "@", 
                   RowBox[{
                   "z", "\[LeftDoubleBracket]", "j", 
                    "\[RightDoubleBracket]"}]}], ",", 
                  RowBox[{"Log", "@", 
                   RowBox[{
                   "y", "\[LeftDoubleBracket]", "j", 
                    "\[RightDoubleBracket]"}]}]}], "}"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"j", ",", "1", ",", 
               RowBox[{"Length", "@", "y"}]}], "}"}]}], "]"}], "]"}], 
          "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"data", "===", 
           RowBox[{"{", "}"}]}], ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"data", "=", 
            RowBox[{"{", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"0", ",", "0"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"1", ",", "1"}], "}"}]}], "}"}], "}"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"fit", "=", 
            RowBox[{"Fit", "[", 
             RowBox[{"data", ",", 
              RowBox[{"{", 
               RowBox[{"1", ",", "\[Xi]"}], "}"}], ",", "\[Xi]"}], "]"}]}], 
           ";", "\[IndentingNewLine]", 
           RowBox[{"z", "=", 
            RowBox[{"{", 
             RowBox[{"1", ",", "E"}], "}"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"fiteq", "=", "\"\<\>\""}], ";", "\[IndentingNewLine]", 
           RowBox[{"fit", "=", 
            RowBox[{"Plot", "[", 
             RowBox[{"fit", ",", 
              RowBox[{"{", 
               RowBox[{"\[Xi]", ",", 
                RowBox[{"Log", "@", 
                 RowBox[{"Min", "[", "z", "]"}]}], ",", 
                RowBox[{"Log", "@", 
                 RowBox[{"Max", "[", "z", "]"}]}]}], "}"}]}], "]"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"pts", "=", "fit"}], ";"}], "\[IndentingNewLine]", ",", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"pts", "=", 
            RowBox[{"ListLogLogPlot", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"{", 
                RowBox[{"z", ",", "y"}], "}"}], "\[Transpose]"}], ",", 
              RowBox[{"Joined", "\[Rule]", "True"}], ",", 
              RowBox[{"Mesh", "\[Rule]", "Full"}]}], "]"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"data", "=", 
            RowBox[{"1.", 
             RowBox[{
             "data", "\[LeftDoubleBracket]", "1", 
              "\[RightDoubleBracket]"}]}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"fit", "=", 
            RowBox[{"Fit", "[", 
             RowBox[{"data", ",", 
              RowBox[{"{", 
               RowBox[{"1", ",", "\[Xi]"}], "}"}], ",", "\[Xi]"}], "]"}]}], 
           ";", "\[IndentingNewLine]", 
           RowBox[{"fiteq", "=", 
            RowBox[{"Exp", "[", 
             RowBox[{"fit", "/.", 
              RowBox[{"\[Xi]", "\[Rule]", 
               RowBox[{"Log", "[", "\[Eta]", "]"}]}]}], "]"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"fit", "=", 
            RowBox[{"Plot", "[", 
             RowBox[{"fit", ",", 
              RowBox[{"{", 
               RowBox[{"\[Xi]", ",", 
                RowBox[{"Log", "@", 
                 RowBox[{"Min", "[", "z", "]"}]}], ",", 
                RowBox[{"Log", "@", 
                 RowBox[{"Max", "[", "z", "]"}]}]}], "}"}], ",", 
              RowBox[{"PlotStyle", "\[Rule]", "Red"}]}], "]"}]}], ";"}]}], 
         "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
        RowBox[{"Column", "[", 
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"Show", "[", 
            RowBox[{"pts", ",", "fit", ",", "\[IndentingNewLine]", 
             RowBox[{"ImageSize", "\[Rule]", "500"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"AxesLabel", "\[Rule]", 
              RowBox[{"{", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"TraditionalForm", "[", "\"\<h\>\"", "]"}], ",", 
                  "18"}], "]"}], ",", "\[IndentingNewLine]", 
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{
                  "TraditionalForm", "[", 
                   "\"\<\[CapitalDelta]=|\!\(\*SubscriptBox[\(I\), \
\(h\)]\)-\!\(\*SubscriptBox[\(I\), \(h/2\)]\)|\>\"", "]"}], ",", "18"}], 
                 "]"}]}], "}"}]}], ",", "\[IndentingNewLine]", 
             RowBox[{"PlotRange", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Min", "@", 
                 RowBox[{"data", "\[LeftDoubleBracket]", 
                  RowBox[{";;", ",", "2"}], "\[RightDoubleBracket]"}]}], ",", 
                
                RowBox[{"Max", "@", 
                 RowBox[{"data", "\[LeftDoubleBracket]", 
                  RowBox[{";;", ",", "2"}], "\[RightDoubleBracket]"}]}]}], 
               "}"}]}], ",", "\[IndentingNewLine]", 
             RowBox[{"PlotLabel", "\[Rule]", 
              RowBox[{"Style", "[", 
               RowBox[{
                RowBox[{"fiteq", "/.", 
                 RowBox[{"\[Eta]", "\[Rule]", "\"\<h\>\""}]}], ",", "18"}], 
               "]"}]}]}], "\[IndentingNewLine]", "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Row", "[", 
            RowBox[{"{", 
             RowBox[{"\"\<Quadrature: \>\"", ",", 
              RowBox[{
              "TraditionalForm", "@", 
               "\"\<\!\(\*SubsuperscriptBox[\(\[Integral]\), \(a\), \
\(b\)]\)f(x)dx \[TildeTilde] \>\""}], ",", "\[IndentingNewLine]", 
              RowBox[{"TraditionalForm", "@", 
               RowBox[{"Row", "[", 
                RowBox[{
                 RowBox[{"Table", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{
                    "w", "\[LeftDoubleBracket]", "j", 
                    "\[RightDoubleBracket]"}], 
                    RowBox[{"Row", "[", 
                    RowBox[{"{", 
                    RowBox[{"\"\<f(\>\"", ",", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Simplify", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    RowBox[{
                    "p", "\[LeftDoubleBracket]", "j", 
                    "\[RightDoubleBracket]"}]}], ")"}], "\"\<a\>\""}], "+", 
                    "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    "p", "\[LeftDoubleBracket]", "j", 
                    "\[RightDoubleBracket]"}], "\"\<b\>\""}]}], "]"}], "/.", 
                    RowBox[{
                    RowBox[{"Times", "[", 
                    RowBox[{
                    RowBox[{"Rational", "[", 
                    RowBox[{"1", ",", "\[Zeta]_"}], "]"}], ",", "\[Sigma]_"}],
                     "]"}], "\[Rule]", 
                    RowBox[{"FractionBox", "[", 
                    RowBox[{"\[Sigma]", ",", "\[Zeta]"}], "]"}]}]}], "//", 
                    "DisplayForm"}], "\[IndentingNewLine]", ",", 
                    "\"\<)\>\""}], "}"}], "]"}]}], ",", 
                   RowBox[{"{", 
                    RowBox[{"j", ",", 
                    RowBox[{"Length", "@", "p"}]}], "}"}]}], "]"}], ",", 
                 "\"\<+\>\""}], "]"}]}]}], "\[IndentingNewLine]", "}"}], 
            "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Row", "[", 
            RowBox[{"{", 
             RowBox[{
             "\"\<Quadrature \>\"", " ", ",", "\"\<error\>\"", ",", 
              "\"\< \[CurlyEpsilon]\>\"", ",", "\"\<= \>\"", ",", 
              RowBox[{"Co", "\"\<(b-a)\>\"", 
               RowBox[{"Subscript", "[", 
                RowBox[{"\"\<M\>\"", ",", "r"}], "]"}], 
               RowBox[{"Superscript", "[", 
                RowBox[{"\"\<h\>\"", ",", "r"}], "]"}]}]}], "}"}], "]"}], ",",
            "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
           RowBox[{"Grid", "[", 
            RowBox[{"If", "[", 
             RowBox[{"verbose", ",", "\[IndentingNewLine]", 
              RowBox[{"{", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"\"\<For h = \>\"", ",", 
                  RowBox[{"N", "[", "h", "]"}], ",", 
                  "\"\< \!\(\*SubscriptBox[\(I\), \(1\)]\)\>\"", ",", " ", 
                  "\"\<= \>\"", ",", 
                  RowBox[{"ScientificForm", "[", 
                   RowBox[{"I1", ",", "15"}], "]"}]}], "}"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"{", 
                 RowBox[{"\"\<For h = \>\"", ",", 
                  RowBox[{"N", "[", 
                   RowBox[{"h", "/", "2"}], "]"}], ",", 
                  "\"\< \!\(\*SubscriptBox[\(I\), \(2\)]\)\>\"", ",", 
                  "\"\<= \>\"", ",", 
                  RowBox[{"ScientificForm", "[", 
                   RowBox[{"I2", ",", "15"}], "]"}]}], "}"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"{", 
                 RowBox[{
                 "\"\<Exact \>\"", ",", "\"\< \>\"", ",", 
                  "\"\< \!\(\*SubscriptBox[\(I\), \(e\)]\)\>\"", ",", 
                  "\"\<= \>\"", ",", 
                  RowBox[{"ScientificForm", "[", 
                   RowBox[{"Ie", ",", "15"}], "]"}]}], "}"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"{", 
                 RowBox[{
                 "\"\<\>\"", ",", "\"\<\[CapitalDelta] =\>\"", ",", 
                  "\"\<|\!\(\*SubscriptBox[\(I\), \
\(2\)]\)-\!\(\*SubscriptBox[\(I\), \(1\)]\)|\>\"", ",", " ", "\"\<= \>\"", 
                  ",", 
                  RowBox[{"ScientificForm", "[", 
                   RowBox[{"\[CapitalDelta]", ",", "6"}], "]"}]}], "}"}], ",",
                 "\[IndentingNewLine]", 
                RowBox[{"{", 
                 RowBox[{
                 "\"\<\!\(\*SubscriptBox[\(\[CurlyEpsilon]\), \(2\)]\) \
estimate\>\"", ",", "\"\<is \>\"", ",", " ", 
                  
                  FractionBox[
                   "\"\<|\!\(\*SubscriptBox[\(I\), \
\(2\)]\)-\!\(\*SubscriptBox[\(I\), \(1\)]\)|\>\"", 
                   RowBox[{
                    SuperscriptBox["2", "r"], "-", "1"}]], ",", " ", 
                  "\"\<= \>\"", ",", 
                  RowBox[{"ScientificForm", "[", 
                   RowBox[{
                    FractionBox["\[CapitalDelta]", 
                    RowBox[{
                    SuperscriptBox["2", "r"], "-", "1"}]], ",", "6"}], 
                   "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
                RowBox[{"{", 
                 RowBox[{
                 "\"\<Actual error\>\"", ",", "\"\<is\>\"", ",", " ", 
                  "\"\<|\!\(\*SubscriptBox[\(I\), \
\(2\)]\)-\!\(\*SubscriptBox[\(I\), \(e\)]\)|\>\"", ",", " ", "\"\<= \>\"", 
                  ",", 
                  RowBox[{"ScientificForm", "[", 
                   RowBox[{
                    RowBox[{"Abs", "[", 
                    RowBox[{"I2", "-", "Ie"}], "]"}], ",", "6"}], "]"}]}], 
                 "}"}]}], "\[IndentingNewLine]", "}"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"{", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"\"\<For h = \>\"", ",", 
                  RowBox[{"N", "[", "h", "]"}], ",", 
                  "\"\< \!\(\*SubscriptBox[\(I\), \(1\)]\)\>\"", ",", " ", 
                  "\"\<= \>\"", ",", 
                  RowBox[{"ScientificForm", "[", 
                   RowBox[{"I1", ",", "15"}], "]"}]}], "}"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"{", 
                 RowBox[{"\"\<For h = \>\"", ",", 
                  RowBox[{"N", "[", 
                   RowBox[{"h", "/", "2"}], "]"}], ",", 
                  "\"\< \!\(\*SubscriptBox[\(I\), \(2\)]\)\>\"", ",", 
                  "\"\<= \>\"", ",", 
                  RowBox[{"ScientificForm", "[", 
                   RowBox[{"I2", ",", "15"}], "]"}]}], "}"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"{", 
                 RowBox[{
                 "\"\<\>\"", ",", "\"\<\[CapitalDelta] =\>\"", ",", 
                  "\"\<|\!\(\*SubscriptBox[\(I\), \
\(2\)]\)-\!\(\*SubscriptBox[\(I\), \(1\)]\)|\>\"", ",", " ", "\"\<= \>\"", 
                  ",", 
                  RowBox[{"ScientificForm", "[", 
                   RowBox[{"\[CapitalDelta]", ",", "6"}], "]"}]}], "}"}], ",",
                 "\[IndentingNewLine]", 
                RowBox[{"{", 
                 RowBox[{
                 "\"\<\!\(\*SubscriptBox[\(\[CurlyEpsilon]\), \(2\)]\) \
estimate\>\"", ",", "\"\<is \>\"", ",", " ", 
                  RowBox[{
                  "\"\<|\!\(\*SubscriptBox[\(I\), \
\(2\)]\)-\!\(\*SubscriptBox[\(I\), \(1\)]\)|\>\"", "/", 
                   RowBox[{"Row", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Superscript", "[", 
                    RowBox[{"2", ",", "r"}], "]"}], ",", "\"\<-1\>\""}], 
                    "}"}], "]"}]}], ",", " ", "\"\<= \>\"", ",", 
                  RowBox[{"ScientificForm", "[", 
                   RowBox[{
                    FractionBox["\[CapitalDelta]", 
                    RowBox[{
                    SuperscriptBox["2", "r"], "-", "1"}]], ",", "6"}], 
                   "]"}]}], "}"}]}], "\[IndentingNewLine]", "}"}]}], 
             "\[IndentingNewLine]", "]"}], "]"}]}], "\[IndentingNewLine]", 
          "}"}], "]"}]}]}], "\[IndentingNewLine]", "]"}]}]}], 
   "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"a", ",", "0", ",", "\"\<a\>\""}], "}"}], ",", 
     RowBox[{"ControlType", "\[Rule]", "InputField"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"b", ",", "1", ",", "\"\<b\>\""}], "}"}], ",", 
     RowBox[{"ControlType", "\[Rule]", "InputField"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"f", ",", 
       FractionBox[
        RowBox[{"x", "-", 
         RowBox[{"Sin", "[", "x", "]"}]}], 
        SuperscriptBox["x", 
         RowBox[{"7", "/", "2"}]]], ",", "\"\<Integrand\>\""}], "}"}], ",", 
     RowBox[{
      RowBox[{"InputField", "[", 
       RowBox[{"##", ",", 
        RowBox[{"FrameMargins", "\[Rule]", "5"}], ",", 
        RowBox[{"BaseStyle", "\[Rule]", "Large"}], ",", 
        RowBox[{"FieldSize", "\[Rule]", "11"}]}], "]"}], "&"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", 
       RowBox[{"Nums", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}],
        ",", "\"\<Number of intervals\>\""}], "}"}], ",", "Nums", ",", 
     RowBox[{"ControlType", "\[Rule]", "Slider"}], ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"m", ",", 
       RowBox[{"Quadratures", "\[LeftDoubleBracket]", 
        RowBox[{"1", ",", ";;"}], "\[RightDoubleBracket]"}], ",", 
       "\"\<Integration method\>\""}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"Quadratures", "\[LeftDoubleBracket]", 
         RowBox[{"i", ",", ";;"}], "\[RightDoubleBracket]"}], "->", 
        RowBox[{"Quadratures", "\[LeftDoubleBracket]", 
         RowBox[{"i", ",", "1"}], "\[RightDoubleBracket]"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"i", ",", 
         RowBox[{"Length", "[", "Quadratures", "]"}]}], "}"}]}], "]"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"ControlType", "\[Rule]", "PopupMenu"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"verbose", ",", "False", ",", "\"\<Show exact value\>\""}], 
      "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"True", ",", "False"}], "}"}], ",", 
     RowBox[{"ControlType", "\[Rule]", "Checkbox"}]}], "}"}], 
   "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Nums", "=", 
       RowBox[{"5", " ", 
        SuperscriptBox["2", 
         RowBox[{"Range", "[", 
          RowBox[{"0", ",", "7"}], "]"}]]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"Do", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"Numrev", "[", 
          RowBox[{
          "Nums", "\[LeftDoubleBracket]", "j", "\[RightDoubleBracket]"}], 
          "]"}], "=", "j"}], ",", 
        RowBox[{"{", 
         RowBox[{"j", ",", "1", ",", 
          RowBox[{"Length", "@", "Nums"}]}], "}"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Int", "[", 
        RowBox[{"f_", ",", "a_", ",", "b_", ",", "x_", ",", "w_", ",", "n_"}],
         "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"X", ",", "h", ",", "F", ",", "W", ",", "v"}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"h", "=", 
           FractionBox[
            RowBox[{"b", "-", "a"}], "n"]}], ";", "\[IndentingNewLine]", 
          RowBox[{"X", "=", 
           RowBox[{"a", "+", 
            RowBox[{"h", " ", 
             RowBox[{"Range", "[", 
              RowBox[{"0", ",", 
               RowBox[{"n", "-", "1"}]}], "]"}]}]}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"wt", ",", "W"}], "}"}], "=", 
           RowBox[{"AbsoluteTiming", "@", 
            RowBox[{"Flatten", "@", 
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"h", " ", "w"}], ",", 
               RowBox[{"{", 
                RowBox[{"p", ",", "X"}], "}"}]}], "]"}]}]}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"xt", ",", "X"}], "}"}], "=", 
           RowBox[{"AbsoluteTiming", "@", 
            RowBox[{"Flatten", "@", 
             RowBox[{"Table", "[", 
              RowBox[{
               RowBox[{"p", "+", 
                RowBox[{"h", " ", "x"}]}], ",", 
               RowBox[{"{", 
                RowBox[{"p", ",", "X"}], "}"}]}], "]"}]}]}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"X", "=", 
           RowBox[{"N", "[", 
            RowBox[{"X", ",", 
             RowBox[{"2", "$MachinePrecision"}]}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"W", "=", 
           RowBox[{"N", "[", 
            RowBox[{"W", ",", 
             RowBox[{"2", "$MachinePrecision"}]}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"ft", ",", "F"}], "}"}], "=", 
           RowBox[{"AbsoluteTiming", "@", "\[IndentingNewLine]", 
            RowBox[{"Flatten", "@", 
             RowBox[{"{", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Limit", "[", 
                RowBox[{
                 RowBox[{"f", "[", "\[Xi]", "]"}], ",", 
                 RowBox[{"\[Xi]", "\[Rule]", 
                  RowBox[{
                  "X", "\[LeftDoubleBracket]", "1", 
                   "\[RightDoubleBracket]"}]}]}], "]"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"f", "[", 
                RowBox[{"X", "\[LeftDoubleBracket]", 
                 RowBox[{"2", ";;", 
                  RowBox[{"-", "2"}]}], "\[RightDoubleBracket]"}], "]"}], ",",
                "\[IndentingNewLine]", 
               RowBox[{"Limit", "[", 
                RowBox[{
                 RowBox[{"f", "[", "\[Xi]", "]"}], ",", 
                 RowBox[{"\[Xi]", "\[Rule]", 
                  RowBox[{"X", "\[LeftDoubleBracket]", 
                   RowBox[{"-", "1"}], "\[RightDoubleBracket]"}]}]}], "]"}]}],
               "}"}]}]}]}], ";", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"vt", ",", "v"}], "}"}], "=", 
           RowBox[{"AbsoluteTiming", "@", 
            RowBox[{"Dot", "[", 
             RowBox[{"W", ",", "F"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"Print", "[", 
             RowBox[{"{", 
              RowBox[{"wt", ",", "xt", ",", "ft", ",", "vt"}], "}"}], "]"}], 
            ";"}], "*)"}], "\[IndentingNewLine]", "v"}]}], 
        "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"Quadratures", "=", 
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{"{", 
          RowBox[{"name", ",", 
           RowBox[{"pts", " ", "per", " ", "segment"}], ",", 
           SubscriptBox["x", "i"], ",", 
           SubscriptBox["w", "i"], ",", "order", ",", 
           RowBox[{"C", " ", 
            RowBox[{"(", 
             RowBox[{"\[CurlyEpsilon]", "=", 
              RowBox[{"C", 
               RowBox[{"(", 
                RowBox[{"b", "-", "a"}], ")"}], 
               SubscriptBox["M", "ord"], 
               SuperscriptBox["h", "ord"]}]}], ")"}]}]}], "}"}], "*)"}], 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\"\<Left rectangle\>\"", ",", 
           RowBox[{"{", "0", "}"}], ",", 
           RowBox[{"{", "1", "}"}], ",", "1", ",", 
           FractionBox["1", "2"]}], "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"\"\<Right rectangle\>\"", ",", 
           RowBox[{"{", "1", "}"}], ",", 
           RowBox[{"{", "1", "}"}], ",", "1", ",", 
           FractionBox["1", "2"]}], "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"\"\<Midpoint\>\"", ",", 
           RowBox[{"{", 
            FractionBox["1", "2"], "}"}], ",", 
           RowBox[{"{", "1", "}"}], ",", "2", ",", 
           FractionBox["1", "24"]}], "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"\"\<Trapezoid\>\"", ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             FractionBox["1", "2"], ",", 
             FractionBox["1", "2"]}], "}"}], ",", "2", ",", 
           FractionBox["1", "12"]}], "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"\"\<Simpson's\>\"", ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", 
             FractionBox["1", "2"], ",", "1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             FractionBox["1", "6"], ",", 
             FractionBox["2", "3"], ",", 
             FractionBox["1", "6"]}], "}"}], ",", "4", ",", 
           FractionBox["1", "2880"]}], "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"\"\<Gaussian 2 point\>\"", ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              FractionBox["1", "2"], "-", 
              FractionBox["1", 
               RowBox[{"2", 
                SqrtBox["3"]}]]}], ",", 
             RowBox[{
              FractionBox["1", "2"], "+", 
              FractionBox["1", 
               RowBox[{"2", 
                SqrtBox["3"]}]]}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"1", "/", "2"}], ",", 
             RowBox[{"1", "/", "2"}]}], "}"}], ",", "4", ",", 
           FractionBox["1", "4320"]}], "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"\"\<Gaussian 3 point\>\"", ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              FractionBox["1", "2"], "-", 
              FractionBox[
               SqrtBox["3"], 
               RowBox[{"2", 
                SqrtBox["5"]}]]}], ",", 
             FractionBox["1", "2"], ",", 
             RowBox[{
              FractionBox["1", "2"], "+", 
              FractionBox[
               SqrtBox["3"], 
               RowBox[{"2", 
                SqrtBox["5"]}]]}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"5", "/", "18"}], ",", 
             RowBox[{"4", "/", "9"}], ",", 
             RowBox[{"5", "/", "18"}]}], "}"}], ",", "6", ",", 
           FractionBox["1", "2016000"]}], "}"}]}], "\[IndentingNewLine]", 
        "}"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"GetQuadData", "[", 
        RowBox[{"f_", ",", "a_", ",", "b_", ",", "p_", ",", "w_"}], "]"}], ":=",
        "\[IndentingNewLine]", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"GetQuadData", "[", 
          RowBox[{"f", ",", "a", ",", "b", ",", "p", ",", "w"}], "]"}], "=", 
         RowBox[{"Module", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"J", "=", "Nums"}], "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"Do", "[", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{
               RowBox[{
               "J", "\[LeftDoubleBracket]", "j", "\[RightDoubleBracket]"}], 
               "=", 
               RowBox[{"Int", "[", 
                RowBox[{"f", ",", "a", ",", "b", ",", "p", ",", "w", ",", 
                 RowBox[{
                 "Nums", "\[LeftDoubleBracket]", "j", 
                  "\[RightDoubleBracket]"}]}], "]"}]}], "\[IndentingNewLine]",
               ",", 
              RowBox[{"{", 
               RowBox[{"j", ",", "1", ",", 
                RowBox[{"Length", "@", "Nums"}]}], "}"}]}], "]"}], ";", 
            "\[IndentingNewLine]", 
            RowBox[{"Flatten", "[", 
             RowBox[{"{", 
              RowBox[{"J", ",", 
               RowBox[{"Int", "[", 
                RowBox[{"f", ",", "a", ",", "b", ",", "p", ",", "w", ",", 
                 RowBox[{"2", 
                  RowBox[{"Nums", "\[LeftDoubleBracket]", 
                   RowBox[{"-", "1"}], "\[RightDoubleBracket]"}]}]}], "]"}]}],
               "}"}], "]"}]}]}], "\[IndentingNewLine]", "]"}]}], ")"}]}], 
      ";"}], "\[IndentingNewLine]", ")"}]}], ",", "\[IndentingNewLine]", 
   RowBox[{"ControlPlacement", "\[Rule]", "Left"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "\[IndentingNewLine]", 
  "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  StyleBox[
   RowBox[{"C$", "::", "shdw"}], "MessageName"], 
  RowBox[{
  ":", " "}], "\<\"Symbol \[NoBreak]\\!\\(\\\"C$\\\"\\)\[NoBreak] appears in \
multiple contexts \[NoBreak]\\!\\({\\\"System`\\\", \\\"Global`\\\"}\\)\
\[NoBreak]; definitions in context \[NoBreak]\\!\\(\\\"System`\\\"\\)\
\[NoBreak] may shadow or be shadowed by other definitions. \
\\!\\(\\*ButtonBox[\\\"\[RightSkeleton]\\\", ButtonStyle->\\\"Link\\\", \
ButtonFrame->None, ButtonData:>\\\"paclet:ref/message/General/shdw\\\", \
ButtonNote -> \\\"C$::shdw\\\"]\\)\"\>"}]], "Message", "MSG"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 0, $CellContext`b$$ = 
    1, $CellContext`f$$ = $CellContext`x^Rational[-7, 2] ($CellContext`x - 
     Sin[$CellContext`x]), $CellContext`m$$ = {
    "Left rectangle", {0}, {1}, 1, 
     Rational[1, 2]}, $CellContext`n$$ = 5, $CellContext`verbose$$ = False, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`a$$], 0, "a"}}, {{
       Hold[$CellContext`b$$], 1, "b"}}, {{
       Hold[$CellContext`f$$], $CellContext`x^Rational[-7, 2] ($CellContext`x - 
        Sin[$CellContext`x]), "Integrand"}, InputField[
       SlotSequence[1], FrameMargins -> 5, BaseStyle -> Large, FieldSize -> 
       11]& }, {{
       Hold[$CellContext`n$$], 5, "Number of intervals"}, {5, 10, 20, 40, 80, 
      160, 320, 640}}, {{
       Hold[$CellContext`m$$], {"Left rectangle", {0}, {1}, 1, 
        Rational[1, 2]}, 
       "Integration method"}, {{"Left rectangle", {0}, {1}, 1, 
         Rational[1, 2]} -> "Left rectangle", {"Right rectangle", {1}, {1}, 1, 
         Rational[1, 2]} -> "Right rectangle", {"Midpoint", {
          Rational[1, 2]}, {1}, 2, 
         Rational[1, 24]} -> "Midpoint", {"Trapezoid", {0, 1}, {
          Rational[1, 2], 
          Rational[1, 2]}, 2, 
         Rational[1, 12]} -> "Trapezoid", {"Simpson's", {0, 
          Rational[1, 2], 1}, {
          Rational[1, 6], 
          Rational[2, 3], 
          Rational[1, 6]}, 4, 
         Rational[1, 2880]} -> 
       "Simpson's", {
        "Gaussian 2 point", {
         Rational[1, 2] + Rational[-1, 2] 3^Rational[-1, 2], Rational[1, 2] + 
          Rational[1, 2] 3^Rational[-1, 2]}, {
          Rational[1, 2], 
          Rational[1, 2]}, 4, 
         Rational[1, 4320]} -> 
       "Gaussian 2 point", {
        "Gaussian 3 point", {
         Rational[1, 2] + Rational[-1, 2] Rational[3, 5]^Rational[1, 2], 
          Rational[1, 2], Rational[1, 2] + 
          Rational[1, 2] Rational[3, 5]^Rational[1, 2]}, {
          Rational[5, 18], 
          Rational[4, 9], 
          Rational[5, 18]}, 6, 
         Rational[1, 2016000]} -> "Gaussian 3 point"}}, {{
       Hold[$CellContext`verbose$$], False, "Show exact value"}, {
      True, False}}}, Typeset`size$$ = {625., {295., 302.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`n$1140$$ = 0, $CellContext`m$1141$$ = 
    False, $CellContext`verbose$1142$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 0, $CellContext`b$$ = 
        1, $CellContext`f$$ = $CellContext`x^Rational[-7, 2] ($CellContext`x - 
          Sin[$CellContext`x]), $CellContext`m$$ = {
         "Left rectangle", {0}, {1}, 1, 
          Rational[1, 2]}, $CellContext`n$$ = 5, $CellContext`verbose$$ = 
        False}, "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$1140$$, 0], 
        Hold[$CellContext`m$$, $CellContext`m$1141$$, False], 
        Hold[$CellContext`verbose$$, $CellContext`verbose$1142$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Quiet[
        Deploy[
         Module[{$CellContext`p$ = Part[$CellContext`m$$, 2], $CellContext`w$ = 
           Part[$CellContext`m$$, 3], $CellContext`r$ = 
           Part[$CellContext`m$$, 4], C$ = 
           Part[$CellContext`m$$, 
             5], $CellContext`lf$, $CellContext`J$ = $CellContext`Nums, \
$CellContext`I1$, $CellContext`I2$, $CellContext`Ie$, $CellContext`h$, \
$CellContext`\[CapitalDelta]$, $CellContext`z$, $CellContext`y$, \
$CellContext`pts$, $CellContext`fit$, $CellContext`fiteq$, \
$CellContext`data$}, $CellContext`lf$ = Evaluate[
             
             ReplaceAll[$CellContext`f$$, $CellContext`x -> #]]& ; \
$CellContext`J$ = $CellContext`GetQuadData[$CellContext`lf$, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$, $CellContext`w$]; If[
            NumberQ[
             $CellContext`Numrev[$CellContext`n$$]], $CellContext`I1$ = 
             Part[$CellContext`J$, 
               $CellContext`Numrev[$CellContext`n$$]]; $CellContext`I2$ = 
             Part[$CellContext`J$, $CellContext`Numrev[$CellContext`n$$] + 1]; 
            Null, $CellContext`I1$ = $CellContext`Int[$CellContext`lf$, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$, $CellContext`w$, \
$CellContext`n$$]; $CellContext`I2$ = $CellContext`Int[$CellContext`lf$, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$, $CellContext`w$, 
               2 $CellContext`n$$]; Null]; $CellContext`Ie$ = 1. NIntegrate[
              $CellContext`lf$[$CellContext`\[Xi]], {$CellContext`\[Xi], \
$CellContext`a$$, $CellContext`b$$}, PrecisionGoal -> $MachinePrecision, 
              WorkingPrecision -> 50]; $CellContext`\[CapitalDelta]$ = 
           Abs[$CellContext`I2$ - $CellContext`I1$]; $CellContext`h$ = \
($CellContext`b$$ - $CellContext`a$$)/$CellContext`n$$; $CellContext`z$ = \
($CellContext`b$$ - $CellContext`a$$)/$CellContext`Nums; $CellContext`y$ = 
           Abs[Part[$CellContext`J$, 
               Span[2, All]] - Part[$CellContext`J$, 
              Span[1, -2]]]; $CellContext`data$ = Part[
             Reap[
              Do[
               If[
                NumericQ[
                 Log[
                  Part[$CellContext`y$, $CellContext`j]]], 
                Sow[{
                  Log[
                   Part[$CellContext`z$, $CellContext`j]], 
                  Log[
                   Part[$CellContext`y$, $CellContext`j]]}]], {$CellContext`j,
                 1, 
                Length[$CellContext`y$]}]], 2]; 
          If[$CellContext`data$ === {}, $CellContext`data$ = {{{0, 0}, {1, 
              1}}}; $CellContext`fit$ = 
             Fit[$CellContext`data$, {
               
               1, $CellContext`\[Xi]}, $CellContext`\[Xi]]; $CellContext`z$ = \
{1, E}; $CellContext`fiteq$ = ""; $CellContext`fit$ = 
             Plot[$CellContext`fit$, {$CellContext`\[Xi], 
                Log[
                 Min[$CellContext`z$]], 
                Log[
                 
                 Max[$CellContext`z$]]}]; $CellContext`pts$ = \
$CellContext`fit$; Null, $CellContext`pts$ = ListLogLogPlot[
               Transpose[{$CellContext`z$, $CellContext`y$}], Joined -> True, 
               Mesh -> Full]; $CellContext`data$ = 
             1. Part[$CellContext`data$, 1]; $CellContext`fit$ = 
             Fit[$CellContext`data$, {
               1, $CellContext`\[Xi]}, $CellContext`\[Xi]]; \
$CellContext`fiteq$ = Exp[
               
               ReplaceAll[$CellContext`fit$, $CellContext`\[Xi] -> 
                Log[$CellContext`\[Eta]]]]; $CellContext`fit$ = 
             Plot[$CellContext`fit$, {$CellContext`\[Xi], 
                Log[
                 Min[$CellContext`z$]], 
                Log[
                 Max[$CellContext`z$]]}, PlotStyle -> Red]; Null]; Column[{
             
             Show[$CellContext`pts$, $CellContext`fit$, ImageSize -> 500, 
              AxesLabel -> {
                Style[
                 TraditionalForm["h"], 18], 
                Style[
                 TraditionalForm[
                 "\[CapitalDelta]=|\!\(\*SubscriptBox[\(I\), \
\(h\)]\)-\!\(\*SubscriptBox[\(I\), \(h/2\)]\)|"], 18]}, PlotRange -> {
                Min[
                 Part[$CellContext`data$, 
                  Span[1, All], 2]], 
                Max[
                 Part[$CellContext`data$, 
                  Span[1, All], 2]]}, PlotLabel -> Style[
                ReplaceAll[$CellContext`fiteq$, $CellContext`\[Eta] -> "h"], 
                18]], 
             Row[{"Quadrature: ", 
               TraditionalForm[
               "\!\(\*SubsuperscriptBox[\(\[Integral]\), \(a\), \
\(b\)]\)f(x)dx \[TildeTilde] "], 
               TraditionalForm[
                Row[
                 Table[Part[$CellContext`w$, $CellContext`j] Row[{"f(", 
                    DisplayForm[
                    ReplaceAll[
                    
                    Simplify[(1 - Part[$CellContext`p$, $CellContext`j]) "a" + 
                    Part[$CellContext`p$, $CellContext`j] "b"], Rational[1, 
                    Pattern[$CellContext`\[Zeta], 
                    Blank[]]] Pattern[$CellContext`\[Sigma], 
                    Blank[]] -> 
                    FractionBox[$CellContext`\[Sigma], \
$CellContext`\[Zeta]]]], ")"}], {$CellContext`j, 
                   Length[$CellContext`p$]}], "+"]]}], 
             
             Row[{"Quadrature ", "error", " \[CurlyEpsilon]", 
               "= ", ((C$ "(b-a)") Subscript["M", $CellContext`r$]) 
               Superscript["h", $CellContext`r$]}], Null, 
             Grid[
              If[$CellContext`verbose$$, {{"For h = ", 
                 N[$CellContext`h$], " \!\(\*SubscriptBox[\(I\), \(1\)]\)", 
                 "= ", 
                 ScientificForm[$CellContext`I1$, 15]}, {"For h = ", 
                 N[$CellContext`h$/2], " \!\(\*SubscriptBox[\(I\), \(2\)]\)", 
                 "= ", 
                 ScientificForm[$CellContext`I2$, 15]}, {
                "Exact ", " ", " \!\(\*SubscriptBox[\(I\), \(e\)]\)", "= ", 
                 ScientificForm[$CellContext`Ie$, 15]}, {
                "", "\[CapitalDelta] =", 
                 "|\!\(\*SubscriptBox[\(I\), \
\(2\)]\)-\!\(\*SubscriptBox[\(I\), \(1\)]\)|", "= ", 
                 ScientificForm[$CellContext`\[CapitalDelta]$, 6]}, {
                "\!\(\*SubscriptBox[\(\[CurlyEpsilon]\), \(2\)]\) estimate", 
                 "is ", "|\!\(\*SubscriptBox[\(I\), \
\(2\)]\)-\!\(\*SubscriptBox[\(I\), \(1\)]\)|"/(2^$CellContext`r$ - 1), "= ", 
                 
                 ScientificForm[$CellContext`\[CapitalDelta]$/(
                  2^$CellContext`r$ - 1), 6]}, {
                "Actual error", "is", 
                 "|\!\(\*SubscriptBox[\(I\), \
\(2\)]\)-\!\(\*SubscriptBox[\(I\), \(e\)]\)|", "= ", 
                 ScientificForm[
                  Abs[$CellContext`I2$ - $CellContext`Ie$], 6]}}, {{
                "For h = ", 
                 N[$CellContext`h$], " \!\(\*SubscriptBox[\(I\), \(1\)]\)", 
                 "= ", 
                 ScientificForm[$CellContext`I1$, 15]}, {"For h = ", 
                 N[$CellContext`h$/2], " \!\(\*SubscriptBox[\(I\), \(2\)]\)", 
                 "= ", 
                 ScientificForm[$CellContext`I2$, 15]}, {
                "", "\[CapitalDelta] =", 
                 "|\!\(\*SubscriptBox[\(I\), \
\(2\)]\)-\!\(\*SubscriptBox[\(I\), \(1\)]\)|", "= ", 
                 ScientificForm[$CellContext`\[CapitalDelta]$, 6]}, {
                "\!\(\*SubscriptBox[\(\[CurlyEpsilon]\), \(2\)]\) estimate", 
                 "is ", "|\!\(\*SubscriptBox[\(I\), \
\(2\)]\)-\!\(\*SubscriptBox[\(I\), \(1\)]\)|"/Row[{
                   Superscript[2, $CellContext`r$], "-1"}], "= ", 
                 
                 ScientificForm[$CellContext`\[CapitalDelta]$/(
                  2^$CellContext`r$ - 1), 6]}}]]}]]]], 
      "Specifications" :> {{{$CellContext`a$$, 0, "a"}, ControlType -> 
         InputField}, {{$CellContext`b$$, 1, "b"}, ControlType -> 
         InputField}, {{$CellContext`f$$, $CellContext`x^
           Rational[-7, 2] ($CellContext`x - Sin[$CellContext`x]), 
          "Integrand"}, InputField[
          SlotSequence[1], FrameMargins -> 5, BaseStyle -> Large, FieldSize -> 
          11]& }, {{$CellContext`n$$, 5, "Number of intervals"}, {5, 10, 20, 
         40, 80, 160, 320, 640}, ControlType -> Slider, Appearance -> 
         "Labeled"}, {{$CellContext`m$$, {"Left rectangle", {0}, {1}, 1, 
           Rational[1, 2]}, 
          "Integration method"}, {{"Left rectangle", {0}, {1}, 1, 
            Rational[1, 2]} -> 
          "Left rectangle", {"Right rectangle", {1}, {1}, 1, 
            Rational[1, 2]} -> "Right rectangle", {"Midpoint", {
             Rational[1, 2]}, {1}, 2, 
            Rational[1, 24]} -> "Midpoint", {"Trapezoid", {0, 1}, {
             Rational[1, 2], 
             Rational[1, 2]}, 2, 
            Rational[1, 12]} -> "Trapezoid", {"Simpson's", {0, 
             Rational[1, 2], 1}, {
             Rational[1, 6], 
             Rational[2, 3], 
             Rational[1, 6]}, 4, 
            Rational[1, 2880]} -> 
          "Simpson's", {
           "Gaussian 2 point", {
            Rational[1, 2] + Rational[-1, 2] 3^Rational[-1, 2], 
             Rational[1, 2] + Rational[1, 2] 3^Rational[-1, 2]}, {
             Rational[1, 2], 
             Rational[1, 2]}, 4, 
            Rational[1, 4320]} -> 
          "Gaussian 2 point", {
           "Gaussian 3 point", {
            Rational[1, 2] + Rational[-1, 2] Rational[3, 5]^Rational[1, 2], 
             Rational[1, 2], Rational[1, 2] + 
             Rational[1, 2] Rational[3, 5]^Rational[1, 2]}, {
             Rational[5, 18], 
             Rational[4, 9], 
             Rational[5, 18]}, 6, 
            Rational[1, 2016000]} -> "Gaussian 3 point"}, ControlType -> 
         PopupMenu}, {{$CellContext`verbose$$, False, "Show exact value"}, {
         True, False}, ControlType -> Checkbox}}, 
      "Options" :> {ControlPlacement -> Left}, "DefaultOptions" :> {}],
     ImageSizeCache->{1200., {330., 337.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({{$CellContext`Nums = {5, 10, 20, 40, 80, 160, 320, 
          640}, $CellContext`GetQuadData[(-E^(-#^2) + Cos[#])/#^(5/2)& , 0, 
           1, {0}, {1}] = {
          Infinity, Infinity, Infinity, Infinity, Infinity, Infinity, 
           Infinity, Infinity, 
           Infinity}, $CellContext`GetQuadData[(-E^(-#^2) + Cos[#])/#^(5/2)& ,
            0, 9, {0}, {1}] = {
          Infinity, Infinity, Infinity, Infinity, Infinity, Infinity, 
           Infinity, Infinity, 
           Infinity}, $CellContext`GetQuadData[(-Sin[#] + #)/#^(7/2)& , 0, 
           1, {0}, {1}] = {
          Infinity, Infinity, Infinity, Infinity, Infinity, Infinity, 
           Infinity, Infinity, 
           Infinity}, $CellContext`GetQuadData[(-Sin[#] + #)/#^(7/2)& , 0, 
           1, {0}, {1}] = {
          Infinity, Infinity, Infinity, Infinity, Infinity, Infinity, 
           Infinity, Infinity, Infinity}, $CellContext`GetQuadData[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`a, 
            Blank[]], 
           Pattern[$CellContext`b, 
            Blank[]], 
           Pattern[$CellContext`p, 
            Blank[]], 
           Pattern[$CellContext`w, 
            
            Blank[]]] := ($CellContext`GetQuadData[$CellContext`f, \
$CellContext`a, $CellContext`b, $CellContext`p, $CellContext`w] = 
          Module[{$CellContext`J = $CellContext`Nums}, 
            Do[Part[$CellContext`J, $CellContext`j] = \
$CellContext`Int[$CellContext`f, $CellContext`a, $CellContext`b, \
$CellContext`p, $CellContext`w, 
                Part[$CellContext`Nums, $CellContext`j]], {$CellContext`j, 1, 
               
               Length[$CellContext`Nums]}]; Flatten[{$CellContext`J, 
               $CellContext`Int[$CellContext`f, $CellContext`a, \
$CellContext`b, $CellContext`p, $CellContext`w, 2 
                Part[$CellContext`Nums, -1]]}]]), $CellContext`Int[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`a, 
            Blank[]], 
           Pattern[$CellContext`b, 
            Blank[]], 
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`w, 
            Blank[]], 
           Pattern[$CellContext`n, 
            Blank[]]] := 
         Module[{$CellContext`X, $CellContext`h, $CellContext`F, \
$CellContext`W, $CellContext`v}, $CellContext`h = ($CellContext`b - \
$CellContext`a)/$CellContext`n; $CellContext`X = $CellContext`a + \
$CellContext`h 
              Range[0, $CellContext`n - 1]; {$CellContext`wt, $CellContext`W} = 
            AbsoluteTiming[
              Flatten[
               
               Table[$CellContext`h $CellContext`w, {$CellContext`p, \
$CellContext`X}]]]; {$CellContext`xt, $CellContext`X} = AbsoluteTiming[
              Flatten[
               
               Table[$CellContext`p + $CellContext`h $CellContext`x, \
{$CellContext`p, $CellContext`X}]]]; $CellContext`X = 
            N[$CellContext`X, 2 $MachinePrecision]; $CellContext`W = 
            N[$CellContext`W, 
              2 $MachinePrecision]; {$CellContext`ft, $CellContext`F} = 
            AbsoluteTiming[
              Flatten[{
                Limit[
                 $CellContext`f[$CellContext`\[Xi]], $CellContext`\[Xi] -> 
                 Part[$CellContext`X, 1]], 
                $CellContext`f[
                 Part[$CellContext`X, 
                  Span[2, -2]]], 
                Limit[
                 $CellContext`f[$CellContext`\[Xi]], $CellContext`\[Xi] -> 
                 Part[$CellContext`X, -1]]}]]; {$CellContext`vt, \
$CellContext`v} = AbsoluteTiming[
              
              Dot[$CellContext`W, $CellContext`F]]; $CellContext`v], \
$CellContext`wt = 0.003532`3.999565688401503, $CellContext`xt = 
         0.00488`4.139964815498672, $CellContext`ft = 
         0.043537`5.090403493342674, $CellContext`vt = 
         0.001629`3.663466077804486, $CellContext`Numrev[5] = 
         1, $CellContext`Numrev[10] = 2, $CellContext`Numrev[20] = 
         3, $CellContext`Numrev[40] = 4, $CellContext`Numrev[80] = 
         5, $CellContext`Numrev[160] = 6, $CellContext`Numrev[320] = 
         7, $CellContext`Numrev[640] = 8, Attributes[Subscript] = {NHoldRest},
          Attributes[Superscript] = {
          NHoldRest, ReadProtected}}; ($CellContext`Nums = 5 2^Range[0, 7]; 
        Do[$CellContext`Numrev[
            
            Part[$CellContext`Nums, $CellContext`j]] = $CellContext`j, \
{$CellContext`j, 1, 
           Length[$CellContext`Nums]}]; $CellContext`Int[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`a, 
            Blank[]], 
           Pattern[$CellContext`b, 
            Blank[]], 
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`w, 
            Blank[]], 
           Pattern[$CellContext`n, 
            Blank[]]] := 
         Module[{$CellContext`X, $CellContext`h, $CellContext`F, \
$CellContext`W, $CellContext`v}, $CellContext`h = ($CellContext`b - \
$CellContext`a)/$CellContext`n; $CellContext`X = $CellContext`a + \
$CellContext`h 
              Range[0, $CellContext`n - 1]; {$CellContext`wt, $CellContext`W} = 
            AbsoluteTiming[
              Flatten[
               
               Table[$CellContext`h $CellContext`w, {$CellContext`p, \
$CellContext`X}]]]; {$CellContext`xt, $CellContext`X} = AbsoluteTiming[
              Flatten[
               
               Table[$CellContext`p + $CellContext`h $CellContext`x, \
{$CellContext`p, $CellContext`X}]]]; $CellContext`X = 
            N[$CellContext`X, 2 $MachinePrecision]; $CellContext`W = 
            N[$CellContext`W, 
              2 $MachinePrecision]; {$CellContext`ft, $CellContext`F} = 
            AbsoluteTiming[
              Flatten[{
                Limit[
                 $CellContext`f[$CellContext`\[Xi]], $CellContext`\[Xi] -> 
                 Part[$CellContext`X, 1]], 
                $CellContext`f[
                 Part[$CellContext`X, 
                  Span[2, -2]]], 
                Limit[
                 $CellContext`f[$CellContext`\[Xi]], $CellContext`\[Xi] -> 
                 Part[$CellContext`X, -1]]}]]; {$CellContext`vt, \
$CellContext`v} = AbsoluteTiming[
              
              Dot[$CellContext`W, $CellContext`F]]; $CellContext`v]; \
$CellContext`Quadratures = {{"Left rectangle", {0}, {1}, 1, 1/2}, {
           "Right rectangle", {1}, {1}, 1, 1/2}, {
           "Midpoint", {1/2}, {1}, 2, 1/24}, {
           "Trapezoid", {0, 1}, {1/2, 1/2}, 2, 1/12}, {
           "Simpson's", {0, 1/2, 1}, {1/6, 2/3, 1/6}, 4, 1/2880}, {
           "Gaussian 2 point", {
            1/2 - 1/(2 3^Rational[1, 2]), 1/2 + 1/(2 3^Rational[1, 2])}, {
            1/2, 1/2}, 4, 1/4320}, {
           "Gaussian 3 point", {
            1/2 - 3^Rational[1, 2]/(2 5^Rational[1, 2]), 1/2, 1/2 + 
             3^Rational[1, 2]/(2 5^Rational[1, 2])}, {5/18, 4/9, 5/18}, 6, 1/
            2016000}}; $CellContext`GetQuadData[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`a, 
            Blank[]], 
           Pattern[$CellContext`b, 
            Blank[]], 
           Pattern[$CellContext`p, 
            Blank[]], 
           Pattern[$CellContext`w, 
            
            Blank[]]] := ($CellContext`GetQuadData[$CellContext`f, \
$CellContext`a, $CellContext`b, $CellContext`p, $CellContext`w] = 
          Module[{$CellContext`J = $CellContext`Nums}, 
            Do[Part[$CellContext`J, $CellContext`j] = \
$CellContext`Int[$CellContext`f, $CellContext`a, $CellContext`b, \
$CellContext`p, $CellContext`w, 
                Part[$CellContext`Nums, $CellContext`j]], {$CellContext`j, 1, 
               
               Length[$CellContext`Nums]}]; Flatten[{$CellContext`J, 
               $CellContext`Int[$CellContext`f, $CellContext`a, \
$CellContext`b, $CellContext`p, $CellContext`w, 2 
                Part[$CellContext`Nums, -1]]}]]); Null)}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]]
},
WindowSize->{1596, 846},
WindowMargins->{{0, Automatic}, {0, Automatic}},
PrintingCopies->1,
PrintingPageRange->{Automatic, Automatic},
PrintingOptions->{"PaperOrientation"->"Portrait",
"PaperSize"->{594.75, 842.25},
"PostScriptOutputFile"->""},
ShowSelection->True,
TrackCellChangeTimes->False,
Magnification:>FEPrivate`If[
  FEPrivate`Equal[FEPrivate`$VersionNumber, 6.], 1.25, 1.25 Inherited],
FrontEndVersion->"8.0 for Linux x86 (64-bit) (October 10, 2011)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1257, 32, 30854, 729, 3561, "Input"],
Cell[32114, 763, 590, 11, 27, "Message"],
Cell[32707, 776, 21858, 453, 687, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ZvTXryc@Ap6OsDgsZ9magG9D *)
