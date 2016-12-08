clc;clear;
pic=zeros(80,80,3); %定义图片大小
pic(:,:,:)=1;
picnum=15; %定义图片数量
range=0.2; %定义灰度范围
picturename={};
fid=fopen('.\picname.txt','w');
for i=1:picnum
    pic(:,:,:)=range+(1-2*range)*i/picnum;
    if i<10
        picname=['pic_0',num2str(i),'.bmp'];
    else
        picname=['pic_',num2str(i),'.bmp'];
    end
    imwrite(pic,picname);
    picturename{i}=['   /',num2str(i),' = "',picname,'"'];%生成item
    fprintf(fid,'%s\r\n',picturename{i});%把item输出到txt文件
end
fclose(fid);