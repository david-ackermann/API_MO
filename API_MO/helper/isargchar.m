function isargchar(varargin)
%ISARGCHAR tests if the given arg is a char and returns an error otherwise
%
%   Usage: isargstruct(arg1,arg2,...)
%
%   Input options:
%       args        - list of args
%
%   ISARGCHAR(args) tests if all given args are a char and returns
%   an error otherwise.
%
%   see also: isargstruct

%*****************************************************************************
% Copyright (c) 2010-2012 Quality & Usability Lab                            *
%                         Deutsche Telekom Laboratories, TU Berlin           *
%                         Ernst-Reuter-Platz 7, 10587 Berlin, Germany        *
%                                                                            *
% This file is part of the Sound Field Synthesis-Toolbox (SFS).              *
%                                                                            *
% The SFS is free software:  you can redistribute it and/or modify it  under *
% the terms of the  GNU  General  Public  License  as published by the  Free *
% Software Foundation, either version 3 of the License,  or (at your option) *
% any later version.                                                         *
%                                                                            *
% The SFS is distributed in the hope that it will be useful, but WITHOUT ANY *
% WARRANTY;  without even the implied warranty of MERCHANTABILITY or FITNESS *
% FOR A PARTICULAR PURPOSE.                                                  *
% See the GNU General Public License for more details.                       *
%                                                                            *
% You should  have received a copy  of the GNU General Public License  along *
% with this program.  If not, see <http://www.gnu.org/licenses/>.            *
%                                                                            *
% The SFS is a toolbox for Matlab/Octave to  simulate and  investigate sound *
% field  synthesis  methods  like  wave  field  synthesis  or  higher  order *
% ambisonics.                                                                *
%                                                                            *
% http://dev.qu.tu-berlin.de/projects/sfs-toolbox       sfstoolbox@gmail.com *
%*****************************************************************************

% #Author: Hagen Wierstorf (26.04.2012)
% #Author: Michael Mihocic: header documentation updated (28.10.2021)



%% ===== Checking for struct =============================================
for ii = 1:nargin
    if ~ischar(varargin{ii})
        error('%s need to be a string.',inputname(ii));
    end
end
