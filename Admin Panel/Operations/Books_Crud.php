<?php 
    include 'Connection.php';

 if (isset($_POST['AddBook'])) {
    $FileProp = $_FILES['Image'];
    $FileName = $_FILES['Image']['name'];
    $FileType = $_FILES['Image']['type'];
    $FileTempLoc = $_FILES['Image']['tmp_name'];

    $FileSize = $_FILES['Image']['size'];

    $folder = '../BooksImages/';
    $folders = $folder . $FileName;

    $Name = $_POST['Name'];
    $AuthorName = $_POST['AuthorName'];
    $Edition = $_POST['Edition'];
    $Price = $_POST['Price'];
    $Category =$_POST['category'];
    $dealer =$_POST['category'];
    $Delivery_Details = $_POST['deliverydetails'];
    

    $InsertQuery = "insert into books ( Book_Name, Image, Author_Name, Edition, Price, cat_id, DealersDetail, Delivery_Details) 
    values ('$Name','$folders', '$AuthorName', '$Edition', '$Price' , '$Category', '$dealer','$Delivery_Details')";

    $asd = mysqli_query($con, $InsertQuery);
    if($asd){      
            move_uploaded_file($FileTempLoc, $folders);
            echo "<script>alert('Data has been Inserted');window.location.href = '../Books.php?added=1'</script>";
        }
        else{
            echo "<script>alert('Data Insertion Failed !!!');window.location.href = 'Books.php'</script>";
        }
} 

    // Update Category
    if (isset($_POST['updatebook'])) {

        $FileProp = $_FILES['Image'];
        $FileName = $_FILES['Image']['name'];
        $FileType = $_FILES['Image']['type'];
        $FileTempLoc = $_FILES['Image']['tmp_name'];
    
        $FileSize = $_FILES['Image']['size'];
    
        $folder = '../BooksImages/';
        $folders = $folder . $FileName;

        $Id = $_POST['Bookid'];
        $Name = $_POST['Name'];
        $AuthorName = $_POST['AuthorName'];
        $Edition = $_POST['Edition'];
        $Price = $_POST['Price'];
        $Category =$_POST['category'];
        $dealer =$_POST['category'];
        $Delivery_Details = $_POST['deliverydetails'];

        $query = "update books set Book_Name='$Name', Image='$Name', Image='$folders', Author_Name='$AuthorName', Edition='$Edition', Price='$Price', cat_id='$Category', DealersDetail='$dealer', Delivery_Details='$Delivery_Details' where Bookid = '$Id'";
        $res = mysqli_query($con, $query) or die("Query Failed");
        if ($res) {
            echo "
            <script>
            alert('Data Insertion Secess'); 
            window.location.href='../Books.php?updated=1';
            </script>";
        }
         else {
            echo "<script> alert('Data Insertion Failed');            
            window.location.href='../Books.php';
            </script>";
        }
    }

    // Delete Category
    $DelID = $_GET['Delid'];
    $quer = "delete from books where Bookid = $DelID";
    $res = mysqli_query($con, $quer);
    echo $res;
    if ($res) {
    echo "
    <script>
    alert('Data Deleted!!');
    window.location.href = '../Books.php?deleted=1';
    </script>";
    }
    mysqli_close($con);
?>