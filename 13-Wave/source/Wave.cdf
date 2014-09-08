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
NotebookDataLength[     77144,       1684]
NotebookOptionsPosition[     77385,       1675]
NotebookOutlinePosition[     77842,       1693]
CellTagsIndexPosition[     77799,       1690]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
      "exact", ",", "num", ",", "\[IndentingNewLine]", "ua", ",", "uta", ",", 
       "uxa", ",", "r1a", ",", "r2a", ",", "\[IndentingNewLine]", "u", ",", 
       "ut", ",", "ux", ",", "r1", ",", "r2", ",", "\[IndentingNewLine]", "h",
        ",", "\[Tau]", ",", "n", ",", "\[Xi]"}], "\[IndentingNewLine]", "}"}],
      ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"ua", "[", "x_", "]"}], ":=", 
       RowBox[{"FullSimplify", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"f", "[", 
           RowBox[{"x", "-", "t"}], "]"}], "+", 
          RowBox[{"f", "[", 
           RowBox[{"x", "+", "t"}], "]"}]}], "2"], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"uta", "[", "x_", "]"}], ":=", 
       RowBox[{"FullSimplify", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"-", 
           RowBox[{"g", "[", 
            RowBox[{"x", "-", "t"}], "]"}]}], "+", 
          RowBox[{"g", "[", 
           RowBox[{"x", "+", "t"}], "]"}]}], "2"], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"uxa", "[", "x_", "]"}], ":=", 
       RowBox[{"FullSimplify", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"g", "[", 
           RowBox[{"x", "-", "t"}], "]"}], "+", 
          RowBox[{"g", "[", 
           RowBox[{"x", "+", "t"}], "]"}]}], "2"], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"r1a", "[", "x_", "]"}], ":=", 
       RowBox[{"FullSimplify", "[", 
        RowBox[{
         RowBox[{"uta", "[", "x", "]"}], "+", 
         RowBox[{"uxa", "[", "x", "]"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"r2a", "[", "x_", "]"}], ":=", 
       RowBox[{"FullSimplify", "[", 
        RowBox[{
         RowBox[{"uta", "[", "x", "]"}], "-", 
         RowBox[{"uxa", "[", "x", "]"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"exact", "=", 
       RowBox[{"Switch", "[", 
        RowBox[{"show", ",", "\[IndentingNewLine]", "\"\<sol\>\"", ",", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"ua", "[", "x", "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", "1"}], "}"}]}], ",", 
           RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Speed\>\""}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", "Blue", "}"}]}]}], "]"}], ",", 
         "\[IndentingNewLine]", "\"\<der\>\"", ",", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"uta", "[", "x", "]"}], ",", 
             RowBox[{"uxa", "[", "x", "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "10"}], ",", "10"}], "}"}]}], ",", 
           RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Speed\>\""}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"Blue", ",", "Red"}], "}"}]}]}], "]"}], ",", 
         "\[IndentingNewLine]", "\"\<inv\>\"", ",", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"r1a", "[", "x", "]"}], ",", 
             RowBox[{"r2a", "[", "x", "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "10"}], ",", "10"}], "}"}]}], ",", 
           RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Speed\>\""}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"Blue", ",", "Red"}], "}"}]}]}], "]"}], ",", 
         "\[IndentingNewLine]", "\"\<ut\>\"", ",", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"uta", "[", "x", "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "10"}], ",", "10"}], "}"}]}], ",", 
           RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Speed\>\""}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", "Blue", "}"}]}]}], "]"}], ",", 
         "\[IndentingNewLine]", "\"\<ux\>\"", ",", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"uxa", "[", "x", "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "10"}], ",", "10"}], "}"}]}], ",", 
           RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Speed\>\""}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", "Blue", "}"}]}]}], "]"}], ",", 
         "\[IndentingNewLine]", "\"\<r1\>\"", ",", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"r1a", "[", "x", "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "10"}], ",", "10"}], "}"}]}], ",", 
           RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Speed\>\""}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", "Blue", "}"}]}]}], "]"}], ",", 
         "\[IndentingNewLine]", "\"\<r2\>\"", ",", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{"r2a", "[", "x", "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "10"}], ",", "10"}], "}"}]}], ",", 
           RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Speed\>\""}], ",", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", "Blue", "}"}]}]}], "]"}]}], "\[IndentingNewLine]", 
        "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"u", ",", "ut", ",", "ux", ",", "r1", ",", "r2"}], "}"}], "=", 
       RowBox[{"GetNumeric", "[", 
        RowBox[{"method", ",", "M", ",", "\[Sigma]"}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"\[Xi]", "=", 
       RowBox[{
        RowBox[{"Range", "[", 
         RowBox[{"0", ",", "M"}], "]"}], "/", "M"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"h", "=", 
       RowBox[{
       "\[Xi]", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}], ";",
       "\[IndentingNewLine]", 
      RowBox[{"\[Tau]", "=", 
       RowBox[{"\[Sigma]", " ", "h"}]}], ";", "\[IndentingNewLine]", 
      "\[IndentingNewLine]", 
      RowBox[{"n", "=", 
       RowBox[{
        RowBox[{"Ceiling", "[", 
         RowBox[{"t", "/", "\[Tau]"}], "]"}], "+", "1"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"u", "=", 
       RowBox[{"u", "\[LeftDoubleBracket]", "n", "\[RightDoubleBracket]"}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{"ut", "=", 
       RowBox[{"ut", "\[LeftDoubleBracket]", "n", "\[RightDoubleBracket]"}]}],
       ";", "\[IndentingNewLine]", 
      RowBox[{"ux", "=", 
       RowBox[{"ux", "\[LeftDoubleBracket]", "n", "\[RightDoubleBracket]"}]}],
       ";", "\[IndentingNewLine]", 
      RowBox[{"r1", "=", 
       RowBox[{"r1", "\[LeftDoubleBracket]", "n", "\[RightDoubleBracket]"}]}],
       ";", "\[IndentingNewLine]", 
      RowBox[{"r2", "=", 
       RowBox[{"r2", "\[LeftDoubleBracket]", "n", "\[RightDoubleBracket]"}]}],
       ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"num", "=", 
       RowBox[{"Switch", "[", 
        RowBox[{"show", ",", "\[IndentingNewLine]", "\"\<sol\>\"", ",", 
         RowBox[{"ListLinePlot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"{", 
             RowBox[{"\[Xi]", ",", "u"}], "}"}], "\[Transpose]"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", "1"}], "}"}]}], ",", 
           RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Speed\>\""}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", "Green", "}"}]}], ",", 
           RowBox[{"Filling", "\[Rule]", "Axis"}]}], "]"}], ",", 
         "\[IndentingNewLine]", "\"\<der\>\"", ",", 
         RowBox[{"ListLinePlot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\[Xi]", ",", "ut"}], "}"}], "\[Transpose]"}], ",", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\[Xi]", ",", "ux"}], "}"}], "\[Transpose]"}]}], "}"}],
            ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "10"}], ",", "10"}], "}"}]}], ",", 
           RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Speed\>\""}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"Green", ",", "Magenta"}], "}"}]}], ",", 
           RowBox[{"Filling", "\[Rule]", "Axis"}]}], "]"}], ",", 
         "\[IndentingNewLine]", "\"\<inv\>\"", ",", 
         RowBox[{"ListLinePlot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\[Xi]", ",", "r1"}], "}"}], "\[Transpose]"}], ",", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\[Xi]", ",", "r2"}], "}"}], "\[Transpose]"}]}], "}"}],
            ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "10"}], ",", "10"}], "}"}]}], ",", 
           RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Speed\>\""}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"Green", ",", "Magenta"}], "}"}]}], ",", 
           RowBox[{"Filling", "\[Rule]", "Axis"}]}], "]"}], ",", 
         "\[IndentingNewLine]", "\"\<ut\>\"", ",", 
         RowBox[{"ListLinePlot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"{", 
             RowBox[{"\[Xi]", ",", "ut"}], "}"}], "\[Transpose]"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "10"}], ",", "10"}], "}"}]}], ",", 
           RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Speed\>\""}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", "Green", "}"}]}], ",", 
           RowBox[{"Filling", "\[Rule]", "Axis"}]}], "]"}], ",", 
         "\[IndentingNewLine]", "\"\<ux\>\"", ",", 
         RowBox[{"ListLinePlot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"{", 
             RowBox[{"\[Xi]", ",", "ux"}], "}"}], "\[Transpose]"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "10"}], ",", "10"}], "}"}]}], ",", 
           RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Speed\>\""}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", "Green", "}"}]}], ",", 
           RowBox[{"Filling", "\[Rule]", "Axis"}]}], "]"}], ",", 
         "\[IndentingNewLine]", "\"\<r1\>\"", ",", 
         RowBox[{"ListLinePlot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"{", 
             RowBox[{"\[Xi]", ",", "r1"}], "}"}], "\[Transpose]"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "10"}], ",", "10"}], "}"}]}], ",", 
           RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Speed\>\""}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", "Green", "}"}]}], ",", 
           RowBox[{"Filling", "\[Rule]", "Axis"}]}], "]"}], ",", 
         "\[IndentingNewLine]", "\"\<r2\>\"", ",", 
         RowBox[{"ListLinePlot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"{", 
             RowBox[{"\[Xi]", ",", "r2"}], "}"}], "\[Transpose]"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "10"}], ",", "10"}], "}"}]}], ",", 
           RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Speed\>\""}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", "Green", "}"}]}], ",", 
           RowBox[{"Filling", "\[Rule]", "Axis"}]}], "]"}]}], 
        "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"Show", "[", 
       RowBox[{"exact", ",", "num", ",", 
        RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}]}], 
    "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "method", ",", "\"\<cross\>\"", ",", 
       "\"\<\:041c\:0435\:0442\:043e\:0434\>\""}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
       "\"\<cross\>\"", "\[Rule]", 
        "\"\<\:0421\:0445\:0435\:043c\:0430 \
\\\"\:041a\:0440\:0435\:0441\:0442\\\"\>\""}], ",", "\[IndentingNewLine]", 
       RowBox[{
       "\"\<invar1\>\"", "\[Rule]", 
        "\"\<\:0421\:0445\:0435\:043c\:0430 \:0432 \:0438\:043d\:0432\:0430\
\:0440\:0438\:0430\:043d\:0442\:0430\:0445 (1\:0433\:043e \:043f\:043e\:0440\
\:044f\:0434\:043a\:0430)\>\""}], ",", "\[IndentingNewLine]", 
       RowBox[{
       "\"\<invar2\>\"", "\[Rule]", 
        "\"\<\:0421\:0445\:0435\:043c\:0430 \:0432 \:0438\:043d\:0432\:0430\
\:0440\:0438\:0430\:043d\:0442\:0430\:0445 (2\:0433\:043e \:043f\:043e\:0440\
\:044f\:0434\:043a\:0430)\>\""}]}], "\[IndentingNewLine]", "}"}]}], "}"}], 
   "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "M", ",", "100", ",", 
       "\"\<\:0420\:0430\:0437\:043c\:0435\:0440 \:0441\:0435\:0442\:043a\
\:0438 \:043f\:043e x\>\""}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
      "10", ",", "25", ",", "50", ",", "100", ",", "250", ",", "500"}], "}"}],
      ",", "\[IndentingNewLine]", 
     RowBox[{"ControlType", "\[Rule]", "Slider"}], ",", "\[IndentingNewLine]", 
     RowBox[{"ContinuousAction", "\[Rule]", "False"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
   "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "\[Sigma]", ",", ".5", ",", 
       "\"\<\:0427\:0438\:0441\:043b\:043e \:041a\:0443\:0440\:0430\:043d\
\:0442\:0430\>\""}], "}"}], ",", "\[IndentingNewLine]", "0", ",", "2", ",", 
     "0.05", ",", "\[IndentingNewLine]", 
     RowBox[{"ControlType", "\[Rule]", "Slider"}], ",", "\[IndentingNewLine]", 
     RowBox[{"ContinuousAction", "\[Rule]", "False"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
   "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "t", ",", "0", ",", 
       "\"\<\:041c\:043e\:043c\:0435\:043d\:0442 \:0432\:0440\:0435\:043c\
\:0435\:043d\:0438\>\""}], "}"}], ",", "0", ",", "2", ",", 
     "\[IndentingNewLine]", 
     RowBox[{"ControlType", "\[Rule]", "Slider"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
   "\[IndentingNewLine]", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "show", ",", "\"\<sol\>\"", ",", 
       "\"\<\:041e\:0442\:043e\:0431\:0440\:0430\:0436\:0430\:0442\:044c\>\""}\
], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
       "\"\<sol\>\"", "\[Rule]", 
        "\"\<\:0420\:0435\:0448\:0435\:043d\:0438\:0435 u\>\""}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{
       "\"\<der\>\"", "\[Rule]", 
        "\"\<\:041f\:0440\:043e\:0438\:0437\:0432\:043e\:0434\:043d\:044b\
\:0435 \!\(\*SubscriptBox[\(u\), \(t\)]\), \!\(\*SubscriptBox[\(u\), \(x\)]\)\
\>\""}], ",", "\[IndentingNewLine]", 
       RowBox[{
       "\"\<inv\>\"", "\[Rule]", 
        "\"\<\:0418\:043d\:0432\:0430\:0440\:0438\:0430\:043d\:0442\:044b \
\:0420\:0438\:043c\:0430\:043d\:0430 \!\(\*SubscriptBox[\(r\), \(1\)]\), \!\(\
\*SubscriptBox[\(r\), \(2\)]\)\>\""}], ",", "\[IndentingNewLine]", 
       RowBox[{
       "\"\<ut\>\"", "\[Rule]", 
        "\"\<\!\(\*SubscriptBox[\(u\), \(t\)]\)\>\""}], ",", 
       RowBox[{
       "\"\<ux\>\"", "\[Rule]", 
        "\"\<\!\(\*SubscriptBox[\(u\), \(x\)]\)\>\""}], ",", 
       RowBox[{
       "\"\<r1\>\"", "\[Rule]", 
        "\"\<\!\(\*SubscriptBox[\(r\), \(1\)]\)\>\""}], ",", 
       RowBox[{
       "\"\<r2\>\"", "\[Rule]", 
        "\"\<\!\(\*SubscriptBox[\(r\), \(2\)]\)\>\""}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"ControlType", "\[Rule]", "SetterBar"}]}], "\[IndentingNewLine]",
     "}"}], "\[IndentingNewLine]", ",", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"$HistoryLength", "=", "0"}], ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"init", "[", "x_", "]"}], ":=", 
        RowBox[{
         RowBox[{"Exp", "[", 
          RowBox[{
           RowBox[{"-", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"x", "-", "0.3"}], ")"}], "^", "2"}]}], "/", 
           RowBox[{"0.08", "^", "2"}]}], "]"}], "-", 
         RowBox[{".5", " ", 
          RowBox[{"UnitTriangle", "[", 
           RowBox[{"10", " ", 
            RowBox[{"(", 
             RowBox[{"x", "-", "0.75"}], ")"}]}], "]"}]}], "-", 
         RowBox[{"(", 
          RowBox[{"7.811489408`*^-7", "+", 
           RowBox[{"0.00007323271320`", " ", "x"}], "-", 
           RowBox[{"0.00014880887322`", " ", 
            RowBox[{"x", "^", "2"}]}], "+", 
           RowBox[{"0.000074795011084`", " ", 
            RowBox[{"x", "^", "3"}]}]}], ")"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Dinit", "[", "x_", "]"}], ":=", 
        RowBox[{"Evaluate", "@", 
         RowBox[{"D", "[", 
          RowBox[{
           RowBox[{"init", "[", "x", "]"}], ",", "x"}], "]"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"f", "[", "x_", "]"}], ":=", 
        RowBox[{
         RowBox[{"Sign", "@", 
          RowBox[{"Sin", "[", 
           RowBox[{"\[Pi]", " ", 
            RowBox[{"x", "/", "2"}]}], "]"}]}], 
         RowBox[{"Piecewise", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"init", "[", 
               RowBox[{"Mod", "[", 
                RowBox[{"x", ",", "2"}], "]"}], "]"}], ",", 
              RowBox[{
               RowBox[{"Mod", "[", 
                RowBox[{"x", ",", "2"}], "]"}], "\[LessEqual]", "1"}]}], 
             "}"}], "}"}], ",", 
           RowBox[{"init", "[", 
            RowBox[{"2", "-", 
             RowBox[{"Mod", "[", 
              RowBox[{"x", ",", "2"}], "]"}]}], "]"}]}], "]"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"g", "[", "x_", "]"}], ":=", 
        RowBox[{
         RowBox[{"Sign", "@", 
          RowBox[{"Sin", "[", 
           RowBox[{"\[Pi]", " ", 
            RowBox[{"x", "/", "2"}]}], "]"}]}], 
         RowBox[{"Piecewise", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Dinit", "[", 
               RowBox[{"Mod", "[", 
                RowBox[{"x", ",", "2"}], "]"}], "]"}], ",", 
              RowBox[{
               RowBox[{"Mod", "[", 
                RowBox[{"x", ",", "2"}], "]"}], "\[LessEqual]", "1"}]}], 
             "}"}], "}"}], ",", 
           RowBox[{"-", 
            RowBox[{"Dinit", "[", 
             RowBox[{"2", "-", 
              RowBox[{"Mod", "[", 
               RowBox[{"x", ",", "2"}], "]"}]}], "]"}]}]}], "]"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"GetNumeric", "[", 
         RowBox[{"mtd_", ",", "m_", ",", "s_"}], "]"}], ":=", 
        RowBox[{
         RowBox[{"GetNumeric", "[", 
          RowBox[{"mtd", ",", "m", ",", "s"}], "]"}], "=", " ", 
         RowBox[{"Module", "[", 
          RowBox[{
           RowBox[{"{", "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Switch", "[", 
            RowBox[{"mtd", ",", "\[IndentingNewLine]", "\"\<cross\>\"", ",", 
             RowBox[{"GetCross", "[", 
              RowBox[{"m", ",", "s"}], "]"}], ",", "\[IndentingNewLine]", 
             "\"\<invar1\>\"", ",", 
             RowBox[{"GetInvar1", "[", 
              RowBox[{"m", ",", "s"}], "]"}], ",", "\[IndentingNewLine]", 
             "\"\<invar2\>\"", ",", 
             RowBox[{"GetInvar2", "[", 
              RowBox[{"m", ",", "s"}], "]"}]}], "\[IndentingNewLine]", 
            "]"}]}], "\[IndentingNewLine]", "]"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"GetCross", "[", 
         RowBox[{"m_", ",", "s_"}], "]"}], ":=", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
           "h", ",", "\[Tau]", ",", "T", ",", "\[IndentingNewLine]", "x", ",",
             "\[IndentingNewLine]", "u", ",", "ut", ",", "ux", ",", "r1", ",",
             "r2"}], "\[IndentingNewLine]", "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"h", "=", 
            RowBox[{"1.", "/", "m"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"\[Tau]", "=", 
            RowBox[{"s", " ", "h"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"T", "=", 
            RowBox[{"Ceiling", "[", " ", 
             RowBox[{"2.", "/", "\[Tau]"}], "]"}]}], ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"u", "=", 
            RowBox[{"Table", "[", 
             RowBox[{"0.", ",", 
              RowBox[{"{", 
               RowBox[{"T", "+", "1"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"m", "+", "1"}], "}"}]}], "]"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"x", "=", 
            RowBox[{
             RowBox[{"Range", "[", 
              RowBox[{"0", ",", "m"}], "]"}], "/", "m"}]}], ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{
            "u", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], "=", 
            
            RowBox[{"init", "[", "x", "]"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{
            "u", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], "=", 
            
            RowBox[{
            "u", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}], 
           ";", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"u", "\[LeftDoubleBracket]", 
             RowBox[{"2", ",", 
              RowBox[{"2", ";;", 
               RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}], "+=", 
            RowBox[{".5", 
             SuperscriptBox["s", "2"], 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"u", "\[LeftDoubleBracket]", 
                RowBox[{"1", ",", 
                 RowBox[{"3", ";;"}]}], "\[RightDoubleBracket]"}], "-", 
               RowBox[{"2", 
                RowBox[{"u", "\[LeftDoubleBracket]", 
                 RowBox[{"1", ",", 
                  RowBox[{"2", ";;", 
                   RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}]}], "+", 
               RowBox[{"u", "\[LeftDoubleBracket]", 
                RowBox[{"1", ",", 
                 RowBox[{";;", 
                  RowBox[{"-", "3"}]}]}], "\[RightDoubleBracket]"}]}], 
              ")"}]}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"Do", "[", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"u", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", 
                 RowBox[{"2", ";;", 
                  RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}], "=", 
               RowBox[{
                RowBox[{"2", 
                 RowBox[{"u", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", 
                   RowBox[{"2", ";;", 
                    RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}]}], "-", 
                
                RowBox[{"u", "\[LeftDoubleBracket]", 
                 RowBox[{
                  RowBox[{"j", "-", "1"}], ",", 
                  RowBox[{"2", ";;", 
                   RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}], 
                "\[IndentingNewLine]", "+", 
                RowBox[{
                 SuperscriptBox["s", "2"], 
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"u", "\[LeftDoubleBracket]", 
                    RowBox[{"j", ",", 
                    RowBox[{"3", ";;"}]}], "\[RightDoubleBracket]"}], "-", 
                   RowBox[{"2", 
                    RowBox[{"u", "\[LeftDoubleBracket]", 
                    RowBox[{"j", ",", 
                    RowBox[{"2", ";;", 
                    RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}]}], "+", 
                   
                   RowBox[{"u", "\[LeftDoubleBracket]", 
                    RowBox[{"j", ",", 
                    RowBox[{";;", 
                    RowBox[{"-", "3"}]}]}], "\[RightDoubleBracket]"}]}], 
                  ")"}]}]}]}], ";", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"u", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", "1"}], 
                "\[RightDoubleBracket]"}], "=", "0"}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"u", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", 
                 RowBox[{"-", "1"}]}], "\[RightDoubleBracket]"}], "=", 
               RowBox[{
                RowBox[{"2", "/", "3"}], 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"2", 
                   RowBox[{"u", "\[LeftDoubleBracket]", 
                    RowBox[{
                    RowBox[{"j", "+", "1"}], ",", 
                    RowBox[{"-", "2"}]}], "\[RightDoubleBracket]"}]}], "-", 
                  RowBox[{".5", 
                   RowBox[{"u", "\[LeftDoubleBracket]", 
                    RowBox[{
                    RowBox[{"j", "+", "1"}], ",", 
                    RowBox[{"-", "3"}]}], "\[RightDoubleBracket]"}]}]}], 
                 ")"}]}]}], ";"}], "\[IndentingNewLine]", ",", 
             RowBox[{"{", 
              RowBox[{"j", ",", "2", ",", "T"}], "}"}]}], "]"}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"ut", "=", "u"}], ";", "\[IndentingNewLine]", 
           RowBox[{"ux", "=", "u"}], ";", "\[IndentingNewLine]", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"ux", "\[LeftDoubleBracket]", 
             RowBox[{";;", ",", 
              RowBox[{"-", "1"}]}], "\[RightDoubleBracket]"}], "=", "0"}], 
           ";", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"ux", "\[LeftDoubleBracket]", 
             RowBox[{";;", ",", "1"}], "\[RightDoubleBracket]"}], "=", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"u", "\[LeftDoubleBracket]", 
                RowBox[{";;", ",", "2"}], "\[RightDoubleBracket]"}], "-", 
               RowBox[{"u", "\[LeftDoubleBracket]", 
                RowBox[{";;", ",", "1"}], "\[RightDoubleBracket]"}]}], ")"}], 
             "/", "h"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"ux", "\[LeftDoubleBracket]", 
             RowBox[{";;", ",", 
              RowBox[{"2", ";;", 
               RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}], "=", 
            RowBox[{".5", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"u", "\[LeftDoubleBracket]", 
                 RowBox[{";;", ",", 
                  RowBox[{"3", ";;", 
                   RowBox[{"-", "1"}]}]}], "\[RightDoubleBracket]"}], "-", 
                RowBox[{"u", "\[LeftDoubleBracket]", 
                 RowBox[{";;", ",", 
                  RowBox[{"1", ";;", 
                   RowBox[{"-", "3"}]}]}], "\[RightDoubleBracket]"}]}], ")"}],
               "/", "h"}]}]}], ";", "\[IndentingNewLine]", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"ut", "\[LeftDoubleBracket]", 
             RowBox[{"1", ",", ";;"}], "\[RightDoubleBracket]"}], "=", "0"}], 
           ";", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"ut", "\[LeftDoubleBracket]", 
             RowBox[{
              RowBox[{"T", "+", "1"}], ",", ";;"}], "\[RightDoubleBracket]"}],
             "=", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"u", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"T", "+", "1"}], ",", ";;"}], 
                "\[RightDoubleBracket]"}], "-", 
               RowBox[{"u", "\[LeftDoubleBracket]", 
                RowBox[{"T", ",", ";;"}], "\[RightDoubleBracket]"}]}], ")"}], 
             "/", "\[Tau]"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"ut", "\[LeftDoubleBracket]", 
             RowBox[{
              RowBox[{"2", ";;", "T"}], ",", ";;"}], 
             "\[RightDoubleBracket]"}], "=", 
            RowBox[{".5", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"u", "\[LeftDoubleBracket]", 
                 RowBox[{
                  RowBox[{"3", ";;", 
                   RowBox[{"T", "+", "1"}]}], ",", ";;"}], 
                 "\[RightDoubleBracket]"}], "-", 
                RowBox[{"u", "\[LeftDoubleBracket]", 
                 RowBox[{
                  RowBox[{"1", ";;", 
                   RowBox[{"T", "-", "1"}]}], ",", ";;"}], 
                 "\[RightDoubleBracket]"}]}], ")"}], "/", "\[Tau]"}]}]}], ";",
            "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"r1", "=", 
            RowBox[{"ut", "+", "ux"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"r2", "=", 
            RowBox[{"ut", "-", "ux"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"u", ",", "ut", ",", "ux", ",", "r1", ",", "r2"}], 
            "}"}]}]}], "\[IndentingNewLine]", "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"GetInvar1", "[", 
         RowBox[{"m_", ",", "s_"}], "]"}], ":=", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
           "h", ",", "\[Tau]", ",", "T", ",", "\[IndentingNewLine]", "x", ",",
             "ux0", ",", "\[IndentingNewLine]", "r1", ",", "r2", ",", "ut", 
            ",", "ux", ",", "u"}], "\[IndentingNewLine]", "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"h", "=", 
            RowBox[{"1.", "/", "m"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"\[Tau]", "=", 
            RowBox[{"s", " ", "h"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"T", "=", 
            RowBox[{"Ceiling", "[", 
             RowBox[{"2.", "/", "\[Tau]"}], "]"}]}], ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"r1", "=", 
            RowBox[{"Table", "[", 
             RowBox[{"0.", ",", 
              RowBox[{"{", 
               RowBox[{"T", "+", "1"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"m", "+", "1"}], "}"}]}], "]"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"r2", "=", 
            RowBox[{"Table", "[", 
             RowBox[{"0.", ",", 
              RowBox[{"{", 
               RowBox[{"T", "+", "1"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"m", "+", "1"}], "}"}]}], "]"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"x", "=", 
            RowBox[{
             RowBox[{"Range", "[", 
              RowBox[{"0", ",", "m"}], "]"}], "/", "m"}]}], ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"ux0", "=", 
            RowBox[{
             RowBox[{"Map", "[", 
              RowBox[{"Dinit", ",", "x"}], "]"}], "/.", 
             RowBox[{"Indeterminate", "\[Rule]", "0."}]}]}], ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"r1", "\[LeftDoubleBracket]", 
             RowBox[{"1", ",", ";;"}], "\[RightDoubleBracket]"}], "=", 
            "ux0"}], ";", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"r2", "\[LeftDoubleBracket]", 
             RowBox[{"1", ",", ";;"}], "\[RightDoubleBracket]"}], "=", 
            RowBox[{"-", "ux0"}]}], ";", "\[IndentingNewLine]", 
           "\[IndentingNewLine]", 
           RowBox[{"Do", "[", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"r1", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", 
                 RowBox[{";;", 
                  RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}], "=", 
               RowBox[{
                RowBox[{"s", " ", 
                 RowBox[{"r1", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", 
                   RowBox[{"2", ";;"}]}], "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"1", "-", "s"}], ")"}], 
                 RowBox[{"r1", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", 
                   RowBox[{";;", 
                    RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}]}]}]}], 
              ";", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"r2", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", 
                 RowBox[{"2", ";;"}]}], "\[RightDoubleBracket]"}], "=", 
               RowBox[{
                RowBox[{"s", " ", 
                 RowBox[{"r2", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", 
                   RowBox[{";;", 
                    RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}]}], "+", 
                
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"1", "-", "s"}], ")"}], 
                 RowBox[{"r2", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", 
                   RowBox[{"2", ";;"}]}], "\[RightDoubleBracket]"}]}]}]}], 
              ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"r1", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", 
                 RowBox[{"-", "1"}]}], "\[RightDoubleBracket]"}], "=", 
               RowBox[{"r2", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", 
                 RowBox[{"-", "1"}]}], "\[RightDoubleBracket]"}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"r2", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", "1"}], 
                "\[RightDoubleBracket]"}], "=", 
               RowBox[{"-", 
                RowBox[{"r1", "\[LeftDoubleBracket]", 
                 RowBox[{
                  RowBox[{"j", "+", "1"}], ",", "1"}], 
                 "\[RightDoubleBracket]"}]}]}], ";"}], "\[IndentingNewLine]", 
             ",", 
             RowBox[{"{", 
              RowBox[{"j", ",", "1", ",", "T"}], "}"}]}], "]"}], ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"ut", "=", 
            RowBox[{"0.5", 
             RowBox[{"(", 
              RowBox[{"r1", "+", "r2"}], ")"}]}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"ux", "=", 
            RowBox[{"0.5", 
             RowBox[{"(", 
              RowBox[{"r1", "-", "r2"}], ")"}]}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"u", "=", "ux"}], ";", "\[IndentingNewLine]", 
           "\[IndentingNewLine]", 
           RowBox[{"Do", "[", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{
              RowBox[{"ux0", "=", 
               RowBox[{"0.5", "h", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"ux", "\[LeftDoubleBracket]", 
                   RowBox[{"j", ",", 
                    RowBox[{"2", ";;"}]}], "\[RightDoubleBracket]"}], "+", 
                  RowBox[{"ux", "\[LeftDoubleBracket]", 
                   RowBox[{"j", ",", 
                    RowBox[{";;", 
                    RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}]}], 
                 ")"}]}]}], ";", "\[IndentingNewLine]", 
              RowBox[{"ux0", "=", 
               RowBox[{"Accumulate", "[", 
                RowBox[{"Prepend", "[", 
                 RowBox[{"ux0", ",", "0"}], "]"}], "]"}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"u", "\[LeftDoubleBracket]", 
                RowBox[{"j", ",", ";;"}], "\[RightDoubleBracket]"}], "=", " ", 
               RowBox[{
               "ux0", "\[LeftDoubleBracket]", ";;", 
                "\[RightDoubleBracket]"}]}], ";"}], "\[IndentingNewLine]", 
             ",", 
             RowBox[{"{", 
              RowBox[{"j", ",", "1", ",", 
               RowBox[{"T", "+", "1"}]}], "}"}]}], "]"}], ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"u", ",", "ut", ",", "ux", ",", "r1", ",", "r2"}], 
            "}"}]}]}], "\[IndentingNewLine]", "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"GetInvar2", "[", 
         RowBox[{"m_", ",", "s_"}], "]"}], ":=", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
           "h", ",", "\[Tau]", ",", "T", ",", "\[IndentingNewLine]", "x", ",",
             "ux0", ",", "\[IndentingNewLine]", "r1", ",", "r2", ",", "ut", 
            ",", "ux", ",", "u", ",", "\[IndentingNewLine]", "\[Alpha]", ",", 
            "\[Beta]", ",", "\[Gamma]"}], "\[IndentingNewLine]", "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"h", "=", 
            RowBox[{"1.", "/", "m"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"\[Tau]", "=", 
            RowBox[{"s", " ", "h"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"T", "=", 
            RowBox[{"Ceiling", "[", 
             RowBox[{"2.", "/", "\[Tau]"}], "]"}]}], ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"r1", "=", 
            RowBox[{"Table", "[", 
             RowBox[{"0.", ",", 
              RowBox[{"{", 
               RowBox[{"T", "+", "1"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"m", "+", "1"}], "}"}]}], "]"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"r2", "=", 
            RowBox[{"Table", "[", 
             RowBox[{"0.", ",", 
              RowBox[{"{", 
               RowBox[{"T", "+", "1"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"m", "+", "1"}], "}"}]}], "]"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"x", "=", 
            RowBox[{
             RowBox[{"Range", "[", 
              RowBox[{"0", ",", "m"}], "]"}], "/", "m"}]}], ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"ux0", "=", 
            RowBox[{
             RowBox[{"Map", "[", 
              RowBox[{"Dinit", ",", "x"}], "]"}], "/.", 
             RowBox[{"Indeterminate", "\[Rule]", "0."}]}]}], ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"r1", "\[LeftDoubleBracket]", 
             RowBox[{"1", ",", ";;"}], "\[RightDoubleBracket]"}], "=", 
            "ux0"}], ";", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"r2", "\[LeftDoubleBracket]", 
             RowBox[{"1", ",", ";;"}], "\[RightDoubleBracket]"}], "=", 
            RowBox[{"-", "ux0"}]}], ";", "\[IndentingNewLine]", 
           "\[IndentingNewLine]", 
           RowBox[{"\[Alpha]", "=", 
            FractionBox[
             RowBox[{
              SuperscriptBox["s", "2"], "+", "s"}], "2"]}], ";", " ", 
           RowBox[{"\[Beta]", "=", 
            RowBox[{"1", "-", 
             SuperscriptBox["s", "2"]}]}], ";", " ", 
           RowBox[{"\[Gamma]", "=", 
            FractionBox[
             RowBox[{
              SuperscriptBox["s", "2"], "-", "s"}], "2"]}], ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"Do", "[", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"r1", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", 
                 RowBox[{"2", ";;", 
                  RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}], "=", 
               RowBox[{
                RowBox[{"\[Gamma]", " ", 
                 RowBox[{"r1", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", 
                   RowBox[{";;", 
                    RowBox[{"-", "3"}]}]}], "\[RightDoubleBracket]"}]}], "+", 
                
                RowBox[{"\[Beta]", " ", 
                 RowBox[{"r1", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", 
                   RowBox[{"2", ";;", 
                    RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}]}], "+", 
                
                RowBox[{"\[Alpha]", " ", 
                 RowBox[{"r1", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", 
                   RowBox[{"3", ";;"}]}], "\[RightDoubleBracket]"}]}]}]}], 
              ";", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"r2", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", 
                 RowBox[{"2", ";;", 
                  RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}], "=", 
               RowBox[{
                RowBox[{"\[Alpha]", " ", 
                 RowBox[{"r2", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", 
                   RowBox[{";;", 
                    RowBox[{"-", "3"}]}]}], "\[RightDoubleBracket]"}]}], "+", 
                
                RowBox[{"\[Beta]", " ", 
                 RowBox[{"r2", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", 
                   RowBox[{"2", ";;", 
                    RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}]}], "+", 
                
                RowBox[{"\[Gamma]", " ", 
                 RowBox[{"r2", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", 
                   RowBox[{"3", ";;"}]}], "\[RightDoubleBracket]"}]}]}]}], 
              ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"r2", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", 
                 RowBox[{"-", "1"}]}], "\[RightDoubleBracket]"}], "=", 
               RowBox[{
                RowBox[{
                 FractionBox[
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"s", "-", "1"}], ")"}], 
                   RowBox[{"(", 
                    RowBox[{"s", "-", "2"}], ")"}]}], "2"], 
                 RowBox[{"r2", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", 
                   RowBox[{"-", "1"}]}], "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{"s", 
                 RowBox[{"(", 
                  RowBox[{"2", "-", "s"}], ")"}], 
                 RowBox[{"r2", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", 
                   RowBox[{"-", "2"}]}], "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 FractionBox[
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"s", "-", "1"}], ")"}], "s"}], "2"], 
                 RowBox[{"r2", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", 
                   RowBox[{"-", "3"}]}], "\[RightDoubleBracket]"}]}]}]}], ";",
               "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"r1", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", "1"}], 
                "\[RightDoubleBracket]"}], "=", 
               RowBox[{
                RowBox[{
                 FractionBox[
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"s", "-", "1"}], ")"}], 
                   RowBox[{"(", 
                    RowBox[{"s", "-", "2"}], ")"}]}], "2"], 
                 RowBox[{"r1", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", "1"}], "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{"s", 
                 RowBox[{"(", 
                  RowBox[{"2", "-", "s"}], ")"}], 
                 RowBox[{"r1", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", "2"}], "\[RightDoubleBracket]"}]}], "+", 
                RowBox[{
                 FractionBox[
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"s", "-", "1"}], ")"}], "s"}], "2"], 
                 RowBox[{"r1", "\[LeftDoubleBracket]", 
                  RowBox[{"j", ",", "3"}], "\[RightDoubleBracket]"}]}]}]}], 
              ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"r1", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", 
                 RowBox[{"-", "1"}]}], "\[RightDoubleBracket]"}], "=", 
               RowBox[{"r2", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", 
                 RowBox[{"-", "1"}]}], "\[RightDoubleBracket]"}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"r2", "\[LeftDoubleBracket]", 
                RowBox[{
                 RowBox[{"j", "+", "1"}], ",", "1"}], 
                "\[RightDoubleBracket]"}], "=", 
               RowBox[{"-", 
                RowBox[{"r1", "\[LeftDoubleBracket]", 
                 RowBox[{
                  RowBox[{"j", "+", "1"}], ",", "1"}], 
                 "\[RightDoubleBracket]"}]}]}], ";"}], "\[IndentingNewLine]", 
             ",", 
             RowBox[{"{", 
              RowBox[{"j", ",", "1", ",", "T"}], "}"}]}], "]"}], ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"ut", "=", 
            RowBox[{"0.5", 
             RowBox[{"(", 
              RowBox[{"r1", "+", "r2"}], ")"}]}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"ux", "=", 
            RowBox[{"0.5", 
             RowBox[{"(", 
              RowBox[{"r1", "-", "r2"}], ")"}]}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"u", "=", "ux"}], ";", "\[IndentingNewLine]", 
           "\[IndentingNewLine]", 
           RowBox[{"Do", "[", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{
              RowBox[{"ux0", "=", 
               RowBox[{"0.5", "h", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"ux", "\[LeftDoubleBracket]", 
                   RowBox[{"j", ",", 
                    RowBox[{"2", ";;"}]}], "\[RightDoubleBracket]"}], "+", 
                  RowBox[{"ux", "\[LeftDoubleBracket]", 
                   RowBox[{"j", ",", 
                    RowBox[{";;", 
                    RowBox[{"-", "2"}]}]}], "\[RightDoubleBracket]"}]}], 
                 ")"}]}]}], ";", "\[IndentingNewLine]", 
              RowBox[{"ux0", "=", 
               RowBox[{"Accumulate", "[", 
                RowBox[{"Prepend", "[", 
                 RowBox[{"ux0", ",", "0"}], "]"}], "]"}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"u", "\[LeftDoubleBracket]", 
                RowBox[{"j", ",", ";;"}], "\[RightDoubleBracket]"}], "=", " ", 
               RowBox[{
               "ux0", "\[LeftDoubleBracket]", ";;", 
                "\[RightDoubleBracket]"}]}], ";"}], "\[IndentingNewLine]", 
             ",", 
             RowBox[{"{", 
              RowBox[{"j", ",", "1", ",", 
               RowBox[{"T", "+", "1"}]}], "}"}]}], "]"}], ";", 
           "\[IndentingNewLine]", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"u", ",", "ut", ",", "ux", ",", "r1", ",", "r2"}], 
            "}"}]}]}], "\[IndentingNewLine]", "]"}]}], ";"}]}], 
     "\[IndentingNewLine]", "]"}]}]}], "]"}]], "Input",
 CellChangeTimes->{{3.57560960079204*^9, 3.5756096936983147`*^9}, {
   3.575609793898902*^9, 3.575609984153943*^9}, {3.575610015702939*^9, 
   3.575610017583185*^9}, {3.5756101190511837`*^9, 3.575610130632752*^9}, {
   3.575610504820986*^9, 3.575610518925418*^9}, {3.575610564633019*^9, 
   3.5756105922518597`*^9}, {3.57561063622896*^9, 3.575610638996654*^9}, 
   3.5756106883316383`*^9, 3.575610728318578*^9, {3.575610770307226*^9, 
   3.5756109089625387`*^9}, {3.575610943083562*^9, 3.575610991395714*^9}, {
   3.575611034100418*^9, 3.57561120164503*^9}, 3.575611231871972*^9, {
   3.575611291181196*^9, 3.575611431771401*^9}, {3.5756114904570417`*^9, 
   3.5756115336138887`*^9}, {3.575611596352496*^9, 3.575611694784664*^9}, {
   3.5756118237634974`*^9, 3.575611863835215*^9}, {3.575612497081213*^9, 
   3.575612601310585*^9}, {3.5756136013170023`*^9, 3.5756136898763657`*^9}, {
   3.575613724677473*^9, 3.5756137314630213`*^9}, {3.575613832168902*^9, 
   3.575613851252965*^9}, {3.575613884768365*^9, 3.5756140080577793`*^9}, {
   3.575614076020858*^9, 3.575614242421554*^9}, {3.575614326386518*^9, 
   3.5756143830367823`*^9}, 3.5756144197603693`*^9, {3.575614617789197*^9, 
   3.5756147832778378`*^9}, {3.575614886747819*^9, 3.575614919779269*^9}, {
   3.575614985688903*^9, 3.5756150010876293`*^9}, {3.5756150337152576`*^9, 
   3.575615064367792*^9}, {3.5756151238148317`*^9, 3.575615127752009*^9}, {
   3.5756172400382338`*^9, 3.575617499429295*^9}, {3.575617532717594*^9, 
   3.575617551875386*^9}, {3.575617621444852*^9, 3.575617624665254*^9}, {
   3.575617655168912*^9, 3.575617655907384*^9}, {3.5756177545804977`*^9, 
   3.57561777149043*^9}, {3.5756178527023077`*^9, 3.575617855601081*^9}, {
   3.575617930576396*^9, 3.5756179325720053`*^9}, {3.5756181113310013`*^9, 
   3.5756182559693317`*^9}, {3.5756183762157097`*^9, 3.575618404948722*^9}, {
   3.575618519983933*^9, 3.575618706693569*^9}, {3.575618778533861*^9, 
   3.575618799703858*^9}, {3.575619148816378*^9, 3.575619212737619*^9}, {
   3.5756193760608377`*^9, 3.575619381105505*^9}, {3.575619421695557*^9, 
   3.575619438732601*^9}, {3.575619485404702*^9, 3.575619487797254*^9}, {
   3.5756195250019627`*^9, 3.575619605028268*^9}, {3.575619661745994*^9, 
   3.5756197100558558`*^9}, {3.575619750354239*^9, 3.575619753901718*^9}, {
   3.575619872911612*^9, 3.57561990098279*^9}, 3.575619962968624*^9, {
   3.575620000025354*^9, 3.575620076450139*^9}, {3.575620126689508*^9, 
   3.5756201282100782`*^9}, 3.5756203914956303`*^9, {3.575620584078824*^9, 
   3.575620598876223*^9}, {3.57562065910658*^9, 3.57562068434673*^9}, {
   3.5756207493811007`*^9, 3.5756207809856462`*^9}, {3.575620881476672*^9, 
   3.575620884128272*^9}, {3.5756209185365143`*^9, 3.575620921889471*^9}, {
   3.575621094337639*^9, 3.575621098015609*^9}, {3.575621205132806*^9, 
   3.575621339215555*^9}, {3.575621481801259*^9, 3.575621487144414*^9}, {
   3.575621531654422*^9, 3.57562161010041*^9}, {3.575622035565792*^9, 
   3.57562208558267*^9}, {3.575630925535754*^9, 3.575631119493515*^9}, {
   3.575631154981215*^9, 3.575631159354751*^9}, {3.5756311946366653`*^9, 
   3.575631230381385*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`M$$ = 100, $CellContext`method$$ = 
    "cross", $CellContext`show$$ = "sol", $CellContext`t$$ = 
    0, $CellContext`\[Sigma]$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`method$$], "cross", 
       "\:041c\:0435\:0442\:043e\:0434"}, {
      "cross" -> 
       "\:0421\:0445\:0435\:043c\:0430 \"\:041a\:0440\:0435\:0441\:0442\"", 
       "invar1" -> 
       "\:0421\:0445\:0435\:043c\:0430 \:0432 \:0438\:043d\:0432\:0430\:0440\
\:0438\:0430\:043d\:0442\:0430\:0445 (1\:0433\:043e \:043f\:043e\:0440\:044f\
\:0434\:043a\:0430)", "invar2" -> 
       "\:0421\:0445\:0435\:043c\:0430 \:0432 \:0438\:043d\:0432\:0430\:0440\
\:0438\:0430\:043d\:0442\:0430\:0445 (2\:0433\:043e \:043f\:043e\:0440\:044f\
\:0434\:043a\:0430)"}}, {{
       Hold[$CellContext`M$$], 100, 
       "\:0420\:0430\:0437\:043c\:0435\:0440 \:0441\:0435\:0442\:043a\:0438 \
\:043f\:043e x"}, {10, 25, 50, 100, 250, 500}}, {{
       Hold[$CellContext`\[Sigma]$$], 0.5, 
       "\:0427\:0438\:0441\:043b\:043e \:041a\:0443\:0440\:0430\:043d\:0442\
\:0430"}, 0, 2, 0.05}, {{
       Hold[$CellContext`t$$], 0, 
       "\:041c\:043e\:043c\:0435\:043d\:0442 \:0432\:0440\:0435\:043c\:0435\
\:043d\:0438"}, 0, 2}, {{
       Hold[$CellContext`show$$], "sol", 
       "\:041e\:0442\:043e\:0431\:0440\:0430\:0436\:0430\:0442\:044c"}, {
      "sol" -> "\:0420\:0435\:0448\:0435\:043d\:0438\:0435 u", "der" -> 
       "\:041f\:0440\:043e\:0438\:0437\:0432\:043e\:0434\:043d\:044b\:0435 \!\
\(\*SubscriptBox[\(u\), \(t\)]\), \!\(\*SubscriptBox[\(u\), \(x\)]\)", "inv" -> 
       "\:0418\:043d\:0432\:0430\:0440\:0438\:0430\:043d\:0442\:044b \:0420\
\:0438\:043c\:0430\:043d\:0430 \!\(\*SubscriptBox[\(r\), \(1\)]\), \
\!\(\*SubscriptBox[\(r\), \(2\)]\)", "ut" -> 
       "\!\(\*SubscriptBox[\(u\), \(t\)]\)", "ux" -> 
       "\!\(\*SubscriptBox[\(u\), \(x\)]\)", "r1" -> 
       "\!\(\*SubscriptBox[\(r\), \(1\)]\)", "r2" -> 
       "\!\(\*SubscriptBox[\(r\), \(2\)]\)"}}}, Typeset`size$$ = {
    720., {222., 229.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`method$546$$ = 
    False, $CellContext`M$551$$ = 0, $CellContext`\[Sigma]$552$$ = 
    0, $CellContext`t$553$$ = 0, $CellContext`show$554$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`M$$ = 100, $CellContext`method$$ = 
        "cross", $CellContext`show$$ = "sol", $CellContext`t$$ = 
        0, $CellContext`\[Sigma]$$ = 0.5}, "ControllerVariables" :> {
        Hold[$CellContext`method$$, $CellContext`method$546$$, False], 
        Hold[$CellContext`M$$, $CellContext`M$551$$, 0], 
        Hold[$CellContext`\[Sigma]$$, $CellContext`\[Sigma]$552$$, 0], 
        Hold[$CellContext`t$$, $CellContext`t$553$$, 0], 
        Hold[$CellContext`show$$, $CellContext`show$554$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`exact$, $CellContext`num$, $CellContext`ua$, \
$CellContext`uta$, $CellContext`uxa$, $CellContext`r1a$, $CellContext`r2a$, \
$CellContext`u$, $CellContext`ut$, $CellContext`ux$, $CellContext`r1$, \
$CellContext`r2$, $CellContext`h$, $CellContext`\[Tau]$, $CellContext`n$, \
$CellContext`\[Xi]$}, $CellContext`ua$[
           Pattern[$CellContext`x$, 
            Blank[]]] := 
         FullSimplify[($CellContext`f[$CellContext`x$ - $CellContext`t$$] + \
$CellContext`f[$CellContext`x$ + $CellContext`t$$])/2]; $CellContext`uta$[
           Pattern[$CellContext`x$, 
            Blank[]]] := 
         FullSimplify[(-$CellContext`g[$CellContext`x$ - $CellContext`t$$] + \
$CellContext`g[$CellContext`x$ + $CellContext`t$$])/2]; $CellContext`uxa$[
           Pattern[$CellContext`x$, 
            Blank[]]] := 
         FullSimplify[($CellContext`g[$CellContext`x$ - $CellContext`t$$] + \
$CellContext`g[$CellContext`x$ + $CellContext`t$$])/2]; $CellContext`r1a$[
           Pattern[$CellContext`x$, 
            Blank[]]] := 
         FullSimplify[$CellContext`uta$[$CellContext`x$] + \
$CellContext`uxa$[$CellContext`x$]]; $CellContext`r2a$[
           Pattern[$CellContext`x$, 
            Blank[]]] := 
         FullSimplify[$CellContext`uta$[$CellContext`x$] - \
$CellContext`uxa$[$CellContext`x$]]; $CellContext`exact$ = 
         Switch[$CellContext`show$$, "sol", 
           Plot[
            $CellContext`ua$[$CellContext`x], {$CellContext`x, 0, 1}, 
            PlotRange -> {-1, 1}, PerformanceGoal -> "Speed", 
            PlotStyle -> {Blue}], "der", 
           Plot[{
             $CellContext`uta$[$CellContext`x], 
             $CellContext`uxa$[$CellContext`x]}, {$CellContext`x, 0, 1}, 
            PlotRange -> {-10, 10}, PerformanceGoal -> "Speed", 
            PlotStyle -> {Blue, Red}], "inv", 
           Plot[{
             $CellContext`r1a$[$CellContext`x], 
             $CellContext`r2a$[$CellContext`x]}, {$CellContext`x, 0, 1}, 
            PlotRange -> {-10, 10}, PerformanceGoal -> "Speed", 
            PlotStyle -> {Blue, Red}], "ut", 
           Plot[
            $CellContext`uta$[$CellContext`x], {$CellContext`x, 0, 1}, 
            PlotRange -> {-10, 10}, PerformanceGoal -> "Speed", 
            PlotStyle -> {Blue}], "ux", 
           Plot[
            $CellContext`uxa$[$CellContext`x], {$CellContext`x, 0, 1}, 
            PlotRange -> {-10, 10}, PerformanceGoal -> "Speed", 
            PlotStyle -> {Blue}], "r1", 
           Plot[
            $CellContext`r1a$[$CellContext`x], {$CellContext`x, 0, 1}, 
            PlotRange -> {-10, 10}, PerformanceGoal -> "Speed", 
            PlotStyle -> {Blue}], "r2", 
           Plot[
            $CellContext`r2a$[$CellContext`x], {$CellContext`x, 0, 1}, 
            PlotRange -> {-10, 10}, PerformanceGoal -> "Speed", 
            PlotStyle -> {
             Blue}]]; {$CellContext`u$, $CellContext`ut$, $CellContext`ux$, \
$CellContext`r1$, $CellContext`r2$} = \
$CellContext`GetNumeric[$CellContext`method$$, $CellContext`M$$, \
$CellContext`\[Sigma]$$]; $CellContext`\[Xi]$ = 
         Range[0, $CellContext`M$$]/$CellContext`M$$; $CellContext`h$ = 
         Part[$CellContext`\[Xi]$, 
           2]; $CellContext`\[Tau]$ = $CellContext`\[Sigma]$$ $CellContext`h$; \
$CellContext`n$ = 
         Ceiling[$CellContext`t$$/$CellContext`\[Tau]$] + 1; $CellContext`u$ = 
         Part[$CellContext`u$, $CellContext`n$]; $CellContext`ut$ = 
         Part[$CellContext`ut$, $CellContext`n$]; $CellContext`ux$ = 
         Part[$CellContext`ux$, $CellContext`n$]; $CellContext`r1$ = 
         Part[$CellContext`r1$, $CellContext`n$]; $CellContext`r2$ = 
         Part[$CellContext`r2$, $CellContext`n$]; $CellContext`num$ = 
         Switch[$CellContext`show$$, "sol", 
           ListLinePlot[
            Transpose[{$CellContext`\[Xi]$, $CellContext`u$}], 
            PlotRange -> {-1, 1}, PerformanceGoal -> "Speed", 
            PlotStyle -> {Green}, Filling -> Axis], "der", 
           ListLinePlot[{
             Transpose[{$CellContext`\[Xi]$, $CellContext`ut$}], 
             Transpose[{$CellContext`\[Xi]$, $CellContext`ux$}]}, 
            PlotRange -> {-10, 10}, PerformanceGoal -> "Speed", 
            PlotStyle -> {Green, Magenta}, Filling -> Axis], "inv", 
           ListLinePlot[{
             Transpose[{$CellContext`\[Xi]$, $CellContext`r1$}], 
             Transpose[{$CellContext`\[Xi]$, $CellContext`r2$}]}, 
            PlotRange -> {-10, 10}, PerformanceGoal -> "Speed", 
            PlotStyle -> {Green, Magenta}, Filling -> Axis], "ut", 
           ListLinePlot[
            Transpose[{$CellContext`\[Xi]$, $CellContext`ut$}], 
            PlotRange -> {-10, 10}, PerformanceGoal -> "Speed", 
            PlotStyle -> {Green}, Filling -> Axis], "ux", 
           ListLinePlot[
            Transpose[{$CellContext`\[Xi]$, $CellContext`ux$}], 
            PlotRange -> {-10, 10}, PerformanceGoal -> "Speed", 
            PlotStyle -> {Green}, Filling -> Axis], "r1", 
           ListLinePlot[
            Transpose[{$CellContext`\[Xi]$, $CellContext`r1$}], 
            PlotRange -> {-10, 10}, PerformanceGoal -> "Speed", 
            PlotStyle -> {Green}, Filling -> Axis], "r2", 
           ListLinePlot[
            Transpose[{$CellContext`\[Xi]$, $CellContext`r2$}], 
            PlotRange -> {-10, 10}, PerformanceGoal -> "Speed", 
            PlotStyle -> {Green}, Filling -> Axis]]; 
        Show[$CellContext`exact$, $CellContext`num$, ImageSize -> Large]], 
      "Specifications" :> {{{$CellContext`method$$, "cross", 
          "\:041c\:0435\:0442\:043e\:0434"}, {
         "cross" -> 
          "\:0421\:0445\:0435\:043c\:0430 \"\:041a\:0440\:0435\:0441\:0442\"",
           "invar1" -> 
          "\:0421\:0445\:0435\:043c\:0430 \:0432 \:0438\:043d\:0432\:0430\
\:0440\:0438\:0430\:043d\:0442\:0430\:0445 (1\:0433\:043e \:043f\:043e\:0440\
\:044f\:0434\:043a\:0430)", "invar2" -> 
          "\:0421\:0445\:0435\:043c\:0430 \:0432 \:0438\:043d\:0432\:0430\
\:0440\:0438\:0430\:043d\:0442\:0430\:0445 (2\:0433\:043e \:043f\:043e\:0440\
\:044f\:0434\:043a\:0430)"}}, {{$CellContext`M$$, 100, 
          "\:0420\:0430\:0437\:043c\:0435\:0440 \
\:0441\:0435\:0442\:043a\:0438 \:043f\:043e x"}, {10, 25, 50, 100, 250, 500}, 
         ControlType -> Slider, ContinuousAction -> False, Appearance -> 
         "Labeled"}, {{$CellContext`\[Sigma]$$, 0.5, 
          "\:0427\:0438\:0441\:043b\:043e \
\:041a\:0443\:0440\:0430\:043d\:0442\:0430"}, 0, 2, 0.05, ControlType -> 
         Slider, ContinuousAction -> False, Appearance -> 
         "Labeled"}, {{$CellContext`t$$, 0, 
          "\:041c\:043e\:043c\:0435\:043d\:0442 \
\:0432\:0440\:0435\:043c\:0435\:043d\:0438"}, 0, 2, ControlType -> Slider, 
         Appearance -> 
         "Labeled"}, {{$CellContext`show$$, "sol", 
          "\:041e\:0442\:043e\:0431\:0440\:0430\:0436\:0430\:0442\:044c"}, {
         "sol" -> "\:0420\:0435\:0448\:0435\:043d\:0438\:0435 u", "der" -> 
          "\:041f\:0440\:043e\:0438\:0437\:0432\:043e\:0434\:043d\:044b\:0435 \
\!\(\*SubscriptBox[\(u\), \(t\)]\), \!\(\*SubscriptBox[\(u\), \(x\)]\)", 
          "inv" -> 
          "\:0418\:043d\:0432\:0430\:0440\:0438\:0430\:043d\:0442\:044b \
\:0420\:0438\:043c\:0430\:043d\:0430 \!\(\*SubscriptBox[\(r\), \(1\)]\), \!\(\
\*SubscriptBox[\(r\), \(2\)]\)", "ut" -> "\!\(\*SubscriptBox[\(u\), \(t\)]\)",
           "ux" -> "\!\(\*SubscriptBox[\(u\), \(x\)]\)", "r1" -> 
          "\!\(\*SubscriptBox[\(r\), \(1\)]\)", "r2" -> 
          "\!\(\*SubscriptBox[\(r\), \(2\)]\)"}, ControlType -> SetterBar}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{998., {347., 354.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(Module[{}, $HistoryLength = 0; $CellContext`init[
          Pattern[$CellContext`x, 
           Blank[]]] := 
        Exp[(-($CellContext`x - 0.3)^2)/0.08^2] - 0.5 
         UnitTriangle[10 ($CellContext`x - 0.75)] - (7.811489408*^-7 + 
         0.0000732327132 $CellContext`x - 0.00014880887322 $CellContext`x^2 + 
         0.000074795011084 $CellContext`x^3); $CellContext`Dinit[
          Pattern[$CellContext`x, 
           Blank[]]] := Evaluate[
          D[
           $CellContext`init[$CellContext`x], $CellContext`x]]; $CellContext`f[
          Pattern[$CellContext`x, 
           Blank[]]] := Sign[
           Sin[Pi ($CellContext`x/2)]] Piecewise[{{
             $CellContext`init[
              Mod[$CellContext`x, 2]], Mod[$CellContext`x, 2] <= 1}}, 
           $CellContext`init[2 - Mod[$CellContext`x, 2]]]; $CellContext`g[
          Pattern[$CellContext`x, 
           Blank[]]] := Sign[
           Sin[Pi ($CellContext`x/2)]] Piecewise[{{
             $CellContext`Dinit[
              Mod[$CellContext`x, 2]], Mod[$CellContext`x, 2] <= 
             1}}, -$CellContext`Dinit[
            2 - Mod[$CellContext`x, 2]]]; $CellContext`GetNumeric[
          Pattern[$CellContext`mtd, 
           Blank[]], 
          Pattern[$CellContext`m, 
           Blank[]], 
          Pattern[$CellContext`s, 
           
           Blank[]]] := ($CellContext`GetNumeric[$CellContext`mtd, \
$CellContext`m, $CellContext`s] = Module[{}, 
           Switch[$CellContext`mtd, "cross", 
            $CellContext`GetCross[$CellContext`m, $CellContext`s], "invar1", 
            $CellContext`GetInvar1[$CellContext`m, $CellContext`s], 
            "invar2", 
            $CellContext`GetInvar2[$CellContext`m, $CellContext`s]]]); \
$CellContext`GetCross[
          Pattern[$CellContext`m, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]] := 
        Module[{$CellContext`h, $CellContext`\[Tau], $CellContext`T, \
$CellContext`x, $CellContext`u, $CellContext`ut, $CellContext`ux, \
$CellContext`r1, $CellContext`r2}, $CellContext`h = 
           1./$CellContext`m; $CellContext`\[Tau] = $CellContext`s \
$CellContext`h; $CellContext`T = 
           Ceiling[2./$CellContext`\[Tau]]; $CellContext`u = 
           Table[0., {$CellContext`T + 1}, {$CellContext`m + 
              1}]; $CellContext`x = Range[0, $CellContext`m]/$CellContext`m; 
          Part[$CellContext`u, 1] = $CellContext`init[$CellContext`x]; 
          Part[$CellContext`u, 2] = Part[$CellContext`u, 1]; AddTo[
            Part[$CellContext`u, 2, 
             Span[2, -2]], (0.5 $CellContext`s^2) (Part[$CellContext`u, 1, 
               Span[3, All]] - 2 Part[$CellContext`u, 1, 
               Span[2, -2]] + Part[$CellContext`u, 1, 
               Span[1, -3]])]; Do[Part[$CellContext`u, $CellContext`j + 1, 
               Span[2, -2]] = 2 Part[$CellContext`u, $CellContext`j, 
                 Span[2, -2]] - Part[$CellContext`u, $CellContext`j - 1, 
               Span[
               2, -2]] + $CellContext`s^2 (
                Part[$CellContext`u, $CellContext`j, 
                  Span[3, All]] - 2 Part[$CellContext`u, $CellContext`j, 
                  Span[2, -2]] + Part[$CellContext`u, $CellContext`j, 
                  Span[1, -3]]); 
            Part[$CellContext`u, $CellContext`j + 1, 1] = 0; 
            Part[$CellContext`u, $CellContext`j + 1, -1] = (2/3) (
               2 Part[$CellContext`u, $CellContext`j + 1, -2] - 0.5 
               Part[$CellContext`u, $CellContext`j + 1, -3]); 
            Null, {$CellContext`j, 
             2, $CellContext`T}]; $CellContext`ut = $CellContext`u; \
$CellContext`ux = $CellContext`u; Part[$CellContext`ux, 
             Span[1, All], -1] = 0; Part[$CellContext`ux, 
             Span[1, All], 1] = (Part[$CellContext`u, 
               Span[1, All], 2] - Part[$CellContext`u, 
              Span[1, All], 1])/$CellContext`h; Part[$CellContext`ux, 
             Span[1, All], 
             Span[2, -2]] = 0.5 ((Part[$CellContext`u, 
                Span[1, All], 
                Span[3, -1]] - Part[$CellContext`u, 
               Span[1, All], 
               Span[1, -3]])/$CellContext`h); Part[$CellContext`ut, 1, 
             Span[1, All]] = 0; Part[$CellContext`ut, $CellContext`T + 1, 
             Span[1, All]] = (Part[$CellContext`u, $CellContext`T + 1, 
               Span[1, All]] - Part[$CellContext`u, $CellContext`T, 
              Span[1, All]])/$CellContext`\[Tau]; Part[$CellContext`ut, 
             Span[2, $CellContext`T], 
             Span[1, All]] = 0.5 ((Part[$CellContext`u, 
                Span[3, $CellContext`T + 1], 
                Span[1, All]] - Part[$CellContext`u, 
               Span[1, $CellContext`T - 1], 
               Span[
               1, All]])/$CellContext`\[Tau]); $CellContext`r1 = \
$CellContext`ut + $CellContext`ux; $CellContext`r2 = $CellContext`ut - \
$CellContext`ux; {$CellContext`u, $CellContext`ut, $CellContext`ux, \
$CellContext`r1, $CellContext`r2}]; $CellContext`GetInvar1[
          Pattern[$CellContext`m, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]] := 
        Module[{$CellContext`h, $CellContext`\[Tau], $CellContext`T, \
$CellContext`x, $CellContext`ux0, $CellContext`r1, $CellContext`r2, \
$CellContext`ut, $CellContext`ux, $CellContext`u}, $CellContext`h = 
           1./$CellContext`m; $CellContext`\[Tau] = $CellContext`s \
$CellContext`h; $CellContext`T = 
           Ceiling[2./$CellContext`\[Tau]]; $CellContext`r1 = 
           Table[0., {$CellContext`T + 1}, {$CellContext`m + 
              1}]; $CellContext`r2 = 
           Table[0., {$CellContext`T + 1}, {$CellContext`m + 
              1}]; $CellContext`x = 
           Range[0, $CellContext`m]/$CellContext`m; $CellContext`ux0 = 
           ReplaceAll[
             Map[$CellContext`Dinit, $CellContext`x], Indeterminate -> 0.]; 
          Part[$CellContext`r1, 1, 
             Span[1, All]] = $CellContext`ux0; Part[$CellContext`r2, 1, 
             Span[1, All]] = -$CellContext`ux0; 
          Do[Part[$CellContext`r1, $CellContext`j + 1, 
               Span[1, -2]] = $CellContext`s 
               Part[$CellContext`r1, $CellContext`j, 
                 Span[2, All]] + (1 - $CellContext`s) 
               Part[$CellContext`r1, $CellContext`j, 
                 Span[1, -2]]; Part[$CellContext`r2, $CellContext`j + 1, 
               Span[2, All]] = $CellContext`s 
               Part[$CellContext`r2, $CellContext`j, 
                 Span[1, -2]] + (1 - $CellContext`s) 
               Part[$CellContext`r2, $CellContext`j, 
                 Span[2, All]]; 
            Part[$CellContext`r1, $CellContext`j + 1, -1] = 
             Part[$CellContext`r2, $CellContext`j + 1, -1]; 
            Part[$CellContext`r2, $CellContext`j + 1, 1] = -
              Part[$CellContext`r1, $CellContext`j + 1, 1]; 
            Null, {$CellContext`j, 1, $CellContext`T}]; $CellContext`ut = 
           0.5 ($CellContext`r1 + $CellContext`r2); $CellContext`ux = 
           0.5 ($CellContext`r1 - $CellContext`r2); $CellContext`u = \
$CellContext`ux; 
          Do[$CellContext`ux0 = (0.5 $CellContext`h) (
               Part[$CellContext`ux, $CellContext`j, 
                 Span[2, All]] + Part[$CellContext`ux, $CellContext`j, 
                 Span[1, -2]]); $CellContext`ux0 = Accumulate[
               Prepend[$CellContext`ux0, 0]]; 
            Part[$CellContext`u, $CellContext`j, 
               Span[1, All]] = Part[$CellContext`ux0, 
               Span[1, All]]; 
            Null, {$CellContext`j, 1, $CellContext`T + 
             1}]; {$CellContext`u, $CellContext`ut, $CellContext`ux, \
$CellContext`r1, $CellContext`r2}]; $CellContext`GetInvar2[
          Pattern[$CellContext`m, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]] := 
        Module[{$CellContext`h, $CellContext`\[Tau], $CellContext`T, \
$CellContext`x, $CellContext`ux0, $CellContext`r1, $CellContext`r2, \
$CellContext`ut, $CellContext`ux, $CellContext`u, $CellContext`\[Alpha], \
$CellContext`\[Beta], $CellContext`\[Gamma]}, $CellContext`h = 
           1./$CellContext`m; $CellContext`\[Tau] = $CellContext`s \
$CellContext`h; $CellContext`T = 
           Ceiling[2./$CellContext`\[Tau]]; $CellContext`r1 = 
           Table[0., {$CellContext`T + 1}, {$CellContext`m + 
              1}]; $CellContext`r2 = 
           Table[0., {$CellContext`T + 1}, {$CellContext`m + 
              1}]; $CellContext`x = 
           Range[0, $CellContext`m]/$CellContext`m; $CellContext`ux0 = 
           ReplaceAll[
             Map[$CellContext`Dinit, $CellContext`x], Indeterminate -> 0.]; 
          Part[$CellContext`r1, 1, 
             Span[1, All]] = $CellContext`ux0; Part[$CellContext`r2, 1, 
             Span[
             1, All]] = -$CellContext`ux0; $CellContext`\[Alpha] = \
($CellContext`s^2 + $CellContext`s)/2; $CellContext`\[Beta] = 
           1 - $CellContext`s^2; $CellContext`\[Gamma] = ($CellContext`s^2 - \
$CellContext`s)/2; Do[Part[$CellContext`r1, $CellContext`j + 1, 
               Span[2, -2]] = $CellContext`\[Gamma] 
               Part[$CellContext`r1, $CellContext`j, 
                 Span[1, -3]] + $CellContext`\[Beta] 
               Part[$CellContext`r1, $CellContext`j, 
                 Span[2, -2]] + $CellContext`\[Alpha] 
               Part[$CellContext`r1, $CellContext`j, 
                 Span[3, All]]; Part[$CellContext`r2, $CellContext`j + 1, 
               Span[2, -2]] = $CellContext`\[Alpha] 
               Part[$CellContext`r2, $CellContext`j, 
                 Span[1, -3]] + $CellContext`\[Beta] 
               Part[$CellContext`r2, $CellContext`j, 
                 Span[2, -2]] + $CellContext`\[Gamma] 
               Part[$CellContext`r2, $CellContext`j, 
                 Span[3, All]]; 
            Part[$CellContext`r2, $CellContext`j + 
               1, -1] = (($CellContext`s - 1) (($CellContext`s - 2)/2)) 
               Part[$CellContext`r2, $CellContext`j, -1] + ($CellContext`s (
                 2 - $CellContext`s)) 
               Part[$CellContext`r2, $CellContext`j, -2] + (($CellContext`s - 
                 1) ($CellContext`s/2)) 
               Part[$CellContext`r2, $CellContext`j, -3]; 
            Part[$CellContext`r1, $CellContext`j + 1, 
               1] = (($CellContext`s - 1) (($CellContext`s - 2)/2)) 
               Part[$CellContext`r1, $CellContext`j, 1] + ($CellContext`s (
                 2 - $CellContext`s)) 
               Part[$CellContext`r1, $CellContext`j, 2] + (($CellContext`s - 
                 1) ($CellContext`s/2)) 
               Part[$CellContext`r1, $CellContext`j, 3]; 
            Part[$CellContext`r1, $CellContext`j + 1, -1] = 
             Part[$CellContext`r2, $CellContext`j + 1, -1]; 
            Part[$CellContext`r2, $CellContext`j + 1, 1] = -
              Part[$CellContext`r1, $CellContext`j + 1, 1]; 
            Null, {$CellContext`j, 1, $CellContext`T}]; $CellContext`ut = 
           0.5 ($CellContext`r1 + $CellContext`r2); $CellContext`ux = 
           0.5 ($CellContext`r1 - $CellContext`r2); $CellContext`u = \
$CellContext`ux; 
          Do[$CellContext`ux0 = (0.5 $CellContext`h) (
               Part[$CellContext`ux, $CellContext`j, 
                 Span[2, All]] + Part[$CellContext`ux, $CellContext`j, 
                 Span[1, -2]]); $CellContext`ux0 = Accumulate[
               Prepend[$CellContext`ux0, 0]]; 
            Part[$CellContext`u, $CellContext`j, 
               Span[1, All]] = Part[$CellContext`ux0, 
               Span[1, All]]; 
            Null, {$CellContext`j, 1, $CellContext`T + 
             1}]; {$CellContext`u, $CellContext`ut, $CellContext`ux, \
$CellContext`r1, $CellContext`r2}]; Null]; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.575631421518717*^9}]
}, {2}]]
},
WindowSize->{1598, 852},
WindowMargins->{{0, Automatic}, {2, Automatic}},
ShowSelection->True,
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
Cell[1257, 32, 52962, 1213, 6348, "Input"],
Cell[54222, 1247, 23150, 425, 721, "Output"]
}, {2}]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature kx0nVDFVcLyRiA1LxxwdHwaO *)
