USE Hotel_Booking_System;

-- Insert into customer
INSERT INTO customer (first_name, last_name, email, phone) VALUES
(N'Nguyễn Văn', N'A', 'nguyenvana@gmail.com', '0123456789'),
(N'Trần Thị', N'B', 'tranthib@gmail.com', '0123456790'),
(N'Lê Văn', N'C', 'levanc@gmail.com', '0123456791'),
(N'Phạm Thị', N'D', 'phamthid@gmail.com', '0123456792'),
(N'Hoàng Văn', N'E', 'hoangvane@gmail.com', '0123456793'),
(N'Vũ Thị', N'F', 'vuthif@gmail.com', '0123456794'),
(N'Đặng Văn', N'G', 'dangvang@gmail.com', '0123456795'),
(N'Bùi Thị', N'H', 'buithih@gmail.com', '0123456796'),
(N'Đỗ Văn', N'I', 'dovani@gmail.com', '0123456797'),
(N'Ngô Thị', N'K', 'ngothik@gmail.com', '0123456798');

-- Insert into booking
INSERT INTO booking (customer_id, booking_time, update_time, checkin_date, checkout_date, actual_checkin_time, actual_checkout_time, deposit, payment_status) VALUES
(1, '2024-05-01 10:00:00', '2024-05-01 11:00:00', '2024-05-10', '2024-05-15', '2024-05-10 14:00:00', '2024-05-15 12:00:00', 500000, 1),
(2, '2024-05-02 12:00:00', '2024-05-02 13:00:00', '2024-05-11', '2024-05-16', '2024-05-11 15:00:00', '2024-05-16 11:00:00', 600000, 1),
(3, '2024-05-03 14:00:00', '2024-05-03 15:00:00', '2024-05-12', '2024-05-17', '2024-05-12 16:00:00', '2024-05-17 10:00:00', 700000, 0),
(4, '2024-05-04 16:00:00', '2024-05-04 17:00:00', '2024-05-13', '2024-05-18', '2024-05-13 17:00:00', '2024-05-18 9:00:00', 800000, 0),
(5, '2024-05-05 18:00:00', '2024-05-05 19:00:00', '2024-05-14', '2024-05-19', '2024-05-14 18:00:00', '2024-05-19 8:00:00', 900000, 1),
(6, '2024-05-06 20:00:00', '2024-05-06 21:00:00', '2024-05-15', '2024-05-20', '2024-05-15 19:00:00', '2024-05-20 7:00:00', 1000000, 1),
(7, '2024-05-07 22:00:00', '2024-05-07 23:00:00', '2024-05-16', '2024-05-21', '2024-05-16 20:00:00', '2024-05-21 6:00:00', 1100000, 0),
(8, '2024-05-08 09:00:00', '2024-05-08 10:00:00', '2024-05-17', '2024-05-22', '2024-05-17 21:00:00', '2024-05-22 5:00:00', 1200000, 0),
(9, '2024-05-09 11:00:00', '2024-05-09 12:00:00', '2024-05-18', '2024-05-23', '2024-05-18 22:00:00', '2024-05-23 4:00:00', 1300000, 1),
(10, '2024-05-10 13:00:00', '2024-05-10 14:00:00', '2024-05-19', '2024-05-24', '2024-05-19 23:00:00', '2024-05-24 3:00:00', 1400000, 1);

