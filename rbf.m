function kval = rbf(u,v,rbf_sigma,varargin)

if nargin < 3 || isempty(rbf_sigma)
    rbf_sigma = 1;
else
     
    rbf_sigma = 1;
    
end


kval = exp(-(1/(2*rbf_sigma^2))*(repmat(sqrt(sum(u.^2,2).^2),1,size(v,1))...
    -2*(u*v')+repmat(sqrt(sum(v.^2,2)'.^2),size(u,1),1)));