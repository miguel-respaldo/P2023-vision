function display_images(images, rows, columns)

	images_num = numel(images);

	for idx=1:images_num
	    Img = cell2mat(images(idx));
	    subplot(rows,columns,idx), imshow(Img);
	end
end
