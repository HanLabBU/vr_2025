function[] = plot_heatmap_from_data(filename)
% filename = fullfile(folder,file);
data = load(filename);

scatter_data = data.scatter_data;


x_data_all = scatter_data.data.x_data;
y_data_all = scatter_data.data.y_data;

%% plot heatmap

plot_regression_heatmap_phase(y_data_all,x_data_all,scatter_data.data.position_wrapped)

end