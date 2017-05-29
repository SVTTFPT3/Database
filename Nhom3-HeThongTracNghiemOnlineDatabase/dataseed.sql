
alter table Answer
alter column CorrectFlag bit not null 

--User
insert into [User] (Email, Password, DeleteFlag) values('nguyenlequynh.dn@gmail.com', '123', 0)
insert into [User] (Email, Password, DeleteFlag) values('baokhanh7m@gmail.com', '123', 0)
insert into [User] (Email, Password, DeleteFlag) values('phuongnamcmg.47@gmail.com', '123', 0)
insert into [User] (Email, Password, DeleteFlag) values('mbl.hht@gmail.com', '123', 0)
insert into [User] (Email, Password, DeleteFlag) values('hphuong1503@outlook.com', '123', 0)


--Profile
insert into Profile (ProfileID, Fullname, Phone, Address) values(1, N'Ngô Lệ Quỳnh', N'0905735691', N'870 Lê Văn Hiến')
insert into Profile (ProfileID, Fullname, Phone, Address) values(2, N'Lý Bảo Khánh', N'01208070076', N'Chưa có thông tin')
insert into Profile (ProfileID, Fullname, Phone, Address) values(3, N'Phương Nam', N'0969696969', N'Chưa có thông tin')
insert into Profile (ProfileID, Fullname, Phone, Address) values(4, N'Mai Bảo Lộc', N'0969696969', N'Chưa có thông tin')
insert into Profile (ProfileID, Fullname, Phone, Address) values(5, N'Phùng Đăng Hoàng Phương', N'0969696969', N'Chưa có thông tin')


--QuestionChapter
insert into QuestionChapter (QuestionChapterName, QuestionChapterContent, DeleteFlag) values(N'CHƯƠNG 1', N'VIỆT NAM TỪ NĂM 1919 ĐẾN NĂM 1930', 0)
insert into QuestionChapter (QuestionChapterName, QuestionChapterContent, DeleteFlag) values(N'CHƯƠNG 2', N'VIỆT NAM TỪ NĂM 1930 ĐẾN NĂM 1945', 0)
insert into QuestionChapter (QuestionChapterName, QuestionChapterContent, DeleteFlag) values(N'CHƯƠNG 3', N'VIỆT NAM TỪ NĂM 1945 ĐẾN NĂM 1954', 0)
insert into QuestionChapter (QuestionChapterName, QuestionChapterContent, DeleteFlag) values(N'CHƯƠNG 4', N'VIỆT NAM TỪ NĂM 1954 ĐẾN NĂM 1975', 0)
insert into QuestionChapter (QuestionChapterName, QuestionChapterContent, DeleteFlag) values(N'CHƯƠNG 5', N'QUAN HỆ QUỐC TẾ (1945 - 2000)', 0)


--Level
insert into Level (LevelName, DeleteFlag) values(N'Dễ', 0)
insert into Level (LevelName, DeleteFlag) values(N'Trung Bình', 0)
insert into Level (LevelName, DeleteFlag) values(N'Khó', 0)


