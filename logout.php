<?php
session_start();
session_destroy();
?>
<script type="text/javascript">alert("you have been successfully logged out");</script>
<?php
header('Location: homepage.php');
?>