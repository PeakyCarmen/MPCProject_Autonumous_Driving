%% RRT
planner=pathPlannerRRT(costmap,'ConnectionDistance',3);
startPose=scenario.Actors(1,6).Position(1,:);
goalPose=[22.9,27.8,pi];
[refPath,tree] = plan(planner,startPose,goalPose);
plot(planner)
