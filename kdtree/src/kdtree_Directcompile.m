function kdtree_Directcompile()
% clc
localpath = fileparts(which('kdtree_Directcompile'));
fprintf(1,'Compiling kdtree library [%s]...\n', localpath);
ipath = ['-I' localpath];
err = 0;
err = err | mex('-outdir',localpath,ipath, [localpath,'/kdtree.cpp'], [localpath,'/kdtree_create.cpp']);
err = err | mex('-outdir',localpath,ipath, [localpath,'/kdtree_closestpoint.cpp'], [localpath,'/kdtree.cpp']);
err = err | mex('-outdir',localpath,ipath, [localpath,'/kdtree_range.cpp'], [localpath,'/kdtree.cpp']);


if err ~= 0
   error('compile failed!'); 
else
   fprintf(1,'\bDone!\n');
end