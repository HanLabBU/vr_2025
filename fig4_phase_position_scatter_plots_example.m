clear all
tic

saveDir = 'U:\eng_research_handata\eng_research_handata6\Athif Mohamed\VR\Voltage\Codes\figure_scripts\fig5plots\mainclusters';

%% Fig 4A iii
plot_heatmap_from_data('scatter_data_50390_s6d20_13_2.mat');

axis image
axis on
xt = [40,140,240];
xticks(xt)
xticklabels(xt-40);

exportgraphics(gca,'U:\eng_research_handata\eng_research_handata6\Athif Mohamed\VR\Voltage\Codes\Git\example.pdf')



