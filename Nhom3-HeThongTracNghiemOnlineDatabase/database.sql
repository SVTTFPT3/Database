-- Exported from QuickDBD: https://www.quickdatatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/schema/QUKaexb9F0iKFkJHucQ7Ow
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Profile] (
    [ProfileID] int  NOT NULL ,
    [Fullname] nvarchar(255)  NOT NULL ,
    [Phone] nvarchar(255)  NOT NULL ,
    [Address] nvarchar(255)  NOT NULL ,
    CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED (
        [ProfileID] ASC
    )
)

CREATE TABLE [User] (
    [UserId] int Identity(1,1) NOT NULL ,
    [Email] nvarchar(255)  NOT NULL unique,
    [Password] nvarchar(255)  NOT NULL ,
    [DeleteFlag] bit  NOT NULL ,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED (
        [UserId] ASC
    )
)

CREATE TABLE [RoleDetail] (
    [UserID] int  NOT NULL ,
    [RoleID] int  NOT NULL 
)

CREATE TABLE [Role] (
    [RoleID] int  NOT NULL ,
    [RoleName] nvarchar(255)  NOT NULL ,
    [FunctionID] nvarchar(255)  NOT NULL ,
    [DeleteFlag] bit  NOT NULL ,
    CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED (
        [RoleID] ASC
    )
)

CREATE TABLE [Function] (
    [FunctionID] int Identity(1,1) NOT NULL ,
    [FunctionName] nvarchar(255)  NOT NULL ,
    CONSTRAINT [PK_Function] PRIMARY KEY CLUSTERED (
        [FunctionID] ASC
    )
)

CREATE TABLE [Answer] (
    [AnswerID] int Identity(1,1) NOT NULL ,
    [QuestionID] int  NOT NULL ,
    [AnswerContent] nvarchar(255)  NOT NULL ,
    [CorrectFlag] bit  NOT NULL ,
    CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED (
        [AnswerID] ASC
    )
)

CREATE TABLE [Question] (
    [QuestionID] int Identity(1,1) NOT NULL ,
    [QuestionChapterID] int  NOT NULL ,
    [LevelID] int  NOT NULL ,
    [QuestionContent] nvarchar(255)  NOT NULL ,
    [QuestionExplain] nvarchar(255)  NOT NULL ,
    [QuestionCreatedBy] nvarchar(255)  NOT NULL ,
    [QuestionUpdatedBy] nvarchar(255)  NOT NULL ,
    [QuestionCorrectTotal] int  NOT NULL ,
    [QuestionIncorrectTotal] int  NOT NULL ,
    [DeleteFlag] bit  NOT NULL ,
    CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED (
        [QuestionID] ASC
    )
)

CREATE TABLE [QuestionChapter] (
    [QuestionChapterID] int Identity(1,1) NOT NULL ,
    [QuestionChapterName] nvarchar(255)  NOT NULL ,
    [QuestionChapterContent] nvarchar(255)  NOT NULL ,
    [DeleteFlag] bit  NOT NULL ,
    CONSTRAINT [PK_QuestionChapter] PRIMARY KEY CLUSTERED (
        [QuestionChapterID] ASC
    )
)

CREATE TABLE [Level] (
    [LevelID] int Identity(1,1) NOT NULL ,
    [LevelName] nvarchar(255)  NOT NULL ,
    [DeleteFlag] bit  NOT NULL ,
    CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED (
        [LevelID] ASC
    )
)

CREATE TABLE [TestKit] (
    [TestKitID] int Identity(1,1) NOT NULL ,
    [TestKitCode] nvarchar(255)  NOT NULL ,
    [UserID] int  NOT NULL ,
    [Score] int  NOT NULL ,
    [FinishTime] datetime  NOT NULL ,
    [NumberOfQuestion] int  NOT NULL ,
    [NumberOfCorrect] int  NOT NULL ,
    [NumberOfEasy] int  NOT NULL ,
    [NumberOfNormal] int  NOT NULL ,
    [NumberOfHard] int  NOT NULL ,
    [DeleteFlag] bit  NOT NULL ,
    CONSTRAINT [PK_TestKit] PRIMARY KEY CLUSTERED (
        [TestKitID] ASC
    )
)

CREATE TABLE [TestKitDetail] (
    [TestKitDetailID] int Identity(1,1) NOT NULL ,
    [TestKitID] int  NOT NULL ,
    [QuestionID] int  NOT NULL ,
    [CorrectFlag] bit  NOT NULL ,
    CONSTRAINT [PK_TestKitDetail] PRIMARY KEY CLUSTERED (
        [TestKitDetailID] ASC
    )
)

CREATE TABLE [Post] (
    [PostID] int  Identity(1,1) NOT NULL ,
    [PostName] nvarchar(255)  NOT NULL ,
    [CategoriesID] int  NOT NULL ,
    [UserID] int  NOT NULL ,
    [Post_Content] text  NOT NULL ,
    [PostSlug] nvarchar(600)  NOT NULL ,
    [Publish_Date] datetime  NOT NULL ,
    [Last_Edit] datetime  NOT NULL ,
    [Image] nvarchar(255)  NOT NULL ,
    [NumViews] int  NOT NULL ,
    [Status] bit  NOT NULL ,
	[DeleteFlag] bit  NOT NULL ,
    CONSTRAINT [PK_Post] PRIMARY KEY (
        [PostID]
    )
)

