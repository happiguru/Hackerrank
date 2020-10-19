<?php
  function repeatedString($s, $n) {
    
    $repeats = 0;

    $length = strlen($s);

    $stringArray = str_split($s);

    $numberOfRepeats = floor($n / $length);
    $numberOfRepeats = $numberOfRepeats * substr_count($s, 'a');

    for($i = 0; $i < $n % $length; $i++) {
        if($stringArray[$i] == 'a') {
            $repeats++;
        }
    }

    $repeats = $numberOfRepeats + $repeats;

    return $repeats;

}
?>