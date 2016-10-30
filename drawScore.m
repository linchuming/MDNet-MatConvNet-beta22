function drawScore(scores) 
    axis auto;
    plot(scores);
    for i = 1:size(scores)
        if(scores(i) < 0)
            text(i, scores(i), num2str(i));
        end
    end
end