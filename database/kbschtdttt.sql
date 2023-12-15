CREATE DATABASE  IF NOT EXISTS `kbs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kbs`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kbs
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `exercises`
--

DROP TABLE IF EXISTS `exercises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercises` (
  `id` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `howtoperform` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercises`
--

LOCK TABLES `exercises` WRITE;
/*!40000 ALTER TABLE `exercises` DISABLE KEYS */;
INSERT INTO `exercises` VALUES ('GM01','Bài tập ngực','Đẩy tạ đòn trên ghế','Các động tác thực hiện bài tập này sẽ tác động nhiều nhất lên cơ ngực và một phần cơ vai, cơ tay sau. Đây là một bài tập để tăng sức mạnh cho cơ thể và tăng cơ bắp cho phần thân trên ','Nằm trên ghế và cầm tạ ở vị trí ban đầu. Nâng\nthanh tạ và từ từ hạ tạ xuống trong khi hít vào cho đến khi thanh chạm vào giữa cơ thể bạn.\nngực. Sau khi tạm dừng một lúc, đẩy thanh trở lại vị trí bắt đầu trong khi thở ra.'),('GM02','Bài tập ngực','Đẩy tạ đôi trên ghế phẳng','Bài tập này rất tốt cho những người muốn làm săn chắc cơ ngực. Bạn sẽ thấy kết quả tích cực ngay lập tức. Tạ đơn cho phép có nhiều động tác tập luyện hơn so với thanh tạ vì tạ đơn yêu cầu mỗi bên của cơ thể bạn phải làm việc độc lập, làm cho cơ bổ trợ hoạt động mạnh mẽ hơn. Điều này cũng có nghĩa là không chỉ cơ ngực của bạn được tập luyện mà còn cơ lưng, tạo nên một bài tập tuyệt vời kép.','Để thực hiện bài tập này, nằm trên bàn tập và nâng tạ đơn (trọng lượng phụ thuộc vào cơ địa và sức mạnh của bạn) gần ngực. Sau đó, quay chúng chậm lại, sao cho các ngón tay kết chặt của bạn giờ đối diện với bạn. Chậm rãi nâng chúng lên; bạn sẽ cảm nhận áp lực trên ngực. Giữ trong vài giây trước khi hạ nó xuống lại và quay trở lại vị trí ban đầu.'),('GM03','Bài tập ngực','Bent-Arm Barbell Pullovers','Bài tập này đặc biệt tốt để phát triển cơ lats của bạn. Nó hoạt động cơ lats hiệu quả hơn so với bài tập straight-arm barbell pullover vì nó tập trung vào các cơ khác nhau hoàn toàn. Bài tập này vẫn làm việc cơ một số cơ khác như cơ ngực, cơ ba đầu, và cơ vai, nhưng trọng tâm chính là cơ lats.','Nằm trên bàn tập phẳng, nắm thanh tạ với khoảng cách bằng chiều rộng vai, và cánh tay tạo một góc 90 độ so với cơ thể. Đảm bảo rằng thanh tạ được nâng trực tiếp trên ngực bạn, với độ uốn trong cánh tay. Giữ cánh tay ở vị trí uốn và chặn cố định, hạ trọng lượng chậm về phía sau đầu. Dừng lại khi bạn cảm nhận căng trải rộng trên ngực. Đưa thanh tạ trở lại vị trí xuất phát bằng cùng một động tác hình cung.'),('GM04','Bài tập ngực','Dumbbel Chest  Flyes','Sau khi thực hiện động tác này vài lần, bạn sẽ cảm nhận được sự làm việc của nó trên cơ ngực. Bài tập này đặc biệt giúp tăng cường cơ ngực cùng với vai. Bạn nên thực hiện động tác này chậm rãi và đảm bảo rằng các tạ không chạm nhau ở đỉnh động tác. Điều này không chỉ làm tăng độ khó của bài tập, mà còn buộc bạn không nên nghỉ quá lâu.','Nằm trên một bàn đàn hồi phẳng với một tạ trong mỗi tay. Đưa cánh tay lên phía trên, cách vai một khoảng rộng, với lòng bàn tay hướng về nhau. Giữ một độ uốn nhẹ ở khuỷu tay, bắt đầu hạ cánh tay của bạn theo một cung rộng về hai bên cho đến khi bạn cảm nhận sự căng trải dài trên ngực. Sau đó, đưa cánh tay trở lại vị trí ban đầu, siết chặt cơ ngực khi bạn làm điều đó. Hãy nhớ rằng chuyển động của bài tập này diễn ra qua khớp vai, vì vậy hãy giữ phần còn lại của cánh tay tĩnh'),('GM05','Bài tập ngực','Weighted Push Up','Bài tập đẩy cơ là một bài tập tuyệt vời cho lưng và cũng giúp tăng cường cơ ngực. Đừng thử nghiệm bài tập này nếu bạn chưa có một ít sức mạnh ở phần trên cơ thể và lưng. Có khả năng cao bạn sẽ tổn thương bản thân trong quá trình thực hiện. Bạn cần điều chỉnh độ khó của động tác đẩy cơ thông thường để có lợi cho cơ ngực.','Bắt đầu bằng cách đưa cơ thể vào tư thế đẩy cơ plank, và đưa tay gần nhau, sao cho có một khoảng cách 5 inch giữa chúng. Hãy yêu cầu ai đó đặt một tạ lên phía trên lưng bạn. Hãy nhớ rằng trọng lượng cần phải ổn định và tạo áp lực đồng đều trên toàn bộ lưng. Hạ cơ thể chậm rãi và thực hiện động tác đẩy cơ thông thường. Thực hiện càng nhiều lần nhấn nhất mà bạn cảm thấy thoải mái.'),('GM06','Bài tập ngực','Low Cable Crossover','Bài tập này yêu cầu bạn sử dụng máy kéo cáp đôi, có thể tìm thấy ở hầu hết các phòng tập gym. Nó nhắm đến cơ đùi trước (deltoids) và cơ ngực đồng thời, làm cho nó trở thành một bài tập tuyệt vời khi bạn muốn phát triển những cơ này.','Một chân bước về phía trước trụ vững, hai tay nắm giữ đầu dây cáp'),('GM07','Bài tập vai','Seated Shoulder Press','\rBài tập này trông vô cùng đơn giản nhưng lại mang lại hiệu quả tốt cho vai của bạn. Nó tác động đến tất cả các cơ trên vai, và bạn sẽ cảm nhận sự cháy nồng ngay sau thời gian ngắn. Sau khi thực hiện bài tập này một cách đều đặn, bạn sẽ nhận thấy rằng cơ thể trên cả hai bên của bạn trở nên cân đối hơn. Có thể bạn sẽ đứng thẳng hơn một chút vì vai của bạn đã có thêm cơ bắp.','\rBắt đầu bằng cách ngồi trên một chiếc ghế có phần cong về phía sau. Bây giờ nắm hai tạ trong cả hai tay (trọng lượng theo sự lựa chọn của bạn) và giữ chúng gần vai. Bạn cần để các ngón tay hướng về phía bên kia. Tiếp theo, nâng chúng lên và chạm hai tạ lại với nhau. Giữ vị trí này trong vài giây, sau đó hạ tạ xuống, sao cho chúng ở ngang với vai của bạn. Tiếp tục thực hiện trong khoảng 5 đến 10 phút hoặc theo sự thuận tiện của bạn.'),('GM08','Bài tập vai','Battle Ropes','Bài tập này là lựa chọn tốt nhất cho những người muốn tăng cường cơ vai phía trước. Nếu bạn thực hiện đều đặn, bạn sẽ có cơ vai mạnh mẽ. Đây cũng là một bài tập khá thú vị để thực hiện, điều này là điều bạn nên luôn tìm kiếm trong một bài tập. Đây là cách tốt để làm mới bài tập thông thường của bạn và có thể thực hiện tại nhà nếu bạn muốn.','Để bắt đầu, hãy mua cho mình những dây đánh giá chất lượng tốt. Đứng thẳng với dây trong tay và sau đó ngồi gập đầu gối, sao cho mông bạn song song với sàn. Bây giờ bắt đầu di chuyển dây lên và xuống với sức mạnh đầy đủ. Nhớ kiểm soát dây; chúng không nên kiểm soát bạn. Thực hiện điều này trong khoảng 5 đến 10 phút hoặc cho đến khi bạn cảm thấy thoải mái.'),('GM09','Bài tập vai','Upright Barbell Row','Upright barbell row làm việc nhiều cơ trên lưng, cũng như cả hai bên và cơ vai của bạn. Khi bạn nâng lên, cơ gọi là serratus anterior sẽ hoạt động. Nó chạy từ nách xuống và là một cơ tốt để tăng cường sức mạnh.','Nắm thanh tạ bằng cách giữ bằng cách đặt tay lên trên, với cánh tay hơi rộng hơn khoảng vai. Đặt thanh tạ lên đỉnh đùi, với cánh tay duỗi ra và một chút uốn ở khuỷu tay. Giữ lưng thẳng. Khi thở ra, nâng cánh tay lên và sang hai bên, và sử dụng vai để nâng thanh tạ. Giữ thanh tạ gần cơ thể càng tốt. Nâng thanh tạ cho đến khi nó gần đạt đến cấp độ cằm, sau đó hạ thanh tạ xuống chậm rãi khi thở vào. Hãy nhớ rằng khuỷu tay của bạn điều khiển chuyển động trong bài tập này, và chúng luôn nên cao hơn khuỷu tay của bạn. Cơ thể phải duy trì ổn định trong suốt bài tập.'),('GM10','Bài tập vai','Side Lateral Raise','Bài tập side lateral raise là một cách tuyệt vời để làm việc cơ vai và các cơ vai khác. Với vai mạnh mẽ, khả năng tự bảo vệ trước nguy cơ tổn thương khi mang vật nặng hoặc thực hiện bất kỳ hoạt động nào yêu cầu sự chuyển động từ vai. Bài tập này có thể dễ dàng thực hiện tại nhà nếu bạn có một vài tạ đứng xung quanh.','Đứng thẳng với một tạ trong mỗi tay và cánh tay dọc theo thân, lòng bàn tay hướng vào trong. Khi thở ra, nâng tạ ra hai bên với sự giữ một chút uốn ở khuỷu tay và đưa tay hơi về phía trước. Tiếp tục nâng tay lên cho đến khi chúng song song với sàn. Dừng lại trong một giây, sau đó hạ tạ về vị trí ban đầu khi thở vào.'),('GM11','Bài tập cơ cẳng tay','Plate Pinch','Đây có lẽ là bài tập cơ tay tốt nhất vì nó ảnh hưởng đến cơ tay và giúp bạn có được cơ tay săn chắc mà không cần nhiều nỗ lực. Hãy đảm bảo bắt đầu với trọng lượng nhẹ, và dần dần tăng lên khi bạn thực hiện nó nhiều hơn. Bạn không muốn tổn thương bản thân ngay khi bạn bắt đầu làm thay đổi trong sức mạnh cơ tay.','Bắt đầu bằng cách nắm hai tấm nhẹ nhàng đã được kết hợp lại. Bạn có thể chọn trọng lượng phù hợp với bạn và có thể thêm nhiều hơn nếu bạn cần tăng cường đốt cháy calo. Giữ trong vòng 30 giây, sau đó chuyển sang cánh tay kia. Thực hiện ba bộ. Thực hiện bài tập này sau khi hoàn thành các bài tập cho vai sẽ mang lại hiệu quả tốt nhất.'),('GM12','Bài tập cơ cẳng tay','Barbell Hold','Thực hiện bài tập giữ thanh tạ là một cách tuyệt vời để tập luyện cơ tay. Bởi vì bạn phải tập trung vào việc giữ nó càng lâu càng tốt, trọng lực đóng một vai trò quan trọng, làm cho đây trở thành một bài tập cơ tay rất hiệu quả','Bắt đầu bằng cách chọn một trọng lượng theo sự lựa chọn của bạn. Thanh tạ cần có một trục dày để dễ nắm. Bây giờ đứng trước nó, nâng lên từ chỗ đặt, hạ nó xuống và để cánh tay ở tư thế tự nhiên. Giữ trong 30 giây và đặt nó lại. Thực hiện ba bộ.'),('GM13','Bài tập cơ cẳng tay','Curl barbell ','Tập trung vào cơ bắp cánh tay (biceps). Lợi ích chính là tăng cường và phát triển cơ bắp cánh tay, giúp tạo hình dáng cho cánh tay','Đứng thẳng, nắm thanh tạ với bàn tay hướng lên, cánh tay đồng thời dọc theo thân.\nCúi cánh tay lên gần vai và hạ từ từ về vị trí ban đầu.\nHãy đảm bảo không sử dụng quá nhiều động tác đẩy cơ để hoàn thành bài tập.'),('GM14','Bài tập cơ cẳng tay','Hammer curls',' Tác động chủ yếu vào cơ bắp ngoại của cánh tay (brachialis) và cơ bắp cánh tay. Giúp mở rộng và phát triển cơ bắp ngoại của cánh tay, tạo chiều rộng và đầy đặn hơn cho cánh tay.','Cầm tạ ở hai bên cơ thể, nắm chặt tạ và duỗi cánh tay xuống.\nCong cánh tay lên mà không quay cổ tay. Đưa tạ lên và hạ từ từ về vị trí xuất phát.'),('GM15','Bài tập cơ lưng','Deadlifts','Bài tập chủ yếu đào sâu vào cơ lưng dưới, glute và cơ đùi. Đây là bài tập tổng thể giúp cải thiện sức mạnh toàn diện của cơ lưng và các nhóm cơ chính khác trong cơ thể.','Đứng cách thanh tạ với đôi chân hướng về phía trước, cúi người xuống để cầm tạ.\nĐẩy đầu gối về phía trước và đứng dậy, kéo thanh tạ lên và giữ thăng bằng.'),('GM16','Bài tập cơ lưng','Lat pulldowns','Tập trung vào cơ lưng trên (lats). Tăng cường sức mạnh và độ rộng của cơ lưng, giúp tạo ra lưng rộng và cân đối hơn.','Ngồi tại máy kéo, nắm thanh tạ rồi kéo thanh tạ về phía ngực mà không di chuyển cơ thể lắc lư.'),('GM17','Bài tập cơ tay sau','Tricep dips','Tác động chủ yếu vào cơ triceps. Giúp tăng cường sức mạnh và kích thước của cơ triceps, làm tăng khả năng đẩy và kéo.','Đứng sau ghế, đặt hai bàn tay phía sau lưng trên ghế.\nHạ cơ thể xuống, đẩy lên bằng cánh tay, duỗi cơ triceps.'),('GM18','Bài tập cơ tay sau','Tricep pushdowns','Tập trung vào cơ triceps. Tăng cường sức mạnh và kích thước của cơ triceps, làm tăng khả năng đẩy và kéo.','Đứng trước máy kéo, nắm thanh tạ và đẩy tạ xuống bằng cánh tay mà không di chuyển cơ thể.'),('GM19','Bài tập Upper Back','Barbell Pull Over',NULL,NULL),('GM20','Bài tập Upper Back','Arm Pull Down',NULL,NULL),('GM21','Bài tập cơ bụng','Crunches',NULL,NULL),('GM22','Bài tập cơ bụng','Basic Crunch',NULL,NULL),('GM23','Bài tập cơ bụng','Twist Crunch',NULL,NULL),('GM24','Bài tập cơ bụng','Bicycle Crunch',NULL,NULL),('GM25','Bài tập cơ bụng','Leg Raises',NULL,NULL),('GM26','Bài tập cơ bụng','Circle Raises',NULL,NULL),('GM27','Bài tập cơ bụng','3/4 Sit-Ups',NULL,NULL),('GM28','Bài tập cơ bụng','Air Bike',NULL,NULL),('GM29','Bài tập cơ bụng','Barbell Side Bend',NULL,NULL),('GM30','Bài tập cơ bụng','Barbell Ab Rollout',NULL,NULL),('GM31','Bài tập cơ đùi','Jump Squats',NULL,NULL),('GM32','Bài tập cơ đùi','Walk Squats with Weight','',NULL),('GM33','Bài tập cơ đùi','Ball Leg Lifts',NULL,NULL),('GM34','Bài tập cơ đùi','Glider Side Lunge',NULL,NULL),('GM35','Bài tập cơ đùi','Gate Swing with Cross',NULL,NULL),('GM36','Lower Leg Exercises','Leg Raise with Weights',NULL,NULL),('GM37','Lower Leg Exercises','Seated Calf Raise',NULL,NULL),('GM38','Lower Leg Exercises','Barbell Squats',NULL,NULL),('GM39','Hip Exercises','Hip Lifts',NULL,NULL),('GM40','Hip Exercises','Lateral Squats',NULL,NULL),('GM41','Hip Exercises','Standing Side Kick',NULL,NULL),('GM42','Hip Exercises','Side Jump',NULL,NULL),('GM43','Butt Exercises','Kick Back Squats',NULL,NULL),('GM44','Backward Leg Raise','Pigeon Pose',NULL,NULL),('GM45','Bài tập cơ hông','Fire Hydrants',NULL,'Đứng bốn chân, đầu gối và tay chạm sàn.\r\nNâng một chân ra hông rồi hạ xuống, giữ thăng bằng cơ thể và tập trung vào cơ hông.\r\nHoàn thành một số lần cho mỗi chân.'),('GM46','Bài tập cơ hông','Glute Bridge',NULL,'Nằm ngửa với đầu gối cong và chân đặt sát sàn.\r\nNâng mông lên cao, đưa cơ hông lên và duy trì vị trí này trong vài giây.\r\nHạ mông xuống nhẹ nhàng và lặp lại.'),('GM47','Bài tập Cardio Hiit','High Knees','High Knees là một bài tập cardio mạnh mẽ, giúp đốt cháy calo hiệu quả và cải thiện sự linh hoạt của cơ thể.\nTăng cường sức bền cơ bắp: Làm việc với tốc độ cao có thể cải thiện sức bền cơ bắp và khả năng chịu đựng của cơ thể.\nCải thiện khả năng cardio: High Knees là một phần trong các bài tập cardio HIIT, giúp tăng cường sức khỏe tim mạch và hệ tuần hoàn.','Đứng thẳng, chân hướng về phía trước, vai thẳng và cơ thể cân đối.\nBắt đầu nhảy từng bước một, kéo đầu gối lên cao như muốn đưa chân lên cao nhất có thể.\nLàm lượt nhảy kế tiếp, kéo đầu gối khác lên và thả chân kia xuống.\nTiếp tục luân phiên giữa hai chân, duy trì tốc độ nhanh và đảm bảo bắt đầu từ độ cao đủ để có lợi ích tốt nhất từ bài tập.'),('GM48','','',NULL,NULL);
/*!40000 ALTER TABLE `exercises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lichtap`
--

DROP TABLE IF EXISTS `lichtap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lichtap` (
  `idlichTap` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `chiTietLichTap` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `heSoHD` float DEFAULT NULL,
  PRIMARY KEY (`idlichTap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lichtap`
--

LOCK TABLES `lichtap` WRITE;
/*!40000 ALTER TABLE `lichtap` DISABLE KEYS */;
INSERT INTO `lichtap` VALUES ('D07','Lịch tập dành cho người trung niên , già :\nthứ 2:Bài tập đi bộ hay chạy bộ trên máy,Bài tập đạp xe ,Chống đẩy(20-30 mỗi ngày).\nThứ 4:Bài tập Plank,Bài tập Squat với tạ,Bài tập Lunge. \nThứ 6: Bài tập Aerobic,bài tập yoga Tư thế rắn hổ mang,Tư thế cây cầu\n\n',1.55),('D08','Lịch tập Gym 3 ngày 1 tuần cho nam (dành cho người mới tập)\r\n\r\nBuổi 1: Cẳng tay + Lưng xô + Tay sau + Vai\r\nBuổi 2: Tập một số bài Cardio\r\nBuổi 3: Bụng + Đùi + Bắp chân\r\n',1.725),('D09','Lịch tập Gym 5 ngày 1 tuần cho nam (dành cho những ai đã làm quen với cường độ tập)\r\n\r\nBuổi 1: Ngực\r\nBuổi 2: Lưng xô\r\nBuổi 3: Tay sau + Vai\r\nBuổi 4: Hông + Bụng + Đùi\r\nBuổi 5: Tập bổ sung Cardio\r\n',1.725),('D10','Lịch tập Gym cho nam đã tập thể hình thời gian dàiLịch tập Gym 6 ngày 1 tuần cho nam\r\n\r\nThứ 2: Bụng + Ngực\r\nThứ 3: Lưng xô + Vai + Cầu vai\r\nThứ 4: Tay trước + Tay sau + Mông đùi\r\nThứ 5: Bụng + Ngực\r\nThứ 6: Lưng xô + Vai + Cầu vai\r\nThứ 7: Tay trước + Tay sau + Mông đùi\r\nChủ nhật: Nghỉ\r\n',1.55),('D11','Lịch tập Gym cho nam tăng cơ\r\n\r\n\r\n\r\nThứ 2: Chân + Vai\r\n\r\nThứ 3: Lưng + Tay trước\r\n\r\nThứ 4: Ngực + Tay sau\r\n\r\nThứ 5: Chân\r\n\r\nThứ 6: Vai\r\n\r\nThứ 7: Nghỉ\r\n\r\nChủ nhật: Ngực + Tay sau + Tay trước\r\n',1.55),('D12','Lịch tập Gym cho nam giảm cân\r\n\r\nThứ 2: Cardio Hiit\r\nThứ 3: Bụng + Ngực + Tay trước\r\nThứ 4: Cardio Hiit\r\nThứ 5: Bụng + Lưng + Vai + Tay sau\r\nThứ 6: Cardio Hiit\r\nThứ 7: Bụng + Chân\r\nChủ nhật: Nghỉ\r\n',1.725),('D13','Lịch tập gym cho nữ mới tập gym 4 buổi/tuần\r\nBuổi thứ 1: Tập ngực, bụng, tay sau	\r\nBuổi thứ 3: Tập bụng, mông, đùi\r\nBuổi thứ 2: Tập tay trước, vai, lưng-xô.	Buổi thứ 4: Tập cardio hoặc bodyweight\r\n\r\n',1.55),('D14','Lịch tập gym cho nữ mới tập gym 6 buổi/tuần tăng cơ giảm mỡ\r\n\r\nBuổi thứ 1: Tập ngực, bụng, tay sau\r\nBuổi thứ 2: Tập tay trước, vai, xô lưng	\r\nBuổi thứ 3: Tập cardio hoặc bodyweight\r\nBuổi thứ 4: Tập chân, mông và đùi	\r\nBuổi thứ 5: Tập ngực, bụng, tay sau\r\nBuổi thứ 6: Tập cardio hoặc bodyweight, tập mông',1.725),('D18','Lịch tập người gầy tăng cân:Lịch 1 : 3 buổi / tuần\r\n– Ngày 1 : Tập toàn thân: Bài tập chống đẩy, Dumbbell Bent Over Row, Bài tập Wide-Grip Lat Pulldown (kéo cáp rộng tay), Bài tập V-Bar Pulldown (kéo cáp với thanh chữ V), Bài tập Chin-Up (lên xà đơn), Hỗ trợ xây dựng cơ bắp của thân dưới – Prisoner Squat…\r\n– Ngày 2 : Nghỉ\r\n– Ngày 3 :Tập toàn thân ( Như ngày 1)\r\n– Ngày 4 : Nghỉ\r\n– Ngày 5 : Chân, mông, bụng, bắp chân. (Tập trung vào squat, leg press)(Bài tập Dumbbell Walking Lunge , dumbbell squat, Leg Curl (cuốn tạ đùi sau), Romanian Deadlift …\r\n– Ngày 6 : Nghỉ\r\n– Ngày 7 : Nghỉ\r\n',1.55),('D19','Lịch tập người gầy tăng cân4 buổi / tuần\r\n– Ngày 1 :Ngực, tay sau (Bài tập xoay khớp vai, cùng máy kéo cáp Pressdown, Dips Triceps – Hít xà kép, Tricep Dumbbell kickback…)\r\n– Ngày 2 : Chân, mông, bụng, bắp chân. (Tập trung vào squat, leg press)(Bài tập Dumbbell Walking Lunge , dumbbell squat, Leg Curl (cuốn tạ đùi sau), Romanian Deadlift …\r\n– Ngày 3 : Nghỉ\r\n– Ngày 4 : Vai, (tay sau), bắp chân ( Dumbbell Tricep Extension (Nhấc tạ đơn sau đầu),Seated Barbell Press Behind Neck (Ngồi đẩy tạ đòn sau cổ), Triceps Pushdown V-bar (Kéo cáp V-bar)\r\n– Ngày 5 : Tập toàn thân: Bài tập chống đẩy, Dumbbell Bent Over Row, Bài tập Wide-Grip Lat Pulldown (kéo cáp rộng tay), Bài tập V-Bar Pulldown (kéo cáp với thanh chữ V), Bài tập Chin-Up (lên xà đơn), Hỗ trợ xây dựng cơ bắp của thân dưới – Prisoner Squat…\r\n– Ngày 6 : Nghỉ\r\n– Ngày 7 : Nghỉ',1.55),('D20','Lịch tập người gầy tăng cân5 buổi / tuần\r\n– Ngày 1 : Tập tay trước, lưng, cẳng tay (Ngực giữa Barbell Bench Press (ghế nằm đẩy tạ đòn), ngực trên: Barbell Incline Chest Press (nằm ghế dốc lên đẩy tạ đòn), Bắp tay trước: Straight-Bar Bicep Curl (cuốn tạ thanh đòn thẳng) Dumbbell Concentration Curl (cuốn tạ đơn tập trung)\r\n– Ngày 2 : Bạn nên tập trung vào bài tập lưng xô và các động tác về tay trước.\r\n– Ngày 3 : Tập trung tập luyện cơ chân, đùi và mông\r\n– Ngày 4 : Nghỉ\r\n– Ngày 5 : Thực hiện tập cơ ngực, vai và tay sau.\r\n– Ngày 6 : Thực hiện tập cơ bụng và các bài tập Cardio ( Chạy bộ: Thời gian tập luyện 20 phút, Đạp xe ngoài trời: từ 5–10 phút, Chạy trên máy: Thời gian tập luyện 10 phút, Leo cầu thang, Chèo thuyền, Nhảy dây (nhảy kép hoặc nhảy đơn), Chạy địa hình, Đấm đá liên tục vào bao cát, Tập thể dục nhịp điệu theo nhạc,\r\n– Ngày 7 : Nghỉ\r\n',1.725),('D21','Lịch tập người gầy tăng cân 6 buổi / tuần :– Ngày 1 : Ngực (Dumbbell Bench Press , Dumbbell Flyes, Seated machine chest press, tập trên xà kép, với máy kéo cáp..)\r\n– Ngày 2 : Lưng xô ( Lên xà, Gập người dạng tạ đơn 2 bên, Kéo lưng truyền thống, Deadlift, Chèo tạ 1 bên bằng tạ đơn…)\r\n– Ngày 3 : Chân mông (Bài squat, sumo squat, Bài bước khuỵu gối với tạ đơn, Romanian deadlift)\r\n– Ngày 4 : Vai – tay sau ( Bài tập xoay khớp vai, cùng máy kéo cáp Pressdown, Dips Triceps – Hít xà kép, Tricep Dumbbell kickback, Standing Military Press (Đứng đẩy tạ đòn thẳng lên…\r\n– Ngày 5 : Tập tay trước, lưng, cẳng tay (Ngực giữa Barbell Bench Press (ghế nằm đẩy tạ đòn), ngực trên: Barbell Incline Chest Press (nằm ghế dốc lên đẩy tạ đòn), Bắp tay trước: Straight-Bar Bicep Curl (cuốn tạ thanh đòn thẳng) Dumbbell Concentration Curl (cuốn tạ đơn tập trung)\r\n– Ngày 6 : Chân: Seated Leg Curl (Cuốn chân tập đùi sau), Seated Leg Press (Đạp máy đùi trước), Barbell Seated Calf Raise\r\n– Ngày 7 : Nghỉ\r\n',1.9),('D22','Lịch tập người gầy tăng cân 7 buổi / tuần :– Ngày 1 : Chân, mông, bụng, bắp chân. (Tập trung vào squat, leg press)(Bài tập Dumbbell Walking Lunge , dumbbell squat, Leg Curl (cuốn tạ đùi sau), Romanian Deadlift …\r\n– Ngày 2 : Lưng xô: Wide Grip Lat Pulldown (Kéo xô trước mặt), Seated Low Row (Ngồi chèo cáp), One Arm Dumbbell Row (Một tay chèo tạ đơn)…\r\n– Ngày 3 : Ngực( Ngực giữa Barbell Bench Press (ghế nằm đẩy tạ đòn), ngực trên: Barbell Incline Chest Press (nằm ghế dốc lên đẩy tạ đòn), Bắp tay trước: Straight-Bar Bicep Curl (cuốn tạ thanh đòn thẳng)\r\n– Ngày 4 : Cardio nhẹ (Một hoặc một chuỗi các bài tập tại chỗ, chuỗi các bài tập liên tiếp, bài tập xoay vòng liên tục không nghỉ giữa các bài tập, có sử dụng dụng cụ hoặc tạ.)\r\n– Ngày 4 : Vai, (tay sau), bắp chân ( Dumbbell Tricep Extension (Nhấc tạ đơn sau đầu),Seated Barbell Press Behind Neck (Ngồi đẩy tạ đòn sau cổ), Triceps Pushdown V-bar (Kéo cáp V-bar)\r\n– Ngày 5 : Tập tay trước, lưng, cẳng tay (Ngực giữa Barbell Bench Press (ghế nằm',1.9);
/*!40000 ALTER TABLE `lichtap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lichtap_baitap`
--

DROP TABLE IF EXISTS `lichtap_baitap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lichtap_baitap` (
  `id` int NOT NULL,
  `idlichTap` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `idbaiTap` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idlichTap` (`idlichTap`),
  KEY `idbaiTap` (`idbaiTap`),
  CONSTRAINT `lichtap_baitap_ibfk_1` FOREIGN KEY (`idlichTap`) REFERENCES `lichtap` (`idlichTap`),
  CONSTRAINT `lichtap_baitap_ibfk_2` FOREIGN KEY (`idbaiTap`) REFERENCES `exercises` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lichtap_baitap`
--

LOCK TABLES `lichtap_baitap` WRITE;
/*!40000 ALTER TABLE `lichtap_baitap` DISABLE KEYS */;
INSERT INTO `lichtap_baitap` VALUES (1,'D08','GM13'),(2,'D08','GM14'),(3,'D08','GM15'),(4,'D08','GM16'),(5,'D08','GM17'),(6,'D08','GM18'),(7,'D08','GM31'),(8,'D08','GM32'),(9,'D08','GM33'),(10,'D08','GM07'),(11,'D08','GM08'),(12,'D08','GM21'),(13,'D08','GM22'),(14,'D09','GM01'),(15,'D09','GM02'),(16,'D09','GM03'),(17,'D09','GM15'),(18,'D09','GM16'),(19,'D09','GM17'),(20,'D09','GM18'),(21,'D09','GM09'),(22,'D09','GM10'),(23,'D09','GM45'),(24,'D09','GM46'),(25,'D09','GM21'),(26,'D09','GM22'),(27,'D09','GM31'),(28,'D09','GM33'),(29,'D10','GM21'),(30,'D10','GM22'),(31,'D10','GM01'),(32,'D10','GM02'),(33,'D10','GM15'),(34,'D10','GM16'),(35,'D10','GM09'),(36,'D10','GM10'),(37,'D10','GM11'),(38,'D10','GM12'),(39,'D10','GM17'),(40,'D10','GM18'),(41,'D10','GM45'),(42,'D10','GM31'),(43,'D11','GM15'),(44,'D11','GM16'),(45,'D11','GM11'),(46,'D11','GM12'),(47,'D11','GM01'),(48,'D11','GM02'),(49,'D11','GM17'),(50,'D11','GM18'),(51,'D11','GM07'),(52,'D11','GM08'),(53,'D11','GM09'),(54,'D11','GM10'),(55,'D11','GM31'),(56,'D11','GM32'),(57,'D11','GM33'),(58,'D11','GM34'),(59,'D12','GM47'),(60,'D12','GM31'),(61,'D12','GM01'),(62,'D12','GM02'),(63,'D12','GM11'),(64,'D12','GM12'),(65,'D12','GM21'),(66,'D12','GM22'),(67,'D12','GM09'),(68,'D12','GM10'),(69,'D12','GM15'),(70,'D12','GM16'),(71,'D12','GM17'),(72,'D12','GM18'),(73,'D12','GM32'),(74,'D12','GM33'),(75,'D13','GM03'),(76,'D13','GM04'),(77,'D13','GM23'),(78,'D13','GM24'),(79,'D13','GM17'),(80,'D13','GM18'),(81,'D13','GM07'),(82,'D13','GM08'),(83,'D13','GM13'),(84,'D13','GM14'),(85,'D13','GM15'),(86,'D13','GM16'),(87,'D13','GM25'),(88,'D13','GM26'),(89,'D13','GM45'),(90,'D13','GM46'),(91,'D13','GM34'),(92,'D13','GM35'),(93,'D13','GM31'),(94,'D13','GM47'),(95,'D14','GM03'),(96,'D14','GM04'),(97,'D14','GM23'),(98,'D14','GM24'),(99,'D14','GM17'),(100,'D14','GM18'),(101,'D14','GM07'),(102,'D14','GM08'),(103,'D14','GM13'),(104,'D14','GM14'),(105,'D14','GM15'),(106,'D14','GM16'),(107,'D14','GM47'),(108,'D14','GM31'),(109,'D14','GM36'),(110,'D14','GM37'),(111,'D14','GM45'),(112,'D14','GM46'),(113,'D14','GM34'),(114,'D14','GM35'),(115,'D18','GM05'),(116,'D18','GM06'),(117,'D18','GM07'),(118,'D18','GM08'),(119,'D18','GM13'),(120,'D18','GM14'),(121,'D18','GM19'),(122,'D18','GM20'),(123,'D18','GM27'),(124,'D18','GM28'),(125,'D18','GM29'),(126,'D18','GM30'),(127,'D18','GM36'),(128,'D18','GM38'),(129,'D18','GM43'),(130,'D18','GM44'),(131,'D19','GM05'),(132,'D19','GM06'),(133,'D19','GM17'),(134,'D19','GM18'),(135,'D19','GM36'),(136,'D19','GM37'),(137,'D19','GM43'),(138,'D19','GM44'),(139,'D19','GM29'),(140,'D19','GM30'),(141,'D19','GM07'),(142,'D19','GM08'),(143,'D19','GM34'),(144,'D19','GM13'),(145,'D19','GM14'),(146,'D19','GM19'),(147,'D19','GM20'),(148,'D19','GM27'),(149,'D19','GM28'),(150,'D20','GM19'),(151,'D20','GM20'),(152,'D20','GM11'),(153,'D20','GM12'),(154,'D20','GM02'),(155,'D20','GM03'),(156,'D20','GM13'),(157,'D20','GM14'),(158,'D20','GM33'),(159,'D20','GM34'),(160,'D20','GM35'),(161,'D20','GM43'),(162,'D20','GM44'),(163,'D20','GM01'),(164,'D20','GM06'),(165,'D20','GM07'),(166,'D20','GM08'),(167,'D20','GM11'),(168,'D20','GM18'),(169,'D21','GM01'),(170,'D21','GM02'),(171,'D21','GM03'),(172,'D21','GM04'),(173,'D21','GM05'),(174,'D21','GM06'),(175,'D21','GM07'),(176,'D21','GM08'),(177,'D21','GM09'),(178,'D21','GM11'),(179,'D21','GM12'),(180,'D21','GM13'),(181,'D21','GM14'),(182,'D21','GM15'),(183,'D21','GM16'),(184,'D21','GM17'),(185,'D21','GM18'),(186,'D21','GM19'),(187,'D21','GM20'),(188,'D21','GM31'),(189,'D21','GM32'),(190,'D21','GM33'),(191,'D21','GM36'),(192,'D21','GM37'),(193,'D21','GM43'),(194,'D22','GM01'),(195,'D22','GM02'),(196,'D22','GM03'),(197,'D22','GM07'),(198,'D22','GM08'),(199,'D22','GM11'),(200,'D22','GM12'),(201,'D22','GM13'),(202,'D22','GM14'),(203,'D22','GM15'),(204,'D22','GM16'),(205,'D22','GM17'),(206,'D22','GM18'),(207,'D22','GM19'),(208,'D22','GM20'),(209,'D22','GM23'),(210,'D22','GM24'),(211,'D22','GM36'),(212,'D22','GM37'),(213,'D22','GM31'),(214,'D22','GM32'),(215,'D22','GM43');
/*!40000 ALTER TABLE `lichtap_baitap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luat`
--

DROP TABLE IF EXISTS `luat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luat` (
  `idluat` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `trangThai` int NOT NULL,
  PRIMARY KEY (`idluat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luat`
--

LOCK TABLES `luat` WRITE;
/*!40000 ALTER TABLE `luat` DISABLE KEYS */;
INSERT INTO `luat` VALUES ('R01',1),('R02',1),('R03',1),('R04',1),('R05',1),('R06',1),('R07',1),('R08',1),('R09',1),('R10',1),('R11',1),('R12',1),('R13',1),('R14',1),('R15',1),('R16',1),('R17',1),('R18',1),('R19',1),('R20',1),('R21',1),('R22',1),('R23',1),('R24',1),('R25',1),('R26',1),('R27',1),('R28',1),('R29',1),('R30',1),('R31',0),('R32',0),('R33',0),('R34',0),('R35',0),('R36',0),('R37',0),('R38',0),('R39',0),('R40',0),('R41',0),('R42',0),('R43',0),('R44',0),('R45',0),('R46',0),('R47',0),('R48',0);
/*!40000 ALTER TABLE `luat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nutrition`
--

DROP TABLE IF EXISTS `nutrition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nutrition` (
  `id` varchar(10) NOT NULL,
  `name` varchar(45) NOT NULL,
  `unit` varchar(45) NOT NULL,
  `protein` float NOT NULL,
  `carbohydrate` float NOT NULL,
  `fat` float NOT NULL,
  `fiber` float NOT NULL,
  `weigh` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutrition`
--

LOCK TABLES `nutrition` WRITE;
/*!40000 ALTER TABLE `nutrition` DISABLE KEYS */;
INSERT INTO `nutrition` VALUES ('C01','Steel Cut Oats','1 cup (160 g)',21,108,10,16,160),('C02','Oatmeal','1 cup (234 g)',6,28,4,4,234),('C03','Bananas','1 medium (118 g)',1,27,0,3,118),('C04','Pineapples','0.5 cup (83 g)',1,11,0,1,83),('C05','Grapes','10  grapes (49g)',0,9,0,0,49),('C06','Mangoes','1 fruit without refuse (336 g)',3,50,1,5,336),('C07','Apples','1 medium (182 g)',1,25,0,4,182),('C08','Figs','1 medium (50 g)',0,10,0,2,50),('C09','Potato','1 medium (173 g)',4,37,0,4,173),('C10','Corn','1 ear medium (103g)',4,22,2,3,103),('C11','Sweet Potato','1 medium',2,24,0,4,114),('C12','Parsnip','1 medium (98 g)',1,17,0,4,98),('C13','Peas','1 cup (160 g)',9,25,0,9,160),('C14','Onion','1 medium (94 g)',1,10,0,1,94),('C15','Beet','1 beet (50 g)',1,5,0,1,50),('C16','Butternut Squash','1 cup, cubes (205 g)',2,22,0,7,205),('C17','Artichoke','1 medium (120 g)',4,14,0,7,120),('C18','Eggplant','1 medium (566 g)',5,49,1,14,566),('C19','Bell Pepper','1 pepper (114 g)',1,8,0,1,114),('C20','Carrot','1 carrot (46 g)',0,4,0,1,46),('C21','Spaghetti Squash','1 squash (958 g)',6,62,3,13,958),('C22','Green Beans','1 cup (125 g)',2,10,0,4,125),('C23','Brussels Sprout','8 sprouts (168 g)',4,12,1,4,168),('C24','Snow Peas','1  cup (160 g)',5,11,0,5,160),('C25','Broccoli','1 floret (10 g)',0,1,0,0,10),('C26','Pumpkin','1 cup, mashed (245 g)',2,12,0,3,245),('C27','Kale','1 cup, chopped (130 g)',3,7,1,3,130),('C28','Cabbage','0.5 cup, shredded (75 g)',1,4,0,1,75),('C29','Cucumber','1 medium (201 g)',1,7,0,1,201),('C30','Turnip','1 turnip (120 g)',1,6,0,2,120),('C31','Tomato','1 medium whole (123 g)',1,5,0,2,123),('C32','Celery','1 stalk, medium (40 g)',0,1,0,1,40),('C33','Asparagus','5 spears (75 g)',2,3,0,2,75),('C34','Okra','0.5 cup slices (80 g)',2,4,0,2,80),('C35','Zucchini','1 medium (200 g)',2,5,1,2,200),('C36','Spinach','1 cup (180 g)',5,7,1,4,180),('C37','Collard Green','1 cup, chopped (190 g)',5,11,1,8,190),('C38','Brown Rice','0.5 cup (98 g)',2,23,1,2,98),('C39','Bread','1 slice (29 g)',3,14,1,1,29),('C40','Cream Of Wheat','1 cup (240 g)',4,26,1,2,240),('F01','Olive Oil','1 tablespoon (14 g)',0,0,14,0,14),('F02','Almond Butter','1 tablespoon (16 g)',3,3,9,2,16),('F03','Fish Oil Supplement','1 softgel caplets (18 g)',0,0,18,0,18),('F04','Pecan','1 nut (1.5 g)',0,0,1,0,1.5),('F05','Almonds','1 almond (1.3 g)',0,0,1,0,1.3),('F06','Cashew','1 cashew (1.6 g)',0,1,1,0,1.6),('F07','Walnuts','1 walnut half (2 g)',0,0,1,0,2),('F08','Pistachios','0.5 cup with shells (30 g)',6,8,14,3,30),('F09','Unsalted Peanuts','1 cup (146 g)',36,31,73,12,146),('F10','Avocado','1 avocado (201 g)',4,17,29,13,201),('F11','Peanut Butter','2 tablespoon (32 g)',7,8,16,2,32),('P01','Egg','1 Whole',6,0,5,0,50),('P02','Chicken Breast','100 g',21,0,9,0,100),('P03','Ground Turkey','100 g',27,0,10,0,100),('P04','Steak','100g',25,0,19,0,100),('P05','Filet Mignon','85 g',22,0,15,0,85),('P06','Buffalo','87 g',21,0,13,0,87),('P07','Flounder','127g',19,0,3,0,127),('P08','Cod','180 g',41,0,2,0,180),('P09','Pollock','85 g',21,0,1,0,85),('P10','Salmon','227 g',50,0,28,0,227),('P11','Tuna','85 g',25,0,1,0,85),('P12','Turkey Bacon','81 g',2,0,2,0,81),('P13','Ground Beef','4 oz (113 g)',31,0,20,0,113),('P14','Paneer','1 cup, crumbled (122 g)',22,0,29,0,122),('P15','Pork Tenderloin','3 oz (85 g)',22,0,0,3,85),('P16','Bass (Sea)','1 fillet (101g)',24,0,3,0,101),('P17','Swordfish','1 piece (106 g)',25,0,8,0,106);
/*!40000 ALTER TABLE `nutrition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suydien`
--

DROP TABLE IF EXISTS `suydien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suydien` (
  `idsuydien` int NOT NULL,
  `idluat` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `idthongTin` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `idlichTap` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idsuydien`),
  KEY `idluat` (`idluat`),
  KEY `idthongTin` (`idthongTin`),
  KEY `idlichTap` (`idlichTap`),
  CONSTRAINT `suydien_ibfk_1` FOREIGN KEY (`idluat`) REFERENCES `luat` (`idluat`),
  CONSTRAINT `suydien_ibfk_2` FOREIGN KEY (`idthongTin`) REFERENCES `thongtin` (`idthongTin`),
  CONSTRAINT `suydien_ibfk_3` FOREIGN KEY (`idlichTap`) REFERENCES `lichtap` (`idlichTap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suydien`
--

LOCK TABLES `suydien` WRITE;
/*!40000 ALTER TABLE `suydien` DISABLE KEYS */;
INSERT INTO `suydien` VALUES (1,'R01','S1','D09'),(2,'R02','S1','D10'),(5,'R03','S4','D07'),(6,'R04','S5','D08'),(7,'R05','S5','D09'),(8,'R06','S5','D10'),(9,'R07','S5','D18'),(10,'R08','S6','D13'),(11,'R09','S6','D14'),(12,'R10','S7','D08'),(13,'R11','S7','D13'),(14,'R12','S7','D14'),(15,'R13','S7','D18'),(16,'R14','S7','D19'),(17,'R15','S7','D20'),(18,'R16','S8','D09'),(19,'R17','S8','D20'),(20,'R18','S8','D21'),(21,'R19','S8','D22'),(22,'R20','S9','D10'),(23,'R21','S9','D21'),(24,'R22','S9','D22'),(25,'R23','S16','D12'),(26,'R24','S15','D11'),(27,'R25','S18','D07'),(28,'R26','S19','D08'),(29,'R27','S21','D09'),(30,'R28','S22','D10'),(31,'R29','S22','D21'),(32,'R30','S23','D22'),(33,'R31','S4','D07'),(34,'R31','S18','D07'),(35,'R31','S19','D07'),(36,'R32','S2','D08'),(37,'R32','S5','D08'),(38,'R32','S7','D08'),(39,'R32','S19','D08'),(40,'R33','S2','D09'),(41,'R33','S5','D09'),(42,'R33','S8','D09'),(43,'R33','S21','D09'),(44,'R34','S1','D09'),(45,'R34','S5','D09'),(46,'R34','S8','D09'),(47,'R34','S21','D09'),(48,'R35','S1','D10'),(49,'R35','S5','D10'),(50,'R35','S9','D10'),(51,'R35','S22','D10'),(52,'R36','S2','D10'),(53,'R36','S5','D10'),(54,'R36','S9','D10'),(55,'R36','S22','D10'),(56,'R37','S5','D11'),(57,'R37','S15','D11'),(58,'R37','S22','D11'),(59,'R38','S5','D12'),(60,'R38','S16','D12'),(61,'R38','S22','D12'),(62,'R39','S6','D13'),(63,'R39','S7','D13'),(64,'R39','S20','D13'),(65,'R40','S6','D14'),(66,'R40','S7','D14'),(67,'R40','S22','D14'),(68,'R41','S5','D18'),(69,'R41','S7','D18'),(70,'R41','S19','D18'),(71,'R41','S24','D18'),(72,'R42','S5','D19'),(73,'R42','S7','D19'),(74,'R42','S20','D19'),(75,'R42','S24','D19'),(76,'R43','S5','D20'),(77,'R43','S7','D20'),(78,'R43','S21','D20'),(79,'R43','S24','D20'),(80,'R44','S5','D20'),(81,'R44','S8','D20'),(82,'R44','S21','D20'),(83,'R44','S24','D20'),(84,'R45','S5','D21'),(85,'R45','S8','D21'),(86,'R45','S22','D21'),(87,'R45','S24','D21'),(88,'R46','S5','D21'),(89,'R46','S9','D21'),(90,'R46','S22','D21'),(91,'R46','S24','D21'),(92,'R47','S5','D22'),(93,'R47','S8','D22'),(94,'R47','S23','D22'),(95,'R47','S24','D22'),(96,'R48','S5','D22'),(97,'R48','S9','D22'),(98,'R48','S23','D22'),(99,'R48','S24','D22');
/*!40000 ALTER TABLE `suydien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongtin`
--

DROP TABLE IF EXISTS `thongtin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thongtin` (
  `idthongTin` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `tenThongTin` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idthongTin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongtin`
--

LOCK TABLES `thongtin` WRITE;
/*!40000 ALTER TABLE `thongtin` DISABLE KEYS */;
INSERT INTO `thongtin` VALUES ('S1','Thanh niên'),('S10','Tăng cơ ngực'),('S11','Tăng cơ lưng'),('S12','Tăng cơ tay'),('S13','Tăng cơ chân'),('S14','Tăng cơ bụng'),('S15','Tăng cân'),('S16','Tăng cường sức mạnh'),('S17','Giảm cân đốt cháy mỡ'),('S18','Tập trung vào sức bền'),('S19','Tập trung vào cân bằng linh hoạt'),('S2','Trưởng thành'),('S20','3 buổi/tuần'),('S21','4 buổi/tuần'),('S22','5 buổi/tuần'),('S23','6 buổi/tuần'),('S24','7 buổi/tuần'),('S3','Trung niên'),('S4','Già'),('S5','Nam giới'),('S6','Nữ giới'),('S7','Mới tập (Beginner)'),('S8','Đã làm quen với cường độ tập (Intermediate)'),('S9','Đã tập thể hình thời gian dài (Advanced)');
/*!40000 ALTER TABLE `thongtin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `age` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `goal` text,
  `health` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-15 14:49:05
