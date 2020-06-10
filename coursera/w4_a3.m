function fare=taxi_fare(d,t)
d=ceil(d);
rest=d-1;
t=ceil(t);
fare=5+(rest*2)+(t*0.25);
end