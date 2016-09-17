% SYNTAX TEST "Packages/Matlab/Matlab.sublime-syntax"


%---------------------------------------------
% Matlab OOP test

classdef (Sealed = false) classname < baseclass
% <- keyword.other
%         ^ variable.parameter
%                ^ keyword.operator.symbols
%                  ^ constant.language
%                         ^ entity.name.class
%                                     ^ entity.other.inherited-class
   properties (SetAccess = private, GetAccess = true)
%  ^ keyword.other
%              ^ variable.parameter
%                          ^ constant.language
%                                   ^ variable.parameter
      PropName
   end
%  ^ keyword.control
   methods
%  ^ keyword.other
      methodName
   end
   events
%  ^ keyword.other
      EventName
   end
   enumeration
%  ^ keyword.other
      EnumName
   end
end



%---------------------------------------------
% Syntax brackets/parens punctuation test

x = [ 1.76 ]
%  <- source.matlab punctuation.definition.brackets.begin.matlab
% ^ source.matlab keyword.operator.symbols.matlab
%   ^ source.matlab punctuation.definition.brackets.begin.matlab 
%     ^ source.matlab meta.brackets.matlab constant.numeric.matlab  
%          ^ source.matlab punctuation.definition.brackets.end.matlab


xAprox = fMetodoDeNewton( xi )
%  <- source.matlab meta.variable.other.valid.matlab
%      ^ source.matlab keyword.operator.symbols.matlab
%        ^ source.matlab meta.variable.other.valid.matlab
%                       ^ source.matlab punctuation.definition.parens.begin.matlab 
%                         ^ source.matlab meta.parens.matlab meta.variable.other.valid.matlab
%                            ^ source.matlab punctuation.definition.parens.end.matlab 




