clear
close all
clc
addpath('kdtree');


r = rand(1000,3);
tree = kdtree(r);
kdtree_closestpoint(tree,[1 1 1]) 
r(ans,:)
%%
kdtree_range(tree,[[.45 .55];[.45 .55];[.45 .55]]) 
r(ans(:),:)