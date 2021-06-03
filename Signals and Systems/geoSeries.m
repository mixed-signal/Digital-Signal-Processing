%functon to print the sum of geometric series with given r and n
function S = geoSeries(r,n)
n_vector = 0:n;
series = r.^n_vector;
S = sum(series);
end