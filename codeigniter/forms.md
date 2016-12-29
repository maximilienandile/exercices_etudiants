# Comment traiter un formulaire avec CodeIgniter


```html
<form action="<?php base_url('auth/login_treatment'); ?>" method="post">
    <input type="text" name="champ1">
    <input type="submit" value="OK">
</form>
```
Ce formulaire sera traité par la méthode `login_treatment` définie dans le contôleur `auth`.

Dans notre contôleur on devra définir la méthode  :


```php

public function login_treatment(){


  $value_of_champ1 = $this->input->post("champ1");
  // equivalent php classique :
  //if(isset($_POST["champ1"])){
  //  $value_of_champ1=$_POST["champ1"];
  //}

}

```
