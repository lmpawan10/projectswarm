
function [tarea, parea] = AreaofTriangle(model)
%{
xtri = model.xtri;
ytri = model.ytri;
tarea = model.tarea;
parea = model.parea;
tarea = (xtri(1) * (ytri(2) - ytri(3)) + xtri(2) * (ytri(3) - ytri(1)) +  xtri(3) * (ytri(1) - ytri(2)))/2;
for a = 1:3
    aid = a;
    aid = aid + 1;
    if aid>3
        aid = 1;
    end
    parea = parea + (xtri(a) * (ytri(aid) - yy) + xtri(aid) * (yy - y(a)) + xx * (y(a) - ytri(aid)))/2;
end
%}
end
%sum of all elements of parea array



%Check which is greater