drop database if exists medical_searching_db;
create database if not exists medical_searching_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use medical_searching_db;
create table if not exists newsletter(
	id bigint auto_increment,
    title_search nvarchar(255),
   faculty_id bigint,
    title nvarchar(255),
    content text(2000) character set utf8mb4,
    primary key(id)
);
create table if not exists faculty_category(
	id bigint auto_increment,
	name nvarchar(255),
	primary key(id)
);
create table if not exists faculty(
	id bigint auto_increment,
	name nvarchar(255),
	faculty_category_id bigint,
	primary key(id)
);
create table if not exists article(
	id bigint auto_increment,
	name nvarchar(255),
	link varchar(255),
	faculty_id bigint,
	primary key(id)
);
ALTER table faculty 
add constraint FK_faculty_faculty_category_id foreign key(faculty_category_id) references faculty_category(id)
on update cascade
on delete cascade;
alter table article
add constraint FK_article_faculty_id foreign key(faculty_id) references faculty(id)
on update cascade
on delete cascade;
INSERT into faculty_category(name)
values(
	'Chuyên Khoa Khác'
);
INSERT into faculty_category(name)
values(
	'Nhi Khoa'
);
INSERT into faculty_category(name)
values(
	'Sản Phụ Khoa'
);INSERT into faculty_category(name)
values(
	'Ngoại Khoa'
);INSERT into faculty_category(name)
values(
	'Ngoại Khoa'
);INSERT into faculty_category(name)
values(
	'Nội Khoa'
);
INSERT into faculty_category(name)
values(
	'Y Học Cơ Sở'
);
INSERT into faculty(name,faculty_category_id)
values(
	'Bỏng',
	1
);
INSERT into faculty(name,faculty_category_id)
values(
	'Răng Hàm Mặt',
	1
);INSERT into faculty(name,faculty_category_id)
values(
	'Ung Bứu',
	1
);INSERT into faculty(name,faculty_category_id)
values(
	'Ngoại Nhi',
	2
);INSERT into faculty(name,faculty_category_id)
values(
	'Nhi Cơ Sở',
	2
);INSERT into faculty(name,faculty_category_id)
values(
	'Nhi Hô Hấp',
	2
);INSERT into faculty(name,faculty_category_id)
values(
	'Nhi Sơ Sinh',
	2
);INSERT into faculty(name,faculty_category_id)
values(
	'Hiếm Muộn',
	3
);INSERT into faculty(name,faculty_category_id)
values(
	'Phụ Khoa',
	3
);INSERT into faculty(name,faculty_category_id)
values(
	'Sản Khoa',
	3
);INSERT into faculty(name,faculty_category_id)
values(
	'Chuyên Khoa Hệ Ngoại',
	4
);INSERT into faculty(name,faculty_category_id)
values(
	'Chuyên Khoa Hệ Nội',
	5
);INSERT into faculty(name,faculty_category_id)
values(
	'Giải Phẫu Học',
	6
);
INSERT into article(name,link,faculty_id)
values(
	'Bỏng - Bài Giảng ĐHYD TPHCM',
	'https://thuvienyhoc.com/tai-lieu/bong-dh-y-duoc-tphcm/',
	1
);
INSERT into article(name,link,faculty_id)
values(
	'Viêm Tuỷ Cấp Tính Răng Sữa Ở Trẻ Em - BV NĐ1',
	'https://thuvienyhoc.com/tai-lieu/viem-tuy-cap-tinh-rang-sua-o-tre-em-bv-nd1/',
	2
);INSERT into article(name,link,faculty_id)
values(
	'Viêm Nướu Răng Cấp Tính Ở Trẻ Em - BV NĐ 1',
	'https://thuvienyhoc.com/tai-lieu/viem-nuou-rang-cap-tinh-o-tre-em-bv-nhi-dong-1/',
	2
);
INSERT into article(name,link,faculty_id)
values(
	'Chẩn Đoán & Điều Trị Ung Thư Biểu Mô Tế Bào Gan - Bộ Y Tế',
	'https://thuvienyhoc.com/tai-lieu/chan-doan-dieu-tri-ung-thu-bieu-mo-te-bao-gan-bo-y-te/',
	3
);
INSERT into article(name,link,faculty_id)
values(
	'Ung Thư Dạ Dày - PGS. TS. Cung Thị Tuyết Anh',
	'https://thuvienyhoc.com/tai-lieu/ung-thu-da-day-pgs-ts-cung-thi-tuyet-anh/',
	3
);INSERT into article(name,link,faculty_id)
values(
	'Dị Tật Cột Sống Chẻ Đôi - Phác Đồ BV Nhi Đồng 2',
	'https://thuvienyhoc.com/tai-lieu/di-tat-cot-song-che-doi-phac-do-bv-nhi-dong-2/',
	4
);INSERT into article(name,link,faculty_id)
values(
	'Nang Ống Mật Chủ - Phác Đồ BV Nhi Đồng 1',
	'https://thuvienyhoc.com/tai-lieu/nang-ong-mat-chu-phac-do-bv-nhi-dong-1/',
	4
);
INSERT into article(name,link,faculty_id)
values(
	'Lách To Ở Trẻ Em - Phác Đồ BV Nhi Đồng 2',
	'https://thuvienyhoc.com/tai-lieu/lach-to-o-tre-em-phac-do-bv-nhi-dong-2/',
	5
);
INSERT into article(name,link,faculty_id)
values(
	'Gan To Ở Trẻ Em - Phác Đồ BV Nhi Đồng 2',
	'https://thuvienyhoc.com/tai-lieu/gan-to-o-tre-em-phac-do-bv-nhi-dong-2/',
	5
);INSERT into article(name,link,faculty_id)
values(
	'Hướng Dẫn Điều Trị Hen Trẻ Em Dưới 5 Tuổi – Bộ Y Tế',
	'https://thuvienyhoc.com/tai-lieu/huong-dan-dieu-tri-hen-tre-em-duoi-5-tuoi-bo-y-te/',
	6
);INSERT into article(name,link,faculty_id)
values(
	'Xử Trí Dị Tật Bẩm Sinh Cấp Cứu - Phác Đồ Bộ Y Tế',
	'https://thuvienyhoc.com/tai-lieu/xu-tri-di-tat-bam-sinh-cap-cuu-phac-do-bo-y-te/',
	7
);INSERT into article(name,link,faculty_id)
values(
	'Vô Sinh Nam - Phác Đồ Bộ Y Tế',
	'https://thuvienyhoc.com/tai-lieu/vo-sinh-nam-bo-y-te/',
	8
);INSERT into article(name,link,faculty_id)
values(
	'Dụng Cụ Tử Cung - Phác Đồ Bộ Y Tế',
	'https://thuvienyhoc.com/tai-lieu/dung-cu-tu-cung-phac-do-bo-y-te/',
	9
);
INSERT into article(name,link,faculty_id)
values(
	'Chửa Ngoài Tử Cung - Phác Đồ Bộ Y Tế',
	'https://thuvienyhoc.com/tai-lieu/chua-ngoai-tu-cung-bo-y-te/',
	10 -- sản khoa
);
INSERT into article(name,link,faculty_id)
values(
	'Chảy Máu Sau Đẻ - Phác Đồ Bộ Y Tế',
	'https://thuvienyhoc.com/tai-lieu/chay-mau-sau-de-bo-y-te/',
	10
);
INSERT into article(name,link,faculty_id)
values(
	'Khám Hệ Thống Động Tĩnh Mạch - Bài Giảng ĐHYD TPHCM',
	'https://thuvienyhoc.com/tai-lieu/kham-thong-dong-tinh-mach-bai-giang-dhyd-tphcm/',
	12
);
INSERT into article(name,link,faculty_id)
values(
	'Đại Cương Về Xương Và Hệ Xương - Giáo Trình Bộ Y Tế',
	'https://thuvienyhoc.com/tai-lieu/dai-cuong-ve-xuong-xuong-giao-trinh-byt/',
	12
);
insert into newsletter(title_search,title,content)
values(
	'Bệnh thiếu máu não là gì? Nguyên nhân? Triệu chứng?',
	'Bệnh thiếu máu não',
    'Khái niệm;Bệnh thiếu máu não, còn được gọi là đột quỵ (hoặc tai biến mạch máu não), là một trạng thái medullary cấp tính hoặc mạn tính khi máu không cung cấp đủ oxy và dưỡng chất cho não. Bệnh thiếu máu não có thể xảy ra khi một mạch máu trong não bị tắc nghẽn (đột quỵ mạch máu não) hoặc bị vỡ (đột quỵ nội mạch).
;Nguyên nhân;Bệnh suy thận có nhiều nguyên nhân, bao gồm:

Bệnh thận mạn tính (chronic kidney disease - CKD): Đây là nguyên nhân phổ biến nhất của suy thận. CKD có thể do nhiều nguyên nhân, bao gồm tiểu đường, tăng huyết áp, viêm thận, bệnh lý tăng quá mức của mô liên kết thận, sử dụng thuốc gây hại cho thận, và các bệnh lý di truyền.
Bệnh thận cấp (acute kidney injury - AKI): Đây là tình trạng suy thận nhanh chóng và thường ngược lại sau khi xử lý nguyên nhân gây ra suy thận. AKI có thể xảy ra do mất máu nhiều, suy giảm áp lực máu đến thận, nhiễm trùng nghiêm trọng, sử dụng thuốc gây hại cho thận, và các nguyên nhân khác.
;Triệu chứng;Các triệu chứng của bệnh suy thận có thể bao gồm mệt mỏi, giảm chất lượng giấc ngủ, giảm bạch cầu và tiểu cầu trong nước tiểu, tăng tần số tiểu, khó thở, sưng ở chân và bàn chân, ngứa da, buồn nôn và nôn mửa, mất cảm giác ở tay và chân, và tăng nguy cơ nhiễm trùng.
;Phương pháp điều trị;Điều trị bệnh thiếu máu thường bao gồm bổ sung sắt qua khẩu phần ăn hoặc dùng thuốc bổ sung sắt. Đồng thời, các nguyên nhân gây ra bệnh cần được xử lý, ví dụ như điều trị chứng viêm loét dạ dày, chấn thương hoặc phẫu thuật, và điều chỉnh chế độ ăn cân đối và giàu sắt.'
);
insert into newsletter(title_search,title,content)
values(
	'Bệnh suy thận là gì? Nguyên nhân? Triệu chứng?',
	'Bệnh suy thận',
    'Khái niệm;Bệnh suy thận (hay còn được gọi là suy thận mạn tính) là một tình trạng mất chức năng dần dần của thận trong một thời gian kéo dài. Khi suy thận xảy ra, thận không thể hoạt động hiệu quả để loại bỏ chất thải và chất cặn tích tụ trong cơ thể. Đây là một bệnh lý nghiêm trọng và có thể dẫn đến các biến chứng nguy hiểm và tử vong nếu không được điều trị và quản lý đúng cách.
;Nguyên nhân;Nguyên nhân chính của bệnh thiếu máu là do mất máu, hấp thụ sắt kém, tiêu thụ sắt nhiều hơn nhu cầu, hoặc do cơ thể không hấp thụ sắt tốt. Các nguyên nhân cụ thể có thể bao gồm kinh nguyệt nhiều, chảy máu dạ dày hoặc ruột, chảy máu do chấn thương hoặc phẫu thuật, sự tăng cần sắt trong thai kỳ, chế độ ăn không cung cấp đủ sắt, hay các vấn đề sức khỏe khác như viêm loét dạ dày, viêm ruột, ung thư, viêm khớp...
;Triệu chứng;Triệu chứng của bệnh thiếu máu có thể bao gồm mệt mỏi, suy nhược, da nhợt nhạt, khó thở, tim đập nhanh, chóng mặt, hoa mắt, da khô, tóc yếu, và sự giảm chức năng miễn dịch. Để chẩn đoán bệnh thiếu máu, thường cần kiểm tra mức sắt trong máu và các chỉ số khác liên quan đến sự hình thành hồng cầu.
;Phương pháp điều trị;Điều trị bệnh suy thận thường nhằm kiểm soát triệu chứng và ngăn chặn sự tiến triển của bệnh. Điều này có thể bao gồm thay đổi chế độ ăn, kiểm soát tình trạng cơ bản như tiểu đường và tăng huyết áp, sử dụng thuốc để kiểm soát triệu chứng và hỗ trợ chức năng thận, và trong một số trường hợp nghiên cứu các phương pháp thay thế chức năng thận như cấy ghép thận.'
);
insert into newsletter(title_search,title,content)
values(
	'Bệnh cảm lạnh và cảm cúm? Nguyên nhân và cách điều trị?',
	'Bệnh cảm lạnh và cảm cúm',
    'Khái niệm và triệu chứng;Cảm lạnh và cúm là các bệnh nhiễm trùng virus gây ra nhiều triệu chứng như nghẹt mũi, đau họng, ho, chảy nước mũi, và cảm thấy mệt mỏi.
;Nguyên nhân; Gây bởi nhiều loại virus khác nhau, thường lây lan qua tiếp xúc với người bị nhiễm hoặc các giọt lây truyền qua không khí.
;Phương pháp điều trị;Thường là tự điều trị bằng cách nghỉ ngơi, uống đủ nước, sử dụng thuốc giảm triệu chứng như thuốc giảm đau, thuốc ho, và có thể sử dụng thuốc kháng vi-rút nếu cần thiết.'
);
insert into newsletter(title_search,title,content)
values(
	'Bệnh tiểu đường là gì? nguyên nhân gây ra và phương pháp chữa bệnh?',
	'Bệnh tiểu đường',
    'Khái niệm;Tiểu đường là một tình trạng mà cơ thể không thể điều chỉnh đường trong máu một cách hiệu quả, dẫn đến mức đường huyết cao.
;Nguyên nhân;Nguyên nhân: Có hai loại tiểu đường chính: tiểu đường loại 1 (do hệ miễn dịch phá hủy tế bào beta sản xuất insulin) và tiểu đường loại 2 (do sự kháng insulin hoặc khả năng sản xuất insulin không đủ).
;Triệu chứng;Triệu chứng: Thèm ăn nhiều, uống nước nhiều, tiểu nhiều, mệt mỏi, giảm cân không giải thích, viêm nhiễm dễ xảy ra, khó lành vết thương.
;Phương pháp điều trị;Phương pháp điều trị: Điều chỉnh chế độ ăn uống, tập thể dục, theo dõi mức đường huyết, sử dụng insulin hoặc thuốc giảm đường huyết (tuỳ thuộc vào loại tiểu đường và tình trạng của bệnh).'
);insert into newsletter(title_search,title,content)
values(
	'Huyết áp cao (tăng huyết áp) là bệnh gì? Nguyên nhân và phương pháp chữa bệnh?',
	'Huyết áp cao (tăng huyết áp)',
    'Khái niệm;Huyết áp cao là tình trạng mà áp lực trong mạch máu tăng lên quá mức bình thường.
;Nguyên nhân;Có nhiều yếu tố góp phần gây huyết áp cao, bao gồm di truyền, lối sống không lành mạnh, tăng cân, stress, và bệnh lý khác như bệnh thận, tiểu đường.
;Triệu chứng;Thường không có triệu chứng rõ ràng trong giai đoạn đầu. Tuy nhiên, có thể gây ra các vấn đề sức khỏe nghiêm trọng như bệnh tim mạch, đột quỵ, và suy thận.
;Phương pháp điều trị;Phương pháp điều trị: Thường bao gồm thay đổi lối sống, ăn uống lành mạnh, tập thể dục, giảm cân (nếu cần thiết), và trong một số trường hợp,sử dụng thuốc giảm huyết áp theo chỉ định của bác sĩ.'
);insert into newsletter(title_search,title,content)
values(
	'Thế nào là bệnh ung thư? Nguyên nhân và các triệu chứng?',
	'Bệnh ung thư',
    'Khái niệm;Ung thư là một tình trạng mà các tế bào trong cơ thể phát triển không kiểm soát, gây hại đến các cơ quan và mô xung quanh.
;Nguyên nhân; Ung thư có thể có nhiều nguyên nhân khác nhau, bao gồm di truyền, hút thuốc, tiếp xúc với chất gây ung thư, lối sống không lành mạnh và yếu tố môi trường.
;Triệu chứng;Triệu chứng: Triệu chứng có thể bao gồm đau ngực, khó thở, mệt mỏi, buồn nôn, hoặc các triệu chứng khác tùy thuộc vào loại bệnh tim mạch.
;Phương pháp điều trị;Phương pháp điều trị: Điều trị bệnh tim mạch có thể bao gồm thay đổi lối sống (ăn uống lành mạnh, tập thể dục), sử dụng thuốc, thủ thuật tim mạch và phục hồi sau cơn đau tim.'
);
insert into newsletter(title_search,title,content)
values(
	'Bệnh đau lưng và những triệu chứng của bệnh đau lưng?',
	'Bệnh đau lưng',
    'Khái niệm;Đau lưng là một tổn thương hoặc tình trạng gây ra đau hoặc khó chịu trong vùng lưng.
;Nguyên nhân;Có nhiều nguyên nhân gây đau lưng, bao gồm căng cơ, tổn thương đĩa đệm, viêm khớp, thoái hóa cột sống, và vấn đề liên quan đến cơ và dây thần kinh.
;Triệu chứng;Triệu chứng đau lưng có thể là đau nhức, đau nhọn, đau lan ra chân, giới hạn sự di chuyển và gây khó khăn trong hoạt động thường ngày.
;Phương pháp điều trị;Phương pháp điều trị: Điều trị đau lưng có thể bao gồm liệu pháp vật lý, tập thể dục, thuốc giảm đau, liệu pháp nói chuyện, và trong một số trường hợp, phẫu thuật.'
);
insert into newsletter(title_search,title,content)
values(
	'Bệnh viêm khớp và những vấn đề về bệnh viêm khớp?',
	'Bệnh viêm khớp',
    'Khái niệm;Bệnh viêm khớp là một nhóm các bệnh lý ảnh hưởng đến khớp, gây đau, sưng, và khó di chuyển.
;Nguyên nhân;Nguyên nhân của bệnh viêm khớp có thể bao gồm di truyền, yếu tố miễn dịch, vi khuẩn hoặc vi rút gây nhiễm trùng, hoặc sự mất cân bằng hóa học trong cơ thể.
;Triệu chứng;Triệu chứng thường bao gồm đau, sưng, cứng khớp, hạn chế di chuyển và có thể gây ra các vấn đề khác như viêm mạch máu, tổn thương cơ xương và hủy hoại khớp.
;Phương pháp điều trị; Điều trị bệnh viêm khớp có thể bao gồm thuốc giảm đau, thuốc chống viêm, corticosteroid, vật lý trị liệu, tác động nhiệt, và trong một số trường hợp nghiêm trọng, phẫu thuật khớp.'
);
insert into newsletter(title_search,title,content)
values(
	'Bệnh trầm cảm và một số triệu chứng của bệnh trầm cảm?',
	'Bệnh trầm cảm',
    'Khái niệm;Trầm cảm là một rối loạn tâm lý mà người bệnh trải qua tình trạng sự chán nản, mất hứng thú và suy giảm năng lượng kéo dài.
;Nguyên nhân;Nguyên nhân của trầm cảm không được hiểu rõ, nhưng có thể bao gồm yếu tố di truyền, mất cân bằng hóa học trong não, sự mất cân bằng hormone và tác động của môi trường.
;Triệu chứng;Triệu chứng trầm cảm có thể bao gồm tâm trạng buồn, mất hứng thú, mất ngủ, mệt mỏi, tự ti, mất quan tâm đến các hoạt động hàng ngày, tư duy và tập trung kém, và ý nghĩ tự tử.
;Phương pháp điều trị;Điều trị trầm cảm thường bao gồm một kết hợp của liệu pháp tâm lý (như tâm lý trị liệu và trị liệu hành vi) và thuốc trợ tim (như thuốc chống trầm cảm hoặc thuốc chống lo lắng). Trong một số trường hợp nghiêm trọng, điều trị bằng điện (ECT) có thể được sử dụng.'
);
insert into newsletter(title_search,title,content)
values(
	'Bệnh Alzheimer là gì? Nguyên nhân và triệu chứng của bệnh alzheimer ?',
	'',
    'Khái niệm;Alzheimer là một loại bệnh thần kinh mạn tính, gây ra suy giảm trí tuệ và suy tàn các chức năng nhận thức.
;Nguyên nhân;Nguyên nhân chính của bệnh Alzheimer chưa được hiểu rõ, nhưng có thể bao gồm yếu tố di truyền, tắc nghẽn trong mạch máu não và sự tích tụ của một protein gọi là beta-amyloid trong não.
;Triệu chứng;Triệu chứng bệnh Alzheimer bao gồm mất trí nhớ, khó khăn trong việc tư duy, thay đổi tâm trạng và hành vi, mất khả năng thực hiện các hoạt động hàng ngày và suy giảm chức năng nhận thức.
;Phương pháp điều trị;Hiện chưa có phương pháp điều trị để chữa trị bệnh Alzheimer. Tuy nhiên, có thể sử dụng thuốc để giảm triệu chứng và làm chậm tiến trình bệnh. Ngoài ra, quản lý chăm sóc dài hạn và hỗ trợ từ gia đình và nhân viên y tế có thể rất quan trọng.'
);





