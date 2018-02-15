function [ control, test ] = splitData( dataSet )
%SPLITDATA splits a standard AutonoMouse data set into two structures, one
%for control animals, one for test animals based on NMDA parameter
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

