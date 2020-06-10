function [top_left top_right bottom_left bottom_right]=corners(a)
top_left=a(1,1);
top_right=a(1,end);
bottom_left=a(end,1);
bottom_right=a(end,end);
end