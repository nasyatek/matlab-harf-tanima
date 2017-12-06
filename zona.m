clc;
clear all;
xpath=pwd;
xpath=strcat(xpath,'/harfler');
klasorler = dir(xpath);
a=size(klasorler);
for i=3:a
  cfolder=strcat(xpath,'/');
  lastfolder=strcat(cfolder,klasorler(i).name)
  xfiles=dir(lastfolder);
  xsize=size(xfiles)
  filename1=strcat(klasorler(i).name,'.txt')
  for j=3:xsize
    xfile=xfiles(j).name;
    disp(xfiles(j).name);
    ximage=strcat(lastfolder,'/');
    ximage=strcat(ximage,xfile);
    c=xfi(filename1,ximage)
  end
end