CREATE TABLE [CategoriesofHistory] (
    [CategoriesID] int Identity(1,1) NOT NULL ,
    [CategoriesName] nvarchar(1000)  NOT NULL ,
    [CategoriesDecs] nvarchar(255)  NOT NULL ,
    [ParentCategories] int  NOT NULL ,
	[DeleteFlag] bit  NOT NULL ,
    CONSTRAINT [PK_CategoriesofHistory] PRIMARY KEY (
        [CategoriesID]
    )
)

CREATE TABLE [RoomTest] (
    [RoomID] int  Identity(1,1) NOT NULL ,
    [TestKitID] int  NOT NULL ,
    [UserID] int  NOT NULL ,
    [TestKitCode] nvarchar(255)  NOT NULL ,
    [Publish_Date] datetime  NOT NULL ,
    [NumberOfStudent] int  NOT NULL ,
	[DeleteFlag] bit  NOT NULL ,
    CONSTRAINT [PK_RoomTest] PRIMARY KEY (
        [RoomID]
    )
)

CREATE TABLE [RoomTest_User] (
    [RoomID] int  NOT NULL ,
    [UserID] int  NOT NULL ,
    [Score] int  NOT NULL ,
    [Rangking] int  NOT NULL ,
    [NumberOfQuestion] int  NOT NULL ,
    [NumberOfCorrect] int  NOT NULL ,
    [Status] bit  NOT NULL,
	[DeleteFlag] bit  NOT NULL
)

ALTER TABLE [Profile] WITH CHECK ADD CONSTRAINT [FK_Profile_ProfileID] FOREIGN KEY([ProfileID])
REFERENCES [User] ([UserId])

ALTER TABLE [Profile] CHECK CONSTRAINT [FK_Profile_ProfileID]

ALTER TABLE [RoleDetail] WITH CHECK ADD CONSTRAINT [FK_RoleDetail_UserID] FOREIGN KEY([UserID])
REFERENCES [User] ([UserId])

ALTER TABLE [RoleDetail] CHECK CONSTRAINT [FK_RoleDetail_UserID]

ALTER TABLE [RoleDetail] WITH CHECK ADD CONSTRAINT [FK_RoleDetail_RoleID] FOREIGN KEY([RoleID])
REFERENCES [Role] ([RoleID])

ALTER TABLE [RoleDetail] CHECK CONSTRAINT [FK_RoleDetail_RoleID]

ALTER TABLE [Answer] WITH CHECK ADD CONSTRAINT [FK_Answer_QuestionID] FOREIGN KEY([QuestionID])
REFERENCES [Question] ([QuestionID])

ALTER TABLE [Answer] CHECK CONSTRAINT [FK_Answer_QuestionID]

ALTER TABLE [Question] WITH CHECK ADD CONSTRAINT [FK_Question_QuestionChapterID] FOREIGN KEY([QuestionChapterID])
REFERENCES [QuestionChapter] ([QuestionChapterID])

ALTER TABLE [Question] CHECK CONSTRAINT [FK_Question_QuestionChapterID]

ALTER TABLE [Question] WITH CHECK ADD CONSTRAINT [FK_Question_LevelID] FOREIGN KEY([LevelID])
REFERENCES [Level] ([LevelID])

ALTER TABLE [Question] CHECK CONSTRAINT [FK_Question_LevelID]

ALTER TABLE [TestKit] WITH CHECK ADD CONSTRAINT [FK_TestKit_UserID] FOREIGN KEY([UserID])
REFERENCES [User] ([UserId])

ALTER TABLE [TestKit] CHECK CONSTRAINT [FK_TestKit_UserID]

ALTER TABLE [TestKitDetail] WITH CHECK ADD CONSTRAINT [FK_TestKitDetail_TestKitID] FOREIGN KEY([TestKitID])
REFERENCES [TestKit] ([TestKitID])

ALTER TABLE [TestKitDetail] CHECK CONSTRAINT [FK_TestKitDetail_TestKitID]

ALTER TABLE [TestKitDetail] WITH CHECK ADD CONSTRAINT [FK_TestKitDetail_QuestionID] FOREIGN KEY([QuestionID])
REFERENCES [Question] ([QuestionID])

ALTER TABLE [TestKitDetail] CHECK CONSTRAINT [FK_TestKitDetail_QuestionID]


ALTER TABLE [Post] ADD CONSTRAINT [FK_Post_CategoriesID] FOREIGN KEY([CategoriesID])
REFERENCES [CategoriesofHistory] ([CategoriesID])


ALTER TABLE [Post] ADD CONSTRAINT [FK_Post_UserID] FOREIGN KEY([UserID])
REFERENCES [User] ([UserId])

ALTER TABLE [CategoriesofHistory] ADD CONSTRAINT [FK_CategoriesofHistory_ParentCategories] FOREIGN KEY([ParentCategories])
REFERENCES [CategoriesofHistory] ([CategoriesID])

ALTER TABLE [RoomTest] ADD CONSTRAINT [fk_RoomTest_TestKitID] FOREIGN KEY([TestKitID])
REFERENCES [TestKit] ([TestKitID])

ALTER TABLE [RoomTest] ADD CONSTRAINT [FK_RoomTest_UserID] FOREIGN KEY([UserID])
REFERENCES [User] ([UserId])

ALTER TABLE [RoomTest_User] ADD CONSTRAINT [FK_RoomTest_User_RoomID] FOREIGN KEY([RoomID])
REFERENCES [RoomTest] ([RoomID])

ALTER TABLE [RoomTest_User] ADD CONSTRAINT [fk_RoomTest_User_UserID] FOREIGN KEY([UserID])
REFERENCES [User] ([UserId])




COMMIT TRANSACTION QUICKDBD