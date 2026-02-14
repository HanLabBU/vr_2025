function[ rtmp_out,x_edges_wrapped,y_edges_wrapped] = getWrappedMap2(rtmp,x_edges,y_edges)

rtmp_tiled = repmat(rtmp,2,1);
x_edges_wrapped = [x_edges];%,x_edges+(x_edges(end)-x_edges(1))];
y_edges_wrapped = [y_edges,y_edges+(y_edges(end)-y_edges(1))];
% w = round(size(rtmp,2)/2); W = size(rtmp_tiled,2);
% h = round(size(rtmp,1)/2); H = size(rtmp_tiled,1);
 rtmp_out = rtmp_tiled;%(h:H-h,w:W-w);
% figure; imagesc(rtmp)
% figure; imagesc(rtmp_tiled)
% figure; imagesc(rtmp_out)
end