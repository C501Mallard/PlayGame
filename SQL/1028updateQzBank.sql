create proc 新增題庫
as
begin
	
	if object_id('QuizBank', 'U') is null
		begin
			print '資料表不存在'
			
			--SET IDENTITY_INSERT  FA61 Ona
			create table QuizBank (Qz_Title nvarchar(500) not null,Qz_Item1 nvarchar(500) null,Qz_Item2 nvarchar(500) null,
			Qz_Item3 nvarchar(500) null,Qz_Item4 nvarchar(500) null,
			Qz_Solution varchar(4) not null,Qz_Desription  nvarchar(500) null,Qz_Content int null,Quiz_ID bigint IDENTITY(1,1) not null)
			--SET IDENTITY_INSERT  FA61 Off
		end
	else
		begin
			print '資料表存在'
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
				
			--	INSERT into  dbo.FA61(dbo.類別,dbo.中文品名,dbo.英文品名,dbo.使用食品範圍及限量,dbo.使用限制, dbo.規格, dbo.類別說明)
			--	VALUES('a','a','a','a','a','a','a')
				--VALUES(@c_class,@c_C_name,@c_E_name,@c_range,@c_limit,@c_ulimit,@c_classdis)
				
		end
end
--exec 新增原始食品添加物資料集