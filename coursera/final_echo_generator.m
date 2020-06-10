function output=echo_gen(input,fs,delay,amp)
t=1/fs;
points=round(delay/t);
v1=[input;zeros(points,1)];
amped_sound=amp.*input;
v2=[zeros(points,1);amped_sound];
output=v1+v2;
if(max(output)>1)
    output=output./max(output);
end
end