This is a simple php script explaining how to paginate data from mysql


page.sql

-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.10-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table sails.student
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- Dumping data for table sails.student: ~29 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`, `name`, `number`, `country`) VALUES
	(1, 'logical', 'start', 'Androra'),
	(2, 'title2', 'body', ''),
	(3, 'title3', 'body3', ''),
	(4, 'title4', 'body4', ''),
	(5, 'title4', 'body4', ''),
	(6, 'title4', 'body4', ''),
	(7, 'title3', 'body3', ''),
	(8, 'title4', 'body4', ''),
	(9, 'title4', 'body4', ''),
	(10, 'title3', 'body3', ''),
	(11, 'title4', 'body4', ''),
	(12, 'title4', 'body4', ''),
	(13, 'title4', 'body4', ''),
	(14, 'title4', 'body4', ''),
	(15, 'title4', 'body4', ''),
	(16, 'title4', 'body4', ''),
	(17, 'title4', 'body4', ''),
	(18, 'title4', 'body4', ''),
	(19, 'title4', 'body4', ''),
	(20, 'title4', 'body4', ''),
	(21, 'title4', 'body4', ''),
	(22, 'title4', 'body4', ''),
	(23, 'title4', 'body4', ''),
	(24, 'title4', 'body4', ''),
	(25, 'title4', 'body4', ''),
	(26, 'title4', 'body4', ''),
	(27, 'title4', 'body4', ''),
	(28, 'title4', 'body4', ''),
	(29, 'logical', 'end', 'Zambia');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;



page.php



<!DOCTYPE html><html>
<head>
<title>PHP Pagination</title>
</head><body><?php
// Establish Connection to the Database
$con = mysqli_connect('localhost','root',"",'sails');//Records per page
$per_page=5;

if (isset($_GET["page"])) {

$page = $_GET["page"];

}

else {

$page=1;

}

// Page will start from 0 and Multiple by Per Page
$start_from = ($page-1) * $per_page;

//Selecting the data from table but with limit
$query = "SELECT * FROM student LIMIT $start_from, $per_page";
$result = mysqli_query ($con, $query);

?>
<table align=”center” border=”2″ cellpadding=”3″>
<tr><th>Name</th><th>Phone</th><th>Country</th></tr>
<?php
while ($row = mysqli_fetch_assoc($result)) {
?>
<tr align=”center”>
<td><?php echo $row['name']; ?></td>
<td><?php echo $row['number']; ?></td>
<td><?php echo $row['country']; ?></td>
</tr>
<?php
};
?>
</table>

<div>
<?php

//Now select all from table
$query = "select * from student";
$result = mysqli_query($con, $query);

// Count the total records
$total_records = mysqli_num_rows($result);

//Using ceil function to divide the total records on per page
$total_pages = ceil($total_records / $per_page);

//Going to first page
echo "<center><a href='page.php?page=1'>".'First Page'."</a>";

for ($i=1; $i<=$total_pages; $i++) {

echo "<a href='page.php?page=".$i."'>".$i."</a>";
};
// Going to last page
echo "<a href='page.php?page=$total_pages'>".'Last Page'."</a></center>";
?>

</div>

</body>
</html>
