function[] = plot_regression_heatmap_phase(y_data_all,x_data_all,position_wrapped)

y_edges = 0:2:360; ny = numel(y_edges);
x_edges = linspace(40,240,ny);
t_counts = histcounts(position_wrapped,x_edges);

N = histcounts2(y_data_all,x_data_all,y_edges,x_edges);
N_norm = N./t_counts;
L = 9; sigma = 2;

gw = fspecial('gaussian',L,sigma);% smoothening kernel
[N_norm_wrapped,x_edges_wrapped,y_edges_wrapped]  = getWrappedMap2(N_norm,x_edges,y_edges);
N_smooth = filter2(gw,N_norm_wrapped);
imagesc(x_edges_wrapped, y_edges_wrapped,N_smooth); set(gca,'YDir','normal'); colormap(gca,"parula"); %axis square

xlabel( 'Position (cm)'); ylabel('Relative phase (deg)')
% colorbar

% axis image;
ylim([0,720]);  xlim([40,240]);

end