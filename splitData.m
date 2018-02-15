function [ control, test ] = splitData( dataSet )
%SPLITDATA splits a standard AutonoMouse data set into two structures, one
%for control animals, one for test animals based on NMDA parameter
<<<<<<< HEAD
names = fieldnames(dataSet);
disp(dataSet.(names{1}))
field_names = fieldnames(dataSet.(names{1}));
disp(field_names)
control = struct();
test = struct();
for i =1:numel(names)
    NMDA = dataSet.(names{i}).NMDA;
    if NMDA == 0
        control.(names{i})=dataSet.(names{i});
    else
        test.(names{i}) = dataSet.(names{i});
    end
end
=======

control = struct();
test = struct();

mouseNames = fieldnames(dataSet);

for m = 1:length(mouseNames)
    thisMouse = dataSet.(mouseNames{m});
    
    if thisMouse.NMDA > 0
        test.(mouseNames{m}) = thisMouse;
    else
        control.(mouseNames{m}) = thisMouse;
    end
end

end

>>>>>>> upstream/master
