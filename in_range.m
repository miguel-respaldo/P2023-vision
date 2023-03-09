function output = in_range(input, minval, maxval)
	chn_h = input(:, :, 1);
	chn_s = input(:, :, 2);
	chn_v = input(:, :, 3);

	chn_h( minval(1) > chn_h) = 0;
	chn_s( minval(2) > chn_s) = 0;
	chn_v( minval(3) > chn_v) = 0;

	chn_h( maxval(1) < chn_h) = 0;
	chn_s( maxval(2) < chn_s) = 0;
	chn_v( maxval(3) < chn_v) = 0;

	% !=, is not, ~= 
	chn_h( chn_h ~= 0) = 1;
	chn_s( chn_s ~= 0) = 1;
	chn_v( chn_v ~= 0) = 1;

	chn_h = uint8(chn_h);
	chn_s = uint8(chn_s);
	chn_v = uint8(chn_v);

	ones = chn_h & chn_s & chn_v;
	% problem! and operations => bool
	output = zeros(size(chn_h));
	output(ones > 0) = 1.0;
end
