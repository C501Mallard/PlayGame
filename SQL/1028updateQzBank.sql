create proc �s�W�D�w
as
begin
	
	if object_id('QuizBank', 'U') is null
		begin
			print '��ƪ��s�b'
			
			--SET IDENTITY_INSERT  FA61 Ona
			create table QuizBank (Qz_Title nvarchar(500) not null,Qz_Item1 nvarchar(500) null,Qz_Item2 nvarchar(500) null,
			Qz_Item3 nvarchar(500) null,Qz_Item4 nvarchar(500) null,
			Qz_Solution varchar(4) not null,Qz_Desription  nvarchar(500) null,Qz_Content int null,Quiz_ID bigint IDENTITY(1,1) not null)
			--SET IDENTITY_INSERT  FA61 Off
		end
	else
		begin
			print '��ƪ�s�b'
			DROP TABLE QuizBank

			create table QuizBank (Qz_Title nvarchar(500) not null,Qz_Item1 nvarchar(500) null,Qz_Item2 nvarchar(500) null,
			Qz_Item3 nvarchar(500) null,Qz_Item4 nvarchar(500) null,
			Qz_Solution varchar(4) not null,Qz_Desription  nvarchar(500) null,Qz_Content int null,Quiz_ID bigint IDENTITY(1,1) not null)

			--declare	@c_class varchar(300),
			--		@c_C_name varchar(300),
			--		@c_E_name varchar(300),
			--		@c_range varchar(300),
			--		@c_limit varchar(300),
			--		@c_ulimit varchar(300),
			--		@c_classdis varchar(300),
			--		--@c_id_num bigint,
			--		@i int=1
				
			--	INSERT into  dbo.FA61(dbo.���O,dbo.����~�W,dbo.�^��~�W,dbo.�ϥέ��~�d��έ��q,dbo.�ϥέ���, dbo.�W��, dbo.���O����)
			--	VALUES('a','a','a','a','a','a','a')
				--VALUES(@c_class,@c_C_name,@c_E_name,@c_range,@c_limit,@c_ulimit,@c_classdis)
				
		end
end
--exec �s�W��l���~�K�[����ƶ