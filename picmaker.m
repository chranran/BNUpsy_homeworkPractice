clc;clear;
pic=zeros(80,80,3); %����ͼƬ��С
pic(:,:,:)=1;
picnum=15; %����ͼƬ����
range=0.2; %����Ҷȷ�Χ
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
    picturename{i}=['   /',num2str(i),' = "',picname,'"'];%����item
    fprintf(fid,'%s\r\n',picturename{i});%��item�����txt�ļ�
end
fclose(fid);