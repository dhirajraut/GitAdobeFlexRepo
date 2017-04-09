<?php
define( "DATABASE_SERVER", "localhost" );
define( "DATABASE_USERNAME", "root" );
define( "DATABASE_PASSWORD", "" );
define( "DATABASE_NAME", "flex_user" );

//connect to the database
$mysql = mysql_connect(DATABASE_SERVER, DATABASE_USERNAME, DATABASE_PASSWORD);

mysql_select_db( DATABASE_NAME );

// Quote variable to make safe
function quote_smart($value)
{
   // Stripslashes
   if (get_magic_quotes_gpc()) {
       $value = stripslashes($value);
   }
   // Quote if not integer
   if (!is_numeric($value)) {
       $value = "'" . mysql_real_escape_string($value) . "'";
   }
   return $value;
}

if( $_POST["emailaddress"] AND $_POST["username"])
{
      //add the user
      $Query = sprintf("INSERT INTO users VALUES ('', %s, %s)", quote_smart($_POST['username']), quote_smart($_POST['emailaddress']));

      $Result = mysql_query( $Query );
}

//return a list of all the users
$Query = "SELECT * from users";
$Result = mysql_query( $Query );

$Return = "<users>";

while ( $User = mysql_fetch_object( $Result ) )
{
      $Return .= "<user><userid>".$User->userid."</userid><username>".$User->username."</username><emailaddress>".$User->emailaddress."</emailaddress></user>";	
}
$Return .= "</users>";
mysql_free_result( $Result );
print ($Return)
?>