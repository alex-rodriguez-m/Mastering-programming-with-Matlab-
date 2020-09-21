% Write a function called name_value_pairs
function db = name_value_pairs(varargin)
if rem(nargin,2) ~= 0 || nargin < 2 
    db = {};
    return
end
for j = 1:2:nargin
    if ~ischar(varargin{j})
        db = {};
        return
    end 
  
    for i = 1:nargin/2
        db(i,1) = varargin(2*i-1);
        db(i,2) = varargin(2*i);
    end
end