/*DELIMITER $$

CREATE FUNCTION remove_diacritics(input_text VARCHAR(255))
RETURNS VARCHAR(255)
DETERMINISTIC
NO SQL
BEGIN
    DECLARE normalized_text VARCHAR(255) DEFAULT '';
    DECLARE i INT DEFAULT 0;
    DECLARE c CHAR(1);
    DECLARE len INT;

    IF input_text IS NULL THEN
        RETURN NULL;
    END IF;

    SET len = CHAR_LENGTH(input_text);

    WHILE i < len DO
        SET i = i + 1;
        SET c = SUBSTRING(input_text, i, 1);
        SET normalized_text = CONCAT(normalized_text,
            CASE
                WHEN c LIKE '[áàạảãâấầậẩẫăắằặẳẵ]' THEN 'a'
                WHEN c LIKE '[éèẹẻẽêếềệểễ]' THEN 'e'
                WHEN c LIKE '[íìịỉĩ]' THEN 'i'
                WHEN c LIKE '[óòọỏõôốồộổỗơớờợởỡ]' THEN 'o'
                WHEN c LIKE '[úùụủũưứừựửữ]' THEN 'u'
                WHEN c LIKE '[ýỳỵỷỹ]' THEN 'y'
                WHEN c LIKE '[đ]' THEN 'd'
                ELSE c
            END);
    END WHILE;

    RETURN normalized_text;
END$$

DELIMITER ; */
DELIMITER $$

