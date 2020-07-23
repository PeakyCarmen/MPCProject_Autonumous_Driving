function cineq = ObstacleAvoidanceFcn(X,U,e,data,params)
 
p=data.PredictionHorizon;





treshold_obstacle=3;
    for i=1:1:(size(params.pos,1))
        argomento_vecnorm=[X(2:p+1,1)-params.pos(i,1)  X(2:p+1,2)-params.pos(i,2)];
        out_vec(i,:)=vecnorm(argomento_vecnorm');
%       dist_obstacle(i)=out_vec(i,1)+out_vec(i,2);
        vincolo_ost(i)=out_vec(i)-treshold_obstacle;
    end   
    

        cineq= [-vincolo_ost'];

end