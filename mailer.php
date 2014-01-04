<?php
class Mailer
{
   /**
    * sendWelcome - Sends a welcome message to the newly
    * registered user, also supplying the username and
    * password.
    */
   function sendWelcome($user, $email, $password){
      $from = "From: ".EMAIL_FROM_NAME." <".EMAIL_FROM_ADDR.">";
      $subject = "Sportx's Site - Welcome!";
      $body = $user.",\n\n"
             ."Welcome! You've just registered at Sportx's Site "
             ."with the following information:\n\n"
             ."Username: ".$email."\n"
             ."Password: ".$password."\n\n"
             ."If you ever lose or forget your password, a new "
             ."password will be generated for you and sent to this "
             ."email address ";

      return mail($email,$subject,$body,$from);
   }
   
   /**
    * sendNewPass - Sends the newly generated password
    * to the user's email address that was specified at
    * sign-up.
    */
   function sendNewPass($user, $email, $password){
      $from = "From: ".EMAIL_FROM_NAME." <".EMAIL_FROM_ADDR.">";
      $subject = "Sportx's Site - Your new password";
      $body = $user.",\n\n"
             ."We've generated a new password for you at your "
             ."request, you can use this new password with your "
             ."username to log in to Sportx's Site.\n\n"
             ."Username: ".$email."\n"
             ."New Password: ".$password."\n\n"
             ."It is recommended that you change your password "
             ."to something that is easier to remember, which "
             ."can be done by going to the My Account page "
             ."after signing in.\n\n"
             ."- Sportx's Site";
             
      return mail($email,$subject,$body,$from);
   }
};

/* Initialize mailer object */
$mailer = new Mailer;
 
?>
