function [ dynamic_train, dynamic_test ] = GetDynamcData( data,r )
t=0;
n=0;
for i=1:size(r,2)
    for j=1:size(data,1)
        if rem(j,r(i))==0
            t=t+1;
          dynamic_test(t,:) = data(j,:);
        else
            n=n+1;
          dynamic_train(n,:) = data(j,:);
        end
    end
end
end