CREATE FUNCTION remove_diacritics(input_text VARCHAR(255))
RETURNS VARCHAR(255)
DETERMINISTIC
NO SQL
BEGIN
    DECLARE normalized_text VARCHAR(255) DEFAULT '';
    DECLARE i INT DEFAULT 0;
    DECLARE c CHAR(1);
    DECLARE len INT;

    IF input_text IS NULL THEN
        RETURN NULL;
    END IF;

    SET len = CHAR_LENGTH(input_text);

    WHILE i < len DO
        SET i = i + 1;
        SET c = SUBSTRING(input_text, i, 1);
        SET normalized_text = CONCAT(normalized_text,
            CASE
                WHEN c LIKE '[áàạảãâấầậẩẫăắằặẳẵ]' THEN 'a'
                WHEN c LIKE '[ÁÀẠẢÃÂẤẦẬẨẪĂẮẰẶẲẴ]' THEN 'A'
                WHEN c LIKE '[éèẹẻẽêếềệểễ]' THEN 'e'
                WHEN c LIKE '[ÉÈẸẺẼÊẾỀỆỂỄ]' THEN 'E'
                WHEN c LIKE '[íìịỉĩ]' THEN 'i'
                WHEN c LIKE '[ÍÌỊỈĨ]' THEN 'I'
                WHEN c LIKE '[óòọỏõôốồộổỗơớờợởỡ]' THEN 'o'
                WHEN c LIKE '[ÓÒỌỎÕÔỐỒỘỔỖƠỚỜỢỞỠ]' THEN 'O'
                WHEN c LIKE '[úùụủũưứừựửữ]' THEN 'u'
                WHEN c LIKE '[ÚÙỤỦŨƯỨỪỰỬỮ]' THEN 'U'
                WHEN c LIKE '[ýỳỵỷỹ]' THEN 'y'
                WHEN c LIKE '[ÝỲỴỶỸ]' THEN 'Y'
                WHEN c LIKE '[đ]' THEN 'd'
                WHEN c LIKE '[Đ]' THEN 'D'
                ELSE c
            END);
    END WHILE;

    RETURN normalized_text;
END$$

DELIMITER ;



