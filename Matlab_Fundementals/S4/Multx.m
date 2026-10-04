function x = Multx(varargin)
    % x = varargin{1};
    % for i = 2:numel(varargin);
    %     x = x .* varargin{i};
    % end

    a = cell2mat(varargin);
    x = prod(a);
end