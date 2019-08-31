function [segmented_profile] = segmented_preserved_function(original_priorities,agents_in_each_segment)
% gives us a compatible preserved segments priority profile
%   agents in each segment is given
segmented_profile=[];
for m=1:size(agents_in_each_segment,1)
a=zeros(size(original_priorities,1),size(original_priorities,2));

for k=1:size(original_priorities,2) %do it for all agents
for i=1:size(original_priorities,1) %check each column
    
     for j=1:size(agents_in_each_segment,2) 
        if original_priorities(i,k)==agents_in_each_segment(m,j) 
          
          a(i,k)= agents_in_each_segment(m,j); %same element in segments is turned on
        end
     end
     
end
end
segmented_profile=[segmented_profile ;a ];
segmented_profile=zeros_button(segmented_profile); % make the ordering fine

end
segmented_profile(segmented_profile==0)=[];

segmented_profile=reshape(segmented_profile,size(original_priorities,1),size(original_priorities,2));

end