--Question-Answer: 5 câu chương 1
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (1, 1, N'Vì sao thực dân Pháp tiến hành khai thác thuộc địa lần thứ hai ở Việt Nam?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (1, 1, N'Tổng số vốn mà pháp đầu tư vào Đông Dương để thực hiện chương trình khai thác lần thứ hai từ (1924 - 1929) bao nhiêu?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (1, 2, N'Trong cuộc khai thác thuộc địa lẩn thứ hai thực dân Pháp đầu tư vốn nhiều nhất vào các ngành nào?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (1, 2, N'Diện tích trồng cao su của Pháp ở Việt Nam từ năm 1918-1930 tăng lên bao nhiêu?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (1, 3, N'Thủ đoạn thâm độc nhất của thực dân Pháp trong lĩnh vực nông nghiệp ở Việt Nam sau Chiến tranh thế giới thứ nhất là gì?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)

DBCC CHECKIDENT ('[Answer]', RESEED, 0);
GO

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(1, N'Để bù vào nhừng thiệt hại trong cuộc khai thác lần thứ nhất.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(1, N'Để bù đắp những thiệt hại do Chiến tranh thế giới lần thứ nhất gây ra.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(1, N'Để thúc đẩy sự phát triển kinh tế - xã hội ở Việt Nam.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(1, N'Tất cả các ý trên.', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(2, N'Gấp 20 lần so với 20 năm trước chiến tranh.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(2, N'Gấp 10 lần so với 6 năm trước chiến tranh.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(2, N'Gấp 6 lần so với 20 năm trước chiến tranh.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(2, N'Gấp 8 lần so với 20 năm trước chiến tranh.', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(3, N'Công nhiệp chế biến.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(3, N'Nông nghiệp và khai thác mỏ.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(3, N'Nông nghiệp và thương nghiệp.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(3, N'Giao thông vận tải.', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(4, N'Từ 20 ngàn héc ta tăng lên 120 ngàn héc ta.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(4, N'Từ 15 ngàn héc ta tăng lên 150 ngàn héc ta.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(4, N'Từ 15 ngàn héc ta tăng lên 140 ngàn héc ta.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(4, N'Từ 15 ngàn héc ta tăng lên 120 ngàn héc ta.', 1)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(5, N'Đánh thuế nặng vào các mặt hàng nông sản.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(5, N'Tước đoạt ruộng đất của nông dân.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(5, N'Bắt nông dân đi phu phen, tạp dịch.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(5, N'Không cho nông dân tham gia sản xuất.', 0)

--Question-Answer: 5 câu chương 2
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (2, 1, N'Trong các nguyên nhân sau đây, nguyên nhân nào là cơ bản nhất, quyết định sự bùng nổ phong trào cách mạng 1930 - 1931?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (2, 1, N'Hai khẩu hiệu mà Đảng ta vận dụng trong phong trào cách mạng 1930 - 1931 là khẩu hiệu nào?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (2, 2, N'Từ tháng 2 đến tháng 4 năm 1930, phong trào nổ ra mạnh nhất ở đâu?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (2, 3, N'Các số liệu sau đây, số liệu nào đúng nhất:', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (2, 3, N'Từ tháng 5 đến tháng 8 - 1930, trung tâm của phong trào cách mạng chủ yếu diễn ra ở đâu?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(6, N'Ảnh hướng của cuộc khủng hoảng kinh tế 1929 - 1933.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(6, N'Thực dân Pháp tiến hành khủng bố trắng sau khởi nghĩa Yên Bái.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(6, N'Đảng Cộng sản Việt Nam ra đời, kịp thời lãnh đạo công nhân và nông dân đứng lên chống đế quốc và phong kiến.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(6, N'Địa chủ phong kiến câu kết với thực dân Pháp đàn áp, bóc lột thậm tệ đối với nông dân.', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(7, N'“Độc lập dân tộc” và “Ruộng đất dân cày”.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(7, N'“Tự do dân chủ” và “Cơm áo hòa bình”.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(7, N'“Tịch thu ruộng đất của đế quốc Việt gian” và “Tịch thu ruộng đất của địa chủ phong kiến”.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(7, N'"Chống đế quốc” "Chống phát xít".', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(8, N'Ở Trung Kì.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(8, N'Ở Bắc Kì.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(8, N'Ở Nam Kì.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(8, N'Trong cả nước', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(9, N'Riêng trong tháng 5-1930, cả nước có 50 cuộc đấu tranh của nông dân, 20 cuộc đấu tranh của công dân, 8 cuộc đấu tranh của học sinh và dân nghèo thành thị.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(9, N'Riêng trong tháng 5-1930, cả nước có 30 cuộc đấu tranh của nông dân, 40 cuộc đấu thanh của công nhân, 4 cuộc đấu tranh của học sinh và dân nghèo thành thị.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(9, N'Riêng trong tháng 5-1930, cả nước có 34 cuộc đấu tranh của nông dân, 16 cuộc đấu tranh của công nhân và 4 cuộc đấu tranh của học sinh và dân nghèo thành thị.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(9, N'Riêng trong tháng 5-1930, cả nước có 16 cuộc đấu tranh của nông dân, 34 cuộc đấu tranh của công nhân và 4 cuộc đấu tranh của học sinh và dân nghèo thành thị.', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(10, N'Ở miền Trung', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(10, N'Ở miền Bắc', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(10, N'Ở miền Nam', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(10, N'Trong cả nước', 0)

--Question-Answer: 5 câu chương 3
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (3, 1, N'Khó khăn nào lớn nhất đưa chính quyền cách mạng nước ta sau ngày 2-9-1945 vào tình thế “ngàn cân treo sợi tóc"?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (3, 1, N'Phiên họp đầu tiên của Quốc hội nước ta được tổ chức vào thời gian nào? Ở đâu?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (3, 2, N'Câu nào dưới đây thuộc lời kêu gọi của Chủ tịch Hồ Chính Minh nhằm giải quyết nạn đói?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (3, 3, N'Nhằm khắc phục tình trạng trống rỗng về ngân sách của Chính phủ sau Cách mạng tháng Tám, nhân dân ta đã hưởng ứng phong trào nào?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (3, 3, N'Chọn phương án trả lời đúng cho các câu sau đây:', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(11, N'Các tổ chức phản cách mạng trong nước ngóc dậy chống phá cách mạng.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(11, N'Nạn đói, nạn dốt đang đe dọa nghiêm trọng.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(11, N'Âm mưu của Tưởng và Pháp.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(11, N'Ngân quỹ nhà nước trống rỗng.', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(12, N'Ngày 1-6-1946. Hà Nội', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(12, N'Ngày 2-3-1946. Hà Nội', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(12, N'Ngày 12-11-1946. Tân Trào - Tuyên Quang', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(12, N'Ngày 20-10-1946. Hà Nội', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(13, N'“Không một tất đất bỏ hoang".', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(13, N'“Tất đất, tất vàng”.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(13, N'“Tăng gia sản xuất, Tăng gia sản xuất ngay! Tăng gia sản xuất nữa!"', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(13, N'Tất cả các câu trên.', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(14, N'“Ngày đồng tâm”.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(14, N'"Tuần lễ vàng".', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(14, N'“Quỹ độc lập”.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(14, N'Câu B và C đúng.', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(15, N'Đến đầu tháng 3-1946, riêng Bắc Bộ có gần 3 3 vạn lớp học với 81 vạn học viên.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(15, N'Đến đầu tháng 3-1946, riêng Bắc Bộ và Bắc Trung Bộ, có gần 3 vạn lớp học với 81 vạn học viên.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(15, N'Đến dầu tháng 3-1946, riêng Bắc Bộ và Nam Bộ, có gần 3 vạn lớp học với 81 vạn học viên.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(15, N'Đến đầu tháng 3-1946, riêng Bắc Bộ, Trung Bộ và Nam Bộ, có gàn 3 vạn lớp học với 81 vạn học viên.', 0)


--Question-Answer: 5 câu chương 4
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (4, 1, N'Ngô Đình Diệm được Mỹ dựng lên làm thủ tướng bù nhìn ở miền Nam Việt Nam để thay cho ai?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (4, 2, N'Nhiệm vụ nào sau đây không phải là nhiệm vụ của cách mạng miền Bắc 1954?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (4, 2, N'Nhiệm vụ của cách mạng miền Nam sau 1954 là gì?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (4, 3, N'Cách mạng miền Nam có vai trò như thế nào trong việc đánh đổ ách thống trị của đế quốc Mĩ và tay sai của chúng, giải phóng miền Nam, thống nhất đất nước?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)
insert into Question (QuestionChapterID, LevelID, QuestionContent, QuestionExplain, QuestionCreatedBy, QuestionUpdatedBy, QuestionCorrectTotal, QuestionIncorrectTotal, DeleteFlag) 
values (4, 3, N'Thủ đô Hà Nội được giải phóng vào thời gian nào?', N'', N'Ngô Lệ Quỳnh', N'Ngô Lệ Quỳnh', 0, 0, 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(16, N'Thay cho Bảo Đại.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(16, N'Thay cho Bửu Lộc.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(16, N'Thay cho Đồng Khánh.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(16, N'Thay cho Dương Văn Minh.', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(17, N'Tiếp tục thực hiện cách mạng dân tộc, dân chủ.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(17, N'Tiến hành cách mạng xã hội chủ nghĩa.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(17, N'Dấu tranh chống Mĩ, Diệm.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(17, N'Câu A và C đúng.', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(18, N'Tiến hành đấu tranh vũ trang để đánh bại chiến tranh xâm lược của Mĩ, Diệm.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(18, N'Tiến hành cuộc cách mạng dân tộc, dân chủ.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(18, N'Cùng với miền Bắc tiến hành công cuộc xây dựng chủ nghĩa xã hội.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(18, N'Không phải các nhiệm vụ trên.', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(19, N'Có vai trò quan trọng nhất.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(19, N'Có vai trò cơ bản nhất.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(19, N'Có vai trò quyết định trực tiếp.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(19, N'Có vai trò quyết định nhất.', 0)

insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(20, N'10-10-1954.', 1)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(20, N'25-10-1555.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(20, N'12-12-1954.', 0)
insert into Answer (QuestionID, AnswerContent, CorrectFlag) values(20, N'18-10-1954.', 0)


--Role
insert into Role (RoleID, RoleName, FunctionID, DeleteFlag) values(1, N'admin', N'', 0)
insert into Role (RoleID, RoleName, FunctionID, DeleteFlag) values(2, N'teacher', N'', 0)
insert into Role (RoleID, RoleName, FunctionID, DeleteFlag) values(3, N'student', N'', 0)


--RoleDetail
insert into RoleDetail(RoleID, UserID) values(1,1)
insert into RoleDetail(RoleID, UserID) values(2,2)
insert into RoleDetail(RoleID, UserID) values(3,3)
insert into RoleDetail(RoleID, UserID) values(1,4)
insert into RoleDetail(RoleID, UserID) values(2,5)

--TestKit
insert into TestKit(TestKitCode, UserID, Score, FinishTime, NumberOfQuestion, NumberOfCorrect, NumberOfEasy, NumberOfNormal, NumberOfHard, DeleteFlag)
values(N'???', 3, 10, '2017-05-15 03:12:25', 3, 3, 1, 1, 1, 0)
insert into TestKit(TestKitCode, UserID, Score, FinishTime, NumberOfQuestion, NumberOfCorrect, NumberOfEasy, NumberOfNormal, NumberOfHard, DeleteFlag)
values(N'???', 2, 5, '2017-05-15 03:12:25', 4, 2, 2, 1, 1, 0)

--DBCC CHECKIDENT ('[TestKitDetail]', RESEED, 0);
--GO
--TestKitDetail
insert into TestKitDetail(TestKitID, QuestionID, CorrectFlag) values(1, 1, 1)
insert into TestKitDetail(TestKitID, QuestionID, CorrectFlag) values(1, 4, 1)
insert into TestKitDetail(TestKitID, QuestionID, CorrectFlag) values(1, 15, 1)

insert into TestKitDetail(TestKitID, QuestionID, CorrectFlag) values(2, 16, 1)
insert into TestKitDetail(TestKitID, QuestionID, CorrectFlag) values(2, 7, 1)
insert into TestKitDetail(TestKitID, QuestionID, CorrectFlag) values(2, 3, 0)
insert into TestKitDetail(TestKitID, QuestionID, CorrectFlag) values(2, 5, 0)

--Categories of History
--DBCC CHECKIDENT ('[CategoriesofHistory]', RESEED, 0);
--GO
SET IDENTITY_INSERT CategoriesofHistory ON

insert into CategoriesofHistory(CategoriesID, CategoriesName, CategoriesDecs, ParentCategories, DeleteFlag) values(1,N'Nhà Nguyễn', N'Không có giải thích', 1, 0)
insert into CategoriesofHistory(CategoriesID, CategoriesName, CategoriesDecs, ParentCategories, DeleteFlag) values(2,N'Bảo Đại', N'Cuộc đời của vua Bảo Đại', 1, 0)
insert into CategoriesofHistory(CategoriesID, CategoriesName, CategoriesDecs, ParentCategories, DeleteFlag) values(3,N'Khải Định', N'Cuộc đời của vua Khải Định', 1, 0)
insert into CategoriesofHistory(CategoriesID, CategoriesName, CategoriesDecs, ParentCategories, DeleteFlag) values(4,N'Duy Tân', N'Cuộc đời của vua Duy Tân', 1, 0)

insert into CategoriesofHistory(CategoriesID, CategoriesName, CategoriesDecs, ParentCategories, DeleteFlag) values(5,N'Kháng chiến chống Pháp', N'Không có giải thích', 5, 0)
insert into CategoriesofHistory(CategoriesID, CategoriesName, CategoriesDecs, ParentCategories, DeleteFlag) values(6,N'Phan Châu Trinh', N'Hoạt động của cụ Phan Châu Trinh', 5, 0)
insert into CategoriesofHistory(CategoriesID, CategoriesName, CategoriesDecs, ParentCategories, DeleteFlag) values(7,N'Hồ Chí Minh', N'Bác Hồ bla bla', 7, 0)
insert into CategoriesofHistory(CategoriesID, CategoriesName, CategoriesDecs, ParentCategories, DeleteFlag) values(8,N'Tôn Thất Thuyết', N'Tiểu sử ông Tôn Thất Thuyết', 5, 0)
SET IDENTITY_INSERT CategoriesofHistory OFF
--delete from CategoriesofHistory
--DBCC CHECKIDENT ('[CategoriesofHistory]', RESEED, 0);
--GO


--Post
insert into Post(PostName, CategoriesID, UserID, Post_Content, PostSlug, Publish_Date, Last_Edit, Image, NumViews, Status, DeleteFlag)
values(N'Thời trẻ của Bác Hồ', 7, 1, N'Post1.txt',
N'PostSlug là gì?', '2017-05-25', '2017-05-25', 'image/1.png', 0, 1, 0)

insert into Post(PostName, CategoriesID, UserID, Post_Content, PostSlug, Publish_Date, Last_Edit, Image, NumViews, Status, DeleteFlag)
values(N'Vị vua cuối cùng của nhà Nguyễn', 2, 1, N'Post2.txt',
N'PostSlug là gì?', '2017-05-25', '2017-05-25', 'image/2.png', 10, 1, 0)