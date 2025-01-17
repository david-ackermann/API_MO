function output = SOFAappendText(Obj,attribute,new)
%SOFAappendText
%
%	  output = SOFAappendText(Obj,attribute,new) appends the new text to the
%	  attribute (as string) using the correct SOFA separators. If the attribute is empty
%	  or non-existing, the output will be the new text only.
%
%   example:  
%     Obj.GLOBAL_Title = SOFAappendText(Obj, 'GLOBAL_Title', 'Append me to the title.');

% #Author: Piotr Majdak
% #Author: Michael Mihocic: header documentation updated (20.10.2021)
%
% SOFA API - function SOFAappendText
% Copyright (C) 2012-2021 Acoustics Research Institute - Austrian Academy of Sciences
% Licensed under the EUPL, Version 1.2 or - as soon they will be approved by the European Commission - subsequent versions of the EUPL (the "License")
% You may not use this work except in compliance with the License.
% You may obtain a copy of the License at: https://joinup.ec.europa.eu/software/page/eupl
% Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the License for the specific language governing  permissions and limitations under the License. 

if ~isfield(Obj,attribute), Obj.(attribute)=''; end
if isempty(Obj.(attribute)), 
  output=new;
else
  output=[Obj.(attribute) SOFAdefinitions('EOL') new];
end
