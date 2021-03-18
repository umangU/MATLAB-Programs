%Take input for maths, physics and chemistry score

maths = input("Enter the maths score: ");

physics = input("Enter the physics score: ");

chemistry = input("Enter the chemistry score: ");

%check whether the input is valid score or not

if((maths>=0 && maths<=100)&&(physics>=0 && physics<=100)&&(chemistry>=0 && chemistry<=100))

%eligible will be 1 if the candidate is eligible else zero

eligible = admission(maths, physics, chemistry);

else

% if the score is invalid display invalid input

disp("Invalid Input");

end

%function to calculate the eligibility of the a student

function eligible = admission(maths, physics, chemistry)

if(maths<0 || maths >100 || physics<0 ||physics>100 || chemistry<0 || chemistry>100)
    disp("Invalid Input!!")
else
    m = maths >= 65;

    p = physics >= 55;

    c = chemistry >= 50;

    total = ((maths+physics+chemistry) >= 190) | (maths+physics >= 130);

    if(m && p && c && total)

    disp("The candidate is eligible for admission");

    eligible = 1;

    else

    disp("The candidate is not eligible for admission");

    eligible = 0;

    end

end
end