-- Insert into hotel
INSERT INTO hotel (hotel_name, phone, email, city, address, description) VALUES
(N'ABC Luxury Buôn Ma Thuột', '02623961555', 'info@buonmathuot.abc.vn', N'ĐăkLăk', N'Số 81 đường Nguyễn Tất Thành, phường Tân An, thành phố Buôn Ma Thuột, tỉnh ĐăkLăk, Việt Nam', N'Khách sạn ABC Luxury Buôn Ma Thuột được xây dựng theo tiêu chuẩn 5 sao tọa lạc ở trung tâm hành chính – kinh tế của thành phố Buôn Ma Thuột. Công trình được thiết kế với 231 phòng ngủ xứng đáng là một công trình kiến trúc đáng chiêm ngưỡng khi kết hợp hài hòa được các yếu tố hiện đại quốc tế với các yếu tố thuần Việt, tạo nên bản sắc riêng trong mắt du khách nước ngoài cũng như là niềm tự hào cho người dân bản xứ. Đặc biệt khách sạn ABC Luxury Buôn Ma Thuột có hệ thống nhà hàng đa dạng với không gian vừa mang nét truyền thống vừa hiện đại trẻ trung; phòng hội thảo đa chức năng với sức chứa hơn 1000 khách mang phong cách khác biệt đẳng cấp. Nơi đây sẽ trở thành nơi đón tiếp và diễn ra những sự kiện lớn mang tầm quốc gia, quốc tế.'),
(N'ABC Luxury Bắc Ninh', '02223665566', 'info@bacninh.abc.vn', N'Bắc Ninh', N'Số 395, đường Ngô Gia Tự, phường Tiền An, thành phố Bắc Ninh, tỉnh Bắc Ninh, Việt Nam', N'Là khách sạn 5 sao đầu tiên tại tỉnh Bắc Ninh, ABC Luxury Bắc Ninh tạo nên một điểm nhấn ấn tượng về không gian kiến trúc, cảnh quan đô thị. Khách sạn ra đời nhằm đáp ứng đầy đủ nhu cầu của khách trong và ngoài nước về lưu trú và các dịch vụ giải trí cao cấp.'),
(N'ABC Luxury Cà Mau', '02902228888', 'info@camau.abc.vn', N'Cà Mau', N'Lô C.03A Khu Trung tâm Hành Chính Chính trị tỉnh Cà Mau, Phường 9, Thành phố Cà Mau, tỉnh Cà Mau, Việt Nam', N'Khách sạn ABC Luxury Cà Mau – một trong những khách sạn cao cấp hàng đầu khu vực Đồng Bằng sông Cửu Long, tọa lạc tại Khu trung tâm hành chính – chính trị thành phố Cà Mau. Khách sạn là điểm dừng chân lý tưởng cho những chuyến du lịch hay công tác với vị trí thuận tiện để tiếp cận trung tâm thành phố và những điểm du lịch đặc trưng của vùng.'),
(N'ABC Luxury Phú Thọ', '02103616666', 'info@phutho.abc.vn', N'Phú Thọ', N'Lô CC17,Quảng trường Hùng Vương, phường Gia Cẩm,thành phố Việt Trì, tỉnh Phú Thọ, Việt Nam', N'Khách sạn ABC Luxury Phú Thọ tọa lạc trên đường Đại lộ Hùng Vương và ngay trung tâm Thành phố Việt Trì sôi động. Được xây dựng theo tiêu chuẩn 5 sao theo lối kiến trúc sang trọng, hiện đại, nổi bật với hàng loạt dịch vụ và tiện nghi, đáp ứng nhu cầu của quý khách. Đây là vị trí thuận lợi để khám phá những danh lam thắng cảnh nổi tiếng, những đồi chè xanh mướt và những thảo nguyên bao la. ABC Luxury Phú Thọ thực sự là một sự lựa chọn lý tưởng khi du khách muốn nghỉ ngơi và tận hưởng những khoảnh khắc thư giãn tuyệt vời bên gia đình, bạn bè, và người thân.'),
(N'ABC Grand Hà Nội', '02436408686', 'info@hanoi.abc.vn', N'Hà Nội', N'Lô CC2, KĐT Bắc Linh Đàm, phường Đại Kim, quận Hoàng Mai, Hà Nội, Việt Nam', N'Tọa lạc ở Khu đô thị mới Bắc Linh Đàm, trung tâm khu vực phát triển phía nam thủ đô Hà Nội, khách sạn ABC Grand Hà Nội với 180 phòng nghỉ bốn sao và hệ thống phòng họp hiện đại luôn sẵn sàng phục vụ quý khách với đội ngũ nhân viên nhiệt tình và giàu kinh nghiệm.  Từ đây, Quý khách có thể dễ dàng tiếp cận được nét đẹp sống động của thành phố ở mọi góc cạnh. Khách sạn hiện đại này nằm trong khu lân cận với các địa điểm tham quan nổi tiếng của thành phố như Bảo tàng Không Quân Việt Nam, Viện Y Hà Nội, Ngã Tư Sở.
 
Hệ thống Nhà hàng, quán bar sang trọng cùng những dịch vụ thư giãn, giải trí đẳng cấp như spa, bể bơi trong nhà và phòng Karaoke sẽ đáp ứng yêu cầu của những khách hàng khó tính nhất. 
 
Khách sạn ABC Grand Hà Nội là sự kết hợp hài hoà giữa nền văn hóa miền Tây Bắc Việt Nam với sự sang trọng, hiện đại của châu Âu. Chính điều này đã tạo nên một ABC Grand Hà Nội hiện đại mà vẫn đậm đà nét truyền thống dân tộc ngay giữa lòng thành phố Hà Nội.'),
(N'ABC Grand Xa La','02433115555','info@xala.abc.vn', N'Hà Nội', N'Số 66, đường Phúc La, khu đô thị Xa La, phường Phúc La, quận Hà Đông, Hà Nội, Việt Nam', N'Khách sạn ABC Grand Xa La nằm trong khuôn viên Khu đô thị mới Xala hiện đại, yên tĩnh và trong lành, ngay tại trung tâm Quận Hà Đông, Hà Nội. Thoải mái và tiện nghi là những cảm nhận đầu tiên khi du khách đặt chân đến nơi đây.

 

Chỉ cách sân bay khoảng 40 phút đi ô tô và 20 phút để đến trung tâm Hà Nội, đến với ABC Grand Xa La, khách hàng có thể khám phá nét đẹp văn hóa Hà Nội và tận hưởng không gian của 149 phòng khách sạn vô cùng hiện đại, tiện nghi, bao gồm bồn tắm nước nóng, phòng thể dục, phòng xông hơi, hồ bơi ngoài trời, massage, mang lại những giây phút vô cùng thư thái. Hãy đến và thưởng thức sự hòa hợp giữa cung cách phục vụ chuyên nghiệp và hiện đại nhưng vô cùng chân thành ở ABC Grand Xa La.'),
(N'ABC Grand Hà Nội Centre','02439427777','info@hanoicentre.abc.vn', N'Hà Nội', N'78 Thợ Nhuộm, Trần Hưng Đạo, Hoàn Kiếm, Hà Nội, Việt Nam', N'Khách sạn ABC Grand Hà Nội Centre nằm tại trung tâm của thủ đô Hà Nội. Một vị trí tuyệt vời để kết nối và khám phá vẻ đẹp cổ kính của thành phố đã ngàn năm tuổi. Du khách có thể tản bộ tận hưởng không khí mát lành của Hồ Gươm xanh, ngắm nhà hát Opera trầm mặc, tận hưởng cuộc sống náo nhiệt của khu phố cổ rêu phong. Sự thuận lợi đi lại, vị trí ngay trung tâm, chắc chắn sẽ làm hài lòng du khách khi đến với ABC Grand Hà Nội Centre.

Tọa lạc trên con phố cũ – Phố Thợ Nhuộm, là trung tâm hành chính văn hóa, du lịch của Thủ Đô Hà Nội, Khách sạn ABC Grand Hà Nội Centre được hình thành từ ý tưởng Hà Nội ngập trong sắc nắng thu vàng, sự trầm lặng nơi từng góc nhỏ của mỗi con phố. Với nội thất hài hòa sang trọng đậm chất boutique, không gian ấm cúng, kèm theo là sự phục vụ chuyên nghiệp, dịch vụ hoàn hảo sẽ làm mỗi du khách lưu trú tại đây cảm thấy như chính ngôi nhà thứ hai của mình.

- Cách Trung tâm Hội chợ Triển lãm Hà Nội (I.C.E) diễn ra sự kiện Vietnam Expo 2022 chỉ 300m - khoảng 5 phút đi bộ.
- Cách khu di tích Nhà tù Hỏa Lò 350m.
- Cách khu phố cổ Hà Nội và Hồ Hoàn Kiếm chỉ 5 phút đi xe hay 9 phút đi bộ.

ABC Grand Hà Nội Centre là sự kết hợp giữa những bản sắc núi rừng Tây Bắc từ ẩm thực, đồ uống đến những nhân viên mang trang phục Thái truyền thống với sự duyên dáng của tà áo dài đậm chất Hà Nội sẽ đem đến cho du khách sự thú vị đến bất ngờ.'),
(N'ABC Grand Bắc Giang', '02043542888', 'info@bacgiang.abc.vn', N'Bắc Giang', N'Quảng trường 3/2, đường Hoàng Văn Thụ, phường Ngô Quyền, thành phố Bắc Giang, tỉnh Bắc Giang', N'Được khai trương vào năm 2014, ABC Grand Bắc Giang đã mang đến một chuẩn mực về dịch vụ mới cho tỉnh Bắc Giang. Bên cạnh 195 phòng đạt tiêu chuẩn quốc tế 4 sao, rộng rãi và tiện nghi hiện đại với hướng nhìn ra toàn cảnh thành phố Bắc Giang, hệ thống nhà hàng, phòng họp có sức chứa lên đến 800 khách và đầy đủ các dịch vụ bổ sung như bể bơi, karaoke, fitness centre, spa & massage hứa hẹn sẽ mang đến một không gian nghỉ dưỡng tuyệt vời và thuận lợi cho những chuyến công tác của quý khách.

Được thiết kế cho cả các chuyến du lịch nghỉ ngơi và công tác, ABC Grand Bắc Giang tọa lạc tại vị trí lí tưởng ở Bắc Giang; một trong những khu vực nổi tiếng của thành phố. Khách sạn nằm cách trung tâm thành phố 1 km và cách Hà Nội 1 tiếng đi xe. Với vị trí thuận lợi, khách sạn dễ dàng tiếp cận những điểm tham quan du lịch của thành phố.

Sự kết hợp hài hoà giữa nền văn hóa miền Tây Bắc Việt Nam với sự sang trọng, hiện đại của kiến trúc châu Âu sẽ mang đến cho quý khách những trải nghiệm hoàn toàn mới lạ.'),
(N'ABC Holiday Vũng Tàu', '02543552468', 'info@vungtau.abc.vn', N'Bà Rịa Vũng Tàu', N'Số 9, đường Thống Nhất, phường 1, thành phố Vũng Tàu, tỉnh Bà Rịa Vũng Tàu, Việt Nam', N'Khách sạn ABC Holiday Vũng Tàu tọa lạc trên đường Thống Nhất ngay tại trung tâm thành phố Vũng Tàu, là địa điểm lý tưởng để khám phá toàn cảnh Vịnh Tầm Dương, bãi tắm Vọng Nguyệt và nhiều địa điểm khác của thành phố như công viên Quang Trung, Quảng trường trung tâm, Bảo tàng văn hóa. Đặc biệt khoảng cách từ khách sạn đến bến tàu cánh ngầm chỉ vài trăm mét, nơi Quý khách có thể dễ dàng di chuyển đến thành phố Hồ Chí Minh.

Cơ sở vật chất đầy đủ gồm Phòng gym, Karaoke, Bể bơi ngoài trời, Spa & Massage và vị trí hoàn hảo làm cho ABC Holiday Vũng Tàu trở thành địa điểm tuyệt vời để bạn có thể tận hưởng kì nghỉ, những chuyến công tác dù ngắn ngày hay dài ngày tại thành phố biển miền Nam này.'),
(N'ABC Holiday Mũi Né', '02523743794', 'info@muine.abc.vn', N'Bình Thuận', N'Số 54 Huỳnh Thúc Kháng, Phường Mũi Né, Thành phố Phan Thiết, tỉnh Bình Thuận, Việt Nam', N'ABC Holiday Mũi Né nằm ngay tại trung tậm Mũi Né. Với vị trí cách trung tâm thành phố 17 km và cách sân bay 200 km, khách sạn 4 sao này thu hút được rất nhiều du khách mỗi năm. Với vị trí thuận lợi, khách sạn dễ dàng tiếp cận những điểm tham quan du lịch nổi tiếng của thành phố.

Khách sạn được thiết kế với tiêu chuẩn 4 sao, tự hào mang đến cho du khách một nét kết hợp tươi mới giữa nền văn hóa hiện đại và không gian thiên nhiên hiền hòa của biển xanh, cát trắng, nắng vàng. Từ đây, chỉ cần đi bộ vài bước chân, quý khách đã đứng trước bãi biển Mũi Né hoang sơ và xinh đẹp để hoà mình vào không khỉ biển trong lành và tươi mát.

Với hệ thống phòng đầy đủ tiện nghi, nhà hàng, trung tâm hội nghị, massage, karaoke, bar coffee…được trang bị hiện đại, thiết kế tinh tế hài hòa, ABC Holiday Mũi Né chắc chắn là một điểm đến tuyệt vời khi bạn đặt chân đên vùng biển Mũi Né.'),
(N'ABC Holiday Đà Lạt', '02633578888', 'info@dalat.abc.vn', N'Lâm Đồng', N'Số 42, đường Phan Bội Châu , thành phố Đà Lạt, tỉnh Lâm Đồng, Việt Nam', N'Khách sạn ABC Holiday Đà Lạt nằm trên con đường Phan Bội Châu ngay trung tâm thành phố Đà Lạt. Khách sạn nằm cách Hồ Xuân Hương và Chợ Đà Lạt 100 m. Vườn Hoa Đà Lạt cách khách sạn này 1,6 km trong khi Thiền viện Trúc Lâm cách đó 4,6 km.
Khách sạn đạt tiêu chuẩn 04 sao, với trang trí nội thất sang trọng, hiện đại và đầy đủ các dịch vụ bao gồm phòng tập thể dục, bể bơi trong nhà, phòng hội nghị, quầy bar, nhà hàng Âu, Á với đội ngũ đầu bếp chuyên nghiệp và nhiều món ăn đặc sản Đà Lạt nổi tiếng.  

Khách sạn ABC Holiday Đà Lạt sẽ là địa chỉ tin cậy khi quý khách đến nghỉ ngơi hay công tác tại Thành phố Đà Lạt.'),
(N'ABC Holiday Con Cuông', '02383730555', 'info@concuong.abc.vn', N'Nghệ An', N'Khối 2, Thị Trấn Con Cuông, Huyện Con Cuông, Tỉnh Nghệ An, Việt Nam.', N'Khách sạn ABC Holiday Con Cuông gồm 150 phòng nghỉ có nội thất tiện nghi. Phòng hội thảo được trang bị hệ thống nghe nhìn hiện đại. Hệ thống nhà hàng, quầy bar, phòng tiệc cung cấp thực đơn đặc sắc trong không gian sang trọng. Khu thư giãn với các dịch vụ chăm sóc sắc đẹp cùng các liệu pháp spa chuyên nghiệp, chăm sóc sức khỏe tại phòng tập thể hình trong nhà hoặc tại khu thể thao liên hợp ngoài trời. Trung tâm thương mại nằm trong khuôn viên khách sạn mang đến không gian mua sắm tiện ích cho du khách.

Từ đây, du khách có thể dễ dàng tham quan các danh lam thắng cảnh như Vườn Quốc gia Pù Mát, thác Khe Kèm, suối nước Mọc, sông Giăng và hòa mình vào nét văn hóa đặc sắc của các dân tộc bản địa: Thái, Đan Lai.

 Là khách sạn cao cấp đầu tiên tại Con Cuông, chúng tôi rất hân hạnh được mang đến cho Quý khách những trải nghiệm tuyệt vời nhất.'),
(N'ABC Vinh', '02383535666', 'info@vinh.abc.vn', N'Nghệ An', N'Số 01, đường Phan Bội Châu, thành phố Vinh, tỉnh Nghệ An, Việt Nam', N'Chỉ cách trung tâm thành phố Vinh chưa đầy 10 phút di chuyển, Khách sạn ABC Vinh nằm ở vị trí thuận lợi cho du khách đến công tác cũng như du lịch khám phá thành phố hay các danh thắng trên địa bàn tỉnh Nghệ An. Khách sạn cung cấp cho Quý khách một không gian ấm cúng để nghỉ ngơi với hệ thống phòng ngủ tiêu chuẩn, hệ thống nhà hàng, quán bar sang trọng hòa quyện giữa vẻ đẹp tiềm ẩn của phương Đông và phong cách hiện đại của phương Tây.

Cơ sở vật chất, hạ tầng hiện đại cùng địa điểm tiện lợi sẽ biến ABC Vinh trở thành sự lựa chọn tuyệt vời khi đến thăm trung tâm hành chính của tỉnh Nghệ An'),
(N'ABC Quy Nhơn', '02563892666', 'info@quynhon.abc.vn', N'Bình Định', N'Số 2, đường Nguyễn Huệ, phường Lê Lợi, thành phố Quy Nhơn, tỉnh Bình Định, Việt Nam', N'Chỉ cách trung tâm thành phố 5 phút đi bộ và chưa đầy 40 phút để ra đến sân bay, ABC Quy Nhơn là địa điểm dừng chân tuyệt vời để khám phá thành phố biển này. Khách sạn là sự kết hợp hài hòa giữa phong cách hiện đại kết hợp với nét cổ điển đặc trưng của Á Đông.

Sở hữu hệ thống 86 phòng nghỉ hiện đại cùng với nhà hàng phục vụ các món ăn Á Âu đa dạng được chế biến từ các đặc sản biển Quy Nhơn, ABC Quy Nhơn sẽ mang đến cho Quý khách những phút giây thư giãn thoải mái nhất ở vùng biển xinh đẹp vẫn đang ít được biết đến này.'),
(N'ABC Lai Châu', '02133790555', 'info@laichau.abc.vn', N'Lai Châu', N'Số 113, đường Lê Duẩn, phường Tân Phong, thị xã Lai Châu, tỉnh Lai Châu, Việt Nam', N'Khách sạn ABC Lai Châu được xây dựng trong quần thể khuôn viên rộng rãi bao gồm các dịch vụ nghỉ ngơi vui chơi giải trí, vườn sinh thái bố trí hài hòa và mang đậm nét của vùng Tây Bắc. Nằm ngay trung tâm thị xã Lai Châu, Khách sạn là nơi dừng chân tuyệt vời và thuận tiện cho du khách đến khám phá Lai Châu.

Cơ sở vật chất phong phú, dịch vụ chuyên nghiệp cùng khuôn viên rộng lớn tạo cho Khách sạn thành một điểm đến không thể bỏ qua khi đến thăm tỉnh biên giới Tây Bắc này.'),
(N'ABC Sa Pa', '02143887766', 'info@sapa.abc.vn', N'Lào Cai', N'Số 44, Đường Ngũ Chỉ Sơn, Phường Sa Pa, Thị xã Sa Pa, Tỉnh Lào Cai, Việt Nam', N'Khách sạn ABC Sa Pa nằm tại trung tâm thị xã Sa Pa, cách thành phố Lào Cai 38 km. Khách sạn được thiết kế với tiêu chuẩn 3 sao cùng tầm nhìn hướng hồ, sau lưng là dãy núi Hàm Rồng huyền thoại tạo thế “tựa sơn hướng thủy”. Khách sạn có 96 phòng thỏa mãn những yêu cầu đa dạng của khách hàng, là nơi nghỉ ngơi và thư giãn lý tưởng góp phần làm cho chuyến thăm quan Sa Pa của du khách thêm thú vị và trọn vẹn.

 

Ngoài dịch vụ phòng nghỉ, Khách sạn ABC Sa Pa còn cấp dịch vụ phòng hội thảo, hội nghị, tiệc cưới, tiệc chiêu đãi, gala dinner với sức chứa tối đa lên tới 570 khách. Với 01 phòng hội nghị và 01 nhà hàng sang trọng, trang thiết bị hiện đại. Khách sạn ABC Sa Pa luôn sẵn sàng phục vụ mọi nhu cầu của khách hàng.');

-- Insert into room_type
INSERT INTO room_type (room_type_name) VALUES
(N'Deluxe King'),
(N'Deluxe Twin'),
(N'Deluxe Tripple'),
(N'Deluxe Family Triple'),
(N'Deluxe King Ocean View'),
(N'Deluxe Family Triple Hướng Biển'),
(N'Premium Deluxe King'),
(N'Premium Deluxe Triple'),
(N'Superior King'),
(N'Superior Twin'),
(N'Superior Triple'),
(N'Junior Suite'),
(N'Junior Suite'),
(N'Executive Suite'),
(N'Grand Suite'),
(N'Royal Suite'),
(N'Presidential Suite'),
(N'Apartment');

-- Insert into hotel_room_type
INSERT INTO hotel_room_type (hotel_id, room_type_id, base_price) VALUES
(1, 1, 3000000),
(1, 2, 3000000),
(1, 3, 4000000),
(1, 12, 6100000),
(1, 14, 6800000),
(1, 17, 7000000),
(2, 1, 2300000),
(2, 2, 2300000),
(2, 3, 3100000),
(2, 14, 5000000),
(2, 17, 7000000),
(3, 1, 3000000),
(3, 2, 3000000),
(3, 3, 3800000),
(3, 14, 5200000),
(3, 15, 6000000),
(3, 17, 7000000),
(4, 1, 3000000),
(4, 2, 3000000),
(4, 3, 3800000),
(4, 4, 4000000),
(4, 14, 5200000),
(4, 15, 6000000),
(4, 16, 6800000),
(4, 17, 7000000),
(5, 1, 2800000),
(5, 2, 2800000),
(5, 3, 3500000),
(5, 5, 4500000),
(5, 7, 5000000),
(5, 8, 3800000),
(5, 10, 3800000),
(5, 11, 3800000),
(5, 15, 4300000),
(5, 18, 7000000),
(6, 1, 2400000),
(6, 2, 2400000),
(6, 3, 2800000),
(6, 6, 3000000),
(6, 14, 3800000),
(7, 1, 2600000),
(7, 2, 2600000),
(7, 7, 5000000),
(7, 9, 2300000),
(7, 10, 2500000),
(7, 14, 3800000),
(8, 1, 2100000),
(8, 2, 2100000),
(8, 8, 2500000),
(8, 14, 3750000),
(8, 17, 5000000),
(9, 1, 2400000),
(9, 2, 2400000),
(9, 3, 2900000),
(9, 9, 2100000),
(9, 10, 2100000),
(10, 1, 2400000),
(10, 2, 2400000),
(10, 4, 3100000),
(10, 5, 3100000),
(10, 6, 3500000),
(10, 10, 4000000),
(10, 14, 4700000),
(10, 15, 5500000),
(10, 17, 6000000),
(11, 1, 3100000),
(11, 4, 3500000),
(11, 9, 2200000),
(11, 10, 2200000),
(11, 14, 5200000),
(12, 1, 1800000),
(12, 2, 1800000),
(12, 14, 3200000),
(13, 2, 1050000),
(13, 3, 1300000),
(13, 4, 1300000),
(13, 13, 5000000),
(14, 1, 1950000),
(14, 2, 1950000),
(14, 3, 2650000),
(14, 9, 3500000),
(14, 14, 3600000),
(15, 2, 1400000),
(15, 3, 2000000),
(15, 14, 5000000),
(16, 1, 1800000),
(16, 2, 1800000),
(16, 3, 2100000),
(16, 14, 3000000);

-- Insert into room
INSERT INTO room (hotel_id, room_type_id, room_number, room_status) VALUES
(1, 1, 'P101', 1),
(1, 2, 'P102', 1),
(2, 3, 'P103', 1),
(3, 2, 'P105', 1),
(3, 3, 'P106', 0),
(4, 14, 'P107', 1),
(4, 15, 'P108', 1),
(5, 18, 'P109', 0),
(5, 10, 'P110', 1),
(6, 6, 'P201', 0),
(6, 14, 'P202', 1),
(7, 10, 'P203', 1),
(7, 14, 'P204', 1),
(8, 2, 'P205', 0),
(8, 17, 'P206', 1),
(9, 1, 'P207', 1),
(9, 10, 'P208', 1),
(10, 1, 'P209', 0),
(10, 2, 'P210', 1),
(11, 9, 'P301', 1),
(11, 4, 'P302', 1),
(12, 2, 'P303', 0),
(12, 14, 'P304', 1),
(13, 3, 'P305', 0),
(13, 4, 'P306', 1),
(14, 9, 'P307', 1),
(14, 14, 'P308', 1),
(15, 2, 'P309', 0),
(15, 3, 'P310', 1),
(16, 3, 'P401', 1),
(16, 14, 'P402', 1);

-- Insert into booking_room
INSERT INTO booking_room (booking_id, room_id, num_adults, num_children, room_surcharge, booking_price) VALUES
(1, 1, 2, 0, 200000, 3000000),
(2, 2, 2, 1, 250000, 2300000),
(3, 3, 1, 0, 150000, 3800000),
(4, 4, 2, 2, 300000, 4000000),
(5, 5, 2, 1, 250000, 4500000),
(6, 6, 1, 0, 150000, 3000000),
(7, 7, 2, 0, 200000, 5000000),
(8, 8, 2, 1, 250000, 2500000),
(9, 9, 1, 0, 150000, 2100000),
(10, 10, 2, 0, 200000, 4000000);

-- Insert into service
INSERT INTO service (service_name, price) VALUES
(N'Giặt ủi', 50000),
(N'Bữa sáng', 100000),
(N'Đưa đón sân bay', 200000),
(N'Spa', 300000),
(N'Thuê xe đạp', 40000),
(N'Thể dục thẩm mỹ', 150000),
(N'Massage', 250000),
(N'Dọn phòng', 100000),
(N'Bữa tối', 200000),
(N'Minibar', 150000);

-- Insert into booking_service
INSERT INTO booking_service (booking_id, service_id, quantity, booking_price) VALUES
(1, 1, 2, 50000),
(2, 2, 1, 100000),
(3, 3, 3, 200000),
(4, 4, 1, 300000),
(5, 5, 2, 40000),
(6, 6, 1, 150000),
(7, 7, 2, 250000),
(8, 8, 1, 100000),
(9, 9, 2, 200000),
(10, 10, 1, 150000);

-- Insert into payment_method
INSERT INTO payment_method (payment_method_name) VALUES
(N'Thẻ tín dụng'),
(N'Thẻ ghi nợ'),
(N'PayPal'),
(N'Chuyển khoản ngân hàng'),
(N'Tiền mặt'),
(N'Apple Pay');

-- Insert into invoice
INSERT INTO invoice (booking_id, payment_method_id, checkin_checkout_surcharge, room_charge, service_fee) VALUES
(1, 1, 100000, 1000000, 200000),
(2, 2, 150000, 1500000, 250000),
(3, 3, 100000, 2000000, 150000),
(4, 4, 200000, 2500000, 300000),
(5, 5, 150000, 3000000, 250000),
(6, 6, 100000, 1500000, 150000),
(7, 5, 200000, 2000000, 200000),
(8, 4, 150000, 2500000, 250000),
(9, 3, 100000, 3000000, 150000),
(10, 2, 200000, 3500000, 200000);

-- Insert into bed_type
INSERT INTO bed_type (bed_type_name) VALUES
(N'Giường đơn'),
(N'Giường đôi'),
(N'Giường queen'),
(N'Giường king'),
(N'Giường tầng'),
(N'Giường sofa'),
(N'Giường phụ'),
(N'Giường gấp'),
(N'Giường âm tường'),
(N'Giường bốn cọc');

-- Insert into room_type_bed_type
INSERT INTO room_type_bed_type (room_type_id, bed_type_id, num_beds) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 4, 1),
(4, 2, 2),
(5, 3, 1),
(6, 1, 2),
(7, 4, 1),
(8, 2, 1),
(9, 4, 2),
(10, 5, 1);

-- Insert into amenity
INSERT INTO amenity (amenity_name) VALUES
(N'Wi-Fi'),
(N'Điều hòa'),
(N'Tivi'),
(N'Tủ lạnh'),
(N'Két sắt'),
(N'Máy sấy'),
(N'Máy pha cà phê'),
(N'Ban công'),
(N'Bồn tắm nước nóng'),
(N'Tầm nhìn ra biển');

-- Insert into room_type_amenity
INSERT INTO room_type_amenity (room_type_id, amenity_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 4),
(3, 5),
(4, 6),
(4, 7),
(5, 8),
(5, 9),
(6, 1),
(6, 3),
(7, 2),
(7, 4),
(8, 5),
(8, 6),
(9, 7),
(9, 8),
(10, 9),
(10, 10);

-- Insert into role
INSERT INTO role (role_type) VALUES
(N'Quản lý'),
(N'Nhân viên');

INSERT INTO employee (hotel_id, role_id, first_name, last_name, password, phone, gender, dob, address) VALUES
(1, 1, N'Lê Văn', N'Anh', 'levana198011', '0111111111', 0, '1980-01-01', N'111 Đường Chính');
INSERT INTO employee (hotel_id, role_id, first_name, last_name, password, phone, gender, dob, address) VALUES
(1, 2, N'Trần Thị', N'Nữ', 'tranthib198522', '0111111112', 1, '1985-02-02', N'112 Đường Chính');
INSERT INTO employee (hotel_id, role_id, first_name, last_name, password, phone, gender, dob, address) VALUES
(2, 2, N'Nguyễn Văn', N'Cường', 'nguyenvanc199033', '0111111113', 0, '1990-03-03', N'113 Đường Chính');
INSERT INTO employee (hotel_id, role_id, first_name, last_name, password, phone, gender, dob, address) VALUES
(2, 2, N'Phạm Thị', N'Dương', 'phamthid199544', '0111111114', 1, '1995-04-04', N'114 Đường Chính');
INSERT INTO employee (hotel_id, role_id, first_name, last_name, password, phone, gender, dob, address) VALUES
(3, 2, N'Hoàng Văn', N'Hầu', 'hoangvane200055', '0111111115', 0, '2000-05-05', N'115 Đường Chính');
INSERT INTO employee (hotel_id, role_id, first_name, last_name, password, phone, gender, dob, address) VALUES
(3, 2, N'Vũ Thị', N'Phượng', 'vuthif198166', '0111111116', 1, '1981-06-06', N'116 Đường Chính');
INSERT INTO employee (hotel_id, role_id, first_name, last_name, password, phone, gender, dob, address) VALUES
(4, 2, N'Đặng Văn', N'Giang', 'dangvang198677', '0111111117', 0, '1986-07-07', N'117 Đường Chính');
INSERT INTO employee (hotel_id, role_id, first_name, last_name, password, phone, gender, dob, address) VALUES
(4, 2, N'Bùi Thị', N'Hạnh', 'buithih199188', '0111111118', 1, '1991-08-08', N'118 Đường Chính');
INSERT INTO employee (hotel_id, role_id, first_name, last_name, password, phone, gender, dob, address) VALUES
(5, 2, N'Đỗ Văn', N'Kiên', 'dovani199699', '0111111119', 0, '1996-09-09', N'119 Đường Chính');
INSERT INTO employee (hotel_id, role_id, first_name, last_name, password, phone, gender, dob, address) VALUES
(5, 2, N'Ngô Thị', N'Hoa', 'ngothik20011010', '0111111120', 1, '2001-10-10', N'120 Đường Chính');